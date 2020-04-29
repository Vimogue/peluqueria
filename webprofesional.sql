CREATE DATABASE  IF NOT EXISTS `webprofesional` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `webprofesional`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: webprofesional
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Personal');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,32),(2,1,33),(3,1,34),(4,1,35),(5,1,36),(6,1,38),(7,1,41),(8,1,42),(9,1,43),(10,1,44),(11,1,25),(12,1,26),(13,1,27),(14,1,28),(15,1,29),(16,1,30),(17,1,31);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add service',7,'add_service'),(26,'Can change service',7,'change_service'),(27,'Can delete service',7,'delete_service'),(28,'Can view service',7,'view_service'),(29,'Can add entrada',8,'add_post'),(30,'Can change entrada',8,'change_post'),(31,'Can delete entrada',8,'delete_post'),(32,'Can view entrada',8,'view_post'),(33,'Can add categoría',9,'add_category'),(34,'Can change categoría',9,'change_category'),(35,'Can delete categoría',9,'delete_category'),(36,'Can view categoría',9,'view_category'),(37,'Can add enlace',10,'add_link'),(38,'Can change enlace',10,'change_link'),(39,'Can delete enlace',10,'delete_link'),(40,'Can view enlace',10,'view_link'),(41,'Can add página',11,'add_page'),(42,'Can change página',11,'change_page'),(43,'Can delete página',11,'delete_page'),(44,'Can view página',11,'view_page');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$mZsM0oep4H6h$Kj3cPyiCFL+VLAHm671/uYH7O7Ze/EVXA6eJQW55dUw=','2020-04-28 09:27:23.183732',1,'Victor','','','',1,1,'2020-04-25 17:08:27.189422'),(2,'pbkdf2_sha256$180000$DGY7aCygBdHL$RkDmus87i5c8fOQMmRvhgkNaE1oHW8pj2VU9SNZcCdc=','2020-04-29 09:33:30.401103',0,'test','','','',1,1,'2020-04-29 09:32:27.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'General','2020-04-27 11:24:38.371037','2020-04-27 11:24:38.371037'),(2,'Ofertas','2020-04-27 11:28:13.751083','2020-04-27 11:28:13.751083');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `published` datetime(6) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_author_id_dd7a8485` (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (1,'OFERTAS DE OTOÑO','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec leo dui, vehicula vel dapibus ac, tempus non enim. Nunc tempor vel lacus vel gravida. Nam sit amet pellentesque mi. Aliquam eget porta mi, quis fermentum metus. Curabitur efficitur pellentesque tellus nec volutpat. In viverra mattis sem, facilisis condimentum mi rutrum ut. Quisque ut pellentesque dui. Nullam eu vehicula metus. Pellentesque id interdum elit. Aenean in efficitur enim.','2020-04-27 11:24:55.000000','blog/products-01.jpg','2020-04-27 11:28:20.771821','2020-04-27 11:28:20.771821',1);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post_categories`
--

DROP TABLE IF EXISTS `blog_post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_post_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_post_categories_post_id_category_id_ed4f1727_uniq` (`post_id`,`category_id`),
  KEY `blog_post_categories_post_id_c34e7be1` (`post_id`),
  KEY `blog_post_categories_category_id_2211dae5` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post_categories`
--

LOCK TABLES `blog_post_categories` WRITE;
/*!40000 ALTER TABLE `blog_post_categories` DISABLE KEYS */;
INSERT INTO `blog_post_categories` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `blog_post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-04-27 08:07:43.051821','1','Service object (1)',1,'[{\"added\": {}}]',7,1),(2,'2020-04-27 08:12:12.974040','1','Service object (1)',2,'[]',7,1),(3,'2020-04-27 08:30:00.501129','1','CAFÉS Y TÉS',3,'',7,1),(4,'2020-04-27 08:34:44.147952','2','CAFÉS Y TÉS',1,'[{\"added\": {}}]',7,1),(5,'2020-04-27 08:35:33.887287','3','BOLLERÍA ARTESANAL',1,'[{\"added\": {}}]',7,1),(6,'2020-04-27 08:36:00.197216','4','TAMBIÉN VENDEMOS',1,'[{\"added\": {}}]',7,1),(7,'2020-04-27 11:24:38.373032','1','General',1,'[{\"added\": {}}]',9,1),(8,'2020-04-27 11:28:13.752079','2','Ofertas',1,'[{\"added\": {}}]',9,1),(9,'2020-04-27 11:28:20.777806','1','OFERTAS DE OTOÑO',1,'[{\"added\": {}}]',8,1),(10,'2020-04-27 13:48:41.369673','1','Twiter',1,'[{\"added\": {}}]',10,1),(11,'2020-04-27 13:49:23.592691','1','Twiter',2,'[]',10,1),(12,'2020-04-27 13:50:06.787686','2','Facebook',1,'[{\"added\": {}}]',10,1),(13,'2020-04-27 13:50:34.434576','3','Instagram',1,'[{\"added\": {}}]',10,1),(14,'2020-04-27 17:06:05.206290','2','Facebook',2,'[{\"changed\": {\"fields\": [\"Nombre clave\"]}}]',10,1),(15,'2020-04-27 17:09:34.914847','3','Instagram',2,'[{\"changed\": {\"fields\": [\"Enlace\"]}}]',10,1),(16,'2020-04-28 08:34:40.345042','1','Aviso legal',1,'[{\"added\": {}}]',11,1),(17,'2020-04-28 08:34:56.306838','2','Cookies',1,'[{\"added\": {}}]',11,1),(18,'2020-04-28 08:35:12.338113','3','Política de privacidad',1,'[{\"added\": {}}]',11,1),(19,'2020-04-28 10:42:48.342530','3','Política de privacidad',2,'[{\"changed\": {\"fields\": [\"Contenido\"]}}]',11,1),(20,'2020-04-29 09:31:13.402039','1','Personal',1,'[{\"added\": {}}]',3,1),(21,'2020-04-29 09:32:27.328501','2','test',1,'[{\"added\": {}}]',4,1),(22,'2020-04-29 09:33:08.607939','2','test',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'services','service'),(8,'blog','post'),(9,'blog','category'),(10,'social','link'),(11,'pages','page');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-04-24 18:07:19.166047'),(2,'auth','0001_initial','2020-04-24 18:07:19.262162'),(3,'admin','0001_initial','2020-04-24 18:07:19.516084'),(4,'admin','0002_logentry_remove_auto_add','2020-04-24 18:07:19.576682'),(5,'admin','0003_logentry_add_action_flag_choices','2020-04-24 18:07:19.589008'),(6,'contenttypes','0002_remove_content_type_name','2020-04-24 18:07:19.651877'),(7,'auth','0002_alter_permission_name_max_length','2020-04-24 18:07:19.672041'),(8,'auth','0003_alter_user_email_max_length','2020-04-24 18:07:19.700353'),(9,'auth','0004_alter_user_username_opts','2020-04-24 18:07:19.717305'),(10,'auth','0005_alter_user_last_login_null','2020-04-24 18:07:19.746229'),(11,'auth','0006_require_contenttypes_0002','2020-04-24 18:07:19.750218'),(12,'auth','0007_alter_validators_add_error_messages','2020-04-24 18:07:19.765178'),(13,'auth','0008_alter_user_username_max_length','2020-04-24 18:07:19.792107'),(14,'auth','0009_alter_user_last_name_max_length','2020-04-24 18:07:19.819318'),(15,'auth','0010_alter_group_name_max_length','2020-04-24 18:07:19.845167'),(16,'auth','0011_update_proxy_permissions','2020-04-24 18:07:19.858134'),(17,'sessions','0001_initial','2020-04-24 18:07:19.873130'),(18,'services','0001_initial','2020-04-25 17:01:23.042700'),(19,'services','0002_auto_20200427_1025','2020-04-27 08:25:18.643663'),(20,'blog','0001_initial','2020-04-27 09:07:22.154461'),(21,'blog','0002_auto_20200427_1108','2020-04-27 09:10:25.239189'),(22,'blog','0003_auto_20200427_1109','2020-04-27 09:10:25.277088'),(23,'blog','0004_auto_20200427_1543','2020-04-27 13:44:09.803571'),(24,'social','0001_initial','2020-04-27 13:44:09.826509'),(25,'pages','0001_initial','2020-04-28 08:32:49.916941'),(26,'pages','0002_auto_20200428_1122','2020-04-28 09:22:36.501063'),(27,'pages','0003_auto_20200428_1226','2020-04-28 10:27:08.565978'),(28,'blog','0005_auto_20200428_1245','2020-04-28 10:45:23.264319');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('nbamqbiqt2uyhqcp3rktjs3qi2fc0v3p','MDI0OGI5NjY1NWE0Zjg0NmYyZDRhOGU2ZDczMmEyYTQ5NGVlMTY5Njp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NzMyZWZlMmJjZmQ3NGFiNTlhNjI0MmRjNDAyOTdmOTM1ZjZmMjk0In0=','2020-05-13 09:33:30.403099');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_page`
--

DROP TABLE IF EXISTS `pages_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `order` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_page`
--

LOCK TABLES `pages_page` WRITE;
/*!40000 ALTER TABLE `pages_page` DISABLE KEYS */;
INSERT INTO `pages_page` VALUES (1,'Aviso legal','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ipsum nulla, scelerisque sed dui eu, fringilla consequat velit. Integer euismod, eros sit amet facilisis rutrum, elit massa iaculis ex, vitae gravida velit dolor at nunc. Proin tincidunt pellentesque lacus. Cras egestas ligula eu purus finibus, et convallis sem rhoncus. Fusce porta magna nisl. Aenean sed quam at tellus sollicitudin facilisis. Pellentesque eleifend placerat luctus.\r\n\r\nProin semper nisi quam, faucibus pharetra sapien laoreet et. Proin sit amet aliquam mi. Aliquam rhoncus tortor a accumsan condimentum. Maecenas nisl urna, auctor vel aliquam ut, accumsan sit amet ipsum. Nulla at felis lorem. Phasellus sit amet consectetur lacus. Praesent eget feugiat sem. Nam odio neque, luctus quis velit sagittis, aliquet consequat arcu. Duis eget molestie turpis, nec mattis sem. Donec sem risus, rutrum quis elementum ut, pulvinar et lorem. Quisque egestas justo id justo sodales, id commodo lorem condimentum.\r\n\r\nMauris hendrerit felis id diam pellentesque, vel lobortis lectus sagittis. Proin efficitur dui justo, sed laoreet mi sollicitudin dapibus. Donec a convallis lorem. Sed laoreet suscipit gravida. Nam tincidunt in justo sit amet rhoncus. Donec et lectus est. Mauris a felis eu risus tincidunt congue ac sit amet orci. Nam placerat varius elit, eu vulputate nibh consequat eget.','2020-04-28 08:34:40.343054','2020-04-28 08:34:40.343054',0),(2,'Cookies','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ipsum nulla, scelerisque sed dui eu, fringilla consequat velit. Integer euismod, eros sit amet facilisis rutrum, elit massa iaculis ex, vitae gravida velit dolor at nunc. Proin tincidunt pellentesque lacus. Cras egestas ligula eu purus finibus, et convallis sem rhoncus. Fusce porta magna nisl. Aenean sed quam at tellus sollicitudin facilisis. Pellentesque eleifend placerat luctus.\r\n\r\nProin semper nisi quam, faucibus pharetra sapien laoreet et. Proin sit amet aliquam mi. Aliquam rhoncus tortor a accumsan condimentum. Maecenas nisl urna, auctor vel aliquam ut, accumsan sit amet ipsum. Nulla at felis lorem. Phasellus sit amet consectetur lacus. Praesent eget feugiat sem. Nam odio neque, luctus quis velit sagittis, aliquet consequat arcu. Duis eget molestie turpis, nec mattis sem. Donec sem risus, rutrum quis elementum ut, pulvinar et lorem. Quisque egestas justo id justo sodales, id commodo lorem condimentum.\r\n\r\nMauris hendrerit felis id diam pellentesque, vel lobortis lectus sagittis. Proin efficitur dui justo, sed laoreet mi sollicitudin dapibus. Donec a convallis lorem. Sed laoreet suscipit gravida. Nam tincidunt in justo sit amet rhoncus. Donec et lectus est. Mauris a felis eu risus tincidunt congue ac sit amet orci. Nam placerat varius elit, eu vulputate nibh consequat eget.','2020-04-28 08:34:56.304844','2020-04-28 08:34:56.304844',0),(3,'Política de privacidad','<p style=\"text-align:center\"><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ipsum nulla, scelerisque sed dui eu, fringilla consequat velit. Integer euismod, eros sit amet facilisis rutrum, elit massa iaculis ex, vitae gravida velit dolor at nunc. Proin tincidunt pellentesque lacus. Cras egestas ligula eu purus finibus, et convallis sem rhoncus. Fusce porta magna nisl. Aenean sed quam at tellus sollicitudin facilisis. Pellentesque eleifend placerat luctus</strong>.</p>\r\n\r\n<p style=\"margin-left:40px\"><em>Proin semper nisi quam, faucibus pharetra sapien laoreet et. Proin sit amet aliquam mi. Aliquam rhoncus tortor a accumsan condimentum. Maecenas nisl urna, auctor vel aliquam ut, accumsan sit amet ipsum. Nulla at felis lorem. Phasellus sit amet consectetur lacus. Praesent eget feugiat sem. Nam odio neque, luctus quis velit sagittis, aliquet consequat arcu. Duis eget molestie turpis, nec mattis sem. Donec sem risus, rutrum quis elementum ut, pulvinar et lorem. </em></p>\r\n\r\n<p><u>Quisque egestas justo id justo sodales, id commodo lorem condimentum. Mauris hendrerit felis id diam pellentesque, vel lobortis lectus sagittis. Proin efficitur dui justo, sed laoreet mi sollicitudin dapibus. Donec a convallis lorem. Sed laoreet suscipit gravida. Nam tincidunt in justo sit amet rhoncus. Donec et lectus est. Mauris a felis eu risus tincidunt congue ac sit amet orci. Nam placerat varius elit, eu vulputate nibh consequat eget.</u></p>','2020-04-28 08:35:12.336154','2020-04-28 10:42:48.339544',0);
/*!40000 ALTER TABLE `pages_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_service`
--

DROP TABLE IF EXISTS `services_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_service`
--

LOCK TABLES `services_service` WRITE;
/*!40000 ALTER TABLE `services_service` DISABLE KEYS */;
INSERT INTO `services_service` VALUES (2,'CAFÉS Y TÉS','LA MEZCLA PERFECTA','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In massa purus, posuere non neque sed, ultricies ornare magna. Donec eu lobortis ex. Morbi maximus tempor accumsan. Mauris pellentesque mauris id nibh vestibulum, id sodales lorem bibendum. Nunc at interdum velit. Donec nec sapien eget arcu imperdiet bibendum','services/products-01_RzT5z95.jpg','2020-04-27 08:34:44.145921','2020-04-27 08:34:44.146934'),(3,'BOLLERÍA ARTESANAL','EL MEJOR ACOMPAÑAMIENTO','Morbi dapibus malesuada mollis. Nunc cursus velit eget cursus pharetra. Ut feugiat, dui id congue porttitor, sem erat pharetra dui, in ullamcorper quam nulla vitae quam. Sed blandit libero feugiat diam cursus, nec euismod ante consequat. Curabitur nec tincidunt ipsum, in tempor turpis. Sed ut metus a nisl rhoncus placerat.','services/products-02.jpg','2020-04-27 08:35:33.886302','2020-04-27 08:35:33.886302'),(4,'TAMBIÉN VENDEMOS','PRODUCTO CERTIFICADO','Integer ac elementum lacus, consectetur cursus tellus. Suspendisse faucibus sapien massa, ac pharetra est aliquet a. In interdum feugiat ultrices. Aliquam eget tempor libero. Aliquam sit amet ante quis lectus fermentum bibendum. Ut molestie nulla in tellus euismod feugiat. Nunc varius erat nulla, eu dictum mi ultrices in.','services/products-03.jpg','2020-04-27 08:36:00.195184','2020-04-27 08:36:00.195184');
/*!40000 ALTER TABLE `services_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_link`
--

DROP TABLE IF EXISTS `social_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_link`
--

LOCK TABLES `social_link` WRITE;
/*!40000 ALTER TABLE `social_link` DISABLE KEYS */;
INSERT INTO `social_link` VALUES (1,'LINK_TWITTER','Twiter','http://twitter.com','2020-04-27 13:48:41.368685','2020-04-27 13:49:23.588703'),(2,'LINK_FACEBOOK','Facebook','http://facebook.com','2020-04-27 13:50:06.786688','2020-04-27 17:06:05.203298'),(3,'LINK_INSTAGRAM','Instagram','http://instagram.com','2020-04-27 13:50:34.433610','2020-04-27 17:09:34.912853');
/*!40000 ALTER TABLE `social_link` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-29 13:14:25
