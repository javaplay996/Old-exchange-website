-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboota4365
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboota4365/upload/1614756517909.png'),(2,'picture2','http://localhost:8080/springboota4365/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboota4365/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiuwuxinxi`
--

DROP TABLE IF EXISTS `discussjiuwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiuwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614756859735 DEFAULT CHARSET=utf8 COMMENT='旧物信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiuwuxinxi`
--

LOCK TABLES `discussjiuwuxinxi` WRITE;
/*!40000 ALTER TABLE `discussjiuwuxinxi` DISABLE KEYS */;
INSERT INTO `discussjiuwuxinxi` VALUES (81,'2021-03-03 07:22:20',1,1,'评论内容1','回复内容1'),(82,'2021-03-03 07:22:20',2,2,'评论内容2','回复内容2'),(83,'2021-03-03 07:22:20',3,3,'评论内容3','回复内容3'),(84,'2021-03-03 07:22:20',4,4,'评论内容4','回复内容4'),(85,'2021-03-03 07:22:20',5,5,'评论内容5','回复内容5'),(86,'2021-03-03 07:22:20',6,6,'评论内容6','回复内容6'),(1614756859734,'2021-03-03 07:34:19',1614756747286,1614756771094,'看起来不错',NULL);
/*!40000 ALTER TABLE `discussjiuwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuwuleixing`
--

DROP TABLE IF EXISTS `jiuwuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614756652241 DEFAULT CHARSET=utf8 COMMENT='旧物类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuwuleixing`
--

LOCK TABLES `jiuwuleixing` WRITE;
/*!40000 ALTER TABLE `jiuwuleixing` DISABLE KEYS */;
INSERT INTO `jiuwuleixing` VALUES (31,'2021-03-03 07:22:20','图书'),(1614756385820,'2021-03-03 07:26:25','衣服'),(1614756639180,'2021-03-03 07:30:39','手机'),(1614756645515,'2021-03-03 07:30:45','鞋子'),(1614756652240,'2021-03-03 07:30:51','箱包');
/*!40000 ALTER TABLE `jiuwuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuwuxinxi`
--

DROP TABLE IF EXISTS `jiuwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiaming` varchar(200) DEFAULT NULL COMMENT '卖家名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiuwumingcheng` varchar(200) NOT NULL COMMENT '旧物名称',
  `jiuwuleixing` varchar(200) NOT NULL COMMENT '旧物类型',
  `jiuwutupian` varchar(200) DEFAULT NULL COMMENT '旧物图片',
  `zhihuanxuqiu` longtext COMMENT '置换需求',
  `jiuwuxiangqing` longtext COMMENT '旧物详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614756747287 DEFAULT CHARSET=utf8 COMMENT='旧物信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuwuxinxi`
--

LOCK TABLES `jiuwuxinxi` WRITE;
/*!40000 ALTER TABLE `jiuwuxinxi` DISABLE KEYS */;
INSERT INTO `jiuwuxinxi` VALUES (1614756710816,'2021-03-03 07:31:50','001','小李','13800000000','粉红鞋子','鞋子','http://localhost:8080/springboota4365/upload/1614756668163.jpg','置换需求可自行编辑','<p>详情可自行编辑，置换需求也可在此补充，可传图文<img src=\"http://localhost:8080/springboota4365/upload/1614756709166.jpg\"></p>',0,0),(1614756747286,'2021-03-03 07:32:26','001','小李','13800000000','华为手机','手机','http://localhost:8080/springboota4365/upload/1614756724203.jpg','可自行编辑','<p>编辑器可传图文<img src=\"http://localhost:8080/springboota4365/upload/1614756745081.jpg\"></p>',2,0);
/*!40000 ALTER TABLE `jiuwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maijia`
--

DROP TABLE IF EXISTS `maijia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiaming` varchar(200) NOT NULL COMMENT '卖家名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiaming` (`maijiaming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614756609738 DEFAULT CHARSET=utf8 COMMENT='卖家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maijia`
--

LOCK TABLES `maijia` WRITE;
/*!40000 ALTER TABLE `maijia` DISABLE KEYS */;
INSERT INTO `maijia` VALUES (1614756609737,'2021-03-03 07:30:09','001','001','小李','女','13800000000','138@qq.com','http://localhost:8080/springboota4365/upload/1614756626999.jpg');
/*!40000 ALTER TABLE `maijia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614756590324 DEFAULT CHARSET=utf8 COMMENT='网站公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (71,'2021-03-03 07:22:20','公告测试1','简介可自行编辑','http://localhost:8080/springboota4365/upload/1614757012369.jpg','<p>内容可自行编辑，可上传图文<img src=\"http://localhost:8080/springboota4365/upload/1614756554018.png\"></p>'),(1614756590323,'2021-03-03 07:29:49','公告测试2','测试','http://localhost:8080/springboota4365/upload/1614756574892.jpg','<p>测试<img src=\"http://localhost:8080/springboota4365/upload/1614756588567.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614756851015 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614756851014,'2021-03-03 07:34:10',1614756771094,1614756747286,'jiuwuxinxi','华为手机','http://localhost:8080/springboota4365/upload/1614756724203.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','q9wuirj0zh11ecrymgletpm1kghum3at','2021-03-03 07:24:24','2021-03-03 00:24:25'),(2,1,'abo','users','管理员','zuuudnq8i9cqnxiiyya67qvwp8j38gwc','2021-03-03 07:25:28','2021-03-03 00:36:30'),(3,1614756609737,'001','maijia','卖家','ez616poah35ptp54l1t8o1ccwmbhv6hj','2021-03-03 07:30:14','2021-03-03 00:35:19'),(4,1614756771094,'01','yonghu','用户','fasbtyj61yfp1t3ecbce3i51yo5ux5qf','2021-03-03 07:32:56','2021-03-03 00:37:34');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-03 07:22:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614756771095 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (1614756771094,'2021-03-03 07:32:51','01','01','小王','女','13900000000','139@qq.com','http://localhost:8080/springboota4365/upload/1614756799699.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhihuanjiaoyi`
--

DROP TABLE IF EXISTS `zhihuanjiaoyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhihuanjiaoyi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiuwumingcheng` varchar(200) DEFAULT NULL COMMENT '旧物名称',
  `jiuwutupian` varchar(200) DEFAULT NULL COMMENT '旧物图片',
  `zhihuanwu` varchar(200) DEFAULT NULL COMMENT '置换物',
  `wupintupian` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `wupinxiangqing` longtext COMMENT '物品详情',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614756898632 DEFAULT CHARSET=utf8 COMMENT='置换交易';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhihuanjiaoyi`
--

LOCK TABLES `zhihuanjiaoyi` WRITE;
/*!40000 ALTER TABLE `zhihuanjiaoyi` DISABLE KEYS */;
INSERT INTO `zhihuanjiaoyi` VALUES (1614756898631,'2021-03-03 07:34:58','01','小王','13900000000','华为手机','http://localhost:8080/springboota4365/upload/1614756724203.jpg','小米手机','http://localhost:8080/springboota4365/upload/1614756884143.jpeg','<p>物品详情可自行编辑</p>','是','同意置换，具体再联系');
/*!40000 ALTER TABLE `zhihuanjiaoyi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03 17:58:14
