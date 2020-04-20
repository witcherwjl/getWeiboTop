import urllib.request  # 导入urllib.request库
import urllib.parse
from lxml import etree
import pymysql
import time

class ShortInputException(Exception):
    # content长度不能过长
    def __init__(self, length, max_length):
        super().__init__()
        self.length = length
        self.least_length = max_length

    def __str__(self):
        return '您输入的长度为:{},最短长度为:{}'.format(self.length, self.max_length)

class GetWeiboTop(object):
    '''
    input:
            url:需要爬取的链接,
            content:源代码中需要爬取的内容,
            mysql_setting:mysql与python交互设置

    function:
            mysql_store: 设置数据库连接
            get_weiboTop: 爬虫具体实现

    '''
    def __init__(self,url,content,mysql_setting):
        self.url = url
        self.content = content
        self.max_length = 2
        self.mysql_setting = mysql_setting

    def mysql_store(self):
        conn = pymysql.connect(host=self.mysql_setting['host'],port=self.mysql_setting['port'],database=self.mysql_setting['database'],
                                user=self.mysql_setting['user'],password=self.mysql_setting['password'],charset=self.mysql_setting['charset'])
        self.get_weiboTop(conn)
        conn.close()

    def get_weiboTop(self,conn):
        # input: conn:连接mysql

        if len(self.content)>2:
            # 目前只能处理两块内容,多的就抛出异常
            raise ShortInputException(len(self.content),self.max_length)

        top_cursor = conn.cursor() # 创建一个cursor
        table = self.mysql_setting['_table'] # 选定表格

        url_html = urllib.request.urlopen(self.url)  # 打开指定网址
        html = url_html.read()  # 读取网页源码
        html = html.decode("utf-8")  # 解码为unicode码
        tree = etree.HTML(html)

        list = tree.xpath(u''+self.content[0])
        sign_html = tree.xpath(u''+self.content[1])
        prefix = 'https://s.weibo.com'  # 微博域名
        sign = ['置顶']


        # 标志内容
        #<td class="td-03">
        # <i class="icon-txt icon-txt-hot">
        # Sign </i>
        # </td>
        for index, item in enumerate(sign_html):
            # 热/新/爆
            a_element = item.xpath('.//*')
            if a_element:
                sign_hot_new = a_element[0]
                sign_show = sign_hot_new.text
            else:
                sign_show = ''
            sign.append(sign_show)

        # 主体内容
        # <td class="td-02">
        #     <a href=链接URL target="_blank">
        #         title
        #     </a>
        # <span>Popularity</span>
        # </td>
        for index, item in enumerate(list):
            title_element = item.xpath('.//a')[0]
            Title = title_element.text  # 关键词
            href = urllib.parse.unquote(title_element.attrib.get('href'))  # 链接
            href = href.replace("#", "%23")
            URL = prefix+href # 可用链接
            Realtime_ranking = str(index) # 实时排名
            Sign = sign[index] # 热/新/爆

            # 置顶没有指数，所以用99999999代替
            if index==0:
                Popularity = 999999999
            else:
                Popularity = item.xpath('./span')[0].text  # 热度指数

            # 保存进数据库
            top_cursor.execute("insert into "+table+" value(null,%s,%s,%s,%s,%s)",
                              (Title, Popularity, Sign, Realtime_ranking, URL))
        conn.commit()
        top_cursor.close()

def main():
    """
    url:需要爬取的链接,
    content:源代码中需要爬取的内容,
    mysql_setting:mysql与python交互设置
    """
    print('*'*100)
    print("开始爬取")
    start = time.clock()

    # 当中是你的程序

    content = ['//*[@id="pl_top_realtimehot"]/table/tbody/tr/td[@class="td-02"]',
               '//*[@id="pl_top_realtimehot"]/table/tbody/tr/td[@class="td-03"]',]
    url = 'https://s.weibo.com/top/summary?'
    mysql_setting = {'host': '127.0.0.1',
                     'port': 3306,
                     'database': 'getWeiboTop',
                     'user': 'root',
                     'password': '123',
                     'charset': 'utf8',
                     '_table': 'weibo_top'}

    getweibo = GetWeiboTop(url,content,mysql_setting)
    getweibo.mysql_store()

    print("用时: %s 秒" % (time.clock() - start))
    print("完成爬取")
    print('*'*100)

if __name__ == '__main__':
    main()