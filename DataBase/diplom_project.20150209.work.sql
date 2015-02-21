-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: diplom_project
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add company',7,'add_company'),(20,'Can change company',7,'change_company'),(21,'Can delete company',7,'delete_company'),(22,'Can add point',8,'add_point'),(23,'Can change point',8,'change_point'),(24,'Can delete point',8,'delete_point'),(25,'Can add route',9,'add_route'),(26,'Can change route',9,'change_route'),(27,'Can delete route',9,'delete_route'),(28,'Can add company',10,'add_company'),(29,'Can change company',10,'change_company'),(30,'Can delete company',10,'delete_company'),(31,'Can add point',11,'add_point'),(32,'Can change point',11,'change_point'),(33,'Can delete point',11,'delete_point'),(34,'Can add route',12,'add_route'),(35,'Can change route',12,'change_route'),(36,'Can delete route',12,'delete_route'),(37,'Can add message',13,'add_message'),(38,'Can change message',13,'change_message'),(39,'Can delete message',13,'delete_message'),(40,'Can add delay',14,'add_delay'),(41,'Can change delay',14,'change_delay'),(42,'Can delete delay',14,'delete_delay');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$15000$cFB0qVLkHgBt$ihmH2n5g89ygNaa2EJDNV1I1Gxtg7OAnCd72K6oWOIE=','2015-02-07 23:17:30',1,'admin','','','admin@mail.ru',1,1,'2015-02-02 13:45:25');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) NOT NULL,
  `company_color` varchar(50) NOT NULL,
  `company_logo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Му-Му','grey','mumu.png'),(2,'Шоколадница','brown','shokolad.jpg'),(3,'Starbucks','green','starbucks.jpg');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delay`
--

DROP TABLE IF EXISTS `delay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delay_max` time(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delay`
--

LOCK TABLES `delay` WRITE;
/*!40000 ALTER TABLE `delay` DISABLE KEYS */;
INSERT INTO `delay` VALUES (4,'00:15:00.000000');
/*!40000 ALTER TABLE `delay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-02-02 13:45:59','1','Company object',1,'',7,1),(2,'2015-02-02 13:46:20','1','Point object',1,'',8,1),(3,'2015-02-02 13:47:18','2','Point object',1,'',8,1),(4,'2015-02-02 13:47:26','3','Point object',1,'',8,1),(5,'2015-02-02 13:47:33','4','Point object',1,'',8,1),(6,'2015-02-02 13:47:41','5','Point object',1,'',8,1),(7,'2015-02-02 13:48:23','1','Route object',1,'',9,1),(8,'2015-02-02 14:05:17','6','Point object',1,'',8,1),(9,'2015-02-02 14:51:11','2','Company object',1,'',10,1),(10,'2015-02-02 14:52:58','7','Point object',1,'',11,1),(11,'2015-02-02 14:54:03','8','Point object',1,'',11,1),(12,'2015-02-02 14:56:26','9','Point object',1,'',11,1),(13,'2015-02-02 14:56:42','10','Point object',1,'',11,1),(14,'2015-02-02 14:57:08','11','Point object',1,'',11,1),(15,'2015-02-02 14:57:30','12','Point object',1,'',11,1),(16,'2015-02-02 14:58:04','13','Point object',1,'',11,1),(17,'2015-02-03 14:07:56','13','Point object',2,'Изменен point_coordinates.',11,1),(18,'2015-02-03 14:08:18','12','Point object',2,'Изменен point_coordinates.',11,1),(19,'2015-02-03 14:08:33','11','Point object',2,'Изменен point_coordinates.',11,1),(20,'2015-02-03 14:08:49','10','Point object',2,'Изменен point_coordinates.',11,1),(21,'2015-02-03 14:09:16','9','Point object',2,'Изменен point_coordinates.',11,1),(22,'2015-02-03 14:09:31','8','Point object',2,'Изменен point_coordinates.',11,1),(23,'2015-02-03 14:09:44','7','Point object',2,'Изменен point_coordinates.',11,1),(24,'2015-02-03 14:10:09','6','Point object',2,'Изменен point_coordinates.',11,1),(25,'2015-02-03 14:10:44','4','Point object',2,'Изменен point_coordinates.',11,1),(26,'2015-02-03 14:16:12','3','Point object',2,'Изменен point_coordinates.',11,1),(27,'2015-02-03 14:16:32','5','Point object',2,'Изменен point_coordinates.',11,1),(28,'2015-02-03 14:17:02','2','Point object',2,'Изменен point_coordinates.',11,1),(29,'2015-02-03 14:17:18','1','Point object',2,'Изменен point_coordinates.',11,1),(30,'2015-02-03 14:20:47','14','Point object',1,'',11,1),(31,'2015-02-03 14:21:22','15','Point object',1,'',11,1),(32,'2015-02-03 14:21:54','16','Point object',1,'',11,1),(33,'2015-02-03 14:22:28','17','Point object',1,'',11,1),(34,'2015-02-03 14:30:09','2','Company object',2,'Изменен company_logo.',10,1),(35,'2015-02-03 14:30:24','2','Company object',2,'Изменен company_logo.',10,1),(36,'2015-02-03 14:30:39','1','Company object',2,'Изменен company_logo.',10,1),(37,'2015-02-03 14:38:21','3','Company object',1,'',10,1),(38,'2015-02-03 14:39:15','18','Point object',1,'',11,1),(39,'2015-02-03 14:40:02','19','Point object',1,'',11,1),(40,'2015-02-03 14:40:50','20','Point object',1,'',11,1),(41,'2015-02-03 14:41:38','21','Point object',1,'',11,1),(42,'2015-02-04 15:01:15','1','Company object',2,'Изменен company_logo.',10,1),(43,'2015-02-07 14:12:06','21','Москва, Преображенская пл., 8',2,'Изменен point_time_collection.',11,1),(44,'2015-02-07 23:21:18','21','Москва, Преображенская пл., 8',2,'Изменен point_time_collection.',11,1),(45,'2015-02-07 23:21:27','21','Москва, Преображенская пл., 8',2,'Изменен point_time_collection.',11,1),(46,'2015-02-07 23:23:52','4','00:15:00',1,'',14,1),(47,'2015-02-08 15:32:30','1','55.608032,37.621362',3,'',12,1),(48,'2015-02-08 16:23:17','2','55.709335,37.583596',1,'',12,1),(49,'2015-02-08 16:23:29','3','55.781570,37.669684',1,'',12,1),(50,'2015-02-08 16:24:52','4','55.777756,37.556222',1,'',12,1),(51,'2015-02-08 19:58:52','21','Москва, Преображенская пл., 8',2,'Изменен point_delay_collection и point_status_collection.',11,1),(52,'2015-02-08 20:02:05','11','Реутов, ул.Октября, стр.10',2,'Изменен point_time_collection, point_delay_collection и point_status_collection.',11,1),(53,'2015-02-08 20:05:14','11','Реутов, ул.Октября, стр.10',2,'Изменен point_time_collection и point_status_collection.',11,1),(54,'2015-02-08 20:17:53','11','Реутов, ул.Октября, стр.10',2,'Изменен point_time_collection.',11,1),(55,'2015-02-08 20:18:25','1','Россия, Москва, улица Рождественка, 5/7с2',2,'Изменен point_time_collection и point_delay_collection.',11,1),(56,'2015-02-08 22:08:08','13','Дмитровское шоссе 163А',2,'Изменен point_address.',11,1),(57,'2015-02-08 22:17:41','6','Москва, Комсомольский проспект, 26',2,'Изменен point_address.',11,1),(58,'2015-02-08 22:17:48','5','Москва, улица Коровий Вал, 1',2,'Изменен point_address.',11,1),(59,'2015-02-08 22:17:54','4','Москва, проспект Мира, 114бс2',2,'Изменен point_address.',11,1),(60,'2015-02-08 22:18:01','3','Москва, Новослободская улица, 34/2',2,'Изменен point_address.',11,1),(61,'2015-02-08 22:18:09','2','Москва, Балаклавский проспект, 7',2,'Изменен point_address.',11,1),(62,'2015-02-08 22:18:17','1','Москва, улица Рождественка, 5/7с2',2,'Изменен point_address.',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'company','acquiring','company'),(8,'point','acquiring','point'),(9,'route','acquiring','route'),(10,'company','collection','company'),(11,'point','collection','point'),(12,'route','collection','route'),(13,'message','collection','message'),(14,'delay','collection','delay');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-02-08 16:12:13.883000'),(2,'auth','0001_initial','2015-02-08 16:12:13.936000'),(3,'admin','0001_initial','2015-02-08 16:12:14.005000'),(4,'collection','0001_initial','2015-02-08 16:12:14.076000'),(5,'sessions','0001_initial','2015-02-08 16:12:14.239000'),(6,'collection','0002_auto_20150208_1913','2015-02-08 16:13:34.249000'),(7,'collection','0003_point_point_delay_color','2015-02-08 20:45:15.406000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2cm8p6c8n97d135wehi9trtky0foulli','NWZjZjI2ZWJkZDZjMGE0NGQ4NzNlNWY5YTE2ODllN2E4OWM5NDViYzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2NTdmMTM4NWI0ODNhMWU2OTRjZmMwOGE3MGFhMTAzYWM1NzAxN2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-02-20 22:52:54'),('3aq6k4eywwz5yyd1k4qesg006r5dunwp','ODQ0ZTJiYTc5NTIwNDk2MWVhM2VjZGQyOTIzYjc1ZDJkMzIxYWRkZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiNzZmNGQ2NTk1YzQ2OWJkOTllMjZkNjc1ODM4OWJhMmU2NjJjOGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-02-21 23:17:30'),('gj9oqbt4xrfklpbnbi9wxuty4r7qwxbx','MTRhZDhkYjFmMTFhOTBhOTM1OGMyMjU0MzkwMjdiMmUzOGNhOGZjZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ0Zjg3MGJjZTUzZDYwMGNkYTYwMjkzMmNmZDNiOTAzYmM4YjIyZDIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-02-16 13:45:41'),('tta6vn8c8mdxwms3hpn4so8mhpklhl7q','MTRhZDhkYjFmMTFhOTBhOTM1OGMyMjU0MzkwMjdiMmUzOGNhOGZjZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ0Zjg3MGJjZTUzZDYwMGNkYTYwMjkzMmNmZDNiOTAzYmM4YjIyZDIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-02-17 13:54:30');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_text` longtext,
  `message_point_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message_7f7a24d5` (`message_point_id`),
  CONSTRAINT `message_message_point_id_512662c9_fk_point_id` FOREIGN KEY (`message_point_id`) REFERENCES `point` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point`
--

DROP TABLE IF EXISTS `point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `point_address` varchar(200) DEFAULT NULL,
  `point_time_collection` time(6) DEFAULT NULL,
  `point_status_collection` tinyint(1) DEFAULT NULL,
  `point_company_id` int(11) DEFAULT NULL,
  `point_coordinates` varchar(100) NOT NULL,
  `point_delay_collection` time(6) DEFAULT NULL,
  `point_telephone` varchar(50) NOT NULL,
  `point_delay_color` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `point_1e1ba836` (`point_company_id`),
  CONSTRAINT `point_point_company_id_30bf239e_fk_company_id` FOREIGN KEY (`point_company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point`
--

LOCK TABLES `point` WRITE;
/*!40000 ALTER TABLE `point` DISABLE KEYS */;
INSERT INTO `point` VALUES (1,'Москва, улица Рождественка, 5/7с2','23:59:00.000000',0,1,'55.76114778, 37.62330350','00:00:00.000000','+7(909)-905-73-32','green'),(2,'Москва, Балаклавский проспект, 7','15:30:00.000000',0,1,'55.64074628, 37.60327150','00:00:00.000000','+7(909)-905-73-32','green'),(3,'Москва, Новослободская улица, 34/2','15:49:30.000000',0,1,'55.78393928, 37.59746800','00:00:00.000000','+7(909)-905-73-32','green'),(4,'Москва, проспект Мира, 114бс2','16:00:00.000000',0,1,'55.80822428, 37.63800000','00:00:00.000000','+7(909)-905-73-32','green'),(5,'Москва, улица Коровий Вал, 1','17:00:00.000000',0,1,'55.72933078, 37.62261150','00:00:00.000000','+7(909)-905-73-32','green'),(6,'Москва, Комсомольский проспект, 26','14:00:00.000000',0,1,'55.72757178, 37.58123550','00:00:00.000000','+7(909)-905-73-32','green'),(7,' ул.Скобелевская, д.14','10:00:00.000000',0,2,'55.54910328, 37.55423250','00:00:00.000000','+7(909)-905-73-32','green'),(8,'Балаклавский пр-т вл.5А стр.1','11:00:00.000000',0,2,'55.64083828, 37.60911950','00:00:00.000000','+7(909)-905-73-32','green'),(9,'ул.Б.Тульская, д.13,','12:00:00.000000',0,2,'55.70872928, 37.62209050','00:00:00.000000','+7(909)-905-73-32','green'),(10,'Рублевское ш., д.62','17:00:00.000000',0,2,'55.76666828, 37.38158500','00:00:00.000000','+7(909)-905-73-32','green'),(11,'Реутов, ул.Октября, стр.10','23:55:59.000000',0,2,'55.75188778, 37.85923750','00:00:00.000000','+7(909)-905-73-32','green'),(12,'пр-т Мира, д.211,','15:30:00.000000',0,2,'55.84613278, 37.66259550','00:00:00.000000','+7(909)-905-73-32','green'),(13,'Дмитровское шоссе 163А','14:00:00.000000',0,2,'55.90906528, 37.53924850','00:00:00.000000','+7(909)-905-73-32','green'),(14,'Московская обл., Химки г., Ленинградское ш., вл. 5','09:00:00.000000',0,1,'55.88876028, 37.43352550','00:00:00.000000','+7(909)-905-73-32','green'),(15,'Москва, ул. Парковая 9-я, 61а, стр. 1','10:00:00.000000',0,1,'55.80908928, 37.79841250','00:00:00.000000','+7(909)-905-73-32','green'),(16,'Москва, просп. Зеленый, 54а, ТЦ Меркурий','11:00:00.000000',0,1,'55.75191278, 37.81279450','00:00:00.000000','+7(909)-905-73-32','green'),(17,'Москва, ул. Профсоюзная, 129а','12:00:00.000000',0,1,'55.61813028, 37.50748350','00:00:00.000000','+7(909)-905-73-32','green'),(18,'Москва, ул. Щукинская, 42','09:00:00.000000',0,3,'55.80946928, 37.46457150','00:00:00.000000','+7(909)-905-73-32','green'),(19,'Московская обл., округ Котельники, Котельники, 1-й Покровский пр-д, 5','10:00:00.000000',0,3,'55.65825628, 37.84508850','00:00:00.000000','+7(909)-905-73-32','green'),(20,'Москва, ул. Покрышкина, 4','16:00:00.000000',0,3,'55.66506028, 37.48148650','00:00:00.000000','+7(909)-905-73-32','green'),(21,'Москва, Преображенская пл., 8','17:00:00.000000',1,3,'55.79488678, 37.71281150','00:00:00.000000','+7(909)-905-73-32','green');
/*!40000 ALTER TABLE `point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_current_position` varchar(100) NOT NULL,
  `route_status` varchar(200) NOT NULL,
  `route_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `route_0ad3a312` (`route_company_id`),
  CONSTRAINT `route_route_company_id_10a385e2_fk_company_id` FOREIGN KEY (`route_company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (2,'55.709335,37.583596','Free',3),(3,'55.781570,37.669684','Free',1),(4,'55.777756,37.556222','Free',2);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-09  1:53:24
