-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jhoe
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.16.04.1

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
-- Table structure for table `credits_logs`
--

DROP TABLE IF EXISTS `credits_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credits_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `reseller_id` int(11) NOT NULL,
  `remaining` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `time_stamp` text COLLATE utf8_unicode_ci NOT NULL,
  `credits_used` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `client_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `reseller_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credits_logs`
--

LOCK TABLES `credits_logs` WRITE;
/*!40000 ALTER TABLE `credits_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `credits_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deleted_users`
--

DROP TABLE IF EXISTS `deleted_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deleted_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL DEFAULT '',
  `user_pass` varchar(50) NOT NULL DEFAULT '',
  `ss_port` varchar(6) NOT NULL,
  `user_email` varchar(50) NOT NULL DEFAULT '',
  `full_name` varchar(50) NOT NULL,
  `avatar` varchar(50) NOT NULL DEFAULT '1.png',
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipaddress` varchar(50) NOT NULL DEFAULT '0.0.0.0',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code` varchar(10) NOT NULL,
  `is_validated` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_vip` tinyint(1) NOT NULL DEFAULT '0',
  `duration` bigint(50) NOT NULL DEFAULT '0',
  `is_reseller` tinyint(1) NOT NULL DEFAULT '0',
  `credits` int(20) NOT NULL DEFAULT '0',
  `upline` int(10) NOT NULL DEFAULT '1',
  `location` text NOT NULL,
  `payment` text NOT NULL,
  `contact` text NOT NULL,
  `frozen` tinyint(1) NOT NULL DEFAULT '0',
  `vip_duration` bigint(50) NOT NULL,
  `admin_group` varchar(32) NOT NULL,
  `is_connected` tinyint(1) NOT NULL DEFAULT '0',
  `user_rank` enum('Superadmin','Admin','Sub Admin','Reseller','Sub Reseller','Client') NOT NULL DEFAULT 'Client',
  `picture` blob NOT NULL,
  `is_offence` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) NOT NULL DEFAULT '0',
  `is_ban` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_date` datetime NOT NULL,
  `private_duration` bigint(50) NOT NULL,
  `device_connected` int(2) NOT NULL DEFAULT '0',
  `device_limit` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  KEY `user_id` (`user_id`),
  KEY `user_email_2` (`user_email`),
  FULLTEXT KEY `user_email` (`user_email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_users`
--

LOCK TABLES `deleted_users` WRITE;
/*!40000 ALTER TABLE `deleted_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `deleted_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duration`
--

DROP TABLE IF EXISTS `duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duration_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration_time` bigint(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duration`
--

LOCK TABLES `duration` WRITE;
/*!40000 ALTER TABLE `duration` DISABLE KEYS */;
INSERT INTO `duration` VALUES (1,'1 Hour',3600),(2,'2 Hours',7200),(3,'3 Hours',10800),(4,'4 Hours',14400),(5,'5 Hours',18000),(6,'6 Hours',21600),(7,'7 Hours',25200),(8,'8 Hours',28800),(9,'9 Hours',32400),(10,'10 Hours',36000),(11,'11 Hours',39600),(12,'12 Hours',43200),(13,'13 Hours',46800),(14,'14 Hours',50400),(15,'15 Hours',54000),(16,'16 Hours',57600),(17,'17 Hours',61200),(18,'18 Hours',64800),(19,'19 Hours',68400),(20,'20 Hours',72000),(21,'21 Hours',75600),(22,'22 Hours',79200),(23,'23 Hours',82800),(24,'1 Day',86400),(25,'2 Days',172800),(26,'3 Days',259200),(27,'4 Days',345600),(28,'5 Days',432000),(29,'6 Days',518400),(30,'7 Days',604800),(31,'8 Days',691200),(32,'9 Days',777600),(33,'10 Days',864000),(34,'15 Days',1296000),(35,'20 Days',1728000),(36,'30 Days',2592000),(37,'31 Days',2678400),(38,'32 Days',2764800),(39,'-3 Days',-18000);
/*!40000 ALTER TABLE `duration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempts` (
  `ip` varchar(20) DEFAULT NULL,
  `attempts` int(11) DEFAULT '0',
  `lastlogin` datetime DEFAULT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts_logs`
--

DROP TABLE IF EXISTS `login_attempts_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempts_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `user_name` varchar(64) NOT NULL,
  `logs_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts_logs`
--

LOCK TABLES `login_attempts_logs` WRITE;
/*!40000 ALTER TABLE `login_attempts_logs` DISABLE KEYS */;
INSERT INTO `login_attempts_logs` VALUES (1,'178.128.214.73','webmaster','2018-07-09 11:48:38'),(2,'116.251.223.136','trial583243193@gmail.com','2018-07-10 08:36:54'),(3,'188.166.252.115','resellerl','2018-07-11 05:54:59'),(4,'188.166.252.115','rexzero','2018-07-11 05:59:33'),(5,'188.166.252.115','rexzero','2018-07-11 05:59:55'),(6,'::1','webmaster','2018-07-13 12:35:56'),(7,'::1','jhoel','2018-07-13 12:45:28'),(8,'::1','m36ev','2018-07-13 18:52:57'),(9,'::1','m36ev','2018-07-13 18:53:06'),(10,'::1','admin2','2018-07-18 13:47:27'),(11,'::1','admin2','2018-07-18 13:47:57'),(12,'::1','admin2','2018-07-18 13:59:30'),(13,'::1','admin2','2018-07-18 14:09:58'),(14,'::1','admin2','2018-07-18 14:11:04'),(15,'::1','admin','2018-07-18 14:19:17'),(16,'::1','admin2','2018-07-18 14:58:56'),(17,'::1','admin','2018-07-18 15:07:04'),(18,'::1','admin','2018-07-18 15:09:50'),(19,'::1','admin','2018-07-18 15:14:19'),(20,'127.0.0.1','jho5','2018-07-23 09:36:36'),(21,'::1','admi2','2018-08-01 18:36:51'),(22,'::1','jhoel','2018-08-02 18:55:43'),(23,'::1','admi2','2018-09-16 12:07:36'),(24,'::1','admin','2018-10-09 20:50:45'),(25,'::1','admi2','2018-10-13 23:36:19'),(26,'::1','admin1','2018-11-04 08:11:37'),(27,'122.53.61.115','daven2018','2018-12-31 05:07:58'),(28,'122.53.61.115','superadmin','2018-12-31 06:03:43'),(29,'128.199.158.25','devph','2018-12-31 06:53:11'),(30,'128.199.158.25','Devph','2018-12-31 06:53:27'),(31,'128.199.158.25','admin','2018-12-31 06:53:39'),(32,'49.151.19.176','admin','2018-12-31 12:50:18'),(33,'206.189.11.169','Aldrien','2019-01-02 17:00:28'),(34,'128.199.234.244','Aldrien','2019-01-04 02:46:49'),(35,'128.199.234.244','Aldrien','2019-01-04 02:46:49'),(36,'128.199.224.68','Aldrien','2019-01-05 03:11:00'),(37,'206.189.217.151','Admin','2019-01-06 06:59:21'),(38,'103.102.255.10','rohan','2019-01-09 09:28:36'),(39,'110.54.180.35','admin','2019-01-20 07:51:26'),(40,'110.54.180.35','ADMIN','2019-01-20 07:51:34'),(41,'::1','admin','2019-04-01 11:24:08'),(42,'::1','admin','2019-04-01 11:24:17');
/*!40000 ALTER TABLE `login_attempts_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_banned_ip`
--

DROP TABLE IF EXISTS `login_banned_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_banned_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(128) NOT NULL DEFAULT '0.0.0.0',
  `logs_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_banned_ip`
--

LOCK TABLES `login_banned_ip` WRITE;
/*!40000 ALTER TABLE `login_banned_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_banned_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reload_logs`
--

DROP TABLE IF EXISTS `reload_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reload_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `reseller_id` int(11) NOT NULL,
  `time_stamp` text COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `seller` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reload_logs`
--

LOCK TABLES `reload_logs` WRITE;
/*!40000 ALTER TABLE `reload_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `reload_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_list`
--

DROP TABLE IF EXISTS `server_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_list` (
  `server_id` int(255) NOT NULL AUTO_INCREMENT,
  `server_name` varchar(255) NOT NULL,
  `server_ip` varchar(20) NOT NULL,
  `server_category` enum('premium','vip','private') NOT NULL DEFAULT 'premium',
  `server_port` int(11) NOT NULL DEFAULT '80',
  `server_folder` varchar(255) NOT NULL,
  `server_tcp` varchar(15) NOT NULL DEFAULT 'tcp1',
  `server_parser` varchar(255) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`server_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_list`
--

LOCK TABLES `server_list` WRITE;
/*!40000 ALTER TABLE `server_list` DISABLE KEYS */;
INSERT INTO `server_list` VALUES (51,'jho 11','167.71.195.218','premium',80,'status','tcp','http://167.71.195.218:80/status/tcp.txt',1);
/*!40000 ALTER TABLE `server_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_options`
--

DROP TABLE IF EXISTS `site_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_options` (
  `email_validation` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_options`
--

LOCK TABLES `site_options` WRITE;
/*!40000 ALTER TABLE `site_options` DISABLE KEYS */;
INSERT INTO `site_options` VALUES (0);
/*!40000 ALTER TABLE `site_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL DEFAULT '',
  `user_pass` varchar(50) NOT NULL DEFAULT '',
  `ss_port` varchar(6) NOT NULL,
  `user_email` varchar(50) NOT NULL DEFAULT '',
  `full_name` varchar(50) NOT NULL,
  `avatar` varchar(50) NOT NULL DEFAULT '1.png',
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipaddress` varchar(50) NOT NULL DEFAULT '0.0.0.0',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code` varchar(10) NOT NULL,
  `is_validated` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_vip` tinyint(1) NOT NULL DEFAULT '0',
  `duration` bigint(50) NOT NULL DEFAULT '0',
  `is_reseller` tinyint(1) NOT NULL DEFAULT '0',
  `credits` int(20) NOT NULL DEFAULT '0',
  `upline` int(10) NOT NULL DEFAULT '1',
  `location` text NOT NULL,
  `payment` text NOT NULL,
  `contact` text NOT NULL,
  `frozen` tinyint(1) NOT NULL DEFAULT '0',
  `vip_duration` bigint(50) NOT NULL,
  `admin_group` varchar(32) NOT NULL,
  `is_connected` tinyint(1) NOT NULL DEFAULT '0',
  `user_rank` enum('Superadmin','Admin','Sub Admin','Reseller','Sub Reseller','Client') NOT NULL DEFAULT 'Client',
  `picture` blob NOT NULL,
  `is_offence` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) NOT NULL DEFAULT '0',
  `is_ban` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_date` datetime NOT NULL,
  `private_duration` bigint(50) NOT NULL,
  `device_connected` int(2) NOT NULL DEFAULT '0',
  `device_limit` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  KEY `user_id` (`user_id`),
  KEY `user_email_2` (`user_email`),
  FULLTEXT KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=171 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','1234','31668','dev@gmail.com','jhoel','1.png','0000-00-00 00:00:00','0.0.0.0','0000-00-00 00:00:00','535644531',1,1,1,41529600,101,314,1,'222222','2222222222','12222',0,3531600,'1',0,'Superadmin','',0,0,0,'2019-08-19 03:06:55',774000,1,4);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip-vouchers`
--

DROP TABLE IF EXISTS `vip-vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip-vouchers` (
  `code_name` varchar(50) NOT NULL,
  `user_id` int(100) NOT NULL,
  `reseller_id` int(100) NOT NULL,
  `is_used` int(1) NOT NULL,
  `date_used` varchar(50) NOT NULL,
  `time_stamp` text NOT NULL,
  `vip_duration` bigint(50) NOT NULL DEFAULT '0',
  UNIQUE KEY `code_name` (`code_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip-vouchers`
--

LOCK TABLES `vip-vouchers` WRITE;
/*!40000 ALTER TABLE `vip-vouchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `vip-vouchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_logs`
--

DROP TABLE IF EXISTS `voucher_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `reseller_id` int(11) NOT NULL,
  `time_stamp` text COLLATE utf8_unicode_ci NOT NULL,
  `credits_used` int(11) NOT NULL,
  `duration` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `seller` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_logs`
--

LOCK TABLES `voucher_logs` WRITE;
/*!40000 ALTER TABLE `voucher_logs` DISABLE KEYS */;
INSERT INTO `voucher_logs` VALUES (1,1,1,'2020-08-26 13:15:41',1,'30<font color=\"green\"><i>Days</i></font>','premium','admin','admin');
/*!40000 ALTER TABLE `voucher_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vouchers` (
  `code_name` varchar(50) NOT NULL,
  `user_id` int(100) NOT NULL,
  `categ` varchar(100) NOT NULL,
  `reseller_id` int(100) NOT NULL,
  `is_used` int(1) NOT NULL,
  `date_used` varchar(50) NOT NULL,
  `time_stamp` text NOT NULL,
  `duration` bigint(50) NOT NULL DEFAULT '0',
  UNIQUE KEY `code_name` (`code_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
INSERT INTO `vouchers` VALUES ('premium',1,'duration',1,0,'2019-07-30 13:24:51','2019-07-29 23:38:14',1),('vip',2,'vip_duration',1,0,'2019-07-30 12:40:48','2019-07-29 23:38:14',1),('private',3,'private_duration',1,0,'2019-07-30 12:11:54','2019-07-29 23:38:14',1);
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-28  7:51:38
