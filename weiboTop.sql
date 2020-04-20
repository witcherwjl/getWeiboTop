-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: getWeiboTop
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `weibo_top`
--

DROP TABLE IF EXISTS `weibo_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weibo_top` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(75) NOT NULL,
  `Popularity` int unsigned NOT NULL,
  `Sign` varchar(3) NOT NULL,
  `Realtime_ranking` int unsigned NOT NULL,
  `URL` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weibo_top`
--

LOCK TABLES `weibo_top` WRITE;
/*!40000 ALTER TABLE `weibo_top` DISABLE KEYS */;
INSERT INTO `weibo_top` VALUES (1,'全球新冠肺炎感染人数近230万例',999999999,'置顶',0,'https://s.weibo.com/weibo?q=%23全球新冠肺炎感染人数近230万例%23&Refer=new_time'),(2,'杨紫工作室律师声明',3914086,'热',1,'https://s.weibo.com/weibo?q=%23杨紫工作室律师声明%23&Refer=top'),(3,'湖北现有确诊病例105例',1510606,'新',2,'https://s.weibo.com/weibo?q=%23湖北现有确诊病例105例%23&Refer=top'),(4,'本色回归',1348198,'新',3,'https://s.weibo.comjavascript:void(0);'),(5,'关晓彤为鹿晗庆生',1319537,'荐',4,'https://s.weibo.com/weibo?q=%23关晓彤为鹿晗庆生%23&Refer=top'),(6,'广东新增18例无症状感染者',1044904,'热',5,'https://s.weibo.com/weibo?q=%23广东新增18例无症状感染者%23&Refer=top'),(7,'韩庚暴瘦',1017801,'新',6,'https://s.weibo.comjavascript:void(0);'),(8,'巴黎非饮用自来水中检测到新冠病毒',915841,'',7,'https://s.weibo.com/weibo?q=%23巴黎非饮用自来水中检测到新冠病毒%23&Refer=top'),(9,'湖北高考时间为7月7日至8日',887724,'',8,'https://s.weibo.com/weibo?q=%23湖北高考时间为7月7日至8日%23&Refer=top'),(10,'上海巨响',698669,'',9,'https://s.weibo.com/weibo?q=%23上海巨响%23&Refer=top'),(11,'孙力军接受中央纪委国家监委调查',697405,'热',10,'https://s.weibo.com/weibo?q=孙力军接受中央纪委国家监委调查&Refer=top'),(12,'钱枫又胖了',696433,'',11,'https://s.weibo.com/weibo?q=%23钱枫又胖了%23&Refer=top'),(13,'baby吃到自己种的鸡毛菜',589463,'热',12,'https://s.weibo.com/weibo?q=%23baby吃到自己种的鸡毛菜%23&Refer=top'),(14,'英国暂不考虑让学校利用暑期补课',588958,'热',13,'https://s.weibo.com/weibo?q=%23英国暂不考虑让学校利用暑期补课%23&Refer=top'),(15,'夫妻的世界气人',587686,'',14,'https://s.weibo.com/weibo?q=%23夫妻的世界气人%23&Refer=top'),(16,'李文亮等33人追授中国青年五四奖章',586044,'',15,'https://s.weibo.com/weibo?q=%23李文亮等33人追授中国青年五四奖章%23&Refer=top'),(17,'一条小团团露脸',584340,'',16,'https://s.weibo.com/weibo?q=%23一条小团团露脸%23&Refer=top'),(18,'美国新冠肺炎累计确诊超过75万',583128,'',17,'https://s.weibo.com/weibo?q=%23美国新冠肺炎累计确诊超过75万%23&Refer=top'),(19,'猪肉每公斤降了6元',582021,'',18,'https://s.weibo.com/weibo?q=%23猪肉每公斤降了6元%23&Refer=top'),(20,'女生汗毛多是什么体验',581331,'',19,'https://s.weibo.com/weibo?q=%23女生汗毛多是什么体验%23&Refer=top'),(21,'吉恩戴奇去世',579503,'',20,'https://s.weibo.com/weibo?q=%23吉恩戴奇去世%23&Refer=top'),(22,'湖北开学时间',579106,'新',21,'https://s.weibo.com/weibo?q=湖北开学时间&Refer=top'),(23,'女生希望男生能懂的事',558658,'新',22,'https://s.weibo.com/weibo?q=%23女生希望男生能懂的事%23&Refer=top'),(24,'阿信问大头菜价格',535680,'新',23,'https://s.weibo.com/weibo?q=%23阿信问大头菜价格%23&Refer=top'),(25,'医院为违停睡车内男子提供车位',518273,'新',24,'https://s.weibo.com/weibo?q=%23医院为违停睡车内男子提供车位%23&Refer=top'),(26,'你见过最好看的素颜照',518183,'',25,'https://s.weibo.com/weibo?q=%23你见过最好看的素颜照%23&Refer=top'),(27,'王凯演技',503619,'',26,'https://s.weibo.com/weibo?q=%23王凯演技%23&Refer=top'),(28,'考个驾照究竟有多难',396276,'',27,'https://s.weibo.com/weibo?q=%23考个驾照究竟有多难%23&Refer=top'),(29,'如何拒绝借钱又不伤感情',375854,'',28,'https://s.weibo.com/weibo?q=%23如何拒绝借钱又不伤感情%23&Refer=top'),(30,'不可能打工男子称后悔曾经行为',347063,'新',29,'https://s.weibo.com/weibo?q=%23不可能打工男子称后悔曾经行为%23&Refer=top'),(31,'多地最新暑假时间',329560,'',30,'https://s.weibo.com/weibo?q=%23多地最新暑假时间%23&Refer=top'),(32,'你姓氏里出过的名人',328148,'',31,'https://s.weibo.com/weibo?q=%23你姓氏里出过的名人%23&Refer=top'),(33,'G2夺冠',302549,'新',32,'https://s.weibo.com/weibo?q=G2夺冠&Refer=top'),(34,'失业是一种什么体验',278951,'',33,'https://s.weibo.com/weibo?q=%23失业是一种什么体验%23&Refer=top'),(35,'花舞剑 强',277812,'新',34,'https://s.weibo.com/weibo?q=花舞剑 强&Refer=top'),(36,'个别省份本土聚集性病例持续增加',273922,'',35,'https://s.weibo.com/weibo?q=%23个别省份本土聚集性病例持续增加%23&Refer=top'),(37,'OPPO副总裁沈义人将离职',273026,'',36,'https://s.weibo.com/weibo?q=%23OPPO副总裁沈义人将离职%23&Refer=top'),(38,'女子民政局门口遭丈夫暴打',270648,'新',37,'https://s.weibo.com/weibo?q=%23女子民政局门口遭丈夫暴打%23&Refer=top'),(39,'北京大风',258407,'',38,'https://s.weibo.com/weibo?q=北京大风&Refer=top'),(40,'武昌医院已故院长刘智明妻子接受采访',253240,'',39,'https://s.weibo.com/weibo?q=%23武昌医院已故院长刘智明妻子接受采访%23&Refer=top'),(41,'沪深300',253130,'',40,'https://s.weibo.com/weibo?q=沪深300&Refer=top'),(42,'Loco恋情',249014,'新',41,'https://s.weibo.com/weibo?q=%23Loco恋情%23&Refer=top'),(43,'医院奖励援鄂医护每人86666元',245360,'新',42,'https://s.weibo.com/weibo?q=医院奖励援鄂医护每人86666元&Refer=top'),(44,'父母面前的你和真实的你',241502,'新',43,'https://s.weibo.com/weibo?q=%23父母面前的你和真实的你%23&Refer=top'),(45,'屈楚萧 万籽麟',238544,'新',44,'https://s.weibo.com/weibo?q=屈楚萧 万籽麟&Refer=top'),(46,'新疆鄯善县万亩大芸花盛开',236006,'新',45,'https://s.weibo.com/weibo?q=新疆鄯善县万亩大芸花盛开&Refer=top'),(47,'孟加拉超10万人参加葬礼',233908,'新',46,'https://s.weibo.com/weibo?q=孟加拉超10万人参加葬礼&Refer=top'),(48,'一分钟汽车兵能做些什么',231916,'新',47,'https://s.weibo.com/weibo?q=一分钟汽车兵能做些什么&Refer=top'),(49,'华盛顿召回1.2万套新冠病毒检测盒',227085,'新',48,'https://s.weibo.com/weibo?q=华盛顿召回1.2万套新冠病毒检测盒&Refer=top'),(50,'13岁男孩杀害10岁堂妹抛尸后仍闲逛',226522,'新',49,'https://s.weibo.com/weibo?q=%2313岁男孩杀害10岁堂妹抛尸后仍闲逛%23&Refer=top'),(51,'绥芬河举报隐瞒谎报病情属实奖2000元',223859,'',50,'https://s.weibo.com/weibo?q=%23绥芬河举报隐瞒谎报病情属实奖2000元%23&Refer=top');
/*!40000 ALTER TABLE `weibo_top` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-20 18:36:07
