-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: database2
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'administrator'),(2,'student'),(3,'teacher');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52),(53,1,53),(54,1,54),(55,1,55),(56,1,56),(57,1,57),(58,1,58),(59,1,59),(60,1,60),(61,1,61),(62,1,62),(63,1,63),(64,1,64),(133,1,65),(134,1,66),(135,1,67),(136,1,68),(137,1,69),(138,1,70),(139,1,71),(140,1,72),(89,2,25),(91,2,27),(92,2,28),(96,2,32),(100,2,36),(104,2,40),(108,2,44),(112,2,48),(113,2,49),(115,2,51),(116,2,52),(120,2,56),(124,2,60),(128,2,64),(129,3,32),(132,3,36),(130,3,40),(131,3,48);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add comment',7,'add_comment'),(26,'Can change comment',7,'change_comment'),(27,'Can delete comment',7,'delete_comment'),(28,'Can view comment',7,'view_comment'),(29,'Can add courese_ gen ed',8,'add_courese_gened'),(30,'Can change courese_ gen ed',8,'change_courese_gened'),(31,'Can delete courese_ gen ed',8,'delete_courese_gened'),(32,'Can view courese_ gen ed',8,'view_courese_gened'),(33,'Can add course_ major',9,'add_course_major'),(34,'Can change course_ major',9,'change_course_major'),(35,'Can delete course_ major',9,'delete_course_major'),(36,'Can view course_ major',9,'view_course_major'),(37,'Can add course_ year',10,'add_course_year'),(38,'Can change course_ year',10,'change_course_year'),(39,'Can delete course_ year',10,'delete_course_year'),(40,'Can view course_ year',10,'view_course_year'),(41,'Can add faculty',11,'add_faculty'),(42,'Can change faculty',11,'change_faculty'),(43,'Can delete faculty',11,'delete_faculty'),(44,'Can view faculty',11,'view_faculty'),(45,'Can add gen ed_ subject',12,'add_gened_subject'),(46,'Can change gen ed_ subject',12,'change_gened_subject'),(47,'Can delete gen ed_ subject',12,'delete_gened_subject'),(48,'Can view gen ed_ subject',12,'view_gened_subject'),(49,'Can add review',13,'add_review'),(50,'Can change review',13,'change_review'),(51,'Can delete review',13,'delete_review'),(52,'Can view review',13,'view_review'),(53,'Can add student_ year',14,'add_student_year'),(54,'Can change student_ year',14,'change_student_year'),(55,'Can delete student_ year',14,'delete_student_year'),(56,'Can view student_ year',14,'view_student_year'),(57,'Can add subject_require',15,'add_subject_require'),(58,'Can change subject_require',15,'change_subject_require'),(59,'Can delete subject_require',15,'delete_subject_require'),(60,'Can view subject_require',15,'view_subject_require'),(61,'Can add user',16,'add_user'),(62,'Can change user',16,'change_user'),(63,'Can delete user',16,'delete_user'),(64,'Can view user',16,'view_user'),(65,'Can add rate review',17,'add_ratereview'),(66,'Can change rate review',17,'change_ratereview'),(67,'Can delete rate review',17,'delete_ratereview'),(68,'Can view rate review',17,'view_ratereview'),(69,'Can add report review',18,'add_reportreview'),(70,'Can change report review',18,'change_reportreview'),(71,'Can delete report review',18,'delete_reportreview'),(72,'Can view report review',18,'view_reportreview');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$8O9jxzIlSHpy$Q5cq/4nBFVfzhP/zRNQ/veI6Gfk2xadQKY4cBhmx0pM=','2019-05-06 10:51:24.564701',1,'admin','','','',1,1,'2019-04-23 17:49:53.990153'),(25,'pbkdf2_sha256$120000$XU0zjV1lk5Hr$QwP8uoKEytJXZBVmP9V8RJfZgA62/Wgb0jnSD6ca334=','2019-05-25 12:24:42.643619',1,'prapawit patthasirivichot','','','60070045@kmitl.ac.th',1,1,'2019-05-02 22:40:20.000000'),(26,'pbkdf2_sha256$120000$toSOxaw8DIt0$Bj+8rvpvH88vEN1O3sqOjGlR4Qa/PYZsWHE51ZaZZ44=','2019-05-07 07:43:15.447724',0,'pitchayut deachnu','','','60070063@kmitl.ac.th',0,1,'2019-05-04 04:45:44.972832'),(31,'pbkdf2_sha256$120000$2FnhH20z5ZuR$7a9V4eXJ0w6tEM1JoY+/Tm71KvJXQs7OCZdD8RiMMnQ=','2019-05-05 08:38:33.950131',0,'Rawit Lohakhachornphan','','','60070081@kmitl.ac.th',0,1,'2019-05-04 10:10:13.575749'),(32,'pbkdf2_sha256$120000$vXaKJQ1hF1Oo$dE0ZSXSUddqYQ2Do0eAAxVb/2A6iocnepnsWbxsRMhw=','2019-05-25 07:51:33.699513',0,'pannita hamego','','','60070061@kmitl.ac.th',0,1,'2019-05-04 14:27:45.281049'),(33,'pbkdf2_sha256$120000$kepocBlw1ex3$ofC6S3xAO5qH8hkmLj81QiiAiWeVUCf+TRUXCU29huw=','2019-05-05 08:54:11.500719',0,'waraporn prompolmaueng','','','60070086@kmitl.ac.th',0,1,'2019-05-05 06:00:00.013385'),(34,'pbkdf2_sha256$120000$IkibBkwwkY08$+sbOoZWdXoU+IoNz8tq7qJxfSNmO3g1KR0f2glZhutY=','2019-05-05 08:44:33.731062',0,'apichart chainarongritti','','','60070111@kmitl.ac.th',0,1,'2019-05-05 06:09:25.369810'),(35,'pbkdf2_sha256$120000$FGjDSMVd0XMN$wgpnDIsisuzAhzpLhGvBj4liuqjHp+8rdpNBTKyyLs8=','2019-05-05 08:56:50.817930',0,'natthawut tachasriburapha','','','60070025@kmitl.ac.th',0,1,'2019-05-05 08:56:50.615324'),(36,'pbkdf2_sha256$120000$la4tCaupmB2o$eLF8g5AG5Q7xc/9O0/0J87nzAREuV0l5i7qksHUOTt4=','2019-05-05 08:58:49.060166',0,'pachara sriyodwieng','','','60070057@kmitl.ac.th',0,1,'2019-05-05 08:58:48.911842'),(37,'pbkdf2_sha256$120000$tDLYMSZ2xp7Q$mkBH2peHtpfv4NaOyp27EyIGMb/edSe8RRjCDHLIXpQ=','2019-05-05 09:08:57.251924',0,'chutikarn thanyakit','','','60070014@kmitl.ac.th',0,1,'2019-05-05 09:02:31.718725'),(38,'pbkdf2_sha256$120000$DL6KEKYpZrVv$hBB7eSc4hRbDEXLYQuoEDgYYY3gJ+GaPSsrHsgRNq/E=','2019-05-05 09:23:54.922316',0,'yonlada prasert','','','60070077@kmitl.ac.th',0,1,'2019-05-05 09:12:57.529312'),(39,'pbkdf2_sha256$120000$UUJY3xkSNnYG$YFDAkAEhufQA0zTkZe0ohpQCuLXHbjSDzwpDhBV/OIs=','2019-05-05 12:32:48.019368',0,'katesopon kunpanperng','','','60070127@kmitl.ac.th',0,1,'2019-05-05 12:28:12.237233'),(40,'pbkdf2_sha256$120000$WflwepL1Cf5G$zjMmlFjMGwH5vYFyoYSzcVsUK5fiZRepGtMuywH7Q0g=','2019-05-06 13:38:53.046982',0,'kazuya komatsu','','','60070007@kmitl.ac.th',0,1,'2019-05-06 08:28:27.679055'),(42,'pbkdf2_sha256$120000$G5pjhKOHZZf3$sUtg4nq1fWIW8n6u5tBS+cb4hX/aWB+/K2AS2tmApH8=','2019-05-06 13:05:14.728257',0,'Udomeak Chumthongma','','','60070120@kmitl.ac.th',0,1,'2019-05-06 12:55:34.700893'),(43,'pbkdf2_sha256$120000$FO6Gg5clZNGo$bxG0xl/jkjl7Ze2eKAPzqN36gt3nAT/t4lUX7CTu9TM=','2019-05-06 13:19:01.622938',0,'kunyarat inta','','','60070004@kmitl.ac.th',0,1,'2019-05-06 13:19:01.426112'),(44,'pbkdf2_sha256$120000$fEiQAKuaMZNg$SOmFcSvcwQoYV6Iv5Ooci/XQZcAnFSVbEV/fhNUqAiw=','2019-05-06 13:40:04.728753',0,'weerapat sidtirach','','','60070092@kmitl.ac.th',0,1,'2019-05-06 13:40:04.479055'),(45,'pbkdf2_sha256$120000$r8UJZjVYTpdB$lD+Wx1MJHuL3q7tetLAc9iualxBkXkKl+VwGE7imT1c=','2019-05-07 08:02:54.024060',0,'Possathon Chitpidakorn','','','60070059@kmitl.ac.th',0,1,'2019-05-07 08:02:53.853407'),(46,'pbkdf2_sha256$120000$FQDsYukEHVZG$PLwsmOfw26fVcS+akDllmTrLKeMV8yaLcyxptpObGiI=','2019-05-08 02:33:16.867659',0,'kawisara bunyen','','','60070002@kmitl.ac.th',0,1,'2019-05-07 11:54:48.501785'),(47,'pbkdf2_sha256$120000$ur1LGfYZ9odJ$IUvzdyCSUk8DTa+V+i51VbIHZjUa9YWQFidqeptb5W4=','2019-05-24 11:50:04.247937',0,'tinnapat plangsri','','','60070028@kmitl.ac.th',0,1,'2019-05-24 11:50:03.652696'),(49,'pbkdf2_sha256$120000$XVkC2SrEhlLx$sn+2smfcudRlzs7mWUHUccQYhR+OHcMfIbk4XXSscPs=','2019-05-25 07:23:09.956361',0,'pidchayanin chutipattana','','','60070175@kmitl.ac.th',0,1,'2019-05-25 07:23:09.761023'),(50,'pbkdf2_sha256$120000$cjUCR6d7yhYr$acAe6UzOB74SajAonAlLp5N6H5Qupu6cdWFyph9iiRQ=','2019-05-25 12:02:05.711092',1,'admin2','','','',1,1,'2019-05-25 12:01:46.540703');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (4,25,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-04-23 18:29:44.125047','1','asministrator',1,'[{\"added\": {}}]',3,1),(2,'2019-04-23 18:30:25.355998','1','administrator',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',3,1),(3,'2019-04-23 18:33:37.663181','2','Student',1,'[{\"added\": {}}]',3,1),(4,'2019-04-23 18:34:15.367201','2','student',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',3,1),(5,'2019-04-23 18:38:33.325609','3','teacher',1,'[{\"added\": {}}]',3,1),(6,'2019-04-23 18:39:47.105413','2','student',2,'[{\"changed\": {\"fields\": [\"permissions\"]}}]',3,1),(7,'2019-04-23 19:51:43.833905','4','prapawit',2,'[{\"changed\": {\"fields\": [\"is_superuser\"]}}]',4,1),(8,'2019-04-24 02:22:44.094847','4','prapawit',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\", \"groups\"]}}]',4,1),(9,'2019-04-24 02:34:25.637708','7','prapawit',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"groups\"]}}]',4,1),(10,'2019-05-04 17:39:59.099499','1','administrator',2,'[{\"changed\": {\"fields\": [\"permissions\"]}}]',3,1),(11,'2019-05-04 17:41:34.892744','1','User object (1)',2,'[{\"changed\": {\"fields\": [\"role\"]}}]',16,1),(12,'2019-05-04 17:50:24.062923','25','prapawit_patthasirivichot',2,'[{\"changed\": {\"fields\": [\"username\", \"groups\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'polls','comment'),(8,'polls','courese_gened'),(9,'polls','course_major'),(10,'polls','course_year'),(11,'polls','faculty'),(12,'polls','gened_subject'),(17,'polls','ratereview'),(18,'polls','reportreview'),(13,'polls','review'),(14,'polls','student_year'),(15,'polls','subject_require'),(16,'polls','user'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-04-22 12:44:41.158846'),(2,'auth','0001_initial','2019-04-22 12:44:54.618075'),(3,'admin','0001_initial','2019-04-22 12:44:59.042360'),(4,'admin','0002_logentry_remove_auto_add','2019-04-22 12:45:00.417470'),(5,'admin','0003_logentry_add_action_flag_choices','2019-04-22 12:45:01.780996'),(6,'contenttypes','0002_remove_content_type_name','2019-04-22 12:45:04.598901'),(7,'auth','0002_alter_permission_name_max_length','2019-04-22 12:45:06.258291'),(8,'auth','0003_alter_user_email_max_length','2019-04-22 12:45:07.920058'),(9,'auth','0004_alter_user_username_opts','2019-04-22 12:45:09.288732'),(10,'auth','0005_alter_user_last_login_null','2019-04-22 12:45:10.942555'),(11,'auth','0006_require_contenttypes_0002','2019-04-22 12:45:12.297147'),(12,'auth','0007_alter_validators_add_error_messages','2019-04-22 12:45:13.662681'),(13,'auth','0008_alter_user_username_max_length','2019-04-22 12:45:15.323119'),(14,'auth','0009_alter_user_last_name_max_length','2019-04-22 12:45:16.983646'),(15,'polls','0001_initial','2019-04-22 12:45:38.253701'),(16,'sessions','0001_initial','2019-04-22 12:45:40.989965'),(17,'polls','0002_auto_20190422_1248','2019-04-22 12:48:12.089384'),(18,'polls','0003_gened_subject_prerequisite','2019-04-23 15:03:22.927593'),(19,'polls','0004_auto_20190423_1504','2019-04-23 15:05:04.078999'),(20,'polls','0005_auto_20190423_1506','2019-04-23 15:06:08.687527'),(21,'polls','0006_auto_20190423_1558','2019-04-23 15:58:35.582199'),(22,'polls','0007_course_major_course_year','2019-04-23 16:01:35.816968'),(23,'polls','0008_remove_course_major_year','2019-04-23 16:07:22.243791'),(24,'polls','0009_auto_20190424_1131','2019-04-24 11:42:29.702226'),(25,'polls','0010_auto_20190424_1135','2019-04-24 11:42:33.304840'),(26,'polls','0011_user_img_url','2019-04-24 11:42:35.930488'),(27,'polls','0012_auto_20190502_1837','2019-05-02 18:37:19.796805'),(28,'polls','0013_auto_20190502_1957','2019-05-02 19:57:32.440293'),(29,'polls','0014_auto_20190502_2005','2019-05-02 20:05:35.756506'),(30,'polls','0015_auto_20190503_0520','2019-05-03 05:20:15.056569'),(31,'polls','0016_remove_review_report_why','2019-05-03 05:40:45.144653'),(32,'polls','0017_review_annonymous','2019-05-03 07:22:01.682359'),(33,'polls','0018_auto_20190503_0811','2019-05-03 08:12:02.584584'),(34,'polls','0019_auto_20190503_1216','2019-05-03 12:16:44.803729'),(35,'polls','0020_auto_20190503_1236','2019-05-03 12:36:19.185133'),(36,'polls','0021_auto_20190504_0621','2019-05-04 06:21:59.280537'),(37,'polls','0022_comment_report','2019-05-04 09:40:25.770668'),(38,'polls','0023_auto_20190504_0947','2019-05-04 09:47:26.139242'),(39,'polls','0024_auto_20190504_0948','2019-05-04 09:48:03.722700'),(40,'polls','0025_auto_20190504_1121','2019-05-04 11:21:28.368485'),(41,'polls','0026_review_report_detail','2019-05-04 12:34:38.690661'),(42,'polls','0027_ratereview','2019-05-04 12:34:38.814086'),(43,'polls','0028_auto_20190504_1226','2019-05-04 12:34:39.120282'),(44,'polls','0029_review_study_year','2019-05-04 14:51:35.087657'),(45,'polls','0030_review_teacher_name','2019-05-04 14:58:41.353634'),(46,'polls','0031_comment_annonymous','2019-05-04 15:40:34.116411'),(47,'polls','0032_auto_20190504_1615','2019-05-04 16:16:22.440282'),(48,'polls','0033_auto_20190504_1650','2019-05-04 16:50:37.765353'),(49,'polls','0034_auto_20190504_1740','2019-05-04 17:41:01.817427'),(50,'polls','0035_auto_20190505_0602','2019-05-05 06:02:20.615112'),(51,'polls','0036_auto_20190505_0604','2019-05-05 06:04:16.251102');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('16pwg5hj8c06g2wxrtqdvh15c3739nno','YmE4ZGIxOTc4YTk1Y2Q1OGZlMzA1NzlhM2YwODkxMjYzMmQxNjhjYzp7fQ==','2019-05-18 10:03:10.889879'),('19xbdjpx9mfib65h9z2jkc1dslcmv5nj','ZDY4ZDYwNWVlY2U4OGExNmJhNWVhZmNmMWUwMmQ0NmQ3ZWYxY2RhYTp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDk3Y2RmOGQ4NmUxN2M2M2M3YTIyNTFhYjM3NWJkYTM3OTMwNTg0OCJ9','2019-05-23 10:17:22.199797'),('1e46br82g3cytgbpo76bzxl12hwwn4t4','ZDY4ZDYwNWVlY2U4OGExNmJhNWVhZmNmMWUwMmQ0NmQ3ZWYxY2RhYTp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDk3Y2RmOGQ4NmUxN2M2M2M3YTIyNTFhYjM3NWJkYTM3OTMwNTg0OCJ9','2019-05-18 08:25:25.614604'),('2cgrlgdjslniqk5wl9wyhe9pinlmacmc','YmE4ZGIxOTc4YTk1Y2Q1OGZlMzA1NzlhM2YwODkxMjYzMmQxNjhjYzp7fQ==','2019-05-18 10:05:11.467290'),('5lh90zifdcri8g66hfj2l6lea5klga36','YmE4ZGIxOTc4YTk1Y2Q1OGZlMzA1NzlhM2YwODkxMjYzMmQxNjhjYzp7fQ==','2019-05-18 04:45:48.126561'),('amrw2lphrlghamliisdf8kocwj7j6t0w','ZDY4ZDYwNWVlY2U4OGExNmJhNWVhZmNmMWUwMmQ0NmQ3ZWYxY2RhYTp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDk3Y2RmOGQ4NmUxN2M2M2M3YTIyNTFhYjM3NWJkYTM3OTMwNTg0OCJ9','2019-05-22 02:48:02.595602'),('cs1k0m5o02ssso4cfe1flc2icdd1gvxi','ZDY4ZDYwNWVlY2U4OGExNmJhNWVhZmNmMWUwMmQ0NmQ3ZWYxY2RhYTp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDk3Y2RmOGQ4NmUxN2M2M2M3YTIyNTFhYjM3NWJkYTM3OTMwNTg0OCJ9','2019-06-08 11:57:10.261415'),('cxfg287zzr7ymhhvxxpie67mrlmg5i64','MjFjNWNmODBjZGI5ODNmYjBkZDhjNGMzMGVkMTA3MzUyMTQyMDk3Njp7Il9hdXRoX3VzZXJfaWQiOiIzMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGJhMTI3MzMyN2RhMDQ4ZTYyYTAzNDdiYzFmMmUxMjJmNDQxNDI5MCJ9','2019-05-18 10:10:13.739860'),('d5b1na6gov0euj5s0uyptb4ejtks4w7d','Y2I5NzI1NzdkOTY0Njc1MDZhZGZiODhjN2E2M2YyZTI4NWYxMDM5NTp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDYzMjVmOWY0ZGY2ZGE5MTZjOTljNWZmNjhjZjJhMGIyNGQ3MGYyZSJ9','2019-05-09 02:04:18.608271'),('gdhwm4nhamu4bv9n44new71o0s0j9yok','YmE4ZGIxOTc4YTk1Y2Q1OGZlMzA1NzlhM2YwODkxMjYzMmQxNjhjYzp7fQ==','2019-05-18 10:08:30.633940'),('gwqmhd5r73xs4mxzmelgng2ivw9n4beg','NDEyZDZjZjZkODlhMWZhYTMxMDA4ZjA1YmZkYzg2NzJkOTYwY2Y5Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYzJkMTRhOWU0ZGZjYWM0MWU0ZTljMjM3M2U0NzU1MTc2MzM4ODM2In0=','2019-05-08 02:18:49.370708'),('hjp66a6nf7mm5ox7qfihfv74mwmjzdlz','ZDY4ZDYwNWVlY2U4OGExNmJhNWVhZmNmMWUwMmQ0NmQ3ZWYxY2RhYTp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDk3Y2RmOGQ4NmUxN2M2M2M3YTIyNTFhYjM3NWJkYTM3OTMwNTg0OCJ9','2019-05-18 08:48:47.519474'),('hv6abx0s1zqhp2ktgurxcj60z888c4ah','ZDY4ZDYwNWVlY2U4OGExNmJhNWVhZmNmMWUwMmQ0NmQ3ZWYxY2RhYTp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDk3Y2RmOGQ4NmUxN2M2M2M3YTIyNTFhYjM3NWJkYTM3OTMwNTg0OCJ9','2019-06-08 12:24:42.662234'),('ifn53b4nnldfd5k6imz107ut5ce0cpxl','YmE4ZGIxOTc4YTk1Y2Q1OGZlMzA1NzlhM2YwODkxMjYzMmQxNjhjYzp7fQ==','2019-05-08 12:20:54.628725'),('iixwyugy6x1akzhkrmjcntf18w9kcbmd','YmE4ZGIxOTc4YTk1Y2Q1OGZlMzA1NzlhM2YwODkxMjYzMmQxNjhjYzp7fQ==','2019-05-18 10:07:21.601730'),('j0czak3aawl5gzni1kxe046i7btsbxxk','ZDY4ZDYwNWVlY2U4OGExNmJhNWVhZmNmMWUwMmQ0NmQ3ZWYxY2RhYTp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDk3Y2RmOGQ4NmUxN2M2M2M3YTIyNTFhYjM3NWJkYTM3OTMwNTg0OCJ9','2019-05-21 07:42:59.720853'),('jvssxwvquhglp5hnmd2xoxz0711svsc6','YmE4ZGIxOTc4YTk1Y2Q1OGZlMzA1NzlhM2YwODkxMjYzMmQxNjhjYzp7fQ==','2019-05-08 12:29:15.164342'),('lopkfplzan0ciljezf5ohxfjw7clymr3','NDEyZDZjZjZkODlhMWZhYTMxMDA4ZjA1YmZkYzg2NzJkOTYwY2Y5Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYzJkMTRhOWU0ZGZjYWM0MWU0ZTljMjM3M2U0NzU1MTc2MzM4ODM2In0=','2019-05-07 20:39:38.336364'),('r9e2lakq61xwy4js7qeq40jzgp3f12w5','ZjZjMzk0MjVmY2U3NGZmNzViZjJkNDc0Yjk0OWIzNTNlODEwMmZhNjp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2E0MWNhNGZhNDAwNDdjY2JmNjU4ZTdlMjk1MjVlYzAyNmY0ZmE5NCJ9','2019-06-08 07:51:33.702583'),('rjl7x54tyhvseqn8mdlv42l9mfojddvb','YmE4ZGIxOTc4YTk1Y2Q1OGZlMzA1NzlhM2YwODkxMjYzMmQxNjhjYzp7fQ==','2019-05-08 12:27:49.636447'),('sh4jso5t3yvvy8lwsux7vzlirvsgjpvu','Y2I5NzI1NzdkOTY0Njc1MDZhZGZiODhjN2E2M2YyZTI4NWYxMDM5NTp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDYzMjVmOWY0ZGY2ZGE5MTZjOTljNWZmNjhjZjJhMGIyNGQ3MGYyZSJ9','2019-05-09 02:03:02.394171'),('znk8uysa7l95hkr3nmynztim1kxoyw6v','ZDY4ZDYwNWVlY2U4OGExNmJhNWVhZmNmMWUwMmQ0NmQ3ZWYxY2RhYTp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDk3Y2RmOGQ4NmUxN2M2M2M3YTIyNTFhYjM3NWJkYTM3OTMwNTg0OCJ9','2019-05-18 19:39:21.116486');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_answer`
--

DROP TABLE IF EXISTS `polls_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `choice_id` (`choice_id`),
  KEY `polls_answer_question_id_d45b3e6d_fk_polls_question_id` (`question_id`),
  CONSTRAINT `polls_answer_choice_id_e45d0c5c_fk_polls_choice_id` FOREIGN KEY (`choice_id`) REFERENCES `polls_choice` (`id`),
  CONSTRAINT `polls_answer_question_id_d45b3e6d_fk_polls_question_id` FOREIGN KEY (`question_id`) REFERENCES `polls_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_answer`
--

LOCK TABLES `polls_answer` WRITE;
/*!40000 ALTER TABLE `polls_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_choice`
--

DROP TABLE IF EXISTS `polls_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_question_id_c5b4b260_fk_polls_question_id` (`question_id`),
  CONSTRAINT `polls_choice_question_id_c5b4b260_fk_polls_question_id` FOREIGN KEY (`question_id`) REFERENCES `polls_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
INSERT INTO `polls_choice` VALUES (2,'ค่อนข้างน่าเบื่อ',2,1),(3,'เฉยๆ',3,1),(4,'ค่อนข้างสนุก',4,1),(6,'ไม่รู้เรื่องเลย',1,2),(7,'รู้เรื่องนิดหน่อย',2,2),(8,'เฉยๆ',3,2),(9,'เรียนรู้เรื่อง',4,2),(10,'เรียนเข้าใจมากๆ',5,2),(11,'เครื่องช้ามาก',1,3),(12,'เครื่องค่อนข้างช้า',2,3),(13,'เฉยๆ',3,3),(14,'เครื่องเร็ว',4,3),(15,'เครื่องเร็วมากๆ',5,3),(16,'ง่ายมากๆ',1,4),(17,'ค่อนข้างง่าย',2,4),(18,'เฉยๆ',3,4),(19,'ค่อนข้างยาก',4,4),(20,'ยากมากๆ',5,4),(21,'ง่ายมากๆ',1,5),(22,'ค่อนข้างง่าย',2,5),(23,'เฉยๆ',3,5),(24,'ค่อนข้างยาก',4,5),(25,'ยากมากๆ',5,5),(26,'ง่ายมากๆ',1,6),(27,'ค่อนข้างง่าย',2,6),(28,'เฉยๆ',3,6),(29,'ค่อนข้างยาก',4,6),(30,'ยากมากๆ',5,6),(31,'ง่ายมากๆ',1,7),(32,'ค่อนข้างง่าย',2,7),(33,'เฉยๆ',3,7),(34,'ค่อนข้างยาก',4,7),(35,'ยากมากๆ',5,7),(36,'ง่ายมากๆ',1,8),(37,'ค่อนข้างง่าย',2,8),(38,'เฉยๆ',3,8),(39,'ค่อนข้างยาก',4,8),(40,'ยากมากๆ',5,8),(41,'ง่ายมากๆ',1,9),(42,'ค่อนข้างง่าย',2,9),(43,'เฉยๆ',3,9),(44,'ค่อนข้างยาก',4,9),(45,'ยากมากๆ',5,9),(46,'ไม่ชอบเลย',1,10),(47,'ค่อนข้างไม่ชอบ',2,10),(48,'เฉยๆ',3,10),(49,'ค่อนข้างชอบ',4,10),(50,'ชอบมากๆ',5,10),(51,'ไม่ชอบเลย',1,11),(52,'ค่อนข้างไม่ชอบ',2,11),(53,'เฉยๆ',3,11),(54,'ค่อนข้างชอบ',4,11),(55,'ชอบมากๆ',5,11),(56,'ไม่ชอบเลย',1,12),(57,'ค่อนข้างไม่ชอบ',2,12),(58,'เฉยๆ',3,12),(59,'ค่อนข้างชอบ',4,12),(60,'ชอบมากๆ',5,12),(61,'A',1,13),(62,'B+',2,13),(63,'B',3,13),(64,'C+',4,13),(65,'C',5,13),(66,'D+',6,13),(67,'D',7,13),(68,'F',8,13),(71,'sds',0,1),(72,'.m.m,/.',0,1);
/*!40000 ALTER TABLE `polls_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_comment`
--

DROP TABLE IF EXISTS `polls_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  `report` int(11) NOT NULL,
  `annonymous` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_comment_review_id_1af3b5b1_fk_polls_review_id` (`review_id`),
  KEY `polls_comment_user_id_id_9b6796f4_fk_polls_user_id` (`user_id_id`),
  CONSTRAINT `polls_comment_review_id_1af3b5b1_fk_polls_review_id` FOREIGN KEY (`review_id`) REFERENCES `polls_review` (`id`),
  CONSTRAINT `polls_comment_user_id_id_9b6796f4_fk_polls_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `polls_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_comment`
--

LOCK TABLES `polls_comment` WRITE;
/*!40000 ALTER TABLE `polls_comment` DISABLE KEYS */;
INSERT INTO `polls_comment` VALUES (13,'เช็คชื่อด้วยการเซ็นต์ที่หนังสือด้วยนะ ต้อแงเอาไปเรียนทุกคาบ',35,12,5,0),(14,'ข้อสอบปลายภาคเน้นจำข้อความที่อาจารย์ย้ำบ่อยๆในห้อง ออกเยอะ',36,13,1,1),(15,'อาจารย์ใจดีนะ',35,10,1,0),(17,'ข้อสอบจำเยอะ ให้จำเนื้อหาที่อ.เน้นในคาบ',40,11,2,1),(20,'reading อย่างยาววว',35,15,0,0),(23,'tertyuyjhjjjk',53,12,0,0),(24,'tet',54,25,1,1),(25,'เห็นด้วย',55,27,0,1);
/*!40000 ALTER TABLE `polls_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_courese_gened`
--

DROP TABLE IF EXISTS `polls_courese_gened`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_courese_gened` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_courese_gened_year_id_6049dca1_fk_polls_course_year_id` (`year_id`),
  CONSTRAINT `polls_courese_gened_year_id_6049dca1_fk_polls_course_year_id` FOREIGN KEY (`year_id`) REFERENCES `polls_course_year` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=596 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_courese_gened`
--

LOCK TABLES `polls_courese_gened` WRITE;
/*!40000 ALTER TABLE `polls_courese_gened` DISABLE KEYS */;
INSERT INTO `polls_courese_gened` VALUES (571,'กลุ่มวิชาวิทยาศาสตร์กับคณิตศาสตร์',57),(572,'กลุ่มวิชาภาษา',57),(573,'กลุ่มวิชามนุษย์ศาสตร์',57),(574,'กลุ่มวิชาสังคมศาสตร์',57),(591,'กลุ่มคุณค่าแห่งชีวิต',59),(592,'กลุ่มวิถีแห่งสังคม',59),(593,'กลุ่มศาสตร์แห่งการคิด',59),(594,'กลุ่มศิลปะแห่งการจัดการ',59),(595,'กลุ่มภาษาและการสื่อสาร',59);
/*!40000 ALTER TABLE `polls_courese_gened` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_course_major`
--

DROP TABLE IF EXISTS `polls_course_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_course_major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `course_year_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_course_major_faculty_id_b6cdfcea_fk_polls_faculty_id` (`faculty_id`),
  KEY `polls_course_major_course_year_id_4abaa45e_fk_polls_cou` (`course_year_id`),
  CONSTRAINT `polls_course_major_course_year_id_4abaa45e_fk_polls_cou` FOREIGN KEY (`course_year_id`) REFERENCES `polls_course_year` (`id`),
  CONSTRAINT `polls_course_major_faculty_id_b6cdfcea_fk_polls_faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `polls_faculty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=591202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_course_major`
--

LOCK TABLES `polls_course_major` WRITE;
/*!40000 ALTER TABLE `polls_course_major` DISABLE KEYS */;
INSERT INTO `polls_course_major` VALUES (570101,'สาขาวิศวกรรมการวัดคุม',1,57),(570102,'สาขาวิศวกรรมอัตโนมัติ',1,57),(570103,'สาขาวิศวกรรมระบบควบคุม',1,57),(570104,'สาขาวิศวกรรมแมคคาทรอนิกส์',1,57),(570105,'สาขาวิศวกรรมคอมพิวเตอร์',1,57),(570106,'สาขาวิศวกรรมสารสนเทศ',1,57),(570107,'สาขาวิศวกรรมดนตรีและสื่อประสม',1,57),(570108,'สาขาวิศวกรรมเครื่องกล',1,57),(570109,'สาขาวิศวกรรมขนส่งทางราง',1,57),(570110,'สาขาวิศวกรรมเคมี',1,57),(570111,'สาขาวิศวกรรมปิโตรเคมี',1,57),(570112,'สาขาวิศวกรรมไฟฟ้า',1,57),(570113,'สาขาวิศวกกรรมพลังงานไฟฟ้า',1,57),(570114,'สาขาวิศวกรรมอุตสาหการ',1,57),(570115,'สาขาวิศวกรรมออกแบบการผลิตและวัสดุ',1,57),(570116,'สาขาวิศวกรรมอาหาร',1,57),(570117,'สาขาวิศวกรรมอิเล็กทรอนิกส์',1,57),(570118,'สาขาวิศวกรรมโทรคมนาคม',1,57),(570119,'สาขาวิศวกรรมโยธา',1,57),(570120,'สาขาวิศวกรรมชีวการแพทย์',1,57),(570121,'สาขาวิศวกรรมเกษตร',1,57),(570201,'สาขาสถาปัตยกรรมหลัก',2,57),(570202,'สาขาภูมิสถาปัตยกรรม',2,57),(570203,'สาขาสถาปัตยกรรมภายใน',2,57),(570204,'สาขาการออกแบบสนเทศสามมิติ',2,57),(570205,'สาขาการออกแบบอุตสาหกรรม',2,57),(570206,'สาขาศิลปอุตสาหกรรม',2,57),(570207,'สาขาการถ่ายภาพ',2,57),(570208,'สาขานิเทศศิลป์',2,57),(570209,'สาขาภาพยนตร์และดิจิตอลมีเดีย',2,57),(570210,'สาขาจิตรกรรม',2,57),(570211,'สาขาภาพพิมพ์',2,57),(570212,'สาขาประติมากรรม',2,57),(570301,'สาขาสถาปัตยกรรม',3,57),(570302,'สาขาการออกแบบสภาพแวดล้อมภายใน',3,57),(570303,'สาขาครุศาสตร์การออกแบบ',3,57),(570304,'สาขาครุศาสตร์วิศวกรรม',3,57),(570305,'สาขาครุศาสตร์เกษตร',3,57),(570501,'สาขาคณิตศาสตร์ประยุกต์',5,57),(570502,'สาขาวิทยาการคอมพิวเตอร์',5,57),(570503,'สาขาเคมีสิ่งแวดล้อม',5,57),(570504,'สาขาเคมีอุตสาหกรรม',5,57),(570505,'สาขาเทคโนโลยีชีวภาพ',5,57),(570506,'สาขาจุลชีววิทยาอุตสาหกรรม',5,57),(570507,'สาขาฟิสิกส์ประยุกต์',5,57),(570508,'สาขาสถิติประยุกต์',5,57),(570701,'สาขาเทคโนโลยีสารสนเทศ',7,57),(570702,'สาขาวิทยาการข้อมูลและการวิเคราะห์เชิงธุรกิจ',7,57),(570703,'สาขาเทคโนโลยีสารสนเทศทางธุรกิจ (นานาชาติ)',7,57),(570801,'สาขาเทคโนโลยีการหมักในอุตสาหกรรม',8,57),(570803,'สาขาวิทยาศาสตร์และเทคโนโลยีการอาหาร',8,57),(570804,'สาขาวิศวกรรมแปรรูปอาหาร',8,57),(570805,'สาขาอุตสาหกรรมเกษตร',8,57),(571001,'สาขาบริหารธุรกิจ',10,57),(571002,'สาขาเศรษฐศาสตร์ธุรกิจและการจัดการ',10,57),(571101,'สาขาวิศวกรรมวัสดุนาโน',11,57),(571201,'สาขาวิศวกรรมระบบการผลิต',12,57),(571401,'สาขาภาษาญี่ปุ่น',14,57),(571402,'สาขาภาษาอังกฤษ',14,57),(571403,'สาขานวัตกรรมการท่องเที่ยวและการบริการ',14,57),(571901,'สาขาวิศวกรรมดนตรีและสื่อประสม',19,57),(590101,'สาขาวิศวกรรมการวัดคุม',1,59),(590102,'สาขาวิศวกรรมอัตโนมัติ',1,59),(590104,'สาขาวิศวกรรมแมคคาทรอนิกส์',1,59),(590106,'สาขาวิศวกรรมสารสนเทศ',1,59),(590108,'สาขาวิศวกรรมเครื่องกล',1,59),(590110,'สาขาวิศวกรรมเคมี',1,59),(590112,'สาขาวิศวกรรมไฟฟ้า',1,59),(590114,'สาขาวิศวกรรมอุตสาหการ',1,59),(590116,'สาขาวิศวกรรมอาหาร',1,59),(590117,'สาขาวิศวกรรมอิเล็กทรอนิกส์',1,59),(590118,'สาขาวิศวกรรมโทรคมนาคม',1,59),(590119,'สาขาวิศวกรรมโยธา',1,59),(590121,'สาขาวิศวกรรมเกษตร',1,59),(590201,'สาขาสถาปัตยกรรมหลัก',2,59),(590203,'สาขาสถาปัตยกรรมภายใน',2,59),(590204,'สาขาการออกแบบสนเทศสามมิติ',2,59),(590206,'สาขาศิลปอุตสาหกรรม',2,59),(590207,'สาขาการถ่ายภาพ',2,59),(590208,'สาขานิเทศศิลป์',2,59),(590209,'สาขาภาพยนตร์และดิจิตอลมีเดีย',2,59),(590213,'สาขาจิตรกรรมและมีเดียอาตส์',2,59),(590214,'สาขาประติมากรรมและประติมากรรมเพื่อสังคม',2,59),(590215,'สาขาภาพพิมพ์และอิลลัสเตชั่น',2,59),(590802,'สาขาเทคโนโลยีการหมักในอุตสาหกรรมอาหาร',8,59),(590803,'สาขาวิทยาศาสตร์และเทคโนโลยีการอาหาร',8,59),(591201,'สาขาวิศวกรรมระบบการผลิต',12,59);
/*!40000 ALTER TABLE `polls_course_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_course_year`
--

DROP TABLE IF EXISTS `polls_course_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_course_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_course_year`
--

LOCK TABLES `polls_course_year` WRITE;
/*!40000 ALTER TABLE `polls_course_year` DISABLE KEYS */;
INSERT INTO `polls_course_year` VALUES (57,2557),(59,2559);
/*!40000 ALTER TABLE `polls_course_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_faculty`
--

DROP TABLE IF EXISTS `polls_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_faculty`
--

LOCK TABLES `polls_faculty` WRITE;
/*!40000 ALTER TABLE `polls_faculty` DISABLE KEYS */;
INSERT INTO `polls_faculty` VALUES (1,'คณะวิศวกรรมศาสตร์'),(2,'คณะสถาปัตยกรรมศาสตร์'),(3,'คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี'),(4,'คณะเทคโนโลยีการเกษตร'),(5,'คณะวิทยาศาสตร์'),(7,'คณะเทคโนโลยีสารสนเทศ'),(8,'คณะอุตสาหกรรมเกษตร'),(10,'คณะการบริหารและจัดการ'),(11,'วิทยาลัยนาโนเทคโนโลยีพระจอมเกล้าลาดกระบัง'),(12,'วิทยาลัยนวัตกรรมการผลิตขั้นสูง'),(13,'วิทยาลัยนานาชาติ'),(14,'คณะศิลปศาสตร์'),(15,'วิทยาลัยอุตสาหกรรมการบินนานาชาติ'),(17,'คณะแพทย์ศาสตร์'),(19,'วิทยาลัยวิศวกรรมสังคีต');
/*!40000 ALTER TABLE `polls_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_gened_subject`
--

DROP TABLE IF EXISTS `polls_gened_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_gened_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_th` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_eng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `prerequisite` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_gened_subject_categories_id_09821e01_fk_polls_cou` (`categories_id`),
  CONSTRAINT `polls_gened_subject_categories_id_09821e01_fk_polls_cou` FOREIGN KEY (`categories_id`) REFERENCES `polls_courese_gened` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90595027 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_gened_subject`
--

LOCK TABLES `polls_gened_subject` WRITE;
/*!40000 ALTER TABLE `polls_gened_subject` DISABLE KEYS */;
INSERT INTO `polls_gened_subject` VALUES (90010007,'การออกแบบเชิงภูมิสังคมไทย','THAI GEOSOCIAL DESIGN','ศึกษาและเรียนรู้ให้เข้าใจถึงความสําคัญของสภาพถิ่นฐาน ที่ตั้ง และภูมิประเทศที่แตกต่างกันอันเป็นบ่อเกิดของความหลากหลายทางสังคมและวัฒนธรรมไทย ที่ดํารงความมีเอกลักษณ์และสามารถพัฒนาต่อยอดภูมิปัญญาแบบพื้นถิ่นไว้เป็นมรดกทางวัฒนธรรมสืบไปได้ อันจะนําไปสู่การออกแบบในรูปแบบสหวิชาการเพื่อแก้ไขปัญหาแบบองค์รวมในแต่ละภูมิสังคม',571,0,3),(90020008,'ภาษาอังกฤษเพื่อการตลาด','ENGLISH FOR MARKETING','ศึกษาและฝึกใช้โครงสร้างภาษา คําศัพท์และสํานวนจากบริบทที่เกี่ยวกับการตลาดซึ่งคัดเลือกเนื้อหาด้านการตลาดที่เป็นเนื้อหาจริงมาให้ฝึก โดยเน้นทักษะการอ่านเพื่อความเข้าใจพร้อมทั้งประยุกต์ความรู้ที่ได้ศึกษามา',572,0,3),(90030001,'การคิดเชิงวิทยาศาสตร์','SCIENTIFIC THINKING','ศึกษาหลักการ วิธีการ และกลยุทธ์ในการคิดแบบวิทยาศาสตร์ฐานะที่เป็นคําตอบหนึ่งในหลาย ๆ คําถามของปัญหาความจริงแห่งจักรวาล วิทยาศาสตร์ในฐานะวิธีการหาความรู้วิธีหนึ่งในหลาย ๆ วิธีที่มีอยู่ในโลก อิทธิพลของวิทยาศาสตร์ต่อชีวิต และความหมายเกี่ยวกับความก้าวหน้าทางวิทยาศาสตร์รวมทั้งการประยุกต์วิธีคิดแบบประจําวัน เพื่อฝึกสร้างความคิดที่ลึก กว้าง เป็นระบบ ในปัญหาต่าง ๆ ในชีวิต',573,0,3),(90101002,'คณิตศาสตร์ในชีวิตประจําวัน','MATHEMATICS IN DAILY LIFE','หลักการและกระบวนการคิดของมนุษย์การวิเคราะห์ข้อมูลและข่าวสาร มูลค่าที่เพิ่มขึ้นและ มูลค่าที่ลดลง ดอกเบี้ยเชิงเดียว ดอกเบี้ยทบต้น ค่ารายงวด เงินออมและการลงทุนเพื่อการลดหย่อนภาษีการคิดภาษีเงินได้บุคคลธรรมดา ค่าเสื่อมราคาและมูลค่าสุทธิของทรัพย์สินถาวร และการประยุกต์อื่นๆ ในชีวิตประจําวัน',571,0,3),(90101003,'สถิติในชีวิตประจําวัน','STATISTICS IN DAILY LIFE','ข้อมูล การเก็บรวบรวมข้อมูล การนําเสนอขอม้ ูล การวิเคราะห์ข้อมูล การแปลความหมายข้อมูล ความน่าจะเป็น การสํารวจตัวอย่าง การตัดสินใจ การวิเคราะห์แนวโน้ม และเลขดัชนี',571,0,3),(90101004,'คณิตศาสตร์กับเทคโนโลยี','MATHEMATICS AND TECHNOLOGY','เรียนรู้คณิตศาสตร์และการแก้ปัญหาเชิงคณิตศาสตร์โดยใช้เทคโนโลยีและเครื่องมือที่ทันสมัย การใช้อุปกรณ์ช่วยคํานวณเชิงกราฟฟิค การใช้แอปพลิเคชันเชิงคณิตศาสตร์บนแพลตฟอร์มรูปแบบต่างๆ เช่น คอมพิวเตอร์ โทรศัพท์มือถือแท็บเล็ต หรืออุปกรณ์พกพาใหม่ๆ ในอนาคต',571,0,3),(90101005,'คณิตศาสตร์เพื่อการตัดสินใจ','MATHEMATICS FOR DECISION MAKING','กระบวนการตัดสินใจโดยใช้คณิตศาสตร์การสร้างแบบจําลองเชิงคณิตศาสตร์เพื่อการตัดสินใจ ทฤษฎีการตัดสินใจ การตัดสินใจภายใต้ความไม่แน่นอน ความเสี่ยง การใช้ซอฟต์แวร์คอมพิวเตอร์เพื่อการตัดสินใจ การประยุกต์การตัดสินใจในปัญหาต่างๆ เช่น โลจิกติกส์',571,0,3),(90101006,'คณิตศาสตร์เพื่อพัฒนากระบวนการคิด','MATHEMATICS FOR THINKING PROCESS DEVELOPMENT','ประวัติของนักคณิตศาสตร์และแนวคิดที่โดดเด่น วิวัฒนาการของแนวคิดเชิงคณิตศาสตร์ กระบวนการคิดที่นําไปสู่ทฤษฎีที่สําคัญทางคณิตศาสตร์ หลักตรรกศาสตร์ การประยุกต์กระบวนการคิดเชิงคณิตศาสตร์กับปัญหาทั่วไป',571,0,3),(90101007,'คณิตเศรษฐศาสตร์เบื้องต้น','INTRODUCTION TO MATHEMATICAL ECONOMICS','ศึกษาเครื่องมือทางคณิตศาสตร์ประกอบด้วย เมทริกซ์ การหาผลเฉลยของระบบสมการเชิงเส้น กฎของคราเมอร์อนุพันธ์ของฟังก์ชัน ฟังก์ชันกําลังสอง ค่าสูงสุดและค่าต่ำสุด อนุพันธ์ย่อย และการอินทิเกรต เพื่อประยุกต์ใช้แก้ปัญหาทางเศรษฐศาสตร์และการพาณิชย์เบื้องต้นในชีวิตประจําวัน เช่น หาจุดสมดุลของราคาและปริมาณของสินค้าในตลาด วิเคราะห์การผลิต เมทริกซ์การเปลี่ยนถ่ายสถานะ ฟังก์ชันอุปสงค์ ฟังก์ชันอุปทาน ฟังก์ชันต้นทุน ฟังก์ชันรายได้ฟังก์ชันยืดหยุ่น',571,0,3),(90101008,'คณิตศาสตร์ในธุรกิจและอุตสาหกรรม','MATHEMATICS IN BUSINESS AND INDUSTRY','การสร้างตัวแบบปัญหาทางคณิตศาสตร์ ตัวแบบกําหนดการเชิงเส้นและการแก้ปัญหาโดยวิธีกราฟ ตัวแบบข่ายงาน ระเบียบวิธีต้นไม้แผ่ทั่วที่น้อยที่สุด ระเบียบวิธีระยะทางที่สั้นที่สุด เทคนิคการไหลมากที่สุด ระบบสมการเชิงเส้น การหาผลเฉลยของระบบสมการเชิงเส้น ระเบียบวิธีการกําจัดแบบเกาส์ การประยุกต์กับการไหลในข่ายงาน ความรู้เบื้องต้นเกี่ยวกับอนุพันธ์ ปัญหาการหาค่าเหมาะสมที่สุด การ\nประยุกต์ในเรื่องส่วนที่เผื่อเอาไว้ในทางเศรษฐศาสตร์ การปรับข้อมูล การถดถอยเชิงเส้น การปรับเส้นโค้งพหุนาม การปรับเส้นโค้งเลขชี้กําลัง',571,0,3),(90101009,'คณิตศาสตร์สําหรับผู้บริโภค','MATHEMATICS FOR CONSUMERS','คณิตศาสตร์สําหรับการทํางบรายจ่าย การคํานวณภาษีเงินได้บุคคลธรรมดาคณิตศาสตร์พื้นฐานสําหรับปัญหาการเพิ่มรายได้ลดรายจ่ายคณิตศาสตร์สําหรับปัญหาการซื้อสินค้าอุปโภคบริโภค ปัญหาค่าใช้จ่ายเครื่องนุ่งห่มและปัญหาที่พักอาศัย คณิตศาสตร์สําหรับปัญหาธนาคารและสินเชื่อส่วนบุคคล คณิตศาสตร์สําหรับปัญหาการประกันภัย การประยุกต์ใช้คณิตศาสตร์ในงานคมนาคมขนส่ง',571,0,3),(90102001,'คอมพิวเตอร์ในชีวิตประจําวัน','COMPUTER IN DAILY LIFE','ความสําคัญของคอมพิวเตอร์ในชีวิตประจําวัน ประวัติของคอมพิวเตอร์ องค์ประกอบของระบบคอมพิวเตอร์ ข้อมูลและระบบสารสนเทศ ระบบสารสนเทศในสํานักงาน การสื่อสารข้อมูลเทคโนโลยีทางเว็บ การประยุกต์คอมพิวเตอร์ในชีวิตประจําวัน',571,0,3),(90102003,'คอมพิวเตอร์และการโปรแกรม','COMPUTERS AND PROGRAMMING','ระบบคอมพิวเตอร์เบื้องต้น คอมพิวเตอร์และเทคโนโลยีสารสนเทศที่เกี่ยวข้องกับ\nชีวิตประจําวัน การใช้งานโปรแกรมประยุกต์เพื่อสนับสนุนการศึกษา หลักการเขียนโปรแกรมคอมพิวเตอร์ การฝึกปฏิบัติการโปรแกรมในห้องปฏิบัติการคอมพิวเตอร์',571,0,3),(90102005,'ระบบสารสนเทศเพื่อการจัดการเบื้องต้น','INTRODUCTION TO INFORMATION SYSTEMS FOR MANAGEMENT','ความรู้เบื้องต้นเกี่ยวกับระบบสารสนเทศ ระบบสารสนเทศในองค์กร ฮารดแวร์และ\nซอฟต์แวร์ที่ใช้ในระบบสารสนเทศ ระบบฐานข้อมูลสารสนเทศเบื้องต้น ระบบเครือข่ายเบื้องต้น ระบบสนับสนุนการตัดสินใจ เทคโนโลยีสารสนเทศในธุรกิจ พาณิชย์อิเล็กทรอนิกส์ การจัดการทรัพยากร จริยธรรมทางเทคโนโลยีสารสนเทศ การพัฒนาระบบสารสนเทศเบื้องต้น',571,0,3),(90102006,'การจัดการข้อมูลการวิจัยทางวิทยาศาสตร์และการเกษตรด้วยโปรแกรมคอมพิวเตอร์','INTEGRATED DATA MANAGEMENT FOR SCIENTIFIC AND AGRICULTURAL RESEARCH BY USING COMPUTATIONAL PROGRAM','การประยุกต์ใช้คําสั่งและฟังชันก์ของโปรแกรมสําเร็จรูปประเภทเสปรดชีตที่นิยม อาทิ MICROSOFT EXCEL หรือ QUATROPRO LOTUS 1-2-3 ในการจัดการข้อมูลวิจัย ที่เกี่ยวกับการประมวลข้อมูล การเรียบเรียงข้อมูล การคํานวณและวิเคราะห์ข้อมูลทางสถิติเบื้องต้น',571,0,3),(90103003,'เทคโนโลยีรถยนต์','AUTOMOTIVE TECHNOLOGY','แนะนําประวัติของรถยนต์การทํางานของรถยนต์ได้แก่ เครื่องยนต์ระบบส่งกําลัง ระบบเบรก ระบบกันสะเทือน ระบบบังคับเลี้ยว ระบบเชื้อเพลิง ระบบหล่อลื่น เรียนรู้เทคโนโลยียานยนต์ในปัจจุบัน ได้แก่ ระบบคอมมอนเรล ระบบวาล์วแปรผัน ระบบเบรกเอบีเอส ระบบไฮบริดจ์ระบบเชื้อเพลิงก๊าซธรรมชาติอัด (ซีเอ็นจี) รถเชื้อเพลิงก๊าซปิโตรเลียมเหลว (แอลพีจี) การบํารุงรักษารถยนต์ระบบต่าง ๆ การเลือกซื้อ\nรถยนต์ใหม่และรถยนต์มือสอง',571,0,3),(90104003,'สุขภาพและโภชนาการ','HEALTH AND NUTRITION','ความสําคัญของอาหารต่อสุขภาพมนุษย์ โรคที่เกิดจากภาวะโภชนาการไม่สมดุล หน้าที่ของคาร์โบไฮเดรต ไขมัน โปรตีน เกลือแร่ และวิตามินต่าง ๆ ในร่างกาย การย่อย การดูดซึม การสังเคราะห์พลังงานจากอาหารที่รับประทาน การขับถ่าย การขาดสารอาหาร ความต้องการอาหารของบุคคลในวัยและ สภาวะต่าง ๆ',571,0,3),(90104004,'นวัตกรรมการสื่อสารเพื่อการพัฒนา','COMMUNICATION INNOVATION FOR DEVELOPMENT','ศึกษาแนวคิด ความหมาย บทบาท ประเภท ผลกระทบของนวัตกรรมการสื่อสาร การนํานวัตกรรมการสื่อสารไปประยุกต์ใช้ในการพัฒนาองค์กรและประเทศในด้านต่าง ๆ โดยเน้นกระบวนการพัฒนา การนําไปใช้ประโยชน์ของนวัตกรรมการสื่อสารและการปรับตัวขององค์กรในสังคมยุคใหม่ รวมถึงการวิเคราะห์นวัตกรรมสื่อสารควบคู่กับจริยธรรมในสังคมยุคใหม่',571,0,3),(90104005,'วิทยาศาสตร์การถ่ายภาพ','SCIENCE OF PHOTOGRAPHY','ประวัติของการถ่ายภาพ วิวัฒนาการของกล้องถ่ายภาพและส่วนประกอบที่สําคัญของกล้องถ่ายภาพ หลักการการเกิดภาพของระบบออปติกส์เซนเซอร์รับภาพและการถ่ายภาพดิจิตอล หลักการทํางานของเครื่องมือถ่ายภาพทางวิทยาศาสตร์ขั้นสูง เช่น กล้องจุลทัศน์อิเล็กตรอนแบบสแกน ทฤษฎีแสง แสงและ ศิลปการถ่ายภาพ การจัดองค์ประกอบภาพ การถ่ายภาพสีภาพขาวดําและภาพอินฟราเรด เทคนิคการถ่ายภาพเพื่อถ่ายภาพทิวทัศน์ภาพกลางคืน ภาพทางดาราศาสตร์และอื่นๆ',571,0,3),(90104006,'โภชนาการอาหารเบื้องต้น','INTRODUCTION TO FOOD NUTRITION','ความสัมพันธ์ของสุขภาพและโภชนาการกับชีวิตมนุษย์หน้าที่ของคาร์โบไฮเดรท โปรตีน ไขมัน เกลือแร่ น้ําและวิตามินต่างๆในร่างกายการย่อยการดูดซึม เมตาบอลิซึม และการขับถ่ายของสารอาหารต่างๆ บทบาทที่สําคัญของไฟโตนิวเตรียน และสารยับยั้งการเปิดปฏิกิริยาออกซิเดชันต่อสุขภาพและโภชนาการในปัจจุบัน โรคที่เกิดจากภาวะโภชนาการไม่สมดุลความต้องการอาหารของบุคคลในวัยและสภาวะต่างๆ',571,0,3),(90104007,'วิทยาศาสตร์การอาหารสําหรับชีวิตประจําวัน','FOOD SCIENCE IN DAILY LIFE','สถานการณ์ปัจจุบันของอาหารแปรรูปที่มีผลกระทบต่อชีวิตประจําวัน ผลิตภัณฑ์อาหารแปรรูปประเภทต่างๆ อาหารเพี่อสุขภาพ หลักการกระบวนการแปรรูปอาหารพื้นฐาน กฎหมายอาหารที่เกี่ยวข้องกับชีวิตประจําวัน การเลือกซื้อและการเลือกบริโภคอาหารแปรรูปต่าง ๆ',571,0,3),(90104008,'สุขอนามัยส่วนบุคคลและชุมชน','PERSONAL AND COMMUNITY HYGIENE','ความรู้เบื้องต้นเกี่ยวกับสุขอนามัยส่วนบุคคลและชุมชน สุขอนามัยส่วนบุคคลในชีวิตประจําวันที่เกี่ยวข้องกับการล้างมือ การอาบน้ํา การดูแลรักษาความสะอาดร่างกาย เป็นต้น อาหาร โภชนาการและ การสุขาภิบาลอาหาร การสุขาภิบาลสิ่งแวดล้อม โรคติดต่อและโรคไม่ติดต่อรวมทั้งการควบคุมป้องกันโรค',571,0,3),(90104009,'สิ่งแวดล้อมและการอนุรักษ์ทรัพยากรธรรมชาติ','ENVIRONMENT AND NATURAL RESOURCE CONSERVATION','ความสําคัญของสิ่งแวดล้อมต่อคุณภาพชีวิต ผลกระทบจากพฤติกรรมของมนุษย์ทั้งทางบวกและลบต่อทรัพยากรธรรมชาติและสิ่งแวดล้อม หลักการจัดการสิ่งแวดล้อมและ การพัฒนาทรัพยากรธรรมชาติอย่างยั่งยืนกฎหมายและมาตรฐานที่เกี่ยวข้อง',571,0,3),(90104010,'การจัดการสวนในบ้าน','HOME GARDEN MANAGEMENT','การออกแบบจัดสวนภายในบ้าน การปลูกผักสวนครัว และการจัดการสวนไม้ดอกไม้ประดับ พรรณไม้ที่ใช้ในการจัดสวน การปูสนามหญ้า การจัดสวน ในบ้านโดยใช้ระบบการปลูกพืชแบบไฮโดรโปรนิค\nการดูแลรักษาสวน',571,0,3),(90104011,'การเลี้ยงสัตว์สวยงาม','PET MANAGEMENT','การเลือกประเภทสัตว์ที่จะเลี้ยง การให้อาหารสัตว์เลี้ยงสวยงาม เช่น สุนัข แมว กระต่าย นกสวยงาม เป็นต้น ความต้องการสารอาหารของสัตว์เลี้ยงระยะต่างๆ กรรมวิธีในการดูแล ป้องกัน รักษา สัตว์เลี้ยงสวยงาม',571,0,3),(90104012,'นวัตกรรมนาโนเทคโนโลยี','NANOTECHNOLOGY INNOVATIONS','ศึกษาเกี่ยวกับหลักการ ที่มา ความสําคัญของวิทยาศาสตร์นาโนและนาโนเทคโนโลยีในชีวิตประจําวันนิยามของวิทยาศาสตร์นาโนและนาโนเทคโนโลยีประเภทของวัสดุนาโน เครื่องมือตรวจสอบวัสดุนาโน นาโนเทคโนโลยีในธรรมชาติ นาโนอิเล็กทรอนิกส์ นาโนเทคโนโลยีชีวภาพ ผลิตภัณฑ์นาโนแท้และ\nของปลอม ความปลอดภัยด้านนาโน แนวโน้มการวิจัยด้านนาโนเทคโนโลยี การเสริมสร้างความคิดสร้างสรรค์และ นวัตกรรมด้วยการประยุกต์ใช้งานนาโนเทคโนโลยีในชีวิตประจําวัน',571,0,3),(90105002,'สารเคมีในชีวิตประจําวัน','CHEMICALS IN DAILY LIFE','ความรู้เกี่ยวกับสารเคมีต่างๆ ในผลิตภัณฑ์ที่ใช้ชีวิตประจําวัน เช่น สบู่ ยาสีฟัน สารทําความสะอาด สารเติมแต่งในอาหาร นมและผลิตภัณฑ์ของนม เครื่องสําอาง กระดาษ กาว เรซิน ฯลฯ การใช้ผลิตภัณฑ์ที่มีสารเคมีอย่างถูกวิธีและ การแก้ไขพิษเบื้องต้นจากการได้รับสารเคมีในผลิตภัณฑ์',571,0,3),(90106001,'ฟิสิกส์ในชีวิตประจําวัน','PHYSICS IN DAILY LIFE','ฟิสิกส์ของร่างกาย ฟิสิกส์ของแสงและการมองเห็น ฟิสิกส์ของดนตรีฟิสิกส์ของกีฬา ฟิสิกส์ของพลังงานจากอะตอมถึงคอมพิวเตอร์ ฟิสิกส์ในครัว วัสดุนิวเคลียร์ ฟิสิกส์ของจักรวาล ฟิสิกส์ของภัยธรรมชาติและ ฟิสิกส์ของโทรศัพท์มือถือ',571,0,3),(90106002,'มนุษย์กับพลังงาน','HUMAN AND ENERGY','แหล่งกําเนิดพลังงาน มนุษย์กับการใช้พลังงาน ผลกระทบของการใช้พลังงานน้ํามันและถ่านหินต่อสิ่งแวดล้อม สถานการณ์ปัจจุบันและอนาคตของแหล่งพลังงาน วิทยาศาสตร์พื้นฐานและเทคโนโลยีสําหรับการใช้พลังงานอย่างมีประสิทธิภาพ พลังงานทดแทนและการนํามาใช้ในอนาคต',571,0,3),(90106003,'โลกและเอกภพ','EARTH AND UNIVERSE','ดาวเคราะห์ ดาวฤกษ์ ระบบสุริยะ กาแลกซี ทฤษฎีควอนตัมเบื้องต้น เอกภพ กําเนิดของเอกภพ หลุมดํา โครงสร้างของโลกและดวงอาทิตย์ สภาพเปลือกโลกและดวงอาทิตย์ สภาพเปลือกโลกและสิ่งแวดล้อมของโลก แผ่นเปลือกโลก แร่ธาตุ ชนิดของดิน ชั้นดิน ทะเลและมหาสมุทร ทรัพยากรของโลก บรรยากาศ',571,0,3),(90106004,'ฟิสิกส์และเทคโนโลยีเพื่อเตรียมพร้อมเผชิญภัยพิบัติ','PHYSICS AND TECHNOLOGY FOR DISASTER PREPAREDNESS','นิยามของภัยพิบัติ ประเภทของภัยพิบัติ ลักษณะพิเศษของภัยพิบัติ สาเหตุของการเกิดภัยพิบัติ ผลกระทบและความเสียหาย ฟิสิกส์ของแผ่นดินไหว ฟิสิกส์ของคลื่นสึนามิ ฟิสกสิ์ของพายุสุริยะ ฟิสิกส์ของสนามแม่เหล็กโลก และอื่นๆ เทคโนโลยีการเฝ้าระวัง การแจ้งเตือนภัย การรับมือและการฟื้นฟู เทคโนโลยีอวกาศและภูมิสารสนเทศ เทคโนโลยสารสนเทศและการสื่อสารในการแก้ปัญหาอุทกภัยและภัยแล้ง การป้องกันตนเองจากภัยพิบัติ การเตรียมตัวก่อนการเกิดภัย ระหว่างการเกิดภัยและหลังจากภัยพิบัติผ่านพ้นไป ระบบบริหารการจัดการภัยพิบัติ ระดับการมีส่วนร่วมในการบริหารจัดการภัยพิบัติ',571,0,3),(90108003,'ชีวิตกับสิ่งแวดล้อม','LIFE AND ENVIRONMENT','ความสัมพันธ์ระหว่างสิ่งแวดล้อมทางกายภาพและชีวภาพต่อการดํารงชีวิตของมนุษย์ สารมลพิษและภาวะมลพิษในสิ่งแวดล้อม ชนิดของสารพิษและแหล่งกําเนิด การป้องกันมลพิษและการจัดการ ปัญหามลพิษในสิ่งแวดล้อมในระดับท้องถิ่น ระดับประเทศและระดับสากล เช่น ภาวะโลกร้อน, การเปลี่ยนแปลงของภูมิอากาศ',571,0,3),(90108005,'เทคโนโลยีพลังงานทดแทน','RENEWABLE ENERGY TECHNOLOGIES','แนะนําแหล่งกําเนิดพลังงานสะอาด เซลแสงอาทิตย์ ระบบผลิตไฟฟ้าจากพลังงานลม ระบบความร้อนร่วม พลังงานชีวมวล เซลเชื้อเพลิง เทคโนโลยีการเชื่อมต่อระบบ ผลกระทบทางสิ่งแวดล้อม การพิจารณาทางเศรษฐศาสตร์และทางสังคม',571,0,3),(90108007,'สิ่งแวดล้อมศึกษา','ENVIRONMENTAL STUDY','ระบบสิ่งแวดล้อม องค์ประกอบและกระบวนการ แหล่งทรัพยากร แหล่งรองรับของเสียและเส้นทางสิ่งแวดล้อมเกี่ยวกับที่ดิน แหล่งน้ํา อากาศ สิ่งมีชีวิต เช่น พืช สัตว์และจุลินทรีย์ การเปลี่ยนแปลงและความสามารถในการรองรับของระบบสิ่งแวดล้อม ปัญหาและการวิเคราะห์สภาพปัญหาสิ่งแวดล้อม แนวคิด\nพื้นฐานและแนวทางปฏิบัติป้องกันปัญหาเพื่อหนทางสู่ความยั่งยืนของระบบสิ่งแวดล้อม',571,0,3),(90108010,'มลพิษและการป้องกัน','POLLUTION AND PREVENTION','ชนิดและแหล่งกําเนิดของสารมลพิษ ได้แก่ สารมลพิษในดิน น้ํา และอากาศ สมบัติทางเคมีและปฏิกิริยาเคมีของสารมลพิษ ผลกระทบทางสิ่งแวดล้อมของสารพิษจากอุตสาหกรรม เทคโนโลยีการควบคุม และบําบัดสารมลพิษด้วยวิธีการทางเคมีตามข้อกําหนดมาตรฐานสิ่งแวดล้อม',571,0,3),(90201001,'ภาษาอังกฤษพื้นฐาน 1','FOUNDATION ENGLISH 1','ฝึกทักษะการใช้ภาษาอังกฤษเพื่อการฟัง การพูด การอ่าน และการเขียนในบริบทที่เกี่ยวข้องกับชีวิตประจําวัน ฝึกการใช้พจนานุกรม ศึกษาศัพท์สํานวน และภาษาจากบทอ่านที่คัดเลือกจากสิ่งพิมพ์ต่างๆ เช่น วารสาร หนังสือพิมพ์ ทบทวนโครงสร้างไวยากรณ์และการใช้ภาษาในโอกาสต่างๆ',572,0,3),(90201002,'ภาษาอังกฤษพื้นฐาน 2','FOUNDATION ENGLISH 2','ฝึกทักษะการใช้ภาษาอังกฤษในการอ่าน เขียน ฟัง และพูดเพื่อการศึกษา เช่น การใช้หนังสืออ้างอิง การอ่านกราฟ ตาราง ฯลฯ การเขียนบทสรุป ฟัง พูด โต้ตอบแสดงความคิดเห็นเกี่ยวกับเรื่องที่อ่านหรือฟังได้รวมทั้งทบทวนโครงสร้าง ไวยากรณ์และการใช้ภาษาโอกาสต่างๆ เพิ่มเติม',572,90201001,3),(90201003,'ภาษาอังกฤษเชิงวิชาการ','ENGLISH FOR ACADEMIC PURPOSES','พัฒนาทักษะทางภาษาและการเรียนภาษาอังกฤษเชิงวิชาการ โดยเน้นการอ่านที่มีเนื้อหาทางวิชาชีพของนักศึกษา การใช้ภาษาเพื่อแสดงคําจํากัดความ การเปรียบเทียบ การจําแนก การแสดงจุดประสงค์ การแสดงหน้าที่การใช้งาน การอธิบายกระบวนการและการแสดงเหตุและผล เป็นต้น',572,90201002,3),(90201012,'การพัฒนาทักษะการอ่านและการเขียนภาษาอังกฤษ','DEVELOPMENT OF READING AND WRITING SKILLS IN ENGLISH','ศึกษาวิธีการอ่านอย่างมีประสิทธิภาพ การอ่านจับใจความ การอ่านหนังสือพิมพ์ การอ่านเพื่อแปลใจความ การพัฒนาทักษะการเขียน โดยเน้นการเขียนที่ถูกรูปแบบทางภาษาและไวยากรณ์ ฝึกการเขียนที่จะนําไปใช้ประโยชน์ทั้งทางด้านการศึกษาและอาชีพ เช่น การเขียนจดหมาย การกรอกใบสมัคร การเขียนรายงาน เป็นต้น',572,90201002,3),(90201013,'ภาษาอังกฤษเพื่อการจัดการ','ENGLISH FOR MANAGEMENT','ศึกษาและฝึกใช้โครงสร้างภาษา คําศัพท์และสํานวนจากบริบทที่เกี่ยวกับการจัดการซึ่งคัดเลือกเนื้อหาด้านการจัดการที่เป็นเนื้อหาจริงมาให้ฝึก โดยเน้นทักษะการอ่านเพื่อความเข้าใจพร้อมทั้งประยุกต์ความรู้ที่ได้ศึกษามา',572,0,3),(90201016,'ภาษาอังกฤษเพื่อการสื่อสารทางวิชาชีพ','ENGLISH FOR PROFESSIONAL COMMUNICATION','ฝึกทักษะในการติดต่อสื่อความหมายภาษาอังกฤษ โดยเน้นทักษะในการฟังและการพูดในโอกาสต่าง ๆ รวมทั้งพัฒนาทักษะการสนทนา การอภิปราย การแสดงความคิดเห็น การกล่าวสุนทรพจน์และฝึกการเสนอผลงานทางวิชาชีพต่อที่ประชุม',572,0,3),(90201017,'ภาษาอังกฤษสําหรับธุรกิจ','ENGLISH FOR BUSINESS','ศึกษาและฝึกการใช้ภาษาอังกฤษเพื่อการสื่อสารทางธุรกิจ โดยเน้นความเข้าใจในการอ่านข้อเขียนทางธุรกิจประเภทต่าง ๆ การใช้ศัพท์สํานวน และภาษาในเชิงธุรกิจ การเขียนจดหมายบันทึกช่วยจํา รวมทั้งการฝึกฟังและพูดในสถานการณ์ต่าง ๆ ทางธุรกิจ',572,0,3),(90201018,'การเขียนภาษาอังกฤษเพื่อการสื่อสาร','ENGLISH FOR COMMUNICATIVE WRITING','ศึกษาและฝึกการเขียนเพื่อการสื่อสาร โดยเน้นฝึกการเขียนจดหมาย ในลักษณะต่างๆ เขียนรายงาน คําสั่ง คู่มือ ประวัติส่วนตัว รวมทั้งการเขียนบรรยายสิ่งของ สถานที่ เหตุการณ์และกระบวนการ',572,0,3),(90201019,'ภาษาอังกฤษเพื่อการพัฒนาทักษะการอ่าน','ENGLISH FOR DEVELOPING READING SKILLS','ศึกษาและฝึกเทคนิคการอ่านจากบทอ่านทางวิชาการในสาขาต่างๆโดยฝึกทักษะการอ่านเก็บใจความสําคัญ การเดาศัพท์จากบริบท การใช้พจนานุกรม รวมทั้งการศึกษาศัพท์ สํานวน และการใช้ภาษาจากบทอ่าน',572,0,3),(90201020,'ภาษาอังกฤษเพื่ออุตสาหกรรม','ENGLISH FOR INDUSTRY','ศึกษาและฝึกใช้ภาษาอังกฤษในวงการอุตสาหกรรมในรูปแบบต่างๆ เช่น การบรรยายกระบวนการผลิตการอธิบายการใช้อุปกรณ์หรือการทํางานของเครื่องจักร การอธิบายความปลอดภัยในที่ทํางาน การเขียนป้ายเตือนอันตราย การเขียนคําสั่ง การฝึกฝนทักษะการสื่อสารทั้งการพูดและการเขียนในที่ทํางาน',572,0,3),(90201022,'ภาษาอังกฤษเพื่อการศึกษาต่อ','ENGLISH FOR FURTHER STUDIES','ศึกษาและฝึกการใช้ภาษาอังกฤษเพื่อการศึกษาต่อในระดับบัณฑิต โดยเน้นฝึกการอ่านข้อเขียนทางวิชาการ การย่อความ การฟัง และการเขียนโน้ตย่อ รวมทั้งฝึกทําข้อทดสอบทางภาษาอังกฤษในรูปแบบต่าง ๆ',572,0,3),(90201024,'ภาษาอังกฤษเพื่อการประกอบอาชีพ','ENGLISH FOR PROFESSIONAL PURPOSES','พัฒนาทักษะการใช้ภาษาอังกฤษที่จําเป็นต่อการปฏิบัติงาน เช่น การอ่านคู่มือ เครื่องหมายสัญลักษณ์ที่ใช้ในงานอาชีพ การเขียนจดหมายสมัครงาน การเขียนประวัติย่อ บันทึกข้อความ บทคัดย่อ รายงาน จดหมายอิเลคทรอนิคส์ จดหมายเชิญประชุม บันทึกและรายงานการประชุม รวมทั้งฝึกการสัมภาษณ์ การอภิปรายต่อที่ประชุม และการนําเสนอผลงาน',572,0,3),(90201026,'ภาษาอังกฤษเพื่อการสื่อสาร','ENGLISH FOR COMMUNICATION','การพัฒนาความสามารถในการติดต่อสื่อสารโดยใช้ภาษาอังกฤษ โดยเน้นทักษะในการฟังและการพูดที่ใช้ในโอกาสต่างๆ ฝึกการสนทนาเป็นกลุ่มและการนําเสนอผลงานทักษะการอ่านโดยใช้เทคนิคการอ่านที่หลากหลาย เช่น การอ่านเพื่อหาหัวเรื่อง การอ่านเพื่อจับใจความสําคัญและรายละเอียดเพื่อเขียนสรุปความ และเขียนรายงาน',572,0,3),(90201029,'ภาษาอังกฤษเพื่อการท่องเที่ยวและการเดินทาง','ENGLISH FOR TOURISM AND TRAVELLING','ศึกษาคําศัพท์และการใช้ภาษาเกี่ยวกับการเดินทาง ธุรกิจการท่องเที่ยว การโรงแรม ร้านอาหาร สนามบิน ฯลฯ พร้อมทั้งฝึกทักษะการฟัง การพูด การอ่านและการเขียนในปริบทดังกล่าว เช่น การทักทาย การต้อนรับ การเดินทาง การแนะนําสถานที่ท่องเที่ยว การวางแผน การหาและสอบถามข้อมูลการเดินทาง การถามทาง การผ่านด่านตรวจคนเข้าเมืองและศุลกากร ตลอดจนความรู้ทั่วไปในด้านการท่องเที่ยวและการเดินทาง',572,0,3),(90201030,'ภาษาอังกฤษเพื่อการนําเสนอผลงานทางวิชาชีพ','ENGLISH FOR PROFESSIONAL PRESENTATION','ฝึกทักษะในการติดต่อสื่อความหมายและการพูดนําเสนอผลงานภาษาอังกฤษ มุ่งเน้นการนําทฤษฎีไปใช้ รวมทั้งการฝึกปฏิบัติจริง อาทิเช่น การพัฒนาทักษะทั้งการจัดเตรียมข้อมูล การใช้สื่อประกอบการนําเสนอ การพัฒนาบุคลิกภาพ เพื่อการนําเสนอผลงานได้อย่างมีประสิทธิภาพ',572,0,3),(90201031,'ภาษาอังกฤษเพื่อการสื่อสารระหว่างวัฒนธรรม','ENGLISH FOR INTERCULTURAL COMMUNICATION','ศึกษาความรู้ในเรื่องภาษาและวัฒนธรรม การใช้ภาษาอังกฤษในฐานะภาษานานาชาติ การสื่อสารระหว่างวัฒนธรรมของผู้ใช้ภาษาอังกฤษที่เป็นเจ้าของภาษาและผู้ใช้ภาษาอังกฤษที่ไม่ได้เป็นเจ้าของภาษา วัจนปฏิบัติศาสตร์ข้ามวัฒนธรรม และการพัฒนาทักษะการใช้ภาษาอังกฤษในการสื่อสารระหว่างวัฒนธรรม',572,0,3),(90201032,'ภาษาอังกฤษเพื่อความเข้าใจข่าวสารและข้อมูลในสื่อสารมวลชน','ENGLISH FOR UNDERSTANDING NEWS AND INFORMATION IN MASS MEDIA','ศึกษาภาษาอังกฤษในสื่อสารมวลชนรูปแบบต่างๆ เช่น หนังสือพิมพ์ นิตยาสาร โฆษณา เว็บไซต์ รายการวิทยุและโทรทัศน์ เพื่อเข้าใจข่าวสารและเนื้อหา',572,0,3),(90201033,'ไวยากรณ์ภาษาอังกฤษเพื่อการสื่อสาร','COMMUNICATIVE ENGLISH GRAMMAR','ฝึกทักษะการใช้ไวยากรณ์ในการพัฒนาทักษะในการอ่าน การเขียน การพูด การฟังเพื่อสื่อสารความหมายอย่างมีประสิทธิภาพโดยเน้นการส่งเสริมความมั่นใจในการติดต่อสื่อความหมายภาษาอังกฤษ อภิปราย แสดงความคิดเห็น การเล่าเรื่อง การพูดสรุปความ ฝึกการเขียน การอ่านบทความและการฟังเพื่อจับใจความ',572,0,3),(90201034,'ภาษาอังกฤษแบบเข้ม','INTENSIVE ENGLISH','ศึกษา ฝึกฝน และพัฒนาประสิทธิภาพภาษาอังกฤษในด้านต่างๆ เช่น การใช้คําศัพท์ ไวยากรณ์ การอ่านและการเขียน เพื่อการสอบวัดประสิทธิภาพภาษาอังกฤษในองค์กรต่างๆ ในอนาคต',572,0,3),(90201035,'การเขียนและการพูดในงานอาชีพ','WRITING AND SPEAKING IN THE PROFESSIONS','พัฒนาทักษะการเขียนและการพูดเกี่ยวกับสาขางานอาชีพ เช่น การเขียนจดหมายธุรกิจ แฟ็กซ์ บันทึกข้อความ จดหมายไม่เป็นทางการ จดหมายอิเล็กโทรนิกส์ คู่มือ หรือรายงานประจําวัน การมีส่วนร่วมในการประชุม การนําเสนอผลงาน และการใช้ภาษาอังกฤษในปริบทของการทํางาน',572,0,3),(90201036,'การพัฒนาทักษะทางภาษาอังกฤษเพื่อการเรียนรู้ตลอดชีวิต','ENGLISH SKILL DEVELOPMENT FOR LIFE-LONG LEARNING','ฝึกและพัฒนาทักษะทางภาษาอังกฤษทั้ง 4 ทักษะโดยเน้นเนื้อหาตามความสนใจของผู้เรียนแต่ละคนผ่านกิจกรรมการเรียนรู้ทางภาษาแบบอิสระ ทั้งในและนอกชั้นเรียนเพื่อส่งเสริมทักษะการเรียนรู้ภาษาอังกฤษตลอดชีวิตด้วยตนเอง',572,0,3),(90201037,'การออกเสียงภาษาอังกฤษเบื้องต้น','BASIC ENGLISH PRONUNCIATION','ศึกษาและฝึกฝนระบบเสียงและระดับเสียงในภาษาอังกฤษ โดยเน้นการออกเสียงสระและพยัญชนะ การเน้นเสียงในระดับคําและระดับประโยค รูปแบบของระดับเสียงในประโยคลักษณะต่างๆ รวมไปถึงการศึกษา สัทอักษรในระบบเสียงภาษาอังกฤษเบื้องต้น และสําเนียงภาษาอังกฤษในปัจจุบัน',572,0,3),(90201038,'พื้นฐานการเขียนเพื่อการสื่อความหมายทางวิชาชีพ','BASIC WRITING FOR PROFESSIONAL COMMUNICATION','ฝึกทักษะโครงสร้างภาษา คําศัพท์สํานวน และ การเขียนภาษาอังกฤษเพื่อการสื่อ\nความหมายทางวิชาชีพในบริบทต่างๆ เช่น การเขียนจดหมายธุรกิจ การเขียนบันทึกข้อความ การเขียนโครงการ การเขียนข่าวประกาศ และ ติดต่อสื่อสารด้วยจดหมายอิเล็กทรอนิกส์',572,0,3),(90201039,'ภาษาอังกฤษจากสื่อบันเทิง','ENGLISH FROM ENTERTAINMENT MEDIA','การศึกษาเชิงวิเคราะห์ภาษาอังกฤษและวัฒนธรรมตะวันตก ผ่านสื่อบันเทิง ได้แก่ เพลง ภาพยนตร์ นิตยสาร และโฆษณา โดยเน้นที่รูปแบบของภาษา คําศัพท์สํานวนและแสลงที่ใช้ในการสื่อสารในชีวิตประจําวัน',572,0,3),(90201040,'การพูดภาษาอังกฤษเพื่อการสื่อสารในที่ทํางาน','ORAL ENGLISH COMMUNICATION AT WORK','ฝึกทักษะการพูดภาษาอังกฤษเพื่อการสื่อสารในที่ทํางานในสถานการณ์ต่างๆ เช่น การอภิปรายกลุ่มในที่ประชุม และการนําเสนอผลงาน',572,0,3),(90301003,'ปรัชญาทั่วไป','GENERAL PHILOSOPHY','ศึกษาปรัชญาในฐานะเป็นจุดกําเนิดและจุดร่วมของศาสตร์ต่าง ๆ ศึกษาประวัติและแนวคิดของนักปรัชญา ยุคต่าง ๆ ฝึกคิดปัญหาต่าง ๆ ที่มีอยู่ในปรัชญาบริสุทธิ์ สาขาต่างๆ ได้แก่ อภิปรัชญา ญาณวิทยา คุณวิทยา (จริยปรัชญา และสุนทรียศาสตร์) และตรรกวิทยา ศึกษาแนวคิดปรัชญาตะวันออกที่สําคัญ เช่น ปรัชญาอินเดีย ปรัชญาจีน และปรัชญาญี่ปุ่น และปัญหาในปรัชญาประยุกต์เพื่อฝึกสร้างความคิดที่ลึกกว้าง เป็นระบบ',573,0,3),(90301007,'จริยศาสตร์และสุนทรียศาสตร์','ETHICS AND AESTHETICS','ศึกษาความหมาย ความสําคัญ วิวัฒนาการ และลักษณะทางปรัชญาเกี่ยวกับคุณค่าหรือสาขาจริยศาสตร์และสนุทรียศาสตร์ของนักปรัชญาตะวันตกและตะวันออก ตั้งแต่อดีตจนถึงปัจจุบันทั้งในส่วนที่มีพื้นฐานมาจากคติความเชื่อ ศาสนา และจากแนวความคิดที่เป็นปรัชญาล้วน ๆ รวมทั้งการวิเคราะห์หลักการและแนวคิดจริยศาสตร์และสุนทรียศาสตร์ในศิลปะ',573,0,3),(90302001,'จิตวิทยาทั่วไป','GENERAL PSYCHOLOGY','ศึกษาพฤติกรรมของมนุษย์ โดยใช้ระเบียบวิธีการทางวิทยาศาสตร์ ความเป็นมาของจิตวิทยาในฐานะเป็นวิทยาศาสตร์ กระบวนการทํางานของสมองที่มีผลต่อพฤติกรรม พัฒนาการของมนุษย์ การรับรู้ การเรียนรู้ ความจํา การคิด การจูงใจ อารมณ์ บุคลิกภาพ สุขภาพจิตและพฤติกรรมทางสังคม',573,0,3),(90302003,'มนุษยสัมพันธ์','HUMAN RELATIONS','ความสัมพันธ์ระหว่างบุคคลและกลุ่มต่างๆ ในสังคม อิทธิพลของวัฒนธรรม ขนบธรรมเนียมประเพณีที่มีบทบาทต่อบุคคลและกลุ่ม ศิลปะการพูด การสนทนาและการฟัง การปรับตัวให้เหมาะสมกับสภาพแวดล้อมในสังคมไทย โดยเรียนรู้อารยธรรมของมนุษย์ในแง่ของอารมณ์ ความแตกต่างระหว่างบุคคลและการฝึกพฤติกรรมที่เหมาะสมตลอดจนมารยาททางสังคม',573,0,3),(90302010,'จิตวิทยาเพื่อพัฒนาตน','PSYCHOLOGY FOR SELF DEVELOPMENT','การนําองค์ความรู้แนวคิดและทฤษฎีทางจิตวิทยามาประยุกต์ใช้เพื่อการเข้าใจและการจัดการตน เช่น การรู้จักตน กระบวนการพัฒนาตน การเห็นคุณค่าในตนเอง เชาวน์อารมณ์การคิดเชิงบวก การจัดการกับความเครียด ความรักและความสัมพันธ์กับผู้อื่น การทํางานเป็นทีม และการสร้างคุณค่าชีวิต',573,0,3),(90302011,'จิตวิทยาการคิด','PSYCHOLOGY OF THINKING','ศึกษาแนวคิดเชิงทฤษฎีเกี่ยวกับความสามารถในการคิดในด้านต่างๆ ของมนุษย์\nกระบวนการคิดแก้ปัญหา ความคิดสร้างสรรค์ การพัฒนาทักษะในการคิด กลยุทธ์การคิดแก้ปัญหา และวิธีการพัฒนาความคิดสร้างสรรค์',573,0,3),(90302012,'จิตวิทยาธุรกิจอุตสาหกรรม','INDUSTRIAL BUSINESS PSYCHOLOGY','การศึกษาการนําองค์ความรู้ทฤษฎีและแนวคิดทางจิตวิทยามาประยุกต์ใช้ในชีวิตการทํางานเพื่อแก้ปัญหาในโรงงานอุตสาหกรรมและองค์การ เพื่อพัฒนาสุขภาพจิตและการทํางานอย่างมีประสิทธิภาพ การมีมนุษยสัมพันธ์ที่ดี การพึ่งพาอาศัยต่อกันและกันอย่างมีความสุข การมีปฏิสัมพันธ์ต่อกันในกลุ่มอย่างมีประสิทธิภาพ การ\nจูงใจในงาน การสร้างขวัญและความพึงพอใจในงานและการพัฒนาองค์การ รวมทั้งการประยุกต์ใช้หลักจิตวิทยาในโปรแกรมแบบต่างๆอย่างมีประสิทธิภาพ เช่น 5 ส, KYT, QCC, TPM, REENGINEERING, JIT, TQC, และ SS เป็นต้น',573,0,3),(90302013,'การพัฒนาบุคลิกภาพและสุขภาพจิต','PERSONALITY AND MENTAL HEALTH DEVELOPMENT','ศึกษาทฤษฎีทางบุคลิกภาพ วิธีการวัดบุคลิกภาพ พัฒนาการทางบุคลิกภาพของบุคคล แนวความคิดและทฤษฎีเกี่ยวกับสุขภาพจิต ปัจจัยที่มีผลต่อสุขภาพจิต พฤติกรรมอปกติ ความผิดปกติทางอารมณ์และความเจ็บป่วยทางจิตใจ ตลอดจนการบําบัดรักษา การฟื้นฟู การป้องกันและส่งเสริมสุขภาพจิตของบุคคล',573,0,3),(90303005,'พลศึกษาเบื้องต้น','INTRODUCTION TO PHYSICAL EDUCATION','การศึกษาถึงความหมายและความสําคัญของพลศึกษา ความรู้เบื้องต้นของการออกกําลังกาย และสมรรถภาพของร่างกาย การเรียนรู้ทักษะการเคลื่อนไหวต่างๆ เพื่อส่งเสริมสุขภาพและพัฒนาจิตใจ ความรู้เกี่ยวกับขอบข่ายของกิจกรรมทางพลศึกษา กิจกรรมกีฬาทั้งประเภทบุคคลและประเภททีม การจัดกิจกรรมพลศึกษาและกิจกรรมเพื่อนันทนาการการป้องกันการบาดเจ็บทางกีฬาตลอดจนการปฐมพยาบาล (ทั้งภาคทฤษฎีและภาคปฏิบัติ)',573,0,3),(90303006,'การจัดการสุขภาพ','HEALTH MANAGEMENT','ศึกษาเกี่ยวกับความรู้เบื้องต้นเกี่ยวกับสุขภาพของร่างกายและจิตใจ ธรรมชาติของมนุษย์ที่มีสุขภาพดีการพักผ่อนและการนอนหลับ การจัดการ การปฏิบัติและการทดสอบทางสุขภาพ ร่างกายและจิตใจ โภชนาการเพื่อสุขภาพ โรคส่วนบุคคลและโรคติดต่อ การเลือกใช้บริการทางการแพทย์',573,0,3),(90303007,'นันทนาการเบื้องต้น','FUNDAMENTAL RECREATION','ศึกษาเกี่ยวกับความรู้เบื้องต้นของนันทนาการ ความสำคัญและความจําเป็นต่อชีวิตในสังคมปัจจุบัน ความรู้เกี่ยวกับเวลาและเวลาว่าง ขอบข่ายและประเภทของนันทนาการ ขอบข่ายของกิจกรรมนันทนาการ องค์กรทางนันทนาการ ความต้องการนันทนาการในวัยต่าง ๆ การจัดและบริหารนันทนาการตลอดจนการศึกษาผู้นําทางนันทนาการ ผู้นำเกม',573,0,3),(90303008,'การปฐมพยาบาล','FIRST AIDS','ศึกษาความรู้เบื้องต้นเกี่ยวกับการปฐมพยาบาล ความสําคัญและความจําเป็นของการปฐมพยาบาล องค์ประกอบของการปฐมพยาบาล การปฐมพยาบาลในกรณีต่าง ๆ การเคลื่อนย้ายผู้ป่วย การป้องกันการเกิดอันตราย ตลอดจนการจัดเก็บ และการรักษาเครื่องมือที่ใช้ในการปฐมพยาบาล',573,0,3),(90303009,'หลักความปลอดภัยในการทํางาน','PRINCIPLES OF WORK SAFETY','ความรู้ทั่วไปเกี่ยวกับอันตรายต่างๆ ที่มักจะเกิดขึ้นในการทํางาน สาเหตุของการเกิดอันตรายต่าง ๆ หลักการสร้างความปลอดภัยในสํานักงานและในอุตสาหกรรม การใช้เครื่องมือและเครื่องจักรเพื่อการทํางานอย่างปลอดภัย การจัดเก็บวัสดุในหน่วยงาน การจัดและการใช้อุปกรณ์ป้องกันอันตรายต่างๆ การป้องกันและการจัดการเมื่อเกิดอันตรายจากอุบัติเหตุ',573,0,3),(90303010,'สุขศาสตร์อุตสาหกรรมเบื้องต้น','INTRODUCTION TO INDUSTRIAL HYGIENE','ความรู้ทั่วไปเกี่ยวกับสุขภาพและอนามัย สิ่งแวดล้อมและหลักสุขศาสตร์ของผู้ปฏิบัติงานในอุตสาหกรรม การป้องกันและควบคุมสิ่งอันตราย โรคต่างๆจากการทํางาน และหลักการจัดโปรแกรมสุขภาพในสถานอุตสาหกรรม',573,0,3),(90303011,'การเสริมสร้างคุณภาพชีวิต','ENHANCEMENT OF QUALITY OF LIFE','ความรู้ทั่วไปเกี่ยวกับคุณภาพชีวิต คุณภาพชีวิตกับสังคมปัจจุบันโดยเน้นเรื่องการเสริมสร้าง การดูแลรักษาและการพัฒนาสุขภาพ ทางด้านร่างกาย จิตใจ อารมณ์สังคม และสติปัญญา ให้มีประสิทธิภาพโดยอาศัยหลักการและกิจกรรมทางสุขศึกษา พลศึกษา และนันทนาการ',573,0,3),(90303012,'การพัฒนาสุขภาพแบบองค์รวม','HOLISTIC HEALTH DEVELOPMENT','ศึกษาความสําคัญของการรักษาสุขภาพกายและสุขภาพจิต องค์ประกอบของการพัฒนาสุขภาพกายและสุขภาพจิตที่ดี กระบวนการพัฒนาสุขภาพกายและสุขภาพจิตโดยใช้หลักการบริหารกาย นันทนาการและกีฬา ปัจจัยที่มีผลต่อการพัฒนาสุขภาพกายและสุขภาพจิต อาทิโภชนาการ บุคลิกภาพ และอื่นๆ การปรับตัวเพื่อการอยู่ร่วมกับผู้อื่นในสังคมอย่างเป็นสุข รวมทั้งการศึกษาดูงานนอกสถานที่ ในหน่วยงานและองค์กรที่มีส่วนร่วมในการพัฒนาสุขภาพกายและสุขภาพจิต',573,0,3),(90304001,'การใช้ห้องสมุดและสารนิเทศ','LIBRARY USAGE AND INFORMATION','ความรู้เบื้องต้นเกี่ยวกับห้องสมุดและแหล่งสารนิเทศ ทรัพยากรห้องสมุดและสารนิเทศ วิธีการจัดเก็บ การสืบค้นสารนิเทศจากห้องสมุด และแหล่งสารนิเทศทั้งในประเทศและต่างประเทศ การเขียนภาคนิพนธ์และการอ้างอิงตามหลักสากล',573,0,3),(90304004,'การเขียนรายงาน','REPORT WRITING','ศึกษารูปแบบ และวิธีการเขียนรายงาน รวมทั้งฝึกการเขียนรายงานรูปแบบต่าง ๆ เช่น รายงาน ข่าว รายงานการประชุม และรายงานเชิงวิชาการ เป็นต้น',573,0,3),(90304005,'ศิลปะแห่งการสื่อสาร','ART OF COMMUNICATION','ศึกษาหลักการ และศิลปะแห่งการสื่อสาร แบบจําลองการสื่อสาร ความสําคัญของการสื่อสารที่มีต่อสังคม ศาสตร์และศิลป์ที่ใช้ในการสื่อสารในรูปแบบต่างๆ เช่น การสื่อสารระหว่างบุคคล การสื่อสารมวลชน การสื่อสารเพื่อการโฆษณาและการประชาสัมพันธ์ ตลอดจนกระบวนการและกิจกรรมต่างๆ ที่ใช้ในการสื่อสาร',573,0,3),(90305001,'อารยธรรมไทย','THAI CIVILIZATION','ศึกษาวิวัฒนาการของชาติไทย ตั้งแต่เริ่มตั้งบ้านเมืองเป็นรัฐอิสระ จนเป็นราชอาณาจักรที่มีเอกภาพและความมั่นคง ศึกษาแนวความคิด ความเชื่อ ศรัทธา ตลอดจนการแสดงออกทางด้านศิลปะ วรรณคดี ดนตรีและสถาปัตยกรรมทางด้านที่อยู่อาศัย ทั้งที่เป็นวัฒนธรรมราชสํานักและวัฒนธรรมพื้นบ้าน\nซึ่งประกอบกันเป็นวัฒนธรรมไทย อิทธิพลของวัฒนธรรมไทย และการสร้างความมุ่งหวังและอุดมการณ์ของ\nชาติในสภาพการณ์ปัจจุบัน',573,0,3),(90305003,'เหตุการณ์โลกปัจจุบัน','THE WORLD TODAY','ศึกษาเกี่ยวกับความรู้ความเข้าใจ ปัญหา เศรษฐกิจ การเมือง สังคมและวัฒนธรรม ตลอดจนความสัมพันธ์ของประเทศมหาอํานาจกับภูมิภาคอื่นๆ โดยเน้นประเด็นสําคัญเพื่อชี้ให้เห็นความเป็นมา อิทธิพล ผลกระทบต่อสังคมโลกร่วมสมัย รวมถึงผลกระทบต่อประเทศไทย ปัญหาและทางออกของประเทศ',573,1,3),(90305004,'ภูมิ-ประวัติศาสตร์เพื่อการท่องเที่ยว','GEOGRAPHY AND HISTORY FOR TOURISM','ศึกษาภูมิศาสตร์ของประเทศไทย สภาพภูมิประเทศ ภูมิอากาศ ทรัพยากรธรรมชาติในฐานะที่เป็นทรัพยากรการท่องเที่ยวของแต่ละภาค ซึ่งนําไปสู่การศึกษาประวัติศาสตร์ของชุมชนที่มีการปรับตัว ผสมผสานกับอารยธรรมอันเป็นปัจจัยในการพัฒนาไปสู่ความเป็นรัฐและอาณาจักรรวมทั้งศึกษาเอกลักษณ์ของอารยธรรมไทยทางด้านสถาบันการเมืองการปกครอง เศรษฐกิจ ศาสนา ปรัชญา ความเชื่อ ขนบธรรมเนียม ประเพณี วรรณกรรม ศิลปกรรมและอื่นๆ ที่ปรากฏอยู่ตามแหล่งท่องเที่ยวที่สําคัญของประเทศ มีการศึกษานอกสถานที่',573,1,3),(90305005,'มนุษย์กับการท่องเที่ยว','HUMAN AND TOURISM','ศึกษาความสําคัญและความหมายของการทองเที่ยว ความเป็นมา แนวโน้ม บทบาท และองค์ประกอบที่สำคัญของอุตสาหกรรมการท่องเที่ยว ศึกษาโครงสร้างพื้นฐานของอุตสาหกรรมการท่องเที่ยว ปัจจัยต่างๆ ที่มีอิทธพลต่อการท่องเที่ยวได้แก่การคมนาคม การขนส่ง ที่พักแรม ร้านอาหารและสวัสดิการ ร้านค้าของที่ระลึกตลอดจนการให้ความปลอดภัยต่อชีวิตและทรัพย์สินของนักท่องเที่ยว มีการศึกษานอกสถานที่',573,1,3),(90305006,'มนุษย์กับสิ่งแวดล้อม','HUMAN AND ENVIRONMENT','ศึกษากฎเกณฑ์โดยทั่วไปของนิเวศวิทยาเพื่อให้เกิดความเข้าใจถึงความสัมพันธ์ระหว่างมนุษย์กับสิ่งแวดล้อม สถานการณ์สิ่งแวดล้อมและการอนุรักษ์ส่ิงแวดล้อม รวมทั้งกฎหมายที่เกี่ยวข้องและจริยธรรมต่อสิ่งแวดล้อม ตลอดจนอนาคตของมนุษย์กับสิ่งแวดล้อม',573,1,3),(90306003,'ทักษะการดําเนินชีวิต','LIVING SKILLS','ศึกษาความหมาย ความสําคัญ และองค์ประกอบของทักษะการดําเนินชีวิต ประเภทของทักษะการดําเนินชีวิต ทักษะการดําเนินชีวิตที่สําคัญและจําเป็นสําหรับนักศึกษา และการฝึกปฏิบัติกิจกรรมเสริมสร้างทักษะการดําเนินชีวิตสําหรับนักศึกษา',573,1,3),(90306004,'ครอบครัวอบอุ่น','LOVING FAMILY','ศึกษาความหมาย ความสําคัญ องค์ประกอบและลักษณะของครอบครัวอบอุ่น หลักการสร้างความอบอุ่นในครอบครัว รวมทั้งปัจจัยภายในและภายนอกครอบครัวที่มีผลต่อความสุขในครอบครัว',573,1,3),(90306005,'ภูมิปัญญาไทย','THAI WISDOM','ความหมายและพัฒนาการของภูมิปัญญา ลักษณะภูมิศาสตร์และสภาพแวดล้อมทางสังคม วัฒนธรรมในภูมิภาคต่างๆของไทยอันเป็นปัจจัยพื้นฐานของการก่อเกิดภูมิปัญญาท้องถิ่นในสาขาวิชาต่างๆ ความรู้ความเข้าใจในภูมิปัญญา-ปรีชาญาณสั่งสมในวัฒนธรรมไทยและในดํารงชีวิต ตลอดจนการนําภูมิปัญญามาปรับใช้ในสถานการณ์ปัจจุบันและอนาคต',573,1,3),(90306006,'การจัดการความรู้','KNOWLEDGE MANAGEMENT','ความหมายและความสําคัญของการจัดการความรู้ กระบวนการจัดการความรู้ เครื่องมือที่ใช้ในการจัดการความรู้ รูปแบบการจัดการความรู้ และการประยุกต์ใช้การจัดการความรู้ในบริบทต่างๆ',573,1,3),(90306007,'ทักษะแห่งความสุข','HAPPINESS SKILLS','ศึกษาหลักการและวิธีการทางจิตวิทยา มนุษย์ศาสตร์และสังคมศาสตร์เกี่ยวกับความสุขในระดับต่าง ๆ ทั้งมิติทางกายภาพ มิติทางสังคม มิติทางอารมณ์ มิติทางจิตใจ และมิติทางการรู้คิด โดยมุ่งเน้นการฝึกปฏิบัติเพื่อบริหารความเครียด การเข้าใจตนเอง และการพัฒนาทักษะแห่งความสุข',573,1,3),(90306008,'สมาธิเพื่อพัฒนาชีวิต','MEDITATION FOR LIFE DEVELOPMENT','ความหมายของการทําสมาธิจุดประสงค์วิธีการ ขั้นตอน จุดเริ่มต้นของการทําสมาธิ ลักษณะของการบริกรรมและการทําสมาธิ ประโยชน์ของสมาธิ ลักษณะอาการต่อต้านสมาธิ และการนําสมาธิไปใช้ในชีวิตประจําวัน สมาธิกับการเรียนและการงาน ลักษณะ ขั้นตอน คุณสมบัติ ประโยชน์ของฌาน และสิ่งที่ควร\nรู้เรื่องวิปัสสนาความแตกต่างระหว่างสมถะกับวิปัสสนา แผนผังสมถะกับวิปัสสนาชาวโลกกับวิปสสนา',573,1,3),(90307001,'ภาษาไทยเพื่อการสื่อสาร','THAI USAGE FOR COMMUNICATION','ศึกษาหลักการพื้นฐานของการใช้ภาษาไทยเพื่อการสื่อสารอย่างมีประสิทธิภาพ ฝึกทักษะทั้งสี่ที่ใช้เพื่อการสื่อสาร ได้แก่ ทักษะการฟัง การพูด การอ่าน และการเขียนในสถานการณ์ต่าง ๆ เช่น การฟังเพื่อจับใจความสําคัญ การพูดในที่ชุมชน การอ่านเพื่อจับใจความ การตีความ การวิเคราะห์และวิจารณ์และการเขียนงานรูปแบบต่าง ๆ',573,1,3),(90307002,'ภาษาและวัฒนธรรมญี่ปุ่น','JAPANESE LANGUAGE AND CULTURE','ศึกษาการใช้ภาษาญี่ปุ่นในการติดต่อสื่อสารในชีวิตประจําวันอย่างง่าย ๆ ตลอดจนขนบธรรมเนียมประเพณีและวัฒนธรรมของชาวญี่ปุ่น เพื่อให้เกิดความรู้ความเข้าใจอย่างถูกต้อง',573,1,3),(90307003,'วรรณกรรมวิจารณ์','LITERARY CRITICISM','ศึกษาองค์ประกอบของวรรณกรรม แนวทางการอ่านและวิจารณ์วรรณกรรมประเภทต่างๆ ทฤษฎีการวิจารณ์และหลักเกณฑ์การวิจารณ์ในระดับเบื้องต้น ตลอดจนเข้าใจความสัมพันธ์ของวรรณกรรมกับศาสตร์อื่นๆ',573,1,3),(90307004,'ภาษาในสังคมไทย','LANGUAGE IN THAI SOCIETY','ศึกษาโครงสร้างของภาษาและความหลากหลายของภาษาที่ใช้ในสังคมไทย ความสัมพันธ์ระหว่างภาษา บริบททางสังคมและวัฒนธรรม ธรรมชาติและการเปลี่ยนแปลงของภาษา รวมทั้งการพัฒนาภาษากับการพัฒนาสังคมและประเทศชาติ',573,1,3),(90307005,'การฟังและการอ่านเพื่อพัฒนาคุณภาพชีวิต','LISTENING AND READING FOR IMPROVING LIFE QUALITY','หลักการรับสารอย่างมีวิจารณญาณ ฝึกทักษะการฟังและการอ่านเพื่อพัฒนาคุณภาพชีวิตให้เกิดความรอบรู้มีประสบการณ์และสร้างจินตนาการ การพัฒนาความสามารถในการจับใจความสําคัญ การสรุปประเด็น การวิเคราะห์และประเมินค่าสารทั้งสาระความรู้และบันเทิงคดี',573,1,3),(90307006,'ศิลปะการต่อรอง','ART OF NEGOTIATION','แนะนําการต่อรองที่เกิดขึ้นในชีวิตจริง เหตุการณ์สําคัญในประวัติศาสตร์ที่มีเหตุมาจากการต่อรอง ศึกษาปัจจัยกระตุ้นให้เกิดการต่อรอง เรียนรู้และจดจําความต้องการพื้นฐานของมนุษย์ ทฤษฎีความต้องการที่เกี่ยวข้องกับการต่อรอง การเตรียมพร้อมก่อนการเจรจาต่อรอง ศึกษาสถานการณ์ต่าง ๆ ที่เกิดขึ้นได้ขณะเจรจาต่อรอง การมองหาสมมติฐานที่ซ่อนไว้เทคนิคการต่อรอง กรณีตัวอย่างของการต่อรอง',573,1,3),(90307007,'วาทวิทยา','SPEECH COMMUNICATION','ศึกษากระบวนการสื่อสารของมนุษย์ศิลปะการพูดในที่สาธารณะ ฝึกการใช้วัจนภาษาและอวัจนภาษาในการสื่อสาร หลักการเตรียมการพูดในสถานการณ์ต่างๆ การแก้ไขความวิตกกังวลในการพูด รวมทั้งเรียนรู้เทคนิคการใช้เสียง ท่าทางและบุคลิกภาพที่เหมาะสม เพื่อการนําเสนอที่มีประสิทธิภาพ',573,1,3),(90307008,'ภาษาเพื่อสื่อสารมวลชน','LANGUAGE FOR MASS MEDIA','เทคนิคการใช้ภาษาไทยในสื่อ การวิเคราะห์ลักษณะเฉพาะของภาษาสื่อสารมวลชน ที่ปรากฏทางสื่อหนังสือพิมพ์สื่อวิทยุโทรทัศน์สื่ออินเทอร์เน็ต และสื่อมวลชนอื่นๆ',573,1,3),(90401003,'เศรษฐกิจกับวิถีชีวิต','ECONOMY AND LIVING','ความรู้เบื้องต้นทางเศรษฐศาสตร์ที่เกี่ยวข้องกับการดําเนินชีวิตประจําวันของมนุษย์ การบริโภค การลงทุน เงินเฟ้อ เงินฝืด สถาบันการเงิน ภาษีอากร เรียนรู้ถึงสภาพการณ์ต่างๆ ทางเศรษฐกิจ เข้าใจปัญหาเศรษฐกิจที่เกิดขึ้น และแนวทางในการแก้ไขปัญหาเศรษฐกิจของรัฐบาล รู้จักปรับตนเองให้ ดํารงชีวิตอยู่ได้อย่างเหมาะสมกับสภาพเศรษฐกิจต่างๆ ในสังคม',574,1,3),(90401007,'ความรู้เบื้องต้นเกี่ยวกับเศรษฐกิจไทย','INTRODUCTION TO THAI ECONOMY','ศึกษาโครงสร้างและพัฒนาการของระบบเศรษฐกิจไทย กลไกการทํางานของระบบเศรษฐกิจไทย ความสัมพันธ์ของระบบเศรษฐกิจไทยและเศรษฐกิจโลก ประเด็นปัญหาเศรษฐกิจและสังคมไทยที่สําคัญ และนโยบายในการแก้ปัญหา',574,0,3),(90401008,'เศรษฐกิจเอเชีย','ECONOMY OF ASIAN COUNTRIES','ศึกษาสถานการณ์ที่เกี่ยวโยงกับเศรษฐกิจเอเชีย ตลอดจนปัจจัยต่างๆ ที่มีผลต่อการเปลี่ยนแปลงทางเศรษฐกิจ โดยเน้นศึกษาประเทศที่มีบทบาทสําคัญต่อเศรษฐกิจ เช่น จีน ญี่ปุ่น เกาหลีใต้ ไทย กลุ่มประเทศอาเซียน',574,1,3),(90401009,'เศรษฐศาสตร์เพื่อธุรกิจ','ECONOMICS FOR BUSINESS','ศึกษาแนวคิดและการประยุกต์ใช้ทฤษฎีทางเศรษฐศาสตร์ การทํางานของระบบเศรษฐกิจในการแก้ปัญหาพื้นฐานทางเศรษฐกิจ อุปสงค์ อุปทานและดุลยภาพ ความยืดหยุ่น ทฤษฎีผู้บริโภค ทฤษฎีต้นทุนการผลิต การกําหนดราคาและปริมาณการผลิตในตลาดต่างๆ บทบาทของรัฐบาลในการแก้ปัญหาต่างๆ โดยศึกษาบริบทที่เกี่ยวข้องกับธุรกิจอุตสาหกรรม',574,1,3),(90401010,'ความรู้เบื้องต้นเกี่ยวกับการลงทุน','INTRODUCTION TO INVESTMENT','ศึกษาความรู้เบื้องต้นเกี่ยวกับการลงทุน การวางแผนการเงินส่วนบุคคล การรู้จักหาเงินออม และใช้เงินอย่างมีประสิทธิภาพ ทางเลือกในการลงทุนประเภทต่างๆ ตลาดการเงิน ผลตอบแทนและความเสี่ยงจากการลงทุน เงินและสถาบันการเงินที่เกี่ยวข้องกับชีวิตประจําวัน การดําเนินงานของธนาคารกลาง ธนาคารพาณิชย์ ตลาดหลักทรัพย์และสถาบันการเงินต่างๆ ตลอดจนสถานการณ์ทางการเงินการธนาคารของประเทศไทย',574,1,3),(90401011,'การประกอบการ','ENTREPRENEURSHIP','ศึกษาเกี่ยวกับผู้ประกอบการที่ประสบความสําเร็จ ประเภทของผู้ประกอบการ การจัดตั้งธุรกิจ องค์ประกอบของการเขียนแผนธุรกิจ กลยุทธ์การดําเนินการธุรกิจในหน้าที่ต่างๆ เทคนิคการบริหารธุรกิจสมัยใหม่ และกรณีศึกษาการประกอบการธุรกิจที่ประสบความสําเร็จ',574,1,3),(90401012,'ความรู้เบื้องต้นทางการตลาด','INTRODUCTION TO MARKETING','วิชานี้ศึกษาเกี่ยวกับพฤติกรรมของผู้บริโภคในยุคโลกาภิวัตน์ การกําหนดกลยุทธ์ส่วนแบ่งตลาด การกําหนดกลุ่มเป้าหมาย และการกําหนดตําแหน่งทางการตลาดที่เฉพาะเจาะจงมากยิ่งขึ้น รวมถึงการดําเนินการสร้างผลิตภัณฑ์ การกําหนดราคา การเลือกใช้ช่องทางจัดจําหน่ายตลอดจนการใช้การส่งเสริมการตลาดโดยคํานึงความรับผิดชอบสังคมเป็นหลัก เพื่อช่วยให้การตลาดสามารถดําเนินไปควบคู่กับการกินดีอยู่ดีของผู้บริโภค',574,1,3),(90401013,'ความรู้ทั่วไปเกี่ยวกับธุรกิจ','GENERAL BUSINESS','ศึกษาความหมายของกระบวนการบริหาร โดยเป็นเนื้อหาในองค์การธุรกิจ การใช้ทรัพยากรทางการบริหารให้เป็นประโยชน์ต่อธุรกิจ รูปแบบของการดำเนินงานทางธุรกิจ การจัดองค์การ การสร้างมนุษยสัมพันธ์ ความเป็นผู้นำและการจูงใจบุคคลภายในองค์การ และการนําหลักการพื้นฐานและความรู้ทั่วไปทางด้าน\nการตลาด การบริหารงานบุคคล การบริหารการเงิน และการบัญชีมาใช้ในการบริหารธุรกิจขององค์การ',574,1,3),(90402007,'ความรู้เบื้องต้นเกี่ยวกับสิทธิทางสังคมและครอบครัว','INTRODUCTION TO PRINCIPLES OF SOCIAL AND FAMILY RIGHTS','ศึกษาแบบบูรณาการถึงความรู้พื้นฐานเกี่ยวกับ สิทธิอันพึงมีพึงได้รับการรับรองและคุ้มครองตามกฎหมาย สิทธิในความเป็นส่วนตัวและไม่ถูกล่วงละเมิด สิทธิที่จะได้รับความคุ้มครองในฐานะผู้บริโภค สิทธิที่จะได้รับการคุ้มครองในชีวิตและทรัพย์สิน สิทธิในทางครอบครัว และมรดก ทั้งในฐานะคู่หมั้น คู่สมรส ผู้สืบสันดาน บุพการีและในฐานะเป็นทายาท ภายใต้กรอบแห่งกฎหมายและสังคมไทย รวมถึงกรณีศึกษาที่เกี่ยวข้อง',574,1,3),(90402008,'ความรู้เบื้องต้นในการทํางานและสวัสดิการทางสังคม','INTRODUCTION TO WORKING AND SOCIAL WELFARE','ศึกษาแบบบูรณาการถึงความรู้พื้นฐานเกี่ยวกับ การสมัครงาน การสัมภาษณ์งาน การทดลองงาน การจ้างแรงงาน การใช้แรงงาน ค่าตอบแทนการทำงาน การลา การหยุด โทษทางวินัย การลาออก การเลิกจ้าง ค่าชดเชย อีกทั้ง สิทธิประโยชน์ทดแทนและสวัสดิการทางสังคม ซึ่งรัฐหรือนายจ้างเป็นผู้จัดให้ เพื่อความมั่นคงทั้งในการทํางาน และการดํารงชีวิต อันได้แก่ เงินสงเคราะห์ลูกจ้าง เงินทดแทน เงินประกันสังคม และเงินสํารองเลี้ยงชีพ รวมถึงกรณีศึกษาที่เกี่ยวข้อง',574,1,3),(90402009,'ความรู้เบื้องต้นเกี่ยวกับกฏหมายในชีวิตประจําวัน','INTRODUCTION TO PRINCIPLES OF LAWS IN DAILY LIFE','ศึกษาแบบบูรณาการถึงความรู้พื้นฐานเกี่ยวกับสิทธิในความเป็นมนุษย์ ภายใต้กรอบแห่งรัฐธรรมนญู และกฎหมายอื่นที่เกี่ยวข้อง การทํานิติกรรม สัญญา ลักษณะและประเภทของสัญญาที่เกี่ยวข้องกับชีวิตประจําวัน หลักเบื้องต้นเกี่ยวกับการประกอบอาชีพในรูปแบบต่างๆ ตั๋วเงินและความรับผิด การติดต่อ\nกับหน่วยงานของทางราชการ อันได้แก่ อําเภอ สถานีตํารวจ ศาล และสิทธิ หน้าที่ ทางภาษีสําหรับประชาชนทั่วไป รวมถึงกรณีศึกษาที่เกี่ยวข้อง',574,1,3),(90402010,'ความรู้เบื้องต้นเกี่ยวกับกฎหมายไทย','INTRODUCTION TO THAI LAWS','ความจําเป็นที่ต้องมีกฎหมายใช้บังคับในสังคม ความหมายของกฎหมาย ลักษณะของกฎหมาย ประเภทของกฎหมาย กฎหมายการทะเบียนราษฎร์ กฎหมายเกี่ยวกับการรับราชการทหาร กฎหมายแพ่งที่เกี่ยวข้องในชีวิตประจําวัน บุคคล ครอบครัว มรดก พินัยกรรม การทําเอกสารและสัญญา ความรู้เกี่ยวกับทรัพย์ ความรู้เกี่ยวกับที่ดิน หลักเกณฑ์ของกฎหมายในการทํานิติกรรมและสัญญา สัญญาประเภทต่าง ๆ ที่พบได้บ่อย ความรู้พื้นฐานเกี่ยวกับกฎหมายอาญา ความรับผิดในทางอาญา เหตุยกเว้นความผิดและเหตุยกเว้นโทษ',574,1,3),(90402011,'กฎหมายวิศวกรรมและเทคโนโลยี','ENGINEERING AND TECHNOLOGY LAWS','ความรู้เบื้องต้นเกี่ยวกับกฎหมาย ประมวลกฎหมาย กฎกระทรวง ประกาศ ระเบียบข้อบังคับ ข้อบัญญัติ พระราชบัญญัติวิศวกร และกฎหมายวิศวกรรมและเทคโนโลยี การคุ้มครองข้อมูลข่าวสารส่วนบุคคล และความรู้เกี่ยวกับสิทธิความเป็นอยู่ส่วนตัว',574,1,3),(90402012,'ความรู้เบื้องต้นเกี่ยวกับตลาดแรงงานและการค้าในกลุ่มอาเซียน','INTRODUCTION TO ASEAN TRADE AND LABOR MARKET','ศึกษาถึงความรู้พื้นฐานเกี่ยวกับ ลักษณะแรงงานไทยในตลาดแรงงานไทยและอาเซียน การเตรียมความพร้อมในการเข้าสู่ตลาดแรงงาน ทั้งภายในประเทศและกลุ่มประเทศอาเซียน การประกอบธุรกิจการค้าระหว่างประเทศในกลุ่มอาเซียน สัญญาทางการค้า การขนส่ง การประกันภัย และพิธีศุลกากร รวมถึงกฎหมายและกรณีศึกษาที่เกี่ยวข้อง',574,1,3),(90402013,'ทรัพย์สินทางปัญญาไทย','THAI INTELLECTUAL PROPERTY','ลักษณะทั่วไป สาระสําคัญ ประเภท การได้มา ความเป็นเจ้าของสิทธิในทรัพย์สินทางปัญญา ความคุ้มครองและวิธีการขอรับความคุ้มครองตามกฎหมายในทรัพย์สินทางปัญญาแต่ละประเภท ได้แก่ ลิขสิทธิ์ สิทธิบัตร อนุสิทธิบัตร เครื่องหมายการค้า แบบผังรูปของวงจรรวม ความลับทางการค้า พันธุ์พืช\nสิ่งบ่งชี้ทางภูมิศาสตร์รวมทั้งลักษณะและรูปแบบของทรัพย์สินทางปัญญาและกรณีศึกษาที่น่าสนใจ',574,1,3),(90403004,'การบริหารท้องถิ่นไทย','THAI LOCAL ADMINISTRATION','ศึกษาหลักการทั่วไปในการบริหารประเทศ หลักและแนวความคิดในการบริหารท้องถิ่น ประวัติการบริหารท้องถิ่นไทย การบริหารท้องถิ่นของไทยในปัจจุบัน องค์การและกระบวนการบริหารท้องถิ่นไทย ปัญหาและอุปสรรคต่างๆของการบริหารท้องถิ่นไทย รวมทั้งแนวโน้มการพัฒนาและปรับปรุงการบริหาร\nท้องถิ่นไทย',574,1,3),(90403007,'การดํารงชีพในสังคม','LIVING IN SOCIETY','ศึกษาเกี่ยวกับสภาพการใช้ชีวิตในสังคมไทยในปัจจุบัน สิทธิและหน้าที่ของพลเมือง ความมีวินัยและความรับผิดชอบต่อสังคมส่วนรวม บทบาทและอิทธิพลของศาสนาและความเชื่อที่มีต่อการใช้ชีวิต คุณธรรมและจริยธรรมที่พึงปฏิบัติสําหรับการเป็นคนดีในสังคมไทย เพศศึกษาและการใช้ชีวิตคู่รวมทั้ง\nการศึกษาแบบอย่างการใช้ชีวิตที่เหมาะสมในสังคมไทยปัจจุบัน',574,1,3),(90403008,'สังคมและวัฒนธรรมไทย','THAI SOCIETY AND CULTURE','เรียนรู้แนวคิดเกี่ยวกับการศึกษาและสังคมไทย ประเภทของสังคมไทย ระบบอุปถัมภ์และโครงสร้างชนชั้น เครือญาติและการแต่งงาน ภูมิปัญญาท้องถิ่นและเอกลักษณ์ไทย ค่านิยมและลักษณะนิสัยของคนไทย รวมทั้งแนวโน้มการเปลี่ยนแปลงทางสังคมไทย',574,1,3),(90403009,'พลวัตสังคมไทย','DYNAMICS OF THAI SOCIETY','ศึกษาลักษณะทั่วไปของสังคมไทย การปกครองของไทย ศาสนาและความเชื่อของสังคมไทย วัฒนธรรม ประเพณีและการเปลี่ยนแปลง ปัญหาสังคมไทย ภูมิปัญญาไทย วิสัยทัศน์ทางสังคมไทย รวมทั้งการศึกษาดูงานนอกสถานที่ในประเด็นที่เกี่ยวข้อง',574,1,3),(90403010,'การบริหารจัดการภาครัฐ','PUBLIC MANAGEMENT','ศึกษาหลักของการบริหารราชการโดยมุ่งเน้นที่การบริหารจัดการ การประเมินผลการปฏิบัติงานและประสิทธิภาพของการบริหารจัดการ การใช้เทคโนโลยีในกระบวนการบริหารจัดการ รวมถึงการใช้ระบบกึ่งตลาดและสร้างสรรค์สิ่งใหม่ๆให้เหมาะสมและสอดคล้องกับยุทธศาสตร์ที่เปลี่ยนแปลงไป',574,1,3),(90403011,'การจัดการเทคโนโลยีในชีวิตประจําวัน','TECHNOLOGY MANAGEMENT IN DAILY LIFE','ศึกษาหลักการจัดการเทคโนโลยีบทบาทของเทคโนโลยีในชีวิตประจําวัน วงจรชีวิตของเทคโนโลยี การถ่ายโอนเทคโนโลยี ซึ่งครอบคลุมถึงกระบวนการประเมินเทคโนโลยี การจัดการการเปลี่ยนแปลงและการบริหารความเสี่ยงในยุคโลกาภิวัตน์',574,1,3),(90403012,'การจัดการประสิทธิภาพตนเองและอาชีพ','SELF-EFFICIENCY AND CAREER MANAGEMENT','ศึกษาความหมายและความสําคัญของการจัดการตนเองและจัดการงาน การเรียนรู้ด้วยตนเองเพื่อกําหนดเป้าหมายชีวิตและวางแผนการทํางาน คุณสมบัติหลักในการจัดการงานและการเพิ่มประสิทธิภาพในการทํางาน องค์ประกอบที่จะทําให้ประสบความสําเร็จในการทํางาน การประเมินผลการทํางาน\nของตนเองอย่างมีระบบและการพัฒนาตนเอง',574,1,3),(90403013,'ศิลปะและวัฒนธรรมไทย','THAI ART AND CULTURE','ศึกษาบริบทของสังคมไทย การสร้างสรรค์งานศิลปกรรม ความเชื่อ จารีตและประเพณี ศิลปะและวัฒนธรรมของไทย ตั้งแต่ในช่วงก่อนสมัยใหม่จนถึงปัจจุบัน ผลกระทบความเป็นสมัยใหม่กับศิลปะและวัฒนธรรมของไทย ศิลปะและวัฒนธรรมไทยในยุคโลกาภิวัฒน์ การสงวนรักษามรดกทางศิลปะและ\nวัฒนธรรมของไทย',574,1,3),(90403014,'ประชากรศึกษา','POPULATION EDUCATION','มิติประชากรในการพัฒนา อัตราชีพทางประชากร ความหมาย และการนําไปใช้ การศึกษากับการพัฒนาคุณภาพประชากร เศรษฐกิจกับการพัฒนาคุณภาพประชากร วิทยาศาสตร์และเทคโนโลยีกับการพัฒนาคุณภาพประชากร ศิลปะและวัฒนธรรมกับการพัฒนาคุณภาพประชากร',574,1,3),(90403015,'การเมืองการปกครองไทย','THAI POLITICS AND GOVERNMENT','ศึกษาสภาพทั่วไปของการเมืองการปกครอง หลักและแนวคิดการปกครองระบอบ\nประชาธิปไตย สถาบันทางการเมือง กระบวนการและพฤติกรรมทางการเมือง ปัญหาและแนวโน้มการเมืองการปกครองไทย',574,1,3),(90591001,'เรารัก สจล.','I LOVE KMITL','ศึกษาพระราชประวัติของพระบาทสมเด็จพระจอมเกล้าเจ้าอยู่หัว พระราชปรีชาและพระคุณูปการต่างๆ โดยเฉพาะอย่างยิ่งด้านการศึกษา ประวัติความเป็นมาของการก่อตั้งสถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง เรียนรู้ประวัติบุคคลสําคัญที่เกี่ยวข้องกับ สจล. และศิษย์เก่าที่สร้างชื่อเสียงให้กับสถาบัน เรียนรู้ชีวิตการเป็นนักศึกษา สจล. ปลูกฝังสํานึกรับผิดชอบในฐานะนักศึกษาตามอัตลักษณ์ของสถาบัน ซื่อสัตย์ ใฝ่รู้ สู้งาน การรักในเกียรติภูมิศักดิ์ศรีความเป็นนักศึกษา สจล. ตระหนักถึงบทบาทของ สจล. ต่อสังคมไทยและสังคมโลก ส่งเสริมการพัฒนาตนเองเพื่อการดําเนินชีวิตที่ดีมีคุณธรรมจริยธรรมบนพื้นฐานปรัชญาเศรษฐกิจพอเพียง',591,1,3),(90591002,'กีฬาและนันทนาการ','SPORTS AND RECREATIONAL ACTIVITIES','ศึกษากฎ กติกา วัฒนธรรม สังคมทางกีฬา ความมีน้ําใจนักกีฬา หลักการออกกําลังกายที่ถูกต้อง การฝึกทักษะกีฬา และกิจกรรมนันทนาการ',591,1,3),(90591003,'ภูมิคุ้มกันทางใจ','IMMUNITY OF MIND','ศึกษาแนวคิดทางจิตวิทยาเพื่อทําความเข้าใจและเห็นคุณค่าของตนเองและผู้อื่น การสร้างสัมพันธภาพ การใช้ชีวิตร่วมกับผู้อื่น ทักษะการแก้ปัญหาในการดําเนินชีวิต การปรับเปลี่ยนเพื่อสร้างภูมิคุ้มกันชีวิตให้กับตนเอง',591,1,3),(90591004,'ศิลปะการพัฒนาอารมณ์','ARTS OF EMOTION DEVELOPMENT','ศึกษาความหมาย ความสําคัญ หลักการ แนวคิดทฤษฎีที่เกี่ยวข้องอารมณ์ที่มีอิทธิพลต่อการดํารงชีวิต การปรับเปลี่ยนความคิด การคิดเชิงบวก การเผชิญปัญหา การจัดการอารมณ์ในการทํางานและการดําเนินชีวิตประจําวัน',591,1,3),(90591005,'ชีวิตออกแบบได้','DESIGNING YOUR LIFE','เรียนรู้และฝึกการออกแบบชีวิตของตนเอง เรียนรู้การตั้งเป้าหมายในชีวิตที่สอดคล้องต่อกระแสการเปลี่ยนแปลงในศตวรรษที่ 21 เพิ่มทักษะทางสังคม การใช้ชีวิตอย่างมีความสุขบนพื้นฐานความพอเพียง สามารถจัดการการเงินส่วนตัว การทํางาน การเข้าสังคม การสร้างความสัมพันธ์ส่วนตัวกับบุคคลรอบข้าง',591,1,3),(90591006,'พลังแห่งบุคลิกภาพ','POWER OF PERSONALITY','ศึกษาทฤษฎีบุคลิกภาพ กระบวนการในการพัฒนาบุคลิกภาพ เพื่อให้ได้บุคลิกภาพที่เหมาะกับตนเองตามกาลเทศะ การพูดและฝึกพูดในโอกาสต่างๆ ความรู้ทั่วไปเกี่ยวกับมารยาท การเสริมสร้างมนุษยสัมพันธ์ ศิลปะการแต่งกาย การแก้ไขข้อบกพร่องทางร่างกายเพื่อเสริมสร้างบุคลิกภาพ',591,1,3),(90591007,'การพัฒนาสุขภาพแบบองค์รวม','HOLISTIC HEALTH DEVELOPMENT','ศึกษาความสําคัญของการรักษาสุขภาพกายและสุขภาพจิต องค์ประกอบของการพัฒนาสุขภาพกายและสุขภาพจิตที่ดี ปัจจัยที่มีผลต่อการพัฒนาสุขภาพกายและสุขภาพจิต การปรับตัวเพื่อการอยู่ร่วมกับผู้อื่นอย่างมีความสุข',591,1,3),(90591008,'สุนทรียะภาพถ่าย','PHOTOGRAPHY APPRECIATION','ศึกษาเรื่องหลักเกณฑ์การถ่ายภาพเพื่อให้เห็นความงามของภาพที่ถ่าย การใช้อุปกรณ์และเทคนิคต่างๆ การเรียนรู้กระบวนการเพื่อให้ได้รูปถ่ายที่มีคุณค่าในแง่มุมต่างๆ และความซาบซึ้งในการพิจารณาและวิจารณ์รูปถ่าย',591,1,3),(90591009,'สมาธิเพื่อพัฒนาชีวิต','MEDITATION FOR LIFE DEVELOPMENT','ศึกษาความหมายของการทําสมาธิจุดประสงค์วิธีการ ขั้นตอน จุดเริ่มต้นของการทําสมาธิ ลักษณะของการบริกรรมและการทําสมาธิ ประโยชน์ของสมาธิ การนําสมาธิไปใช้ในชีวิตประจําวัน สมาธิกับการเรียนและการงาน',591,1,3),(90591010,'สุนทรียะดนตรี','MUSIC APPRECIATION','ศึกษารูปแบบ ลักษณะ ธรรมชาติและองค์ประกอบของดนตรีความรู้เบื้องต้นเกี่ยวกับดนตรีไทยและสากล การชื่นชมความงามและการตระหนักถึงคุณค่าของดนตรีทักษะและมารยาทในการฟังดนตรี',591,1,3),(90592001,'รู้ทันโลก','WORLD SOCIETY AWARENESS','ศึกษาบทบาท หน้าที่ ความรับผิดชอบ และการเรียนรู้การอยู่ร่วมกันในสังคมไทย สังคมอาเซียน สังคมโลก การอยู่ในสังคมอย่างรู้เท่าทัน ทั้งด้านเศรษฐกิจ ด้านการเมือง ด้านสังคม',592,1,3),(90592002,'การดํารงชีพในสังคมดิจิทัล','LIVING IN DIGITAL SOCIETY','ศึกษาเกี่ยวกับการใช้ชีวิตในสังคมดิจิทัล ความสําคัญของข้อมูลสารสนเทศ การเข้าถึงแหล่งข้อมูล การพัฒนาทักษะในการสืบค้นและอ้างอิงข้อมูล การใช้และจัดการสารสนเทศได้อย่างถูกต้องและมีประสิทธิภาพ การนําเสนออย่างสร้างสรรค์และมีวิจารณญาณ ตระหนักในจรรยาบรรณและผลกระทบที่มีต่อบุคคลและสังคมรวมทั้งกฎหมายที่เกี่ยวข้อง',592,1,3),(90592003,'ภูมิปัญญาไทยประยุกต์','APPLIED THAI WISDOMS','เรียนรู้และตระหนักถึงคุณค่าภูมิปัญญาไทย ความภาคภูมิใจในความเป็นไทย ภูมิปัญญาไทยกับพัฒนาการของชุมชน การแสวงหาองค์ความรู้ในภูมิปัญญาท้องถิ่น ให้สามารถนําไปประยุกต์ใช้เป็นแนวทางสําหรับพัฒนางานให้มีเอกลักษณ์และเพิ่มมูลค่าแก่ชุมชนและเหมาะสมกับกระแสการเปลี่ยนอันเนื่องมาจากการเจริญของสังคมได้อย่างยั่งยืน ผลกระทบทางสังคมและกระแสโลกาภิวัตน์ต่อภูมิปัญญา',592,1,3),(90592004,'วัฒนธรรมร่วมสมัย','CONTEMPORARY CULTURE','ศึกษาแนวคิดของพหุวัฒนธรรม วิเคราะห์ปรากฏการณ์ร่วมสมัย โครงสร้างของวัฒนธรรมทั้งระดับสังคมไทยและสังคมโลก วิเคราะห์ความสัมพันธ์และความต่างทางวัฒนธรรม',592,1,3),(90592005,'วิถีคนกล้า','BRAVE HEART','เรียนรู้ประวัติศาสตร์ชาติไทย วีรกษัตริย์และวีรชนไทย รวมถึงเหล่าผู้กล้าและเสียสละในสังคมปัจจุบัน เพื่อนํามาเป็นแบบอย่างในการดํารงชีวิต กล้าคิด การทําในสิ่งที่ดีให้กับสังคมไทย และคนต้นแบบในมิติต่างๆ',592,1,3),(90592006,'ภูมิสังคมไทย','THAI GEOSOCIAL BASE','ศึกษาและเรียนรู้ให้เข้าใจถึงความสําคัญของสภาพถิ่นฐาน ที่ตั้ง และภูมิประเทศที่แตกต่างกัน อันเป็นบ่อเกิดของความหลากหลายทางสังคมและวัฒนธรรมไทย ที่ดํารงความมีเอกลักษณ์และสามารถพัฒนาต่อยอดภูมิปัญญาแบบพื้นถิ่นไว้เป็นมรดกทางวัฒนธรรมสืบไปได้',592,1,3),(90592007,'ปรัชญาเศรษฐกิจพอเพียง','THE PHILOSOPHY OF SUFFICIENCY ECONOMY','ศึกษาความเป็นมา แนวคิด ความหมาย และ การประยุกต์ใช้ปรัชญาเศรษฐกิจพอเพียงในรูปแบบต่างๆ เรียนรู้จากการปฏิบัติเพื่อให้เกิดความตระหนักในวิถีชีวิตแห่งความพอเพียง และนําหลักปรัชญาเศรษฐกิจพอเพียงไปประยุกต์ใช้ในการดํารงชีวิตอย่างเหมาะสมกับบริบทสังคมและความเปลี่ยนแปลงในปัจจุบัน',592,1,3),(90593001,'บูรณาการแห่งการคิด','INTEGRATED THINKING','ศึกษาหลักการและประเภทของการคิด การคิดเชิงบวก การคิดนอกกรอบ การคิดเชิงวิพากษ์ การคิดวิเคราะห์ เรียนกระบวนการตั้งคําถาม การวิเคราะห์ การสังเคราะห์ การประเมินค่า และแสดงความคิดเห็นอย่างมีเหตุผล การพัฒนาการคิด การสร้างผลงานอันเนื่องมาจากการคิด',593,1,3),(90593002,'รักษ์โลก','THINK EARTH','ศึกษาความสําคัญของการกระตุ้นความคิดและความสํานึกในการอนุรักษ์สิ่งแวดล้อมที่มีต่อคุณภาพชีวิต การศึกษาผลกระทบจากพฤติกรรมของมนุษย์ทั้งทางบวกและลบต่อทรัพยากรธรรมชาติและสิ่งแวดล้อม การคิดวิเคราะห์เพื่อหาแนวทางการจัดการสิ่งแวดล้อมและการพัฒนาทรัพยากรธรรมชาติ การคิด\nอย่างเป็นระบบ และการวิเคราะห์ความเหมาะสมโดยใช้เครื่องมือช่วยคิดแบบต่างๆ',593,1,3),(90593003,'พลังงานที่ยั่งยืน','SUSTAINABLE ENERGY','ศึกษารูปแบบของพลังงานที่เกี่ยวข้องในชีวิตประจําวัน ความสําคัญของการกระตุ้นความคิดและความสํานึกในการใช้พลังงานที่มีอยู่อย่างจํากัด การศึกษาพลังงานทางเลือก และการฝึกคิดวิเคราะห์ และการคิดอย่างเป็นระบบ การใช้พลังงานอย่างมีประสิทธิภาพ การปลูกฝังและนําเสนอแนวทางการใช้พลังงานอย่างยั่งยืน การคิดอย่างเป็นระบบ และการวิเคราะห์ความเหมาะสมโดยใช้เครื่องมือช่วยคิด',593,1,3),(90593004,'การดํารงชีพท่ามกลางภัยพิบัติและวิกฤติในอนาคต','LIVING IN FUTURE DISASTER AND CRISIS','เข้าใจรูปแบบของภัยพิบัติวิกฤติหลักการเพื่อการอยู่รอด ปัจจัยที่เกี่ยวข้องและผลกระทบเพื่อการอยู่รอดทั้งในสถานการณ์ปกติและสถานการณ์วิกฤต วิเคราะห์กรณีศึกษาต่างๆที่เกิดขึ้น ฝึกทักษะการคิดและนําเสนอผลงานที่สามารถใช้เพื่อการดํารงชีพท่ามกลางภัยพิบัติและวิกฤติในอนาคต',593,1,3),(90594001,'ผู้ประกอบการสมัยใหม่','MODERN ENTREPRENEURSHIP','ศึกษาบทบาท ประเภทและคุณลักษณะของการเป็นผู้ประกอบการสมัยใหม่มีความรู้รอบด้านเกี่ยวกับธุรกิจ การจัดตั้งธุรกิจ องค์ประกอบของการแผนธุรกิจ กลยุทธ์ในการดําเนินการธุรกิจเพื่อเพิ่มโอกาสในการแข่งขัน การสร้างความแตกต่าง การสร้างเอกลักษณ์ให้องค์กร การมุ่งตอบสนองความต้องการของลูกค้า',594,1,3),(90594002,'ผู้ประกอบการทางสังคม','SOCIAL ENTREPRENEURSHIP','ศึกษาบทบาทการเป็นผู้ประกอบการที่มองเห็นปัญหาของสังคม หรือการเพิ่มคุณค่าด้านประกอบการในชุมชนท้องถิ่น และใช้หลักของผู้ประกอบการในการออกแบบ และจัดระบบทางธุรกิจเพื่อบรรลุเป้าหมายในการเปลี่ยนแปลงทางสังคมและการเพิ่มทุนทางสังคม ไม่เน้นกําไรส่วนบุคคล พร้อมกับคิดค้นวิธีการใหม่ๆ ในการแก้ไขปัญหา เพื่อเปลี่ยนแปลงสังคมไปในทางที่ดีขึ้น',594,1,3),(90594003,'การจัดการและผู้นําสมัยใหม่','MODERN MANAGEMENT AND LEADERSHIP','ศึกษาหลักการการบริหารจัดการยุคใหม่ ทฤษฎีผู้นํายุคใหม่ และทฤษฎีผู้นํายุคปัจจุบัน ศึกษาความสัมพันธ์ระหว่างการจัดการและภาวะผู้นํา การเรียนรู้แนวทางการพัฒนาทักษะการจัดการ และทักษะภาวะความเป็นผู้นํา',594,1,3),(90594004,'การวางแผนเพื่อการลงทุน','INVESTMENT PLANING','ศึกษาประเภทของการลงทุน ทฤษฎีการเงินที่ใช้เพื่อการลงทุน การบริหารความเสี่ยงในการลงทุน หลักการวิเคราะห์และการลงทุนเพื่อผลตอบแทนที่คุ้มค่า การคํานวณหาความคุ้มค่าในการลงทุน',594,1,3),(90594005,'ศาสตร์การต่อรอง','SCIENCE OF NEGOTIATION','ศึกษาสถานการณ์การต่อรองโดยใช้ตรรกะการคิดแบบองค์รวมและวิธีการคิดแบบต่างๆ ศึกษาปัจจัยกระตุ้นให้เกิดการต่อรอง เรียนรู้ทฤษฎีความต้องการพื้นฐานของมนุษย์ที่เกี่ยวข้องกับการต่อรอง และเทคนิคการต่อรอง ศึกษากรณีตัวอย่างของการต่อรอง',594,1,3),(90595001,'ภาษาอังกฤษพื้นฐาน','FOUNDATION ENGLISH','ฝึกฟัง พูด อ่าน และเขียนภาษาอังกฤษในชีวิตประจําวันที่เกี่ยวข้องกับ ความสนใจของตนเอง งานอดิเรก ครอบครัว การทํางาน การเดินทางท่องเที่ยว และเหตุการณ์ในปัจจุบันในด้านการศึกษา เศรษฐกิจ สังคม การเมือง วิทยาศาสตร์และเทคโนโลยี ศิลปะและสุนทรียศาสตร์ และวัฒนธรรม รวมถึงการเขียนจดหมายส่วนตัวเพื่ออธิบายประสบการณ์และความประทับใจ',595,1,3),(90595002,'ภาษาอังกฤษเพื่อการสื่อสาร','ENGLISH FOR COMMUNICATION','ฝึกฟัง พูด อ่านและเขียน ภาษาอังกฤษ ในบริบทที่เกี่ยวข้องกับการสื่อสาร การทักทาย การนัดหมาย การสนทนาในชีวิตประจําวัน การเจรจาต่อรอง การนําเสนองาน การแสดงความคิดเห็น การอ่านจับใจความสําคัญจากสื่อต่างๆ การเขียนเพื่อการสื่อสารในรูปแบบอีเมล์',595,1,3),(90595003,'ภาษาอังกฤษเชิงวิชาการ','ENGLISH FOR ACADEMIC PURPOSES','พัฒนาทักษะทางภาษาอังกฤษและการเรียนเชิงวิชาการที่เกี่ยวข้องกับความสนใจของตนเอง โดยเน้นการฟังบรรยาย การมีส่วนร่วมในการอภิปรายกลุ่ม การนําเสนอผลงาน การอ่านและเขียนข้อเขียนเชิงวิชาการ',595,1,3),(90595004,'การพัฒนาทักษะการอ่านและการเขียนภาษาอังกฤษ','DEVELOPMENT OF READING AND WRITING SKILLS IN ENGLISH','ศึกษาวิธีการอ่านอย่างมีประสิทธิภาพ การอ่านจับใจความ การอ่านหนังสือพิมพ์การอ่านเพื่อแปลใจความ การพัฒนาทักษะการเขียน โดยเน้นการเขียนที่ถูกรูปแบบทางภาษาและไวยากรณ์ ฝึกการเขียนที่จะนําไปใช้ประโยชน์ทั้งทางด้านการศึกษาและอาชีพ เช่น การเขียนจดหมาย การกรอกใบสมัคร การเขียนรายงาน เป็นต้น',595,1,3),(90595005,'การเขียนและการพูดในงานอาชีพ','WRITING AND SPEAKING IN THE PROFESSIONS','พัฒนาทักษะการเขียนและการพูดเกี่ยวกับสาขางานอาชีพ เช่น การเขียนจดหมายธุรกิจ โทรสาร บันทึกข้อความ จดหมายไม่เป็นทางการ จดหมายอิเล็กทรอนิกส์คู่มือ หรือรายงานประจําวัน การมีส่วนร่วมในการประชุม การนําเสนอผลงาน และการใช้ภาษาอังกฤษในปริบทของการทํางาน',595,1,3),(90595006,'ภาษาอังกฤษเพื่อการศึกษาต่อ','ENGLISH FOR FURTHER STUDIES','ศึกษาและฝึกการใช้ภาษาอังกฤษเพื่อการศึกษาต่อในระดับบัณฑิต โดยเน้นฝึกการอ่านข้อเขียนทางวิชาการ การย่อความ การฟัง และการเขียนโน้ตย่อ รวมทั้งฝึกทําข้อทดสอบทางภาษาอังกฤษในรูปแบบต่างๆ',595,1,3),(90595007,'การพัฒนาทักษะทางภาษาองกฤษเพื่อการเรียนรู้ตลอดชีวิต','ENGLISH SKILL DEVELOPMENT FOR LIFE-LONG LEARNING','ฝึกและพัฒนาทักษะทางภาษาอังกฤษทงั้ 4 ทักษะโดยเน้นเนื้อหาตามความสนใจของผู้เรียนแต่ละคนผ่านกิจกรรมการเรียนรู้ทางภาษาแบบอิสระ ทั้งในและนอกชั้นเรียนเพื่อส่งเสริมทักษะการเรียนรู้ภาษาอังกฤษตลอดชีวิตด้วยตนเอง',595,1,3),(90595008,'ภาษาอังกฤษเพื่อการสื่อสารระหว่างวัฒนธรรม','ENGLISH FOR INTERCULTURAL COMMUNICATION','ศึกษาความรู้ในเรื่องภาษาและวัฒนธรรม การใช้ภาษาอังกฤษในฐานะภาษานานาชาติ การสื่อสารระหว่างวัฒนธรรมของผู้ใช้ภาษาอังกฤษที่เป็นเจ้าของภาษาและผู้ใช้ภาษาอังกฤษที่ไม่ได้เป็นเจ้าของภาษา วัจนปฏิบัติศาสตร์ข้ามวัฒนธรรม และการพัฒนาทักษะการใช้ภาษาอังกฤษในการสื่อสารระหว่างวัฒนธรรม',595,1,3),(90595009,'ภาษาอังกฤษเพื่อการท่องเทยวและการเดินทาง','ENGLISH FOR TOURISM AND TRAVELLING','ศึกษาคําศัพท์และการใช้ภาษาเกี่ยวกับการเดินทาง ธุรกิจการท่องเที่ยว การโรงแรม ร้านอาหาร สนามบิน ฯลฯ พร้อมทั้งฝึกทักษะการฟัง การพูด การอ่านและการเขียนในปริบทดังกล่าว เช่น การทักทาย การต้อนรับ การเดินทาง การแนะนําสถานที่ท่องเที่ยว การวางแผน การหาและสอบถามข้อมูลการเดินทาง การถามทาง การผ่านด่านตรวจคนเข้าเมืองและศุลกากร ตลอดจนความรู้ทั่วไปในด้านการท่องเที่ยวและการเดินทาง',595,1,3),(90595010,'ภาษาอังกฤษเพื่อความเข้าใจข่าวสารและข้อมูลลในสื่อสารมวลชน','ENGLISH FOR UNDERSTANDING NEWS AND INFORMATION IN MASS MEDIA','ศึกษาภาษาอังกฤษในสื่อสารมวลชนรูปแบบต่างๆ เช่นหนังสือพิมพ์ นิตยาสาร โฆษณา เว็บไซต์ รายการวิทยุและโทรทัศน์เพื่อเข้าใจข่าวสารและเนื้อหา',595,1,3),(90595011,'ภาษาอังกฤษเพื่อเตรียมตัวทํางาน','ENGLISH FOR WORK PREPARATION','พัฒนาทักษะการใช้ภาษาอังกฤษที่จําเป็นต่อการปฏิบัติงาน เช่น การอ่านคู่มือ เครื่องหมาย สัญลักษณ์ที่ใช้ในงานอาชีพ การเขียนจดหมายสมัครงาน การเขียนประวัติย่อ บันทึกข้อความ บทคัดย่อ รายงาน จดหมายอิเล็กทรอนิกส์ จดหมายเชิญประชุม บันทึกและรายงานการประชุม รวมทั้งฝึกการสัมภาษณ์ การอภิปรายต่อที่ประชุม และการนําเสนอผลงาน',595,1,3),(90595012,'ภาษาอังกฤษเพื่อการสื่อสารทางวิชาชีพ','ENGLISH FOR PROFESSIONAL COMMUNICATION','ฝึกทักษะในการติดต่อสื่อความหมายภาษาอังกฤษ โดยเน้นทักษะในการฟังและการพูดในโอกาสต่าง ๆ รวมทั้งพัฒนาทักษะการสนทนา การอภิปราย การแสดงความคิดเห็น การกล่าวสุนทรพจน์และฝึกการเสนอผลงานทางวิชาชีพต่อที่ประชุม',595,1,3),(90595013,'ภาษาอังกฤษเพื่อการจัดการ','ENGLISH FOR MANAGEMENT','ศึกษาและฝึกใช้โครงสร้างภาษา คําศัพท์และสํานวนจากบริบทที่เกี่ยวกับการจัดการซึ่งคัดเลือกเนื้อหาด้านการจัดการที่เป็นเนื้อหาจริงมาให้ฝึก โดยเน้นทักษะการอ่านเพื่อความเข้าใจพร้อมทั้งประยุกต์ความรู้ที่ได้ศึกษามา',595,1,3),(90595014,'ภาษาอังกฤษสำหรับธุรกิจ','ENGLISH FOR BUSINESS','ศึกษาและฝึกการใช้ภาษาอังกฤษเพื่อการสื่อสารทางธุรกิจ โดยเน้นความเข้าใจในการอ่านข้อเขียนทางธุรกิจประเภทต่าง ๆ การใช้ศัพท์สํานวน และภาษาในเชิงธุรกิจ การเขียนจดหมายบันทึกช่วยจํา รวมทั้งการฝึกฟังและพูดในสถานการณ์ต่าง ๆ ทางธุรกิจ',595,1,3),(90595015,'ภาษาอังกฤษเพื่อการตลาด','ENGLISH FOR MARKETING','ศึกษาและฝึกใช้โครงสร้างภาษา คําศัพท์และสํานวนจากบริบทที่เกี่ยวกับการตลาดซึ่งคัดเลือกเนื้อหาด้านการตลาดที่เป็นเนื้อหาจริงมาให้ฝึก โดยเน้นทักษะการอ่านเพื่อความเข้าใจพร้อมทั้งประยุกต์ความรู้ที่ได้ศึกษามา',595,1,3),(90595016,'อังกฤษเพื่ออุตสาหกรรม','ENGLISH FOR INDUSTRY','ศึกษาและฝึกใช้ภาษาอังกฤษในวงการอุตสาหกรรมในรูปแบบต่างๆเช่น การบรรยายกระบวนการผลิต การอธิบายการใช้อุปกรณ์หรือการทํางานของเครื่องจักร การอธิบายความปลอดภัยในที่ทํางาน การเขียนป้ายเตือนอันตราย การเขียนคําสั่ง การฝึกฝนทักษะการสื่อสารทั้งการพูดและการเขียนในที่ทํางาน',595,1,3),(90595017,'การออกเสียงภาษาอังกฤษเบื้องต้น','BASIC ENGLISH PRONUNCIATION','ศึกษาและฝึกฝนระบบเสียงและระดับเสียงในภาษาอังกฤษ โดยเน้นสัทอักษรในระบบเสียงภาษาอังกฤษ การออกเสียงสระและพยัญชนะ การเน้นเสียงในระดับคําและระดับประโยค และสําเนียงภาษาอังกฤษในปัจจุบัน',595,1,3),(90595018,'ภาษาอังกฤษเพื่อการนําเสนอผลงานทางวิชาชีพ','ENGLISH FOR PROFESSIONAL PRESENTATION','ฝึกทักษะในการติดต่อสื่อความหมายและการพูดนําเสนอผลงานภาษาอังกฤษ มุ่งเน้นการฝึกปฏิบัติจริง เช่น การพัฒนาทักษะทั้งการจัดเตรียมข้อมูล การใช้สื่อประกอบการนําเสนอ การพัฒนาบุคลิกภาพเพื่อการนําเสนอผลงานได้อย่างมีประสิทธิภาพ',595,1,3),(90595019,'การเขียนภาษาอังกฤษเพื่อการสื่อสาร','ENGLISH FOR COMMUNICATIVE WRITING','ศึกษาและฝึกการเขียนเพื่อการสื่อสารอย่างมีประสิทธิภาพในบริบทต่าง ๆ โดยเน้นการฝึกการเขียนจดหมาย ในลักษณะต่าง ๆ เขียนรายงาน คําสั่ง คู่มือ และกระบวนการต่าง รวมทั้งการเขียนบรรยายสิ่งของ สถานที่และเหตุการณ์',595,1,3),(90595020,'พูดได้ พูดดี พูดเป็น','THE BEST SPEECH','ศึกษากระบวนการการสื่อสารของมนุษย์ฝึกการใช้วัจนภาษาและอวัจนภาษาในการสื่อสาร หลักการเตรียมการพูดในสถานการณ์ต่าง ๆ การแก้ไขความวิตกกังวลในการพูด รวมทั้งเรียนรู้เทคนิคการใช้เสียง ท่าทางและบุคลิกภาพที่เหมาะสม เพื่อการพูดที่มีประสิทธิภาพ',595,1,3),(90595021,'ภาษาไทยเพื่อการสร้างสรรค์','THAI LANGUAGE FOR CREATIVITYTHAI LANGUAGE FOR CREATIVITYTHAI LANGUAGE FOR CREATIVITY','ศึกษาหลักการใช้ภาษาไทยเพื่อการสื่อสารอย่างมีประสิทธิภาพ ฝึกทักษะที่ใช้การสื่อสาร ได้แก่ ทักษะการฟัง การพูด การอ่าน การเขียนและการคิดเชิงสร้างสรรค์',595,1,3),(90595022,'การฟังและการอ่านเพื่อพัฒนาคุณภาพชีวิต','LISTENING AND READING FOR IMPROVING LIFE QUALITY','ศึกษาหลักการรับสารอย่างมีวิจารณญาณ รู้เท่าทันสื่อและการสื่อสาร ฝึกทักษะการฟังและการอ่านเพื่อพัฒนาคุณภาพชีวิต ให้เกิดความรอบรู้มีประสบการณ์และสร้างจินตนาการ การพัฒนาความสามารถในการจับใจความสําคัญ การสรุปประเด็น การวิเคราะห์และประเมินค่าสารทั้งสาระความรู้และบันเทิงคดี',595,1,3),(90595023,'การพัฒนาทักษะการเขียนเชิงสร้างสรรค์','THE DEVELOPMENT OF THAI CREATIVE WRITING SKILLS','ฝึกฝนและพัฒนาความสามารถทางการเขียนเชิงสร้างสรรค์การถ่ายทอดความรู้ความคิดและจินตนาการออกมาเป็นลายลักษณ์อักษร การเลือกสรรถ้อยคําได้อย่างสละสลวย ถูกต้อง และเหมาะสมกับรูปแบบงานเขียน รวมทั้งสามารถแก้ไขข้อบกพร่องทางการเขียนได้ด้วยตนเอง',595,1,3),(90595024,'การเขียนภาษาไทยในที่ทํางาน','WRITING IN WORKPLACE','ศึกษาหลักเกณฑ์รูปแบบและวิธีการเขียนงานเอกสารภาษาไทยประเภทต่าง ๆ ที่ใช้ทั่วไปในที่ทํางาน การใช้ภาษาที่ถูกต้องและเหมาะสมกับประเภทของเอกสาร ฝึกการเขียนเอกสารในระบบการทํางานสํานักงาน',595,1,3),(90595025,'การเขียนรายงาน','LANGUAGE IN REPORT WRITING','ศึกษาโครงสร้างรายงานทางวิชาการเชิงอรรถ และบรรณานุกรม การเขียนรายงานทางวิชาการแบบต่าง ๆ โดยเน้นการใช้ภาษาที่ชัดเจนและเหมาะสมกับงานวิชาการ',595,1,3),(90595026,'ภาษาในสังคมไทย','LANGUAGE IN THAI SOCIETY','ศึกษาโครงสร้างของภาษาที่ใช้ในสังคมไทย โครงสร้างของสังคมไทย ความสัมพันธ์ของภาษากับสังคม การเปลี่ยนแปลงของภาษาอันเนื่องมาจากสภาพของสังคมและภูมิศาสตร์ การพัฒนาภาษากับการพัฒนาประเทศ ได้แก่ บ้านพักอาศัย วัด และวัง การเกิดการพัฒนาของชุมชนและเมืองโบราณ',595,1,3);
/*!40000 ALTER TABLE `polls_gened_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_poll`
--

DROP TABLE IF EXISTS `polls_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_poll`
--

LOCK TABLES `polls_poll` WRITE;
/*!40000 ALTER TABLE `polls_poll` DISABLE KEYS */;
INSERT INTO `polls_poll` VALUES (1,'การสอนวิชา Web Programming',NULL,NULL,0),(2,'การสอนวิชา Web Programming',NULL,NULL,0),(3,'ความยากข้อสอบ mid-term',NULL,NULL,0),(4,'อาหารที่ชอบ',NULL,NULL,0),(5,'เกรดวิชา Web Pro ที่คิดว่าจะได้',NULL,NULL,0);
/*!40000 ALTER TABLE `polls_poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_question`
--

DROP TABLE IF EXISTS `polls_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `poll_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_question_poll_id_b6ace2e1_fk_polls_poll_id` (`poll_id`),
  CONSTRAINT `polls_question_poll_id_b6ace2e1_fk_polls_poll_id` FOREIGN KEY (`poll_id`) REFERENCES `polls_poll` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_question`
--

LOCK TABLES `polls_question` WRITE;
/*!40000 ALTER TABLE `polls_question` DISABLE KEYS */;
INSERT INTO `polls_question` VALUES (1,'อาจารย์บัณฑิตสอนน่าเบื่อไหม','01',2),(2,'นักศึกษาเรียนรู้เรื่องหรือไม่','01',2),(3,'เครื่องคอมพิวเตอร์ใช้งานดีหรือไม่','01',2),(4,'ข้อ 1','01',3),(5,'ข้อ 2','01',3),(6,'ข้อ 3','01',3),(7,'ข้อ 4','01',3),(8,'ข้อ 5','01',3),(9,'ข้อ 6','01',3),(10,'พิซซ่า','01',4),(11,'ไก่ทอด','01',4),(12,'แฮมเบอร์เกอร์','01',4),(13,'เกรดที่คิดว่าจะได้','01',5);
/*!40000 ALTER TABLE `polls_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_ratereview`
--

DROP TABLE IF EXISTS `polls_ratereview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_ratereview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `point` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_ratereview_review_id_91a1f960_fk_polls_review_id` (`review_id`),
  KEY `polls_ratereview_user_id_786d59bb_fk_polls_user_id` (`user_id`),
  CONSTRAINT `polls_ratereview_review_id_91a1f960_fk_polls_review_id` FOREIGN KEY (`review_id`) REFERENCES `polls_review` (`id`),
  CONSTRAINT `polls_ratereview_user_id_786d59bb_fk_polls_user_id` FOREIGN KEY (`user_id`) REFERENCES `polls_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_ratereview`
--

LOCK TABLES `polls_ratereview` WRITE;
/*!40000 ALTER TABLE `polls_ratereview` DISABLE KEYS */;
INSERT INTO `polls_ratereview` VALUES (23,3,35,22),(24,5,50,23),(25,4,53,12),(26,3,52,1),(27,4,35,12);
/*!40000 ALTER TABLE `polls_ratereview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_reportreview`
--

DROP TABLE IF EXISTS `polls_reportreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_reportreview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_review` longtext COLLATE utf8mb4_unicode_ci,
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_reportreview_review_id_df122ad0_fk_polls_review_id` (`review_id`),
  KEY `polls_reportreview_user_id_9f421a4c_fk_polls_user_id` (`user_id`),
  CONSTRAINT `polls_reportreview_review_id_df122ad0_fk_polls_review_id` FOREIGN KEY (`review_id`) REFERENCES `polls_review` (`id`),
  CONSTRAINT `polls_reportreview_user_id_9f421a4c_fk_polls_user_id` FOREIGN KEY (`user_id`) REFERENCES `polls_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_reportreview`
--

LOCK TABLES `polls_reportreview` WRITE;
/*!40000 ALTER TABLE `polls_reportreview` DISABLE KEYS */;
INSERT INTO `polls_reportreview` VALUES (25,'ppppppp',54,25),(26,'test Delete',35,1),(34,'ikp\'ko',35,12),(35,'รายงาน',35,12),(36,'report',35,12);
/*!40000 ALTER TABLE `polls_reportreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_review`
--

DROP TABLE IF EXISTS `polls_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `verify` tinyint(1) DEFAULT NULL,
  `subject_id_id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  `cover` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annonymous` tinyint(1) NOT NULL,
  `study_year` int(11) NOT NULL,
  `teacher_name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_review_user_id_id_6872cdbc_fk_polls_user_id` (`user_id_id`),
  KEY `polls_review_subject_id_id_01d2aefd_fk_polls_gened_subject_id` (`subject_id_id`),
  CONSTRAINT `polls_review_subject_id_id_01d2aefd_fk_polls_gened_subject_id` FOREIGN KEY (`subject_id_id`) REFERENCES `polls_gened_subject` (`id`),
  CONSTRAINT `polls_review_user_id_id_6872cdbc_fk_polls_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `polls_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_review`
--

LOCK TABLES `polls_review` WRITE;
/*!40000 ALTER TABLE `polls_review` DISABLE KEYS */;
INSERT INTO `polls_review` VALUES (35,'รีวิววิชาภาษาอังกฤษพื้นฐาน1','เป็นวิชา ปี1เทอม1 อ.เช็คชื่อด้วยการให้ทำspeaking test เกี่้ยวกับหัวข้อที่เรียนในวันนั้น\r\nส่วนข้อสอบจะเน้นแกรมม่ากับคำศัพท์ มีreading ประมาณ 2-3บทความ',1,90201001,13,'images/wp1808930_5o6r4rA.jpg',0,2560,'อ.มณฑา พลรักษ์'),(36,'รีวิววิชาความรู้ทั่วไปเกี่ยวกับธุรกิจ','เนื้อหาครึ่งแรกเรียนเกี่ยวกับคำนวณในธุรกิจ เช่นค่าความเสื่อม ตอนสอบมีตารางการเทียบและเครื่องคิดเลขให้\r\nส่วนครึ่งหลังเป็นทฤฎีล้วน เน้นความจำ ข้อสอบกลางภาคเป็นข้อเขียนส่วนปลายภาคเป็นข้อกา',0,90401013,12,'',0,2560,'อ.อำนวย แสงโนรี'),(40,'รีวิววิชาปรัชญาทั่วไป','มีคะแนนเช็คชื่อ และตรวจหนังสือเรียน ข้อสอบเน้นวอเคราะห์ ในข้อสอบมีบทความประมาณ 3บทความ มีคะแนนเก็บเป็นquizการวิเคราะห์กับสอบระหว่างบท',1,90301003,12,'images/wp1808930_IrJYsrn.jpg',0,2561,'อ.อำนวย แสงโนรี'),(41,'รีวิววิชาจิตวิทยาทั่วไป','มีคะแนนเช็คชื่อ และตรวจหนังสือเรียน ข้อสอบเน้นวอเคราะห์ ในข้อสอบมีบทความประมาณ 3บทความ มีคะแนนเก็บเป็นquizการวิเคราะห์กับสอบระหว่างบท',1,90302001,13,'images/wp1808930_16erDAG.jpg',1,2561,'อ.อำนวย แสงโนรี'),(42,'รีวิววิชาเศรษฐกิจกับวิถีชีวิต','มีคะแนนเช็คชื่อ และตรวจหนังสือเรียน ข้อสอบเน้นวอเคราะห์ ในข้อสอบมีบทความประมาณ 3บทความ มีคะแนนเก็บเป็นquizการวิเคราะห์กับสอบระหว่างบท มีข้อเขียนให้คำนวณ2-3ข้อ',1,90401003,13,'images/wp1808930_8dBQ9xS.jpg',0,2560,'อ.อำนวย แสงโนรี'),(43,'รีวิวความรู้ทั่วไปเกี่ยวกับธุรกิจ','เนื้อหาครึ่งแรกเรียนเกี่ยวกับคำนวณในธุรกิจ เช่นค่าความเสื่อม ตอนสอบมีตารางการเทียบและเครื่องคิดเลขให้ ส่วนครึ่งหลังเป็นทฤฎีล้วน เน้นความจำ ข้อสอบกลางภาคเป็นข้อเขียนส่วนปลายภาคเป็นข้อกา',0,90401013,10,'',0,2561,'อ.มณฑา พลรักษ์'),(45,'รีวิวปรัชญาทั่วไป','เนื้อหาครึ่งแรกเรียนเกี่ยวกับวิเคราะห์ ตอนสอบมีตารางการเทียบให้ เป็นทฤฎีล้วน เน้นความจำ ข้อสอบกลางภาคเป็นข้อเขียนส่วนปลายภาคเป็นข้อกา',0,90301003,11,'images/wp1808936_DlQV6q0.jpg',0,2560,'อ.อำนวย แสงโนรี'),(47,'สุดตลึง วิชาสถิติในชีวิตประจำวันเรียนแล้วได้อะไร','B+',0,90101003,20,'',0,2560,'ผู้หญิง จำไม่ได้'),(50,'รีวิววิชา','วิชาอะไรกันนี่',0,90102001,23,'',1,100000000,'test1'),(52,'ทดสอบ Verify','Testing',0,90010007,10,'',0,2559,'Chotipat'),(53,'db','db',1,90010007,12,'images/wp1808936_8gBZIgr.jpg',1,2018,'Chotipat'),(54,'test','test',1,90101003,25,'images/wp1808936_vmiTbUV.jpg',0,2560,'Chotipat'),(55,'รีวิววิชาออกแบบ','ดีมาก',0,90010007,27,'images/5074530370.jpg',1,2560,'อ.มณฑา พลรักษ์');
/*!40000 ALTER TABLE `polls_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_student_year`
--

DROP TABLE IF EXISTS `polls_student_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_student_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_student_year`
--

LOCK TABLES `polls_student_year` WRITE;
/*!40000 ALTER TABLE `polls_student_year` DISABLE KEYS */;
INSERT INTO `polls_student_year` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,0);
/*!40000 ALTER TABLE `polls_student_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_subject_require`
--

DROP TABLE IF EXISTS `polls_subject_require`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_subject_require` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  `subject_id_id` int(11) DEFAULT NULL,
  `subject_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_subject_require_user_id_id_e505d6fa_fk_polls_user_id` (`user_id_id`),
  KEY `polls_subject_requir_subject_id_id_c62c9b75_fk_polls_gen` (`subject_id_id`),
  KEY `polls_subject_requir_subject_type_id_d024e77a_fk_polls_cou` (`subject_type_id`),
  CONSTRAINT `polls_subject_requir_subject_id_id_c62c9b75_fk_polls_gen` FOREIGN KEY (`subject_id_id`) REFERENCES `polls_gened_subject` (`id`),
  CONSTRAINT `polls_subject_requir_subject_type_id_d024e77a_fk_polls_cou` FOREIGN KEY (`subject_type_id`) REFERENCES `polls_courese_gened` (`id`),
  CONSTRAINT `polls_subject_require_user_id_id_e505d6fa_fk_polls_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `polls_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_subject_require`
--

LOCK TABLES `polls_subject_require` WRITE;
/*!40000 ALTER TABLE `polls_subject_require` DISABLE KEYS */;
INSERT INTO `polls_subject_require` VALUES (5,1,1,90101005,571),(6,1,1,90010007,571),(7,1,1,90201001,572),(8,1,1,90201017,572),(9,1,1,90201002,572),(10,1,1,90201002,572),(11,1,1,90302001,573),(12,0,1,NULL,573),(13,1,1,90401008,574),(14,0,1,NULL,574),(15,0,10,NULL,571),(16,0,10,NULL,571),(17,1,10,90201001,572),(18,1,10,90201002,572),(19,1,10,90201012,572),(20,0,10,NULL,572),(21,1,10,90302013,573),(22,0,10,NULL,573),(23,0,10,NULL,574),(24,0,10,NULL,574),(25,1,11,90101004,571),(26,1,11,90104006,571),(27,1,11,90201020,572),(28,1,11,90201018,572),(29,0,11,NULL,572),(30,0,11,NULL,572),(31,0,11,NULL,573),(32,0,11,NULL,573),(33,0,11,NULL,574),(34,0,11,NULL,574),(35,1,12,90101007,571),(36,1,12,90106002,571),(37,1,12,90201001,572),(38,1,12,90201003,572),(39,1,12,90201026,572),(40,0,12,NULL,572),(41,1,12,90305003,573),(42,0,12,NULL,573),(43,1,12,90401013,574),(44,0,12,NULL,574),(45,1,13,90101007,571),(46,0,13,NULL,571),(47,1,13,90201001,572),(48,0,13,NULL,572),(49,1,13,90201002,572),(50,0,13,NULL,572),(51,0,13,NULL,573),(52,0,13,NULL,573),(53,1,13,90401013,574),(54,0,13,NULL,574),(55,0,15,NULL,571),(56,0,15,NULL,571),(57,0,15,NULL,572),(58,0,15,NULL,572),(59,0,15,NULL,572),(60,0,15,NULL,572),(61,0,15,NULL,573),(62,0,15,NULL,573),(63,0,15,NULL,574),(64,0,15,NULL,574),(65,0,16,NULL,571),(66,0,16,NULL,571),(67,1,16,90201001,572),(68,0,16,NULL,572),(69,1,16,90201002,572),(70,0,16,NULL,572),(71,0,16,NULL,573),(72,0,16,NULL,573),(73,1,16,90401013,574),(74,0,16,NULL,574),(75,0,17,NULL,571),(76,0,17,NULL,571),(77,0,17,NULL,572),(78,0,17,NULL,572),(79,0,17,NULL,572),(80,0,17,NULL,572),(81,0,17,NULL,573),(82,0,17,NULL,573),(83,0,17,NULL,574),(84,0,17,NULL,574),(85,0,18,NULL,571),(86,0,18,NULL,571),(87,1,18,90201001,572),(88,0,18,NULL,572),(89,1,18,90201002,572),(90,0,18,NULL,572),(91,0,18,NULL,573),(92,0,18,NULL,573),(93,1,18,90401013,574),(94,0,18,NULL,574),(95,0,19,NULL,571),(96,0,19,NULL,571),(97,1,19,90201002,572),(98,0,19,NULL,572),(99,1,19,90201001,572),(100,0,19,NULL,572),(101,0,19,NULL,573),(102,0,19,NULL,573),(103,1,19,90401013,574),(104,0,19,NULL,574),(105,1,20,90101003,571),(106,0,20,NULL,571),(107,0,20,NULL,572),(108,0,20,NULL,572),(109,0,20,NULL,572),(110,0,20,NULL,572),(111,1,20,90303006,573),(112,0,20,NULL,573),(113,0,20,NULL,574),(114,0,20,NULL,574),(115,0,21,NULL,571),(116,0,21,NULL,571),(117,0,21,NULL,572),(118,0,21,NULL,572),(119,0,21,NULL,572),(120,0,21,NULL,572),(121,0,21,NULL,573),(122,0,21,NULL,573),(123,0,21,NULL,574),(124,0,21,NULL,574),(125,0,22,NULL,571),(126,0,22,NULL,571),(127,0,22,NULL,572),(128,1,22,90201001,572),(129,1,22,90201002,572),(130,1,22,90201018,572),(131,0,22,NULL,573),(132,0,22,NULL,573),(133,0,22,NULL,574),(134,0,22,NULL,574),(135,1,23,90102005,571),(136,0,23,NULL,571),(137,0,23,NULL,572),(138,0,23,NULL,572),(139,0,23,NULL,572),(140,0,23,NULL,572),(141,0,23,NULL,573),(142,0,23,NULL,573),(143,0,23,NULL,574),(144,0,23,NULL,574),(145,1,24,90101002,571),(146,1,24,90106002,571),(147,1,24,90201001,572),(148,1,24,90201002,572),(149,1,24,90201012,572),(150,1,24,90201026,572),(151,0,24,NULL,573),(152,0,24,NULL,573),(153,1,24,90401013,574),(154,1,24,90401011,574),(155,1,25,90010007,571),(156,0,25,NULL,571),(157,1,25,90201001,572),(158,0,25,NULL,572),(159,0,25,NULL,572),(160,0,25,NULL,572),(161,0,25,NULL,573),(162,0,25,NULL,573),(163,0,25,NULL,574),(164,0,25,NULL,574),(165,0,26,NULL,571),(166,0,26,NULL,571),(167,0,26,NULL,572),(168,0,26,NULL,572),(169,0,26,NULL,572),(170,0,26,NULL,572),(171,0,26,NULL,573),(172,0,26,NULL,573),(173,0,26,NULL,574),(174,0,26,NULL,574),(175,1,27,90101007,571),(176,1,27,90101008,571),(177,0,27,NULL,572),(178,1,27,90201026,572),(179,0,27,NULL,572),(180,0,27,NULL,572),(181,1,27,90302010,573),(182,1,27,90306005,573),(183,0,27,NULL,574),(184,0,27,NULL,574);
/*!40000 ALTER TABLE `polls_subject_require` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_user`
--

DROP TABLE IF EXISTS `polls_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `polls_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `major_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `user_auth_id` int(11) NOT NULL,
  `verify` tinyint(1) NOT NULL,
  `img_url` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_auth_id` (`user_auth_id`),
  KEY `polls_user_faculty_id_ef580956_fk_polls_faculty_id` (`faculty_id`),
  KEY `polls_user_major_id_f143dd5e_fk_polls_course_major_id` (`major_id`),
  KEY `polls_user_year_id_5d1b1a43_fk_polls_student_year_id` (`year_id`),
  CONSTRAINT `polls_user_faculty_id_ef580956_fk_polls_faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `polls_faculty` (`id`),
  CONSTRAINT `polls_user_major_id_f143dd5e_fk_polls_course_major_id` FOREIGN KEY (`major_id`) REFERENCES `polls_course_major` (`id`),
  CONSTRAINT `polls_user_user_auth_id_835a057e_fk_auth_user_id` FOREIGN KEY (`user_auth_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `polls_user_year_id_5d1b1a43_fk_polls_student_year_id` FOREIGN KEY (`year_id`) REFERENCES `polls_student_year` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_user`
--

LOCK TABLES `polls_user` WRITE;
/*!40000 ALTER TABLE `polls_user` DISABLE KEYS */;
INSERT INTO `polls_user` VALUES (1,'prapawit patthasirivichot','administrator','60070045@kmitl.ac.th',7,570701,2,25,1,'https://lh4.googleusercontent.com/-Yn9swlsAKYc/AAAAAAAAAAI/AAAAAAAAAAs/wJBZpVxYGzA/photo.jpg'),(10,'pitchayut deachnu','student','60070063@kmitl.ac.th',7,570701,2,26,1,'https://lh5.googleusercontent.com/-o13-LMPNcQw/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rc8yhcK_TyI5tqS4UobaOpOE3y0fw/mo/photo.jpg'),(11,'Rawit Lohakhachornphan','student','60070081@kmitl.ac.th',7,570701,2,31,1,'https://lh3.googleusercontent.com/-oKC9WUwVrLg/AAAAAAAAAAI/AAAAAAAAABA/RmHKqWa92pU/photo.jpg'),(12,'pannita hamego','administrator','60070061@kmitl.ac.th',7,570701,2,32,1,'https://lh6.googleusercontent.com/-XM7uXrCa4-c/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rex7wR9ozjcMzkEn3FovCjutfS4Qg/mo/photo.jpg'),(13,'waraporn prompolmaueng','administrator','60070086@kmitl.ac.th',7,570701,2,33,1,'https://lh4.googleusercontent.com/-INsHFC5zU6w/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfU1s82-kHHNbcDn8KdI4yiWfAirw/mo/photo.jpg'),(15,'apichart chainarongritti','student','60070111@kmitl.ac.th',7,570701,2,34,1,'https://lh4.googleusercontent.com/-2u_InTXVjj4/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rekaxOlbKnBvcMU8uGqX1m2DLvbcw/mo/photo.jpg'),(16,'natthawut tachasriburapha','student','60070025@kmitl.ac.th',7,570701,2,35,1,'https://lh5.googleusercontent.com/-LhCstZpU8so/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3reyqrwCjwtQ5DIn9E_Sx7QAIBS_GA/mo/photo.jpg'),(17,'pachara sriyodwieng','student','60070057@kmitl.ac.th',7,570701,2,36,1,'https://lh5.googleusercontent.com/-uk-kFqKNBSo/AAAAAAAAAAI/AAAAAAAAAKM/yDBhHmxPrMM/photo.jpg'),(18,'chutikarn thanyakit','student','60070014@kmitl.ac.th',7,570701,2,37,1,'https://lh6.googleusercontent.com/-vPc2Zgqw58Q/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rd-GGKit5jmtRFN0YJK2n2eEA2cng/mo/photo.jpg'),(19,'yonlada prasert','student','60070077@kmitl.ac.th',7,570701,2,38,1,'https://lh6.googleusercontent.com/-c0aYstuNpXM/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3re22Xm8XwczPZUmwtA4y8W8ZmoQfw/mo/photo.jpg'),(20,'katesopon kunpanperng','student','60070127@kmitl.ac.th',7,570702,2,39,1,'https://lh3.googleusercontent.com/-ovU23OrQi-I/AAAAAAAAAAI/AAAAAAAAAAc/J_gnRklYAXI/photo.jpg'),(21,'Udomeak Chumthongma','student','60070120@kmitl.ac.th',7,570701,2,42,1,'https://lh4.googleusercontent.com/-4xFVuNlPERU/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfzIds7lisr5F3qWL60tS107dUXXA/mo/photo.jpg'),(22,'kunyarat inta','student','60070004@kmitl.ac.th',7,570701,2,43,1,'https://lh5.googleusercontent.com/-j0Mw8BvF6Ps/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rc9N4M-KXZkZLm8wyr93fzwVtTq2g/mo/photo.jpg'),(23,'weerapat sidtirach','student','60070092@kmitl.ac.th',7,570701,2,44,1,'https://lh4.googleusercontent.com/-KfM7_qS3arI/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3reavpr4hEdjByFQFaWVKGLVChYXPQ/mo/photo.jpg'),(24,'Possathon Chitpidakorn','student','60070059@kmitl.ac.th',7,570701,2,45,1,'https://lh3.googleusercontent.com/a-/AAuE7mAChhBrej9g68svWebQRCuihxv25eQBbgYGqi5m'),(25,'kawisara bunyen','student','60070002@kmitl.ac.th',7,570701,2,46,1,'https://lh4.googleusercontent.com/-U3X-tYyuiyI/AAAAAAAAAAI/AAAAAAAAAAc/Y3xKON0gg_s/photo.jpg'),(26,'tinnapat plangsri','student','60070028@kmitl.ac.th',7,570701,2,47,1,'https://lh6.googleusercontent.com/-djf9t-2ov_g/AAAAAAAAAAI/AAAAAAAAAD0/3wQhrZ24XMU/photo.jpg'),(27,'pidchayanin chutipattana','student','60070175@kmitl.ac.th',7,570701,2,49,1,'https://lh3.googleusercontent.com/-61KxTTa6Fuk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rd8hv0iHbc7Slnxx8NDzl_sAiJQyQ/mo/photo.jpg');
/*!40000 ALTER TABLE `polls_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-25 20:31:05
