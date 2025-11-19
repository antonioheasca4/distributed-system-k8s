/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: joomla-db    Database: joomla
-- ------------------------------------------------------
-- Server version	11.7.2-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `MenuPizze`
--

DROP TABLE IF EXISTS `MenuPizze`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `MenuPizze` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nume` varchar(255) NOT NULL,
  `descriere` text DEFAULT NULL,
  `pret` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuPizze`
--

LOCK TABLES `MenuPizze` WRITE;
/*!40000 ALTER TABLE `MenuPizze` DISABLE KEYS */;
INSERT INTO `MenuPizze` VALUES
(1,'Pizza Margherita','Sos de roșii, mozzarella, busuioc proaspăt.',22.99),
(2,'Pizza Pepperoni','Sos de roșii, mozzarella și feliuțe de pepperoni picant.',26.99),
(3,'Pizza Quattro Formaggi','Patru tipuri de brânză: mozzarella, gorgonzola, parmezan și brie.',28.50),
(4,'Pizza Vegetariană','Legume proaspete, sos de roșii și mozzarella.',24.00);
/*!40000 ALTER TABLE `MenuPizze` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_action_log_config`
--

DROP TABLE IF EXISTS `aq6ko_action_log_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_action_log_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `id_holder` varchar(255) DEFAULT NULL,
  `title_holder` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `text_prefix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_action_log_config`
--

LOCK TABLES `aq6ko_action_log_config` WRITE;
/*!40000 ALTER TABLE `aq6ko_action_log_config` DISABLE KEYS */;
INSERT INTO `aq6ko_action_log_config` VALUES
(1,'article','com_content.article','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),
(2,'article','com_content.form','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),
(3,'banner','com_banners.banner','id','name','#__banners','PLG_ACTIONLOG_JOOMLA'),
(4,'user_note','com_users.note','id','subject','#__user_notes','PLG_ACTIONLOG_JOOMLA'),
(5,'media','com_media.file','','name','','PLG_ACTIONLOG_JOOMLA'),
(6,'category','com_categories.category','id','title','#__categories','PLG_ACTIONLOG_JOOMLA'),
(7,'menu','com_menus.menu','id','title','#__menu_types','PLG_ACTIONLOG_JOOMLA'),
(8,'menu_item','com_menus.item','id','title','#__menu','PLG_ACTIONLOG_JOOMLA'),
(9,'newsfeed','com_newsfeeds.newsfeed','id','name','#__newsfeeds','PLG_ACTIONLOG_JOOMLA'),
(10,'link','com_redirect.link','id','old_url','#__redirect_links','PLG_ACTIONLOG_JOOMLA'),
(11,'tag','com_tags.tag','id','title','#__tags','PLG_ACTIONLOG_JOOMLA'),
(12,'style','com_templates.style','id','title','#__template_styles','PLG_ACTIONLOG_JOOMLA'),
(13,'plugin','com_plugins.plugin','extension_id','name','#__extensions','PLG_ACTIONLOG_JOOMLA'),
(14,'component_config','com_config.component','extension_id','name','','PLG_ACTIONLOG_JOOMLA'),
(15,'contact','com_contact.contact','id','name','#__contact_details','PLG_ACTIONLOG_JOOMLA'),
(16,'module','com_modules.module','id','title','#__modules','PLG_ACTIONLOG_JOOMLA'),
(17,'access_level','com_users.level','id','title','#__viewlevels','PLG_ACTIONLOG_JOOMLA'),
(18,'banner_client','com_banners.client','id','name','#__banner_clients','PLG_ACTIONLOG_JOOMLA'),
(19,'application_config','com_config.application','','name','','PLG_ACTIONLOG_JOOMLA'),
(20,'task','com_scheduler.task','id','title','#__scheduler_tasks','PLG_ACTIONLOG_JOOMLA'),
(21,'field','com_fields.field','id','title','#__fields','PLG_ACTIONLOG_JOOMLA'),
(22,'guidedtour','com_guidedtours.state','id','title','#__guidedtours','PLG_ACTIONLOG_JOOMLA'),
(23,'contact','com_contact.form','id','name','#__contact_details','PLG_ACTIONLOG_JOOMLA');
/*!40000 ALTER TABLE `aq6ko_action_log_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_action_logs`
--

DROP TABLE IF EXISTS `aq6ko_action_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_action_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_action_logs`
--

LOCK TABLES `aq6ko_action_logs` WRITE;
/*!40000 ALTER TABLE `aq6ko_action_logs` DISABLE KEYS */;
INSERT INTO `aq6ko_action_logs` VALUES
(1,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2025-04-23 13:38:56','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(2,'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURSKIPPED','{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"skipped\",\"step\":1,\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-23 13:38:58','com_guidedtours.state',772,12,'COM_ACTIONLOGS_DISABLED'),
(3,'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-23 13:39:05','com_config.application',772,0,'COM_ACTIONLOGS_DISABLED'),
(4,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"Live Chat\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-23 13:39:31','com_content.article',772,1,'COM_ACTIONLOGS_DISABLED'),
(5,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-23 13:40:11','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(6,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"Chat\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-23 13:40:33','com_menus.item',772,102,'COM_ACTIONLOGS_DISABLED'),
(7,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-23 13:40:47','com_menus.item',772,101,'COM_ACTIONLOGS_DISABLED'),
(8,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__menu\"}','2025-04-23 13:40:47','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(9,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2025-04-24 10:23:11','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(10,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2025-04-24 18:01:06','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(11,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":3,\"title\":\"IA\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-24 18:01:20','com_content.article',772,3,'COM_ACTIONLOGS_DISABLED'),
(12,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"Image tagging\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-24 18:01:44','com_menus.item',772,103,'COM_ACTIONLOGS_DISABLED'),
(13,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2025-04-24 18:16:52','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(14,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Live Chat\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-24 18:17:03','com_content.article',772,1,'COM_ACTIONLOGS_DISABLED'),
(15,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-24 18:17:03','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(16,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2025-04-25 19:15:45','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(17,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2025-04-25 19:41:43','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(18,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Live Chat\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-25 19:42:59','com_content.article',772,1,'COM_ACTIONLOGS_DISABLED'),
(19,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-25 19:42:59','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(20,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Live Chat\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-25 19:43:15','com_content.article',772,1,'COM_ACTIONLOGS_DISABLED'),
(21,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-25 19:43:15','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(22,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Live Chat\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-25 19:43:32','com_content.article',772,1,'COM_ACTIONLOGS_DISABLED'),
(23,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-25 19:43:32','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(24,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Live Chat\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-25 19:44:50','com_content.article',772,1,'COM_ACTIONLOGS_DISABLED'),
(25,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-25 19:44:50','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(26,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Live Chat\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-25 19:45:00','com_content.article',772,1,'COM_ACTIONLOGS_DISABLED'),
(27,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-25 19:45:00','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(28,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Live Chat\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-25 20:00:19','com_content.article',772,1,'COM_ACTIONLOGS_DISABLED'),
(29,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-25 20:00:19','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(30,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2025-04-26 11:25:17','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(31,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"IA\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 11:26:19','com_content.article',772,3,'COM_ACTIONLOGS_DISABLED'),
(32,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 11:26:19','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(33,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"IA\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 11:46:32','com_content.article',772,3,'COM_ACTIONLOGS_DISABLED'),
(34,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 11:46:32','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(35,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2025-04-26 12:00:43','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(36,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2025-04-26 12:08:57','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(37,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2025-04-26 12:13:06','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(38,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 12:13:14','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(39,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 12:13:14','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(40,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 12:13:40','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(41,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 12:13:40','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(42,'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 12:15:13','com_config.application',772,0,'COM_ACTIONLOGS_DISABLED'),
(43,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 12:15:54','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(44,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 12:15:54','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(45,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 12:19:10','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(46,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 12:19:10','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(47,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 12:19:24','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(48,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 12:19:24','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(49,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 12:22:36','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(50,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 12:22:36','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(51,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2025-04-26 15:26:41','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(52,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 15:26:51','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(53,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 15:26:51','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(54,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2025-04-26 15:27:59','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(55,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"pizza.jpeg\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 15:29:29','com_media.file',772,0,'COM_ACTIONLOGS_DISABLED'),
(56,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 15:29:40','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(57,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 15:29:40','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(58,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 15:45:07','com_modules.module',772,110,'COM_ACTIONLOGS_DISABLED'),
(59,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 15:45:48','com_modules.module',772,110,'COM_ACTIONLOGS_DISABLED'),
(60,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-26 15:45:48','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(61,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 15:46:59','com_modules.module',772,110,'COM_ACTIONLOGS_DISABLED'),
(62,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-26 15:46:59','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(63,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"Menu\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 15:48:33','com_menus.item',772,104,'COM_ACTIONLOGS_DISABLED'),
(64,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__menu\"}','2025-04-26 15:49:24','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(65,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__menu\"}','2025-04-26 15:50:42','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(66,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Main Menu\",\"extension_name\":\"Main Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 15:52:08','com_modules.module',772,1,'COM_ACTIONLOGS_DISABLED'),
(67,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-26 15:52:08','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(68,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"Menu\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 15:52:22','com_menus.item',772,104,'COM_ACTIONLOGS_DISABLED'),
(69,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__menu\"}','2025-04-26 15:52:22','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(70,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":772,\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2025-04-26 15:52:38','com_users',772,772,'COM_ACTIONLOGS_DISABLED'),
(71,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2025-04-26 15:52:41','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(72,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 15:53:20','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(73,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 15:53:46','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(74,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 15:53:46','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(75,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Live Chat\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 15:53:49','com_content.article',772,1,'COM_ACTIONLOGS_DISABLED'),
(76,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 15:53:49','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(77,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":772,\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2025-04-26 15:53:52','com_users',772,772,'COM_ACTIONLOGS_DISABLED'),
(78,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-26 15:56:10','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(79,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Main Menu\",\"extension_name\":\"Main Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 15:56:44','com_modules.module',772,1,'COM_ACTIONLOGS_DISABLED'),
(80,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-26 15:56:44','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(81,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-26 15:57:08','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(82,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 15:57:16','com_modules.module',772,110,'COM_ACTIONLOGS_DISABLED'),
(83,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-26 15:57:16','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(84,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2025-04-26 15:58:39','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(85,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 16:01:59','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(86,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 16:01:59','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(87,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":772,\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2025-04-26 16:02:17','com_users',772,772,'COM_ACTIONLOGS_DISABLED'),
(88,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 16:03:05','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(89,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 16:03:05','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(90,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 16:04:09','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(91,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 16:04:09','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(92,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 16:04:26','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(93,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 16:04:26','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(94,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-26 16:05:08','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(95,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-26 16:05:08','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(96,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2025-04-28 16:32:01','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(97,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":246,\"name\":\"Regular Labs Library\",\"extension_name\":\"Regular Labs Library\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:33:16','com_installer',772,246,'COM_ACTIONLOGS_DISABLED'),
(98,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":247,\"name\":\"PLG_SYSTEM_REGULARLABS\",\"extension_name\":\"PLG_SYSTEM_REGULARLABS\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:33:16','com_installer',772,247,'COM_ACTIONLOGS_DISABLED'),
(99,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":248,\"name\":\"PKG_REGULARLABS\",\"extension_name\":\"PKG_REGULARLABS\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:33:16','com_installer',772,248,'COM_ACTIONLOGS_DISABLED'),
(100,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":249,\"name\":\"PLG_SYSTEM_SOURCERER\",\"extension_name\":\"PLG_SYSTEM_SOURCERER\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:33:16','com_installer',772,249,'COM_ACTIONLOGS_DISABLED'),
(101,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":250,\"name\":\"PLG_EDITORS-XTD_SOURCERER\",\"extension_name\":\"PLG_EDITORS-XTD_SOURCERER\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:33:16','com_installer',772,250,'COM_ACTIONLOGS_DISABLED'),
(102,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":251,\"name\":\"PKG_SOURCERER\",\"extension_name\":\"PKG_SOURCERER\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:33:16','com_installer',772,251,'COM_ACTIONLOGS_DISABLED'),
(103,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":252,\"name\":\"Regular Labs Library\",\"extension_name\":\"Regular Labs Library\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:35:36','com_installer',772,252,'COM_ACTIONLOGS_DISABLED'),
(104,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":247,\"name\":\"PLG_SYSTEM_REGULARLABS\",\"extension_name\":\"PLG_SYSTEM_REGULARLABS\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:35:36','com_installer',772,247,'COM_ACTIONLOGS_DISABLED'),
(105,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":248,\"name\":\"PKG_REGULARLABS\",\"extension_name\":\"PKG_REGULARLABS\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:35:36','com_installer',772,248,'COM_ACTIONLOGS_DISABLED'),
(106,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":249,\"name\":\"PLG_SYSTEM_SOURCERER\",\"extension_name\":\"PLG_SYSTEM_SOURCERER\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:35:36','com_installer',772,249,'COM_ACTIONLOGS_DISABLED'),
(107,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":250,\"name\":\"PLG_EDITORS-XTD_SOURCERER\",\"extension_name\":\"PLG_EDITORS-XTD_SOURCERER\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:35:36','com_installer',772,250,'COM_ACTIONLOGS_DISABLED'),
(108,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":251,\"name\":\"PKG_SOURCERER\",\"extension_name\":\"PKG_SOURCERER\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:35:36','com_installer',772,251,'COM_ACTIONLOGS_DISABLED'),
(109,'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:38:21','com_config.application',772,0,'COM_ACTIONLOGS_DISABLED'),
(110,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:41:05','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(111,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:44:40','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(112,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 16:44:40','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(113,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__extensions\"}','2025-04-28 16:45:44','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(114,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__extensions\"}','2025-04-28 16:46:37','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(115,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"250\",\"title\":\"PLG_EDITORS-XTD_SOURCERER\",\"extension_name\":\"PLG_EDITORS-XTD_SOURCERER\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=250\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:48:18','com_plugins.plugin',772,250,'COM_ACTIONLOGS_DISABLED'),
(116,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__extensions\"}','2025-04-28 16:48:18','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(117,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"250\",\"title\":\"PLG_EDITORS-XTD_SOURCERER\",\"extension_name\":\"PLG_EDITORS-XTD_SOURCERER\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=250\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:48:19','com_plugins.plugin',772,250,'COM_ACTIONLOGS_DISABLED'),
(118,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__extensions\"}','2025-04-28 16:48:19','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(119,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"249\",\"title\":\"PLG_SYSTEM_SOURCERER\",\"extension_name\":\"PLG_SYSTEM_SOURCERER\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=249\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:48:22','com_plugins.plugin',772,249,'COM_ACTIONLOGS_DISABLED'),
(120,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__extensions\"}','2025-04-28 16:48:22','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(121,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"249\",\"title\":\"PLG_SYSTEM_SOURCERER\",\"extension_name\":\"PLG_SYSTEM_SOURCERER\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=249\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:50:27','com_plugins.plugin',772,249,'COM_ACTIONLOGS_DISABLED'),
(122,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__extensions\"}','2025-04-28 16:50:27','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(123,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:51:06','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(124,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 16:51:06','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(125,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:52:22','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(126,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 16:52:22','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(127,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:52:56','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(128,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 16:52:56','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(129,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:54:46','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(130,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 16:54:46','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(131,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 16:56:10','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(132,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 16:56:10','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(133,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 16:56:35','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(134,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:01:03','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(135,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:01:03','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(136,'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:01:18','com_config.application',772,0,'COM_ACTIONLOGS_DISABLED'),
(137,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:01:43','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(138,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:01:43','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(139,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:02:09','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(140,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:02:09','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(141,'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:02:24','com_config.application',772,0,'COM_ACTIONLOGS_DISABLED'),
(142,'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:02:55','com_config.application',772,0,'COM_ACTIONLOGS_DISABLED'),
(143,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:04:49','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(144,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:04:49','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(145,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:05:02','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(146,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:05:02','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(147,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:05:25','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(148,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:05:25','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(149,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:05:56','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(150,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:05:56','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(151,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:06:10','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(152,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:06:10','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(153,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:06:33','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(154,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:06:33','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(155,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:06:46','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(156,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:06:46','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(157,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:07:19','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(158,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:07:19','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(159,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:09:31','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(160,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:09:31','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(161,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:09:52','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(162,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:09:52','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(163,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:09:59','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(164,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:09:59','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(165,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:10:15','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(166,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:10:15','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(167,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:10:29','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(168,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:10:29','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(169,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:10:54','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(170,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:10:54','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(171,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:11:04','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(172,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:11:04','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(173,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:11:11','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(174,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:11:12','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(175,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:11:17','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(176,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:11:17','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(177,'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:11:24','com_config.application',772,0,'COM_ACTIONLOGS_DISABLED'),
(178,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:12:10','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(179,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:12:10','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(180,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:13:18','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(181,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:13:18','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(182,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:14:00','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(183,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:14:00','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(184,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:15:45','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(185,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:15:45','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(186,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:15:53','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(187,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:16:17','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(188,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:16:17','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(189,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:16:41','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(190,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:16:41','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(191,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop Menu\",\"extension_name\":\"PizzaShop Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:16:56','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(192,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:16:56','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(193,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:17:18','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(194,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:17:18','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(195,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:17:33','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(196,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:17:33','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(197,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:18:27','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(198,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:18:27','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(199,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:18:38','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(200,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:18:38','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(201,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:18:44','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(202,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:18:54','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(203,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:19:14','com_content.article',772,2,'COM_ACTIONLOGS_DISABLED'),
(204,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:19:14','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(205,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__menu\"}','2025-04-28 17:19:22','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(206,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:20:52','com_menus.item',772,101,'COM_ACTIONLOGS_DISABLED'),
(207,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__menu\"}','2025-04-28 17:20:52','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(208,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2025-04-28 17:21:03','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(209,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":4,\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:22:17','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(210,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:22:20','com_menus.item',772,101,'COM_ACTIONLOGS_DISABLED'),
(211,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":772,\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2025-04-28 17:22:26','com_users',772,772,'COM_ACTIONLOGS_DISABLED'),
(212,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:22:38','com_menus.item',772,101,'COM_ACTIONLOGS_DISABLED'),
(213,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:22:54','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(214,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:22:54','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(215,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:23:10','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(216,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:23:14','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(217,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:24:18','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(218,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:24:18','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(219,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:24:20','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(220,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:24:41','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(221,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:24:41','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(222,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:25:02','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(223,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:25:02','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(224,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:25:26','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(225,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:25:26','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(226,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:26:07','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(227,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:26:07','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(228,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:26:18','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(229,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:26:18','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(230,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:27:01','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(231,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:27:01','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(232,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:27:24','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(233,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:27:24','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(234,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:27:42','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(235,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:27:42','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(236,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:28:06','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(237,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:28:06','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(238,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:28:59','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(239,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:28:59','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(240,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:31:05','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(241,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:31:05','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(242,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"11\",\"title\":\"Cassiopeia - Default\",\"extension_name\":\"Cassiopeia - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=11\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:32:01','com_templates.style',772,11,'COM_ACTIONLOGS_DISABLED'),
(243,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:32:45','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(244,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:32:45','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(245,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:33:29','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(246,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:33:29','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(247,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:33:32','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(248,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:36:04','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(249,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:36:04','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(250,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:36:33','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(251,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:36:33','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(252,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:37:14','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(253,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:37:14','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(254,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:37:49','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(255,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:37:49','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(256,'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:38:01','com_config.application',772,0,'COM_ACTIONLOGS_DISABLED'),
(257,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:38:16','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(258,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:38:16','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(259,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:38:35','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(260,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:38:35','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(261,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"249\",\"title\":\"PLG_SYSTEM_SOURCERER\",\"extension_name\":\"PLG_SYSTEM_SOURCERER\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=249\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:40:09','com_plugins.plugin',772,249,'COM_ACTIONLOGS_DISABLED'),
(262,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__extensions\"}','2025-04-28 17:40:09','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(263,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:43:26','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(264,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:43:26','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(265,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:43:37','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(266,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:43:37','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(267,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:43:38','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(268,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:45:11','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(269,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:45:11','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(270,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:45:58','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(271,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:45:58','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(272,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:46:37','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(273,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:46:37','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(274,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"extension_name\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:46:46','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(275,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:46:46','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(276,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:47:17','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(277,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:47:17','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(278,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:47:24','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(279,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:47:24','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(280,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__modules\"}','2025-04-28 17:47:29','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(281,'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED','{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:47:29','com_modules.module',772,111,'COM_ACTIONLOGS_DISABLED'),
(282,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"PizzaShop\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:49:47','com_content.article',772,4,'COM_ACTIONLOGS_DISABLED'),
(283,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":772,\"title\":\"antonioheasca\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"table\":\"#__content\"}','2025-04-28 17:49:47','com_checkin',772,772,'COM_ACTIONLOGS_DISABLED'),
(284,'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 17:59:37','com_config.application',772,0,'COM_ACTIONLOGS_DISABLED'),
(285,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2025-04-28 19:07:30','com_users',772,0,'COM_ACTIONLOGS_DISABLED'),
(286,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":253,\"name\":\"Regular Labs Library\",\"extension_name\":\"Regular Labs Library\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 19:11:54','com_installer',772,253,'COM_ACTIONLOGS_DISABLED'),
(287,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":247,\"name\":\"PLG_SYSTEM_REGULARLABS\",\"extension_name\":\"PLG_SYSTEM_REGULARLABS\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 19:11:54','com_installer',772,247,'COM_ACTIONLOGS_DISABLED'),
(288,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":248,\"name\":\"PKG_REGULARLABS\",\"extension_name\":\"PKG_REGULARLABS\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 19:11:54','com_installer',772,248,'COM_ACTIONLOGS_DISABLED'),
(289,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":249,\"name\":\"PLG_SYSTEM_SOURCERER\",\"extension_name\":\"PLG_SYSTEM_SOURCERER\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 19:11:54','com_installer',772,249,'COM_ACTIONLOGS_DISABLED'),
(290,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":250,\"name\":\"PLG_EDITORS-XTD_SOURCERER\",\"extension_name\":\"PLG_EDITORS-XTD_SOURCERER\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 19:11:54','com_installer',772,250,'COM_ACTIONLOGS_DISABLED'),
(291,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":251,\"name\":\"PKG_SOURCERER\",\"extension_name\":\"PKG_SOURCERER\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 19:11:54','com_installer',772,251,'COM_ACTIONLOGS_DISABLED'),
(292,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":254,\"name\":\"Regular Labs Library\",\"extension_name\":\"Regular Labs Library\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 19:14:46','com_installer',772,254,'COM_ACTIONLOGS_DISABLED'),
(293,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":247,\"name\":\"PLG_SYSTEM_REGULARLABS\",\"extension_name\":\"PLG_SYSTEM_REGULARLABS\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 19:14:46','com_installer',772,247,'COM_ACTIONLOGS_DISABLED'),
(294,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":248,\"name\":\"PKG_REGULARLABS\",\"extension_name\":\"PKG_REGULARLABS\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 19:14:46','com_installer',772,248,'COM_ACTIONLOGS_DISABLED'),
(295,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":249,\"name\":\"PLG_SYSTEM_SOURCERER\",\"extension_name\":\"PLG_SYSTEM_SOURCERER\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 19:14:46','com_installer',772,249,'COM_ACTIONLOGS_DISABLED'),
(296,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":250,\"name\":\"PLG_EDITORS-XTD_SOURCERER\",\"extension_name\":\"PLG_EDITORS-XTD_SOURCERER\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 19:14:46','com_installer',772,250,'COM_ACTIONLOGS_DISABLED'),
(297,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":251,\"name\":\"PKG_SOURCERER\",\"extension_name\":\"PKG_SOURCERER\",\"userid\":772,\"username\":\"antonioheasca\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=772\"}','2025-04-28 19:14:46','com_installer',772,251,'COM_ACTIONLOGS_DISABLED');
/*!40000 ALTER TABLE `aq6ko_action_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_action_logs_extensions`
--

DROP TABLE IF EXISTS `aq6ko_action_logs_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_action_logs_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_action_logs_extensions`
--

LOCK TABLES `aq6ko_action_logs_extensions` WRITE;
/*!40000 ALTER TABLE `aq6ko_action_logs_extensions` DISABLE KEYS */;
INSERT INTO `aq6ko_action_logs_extensions` VALUES
(1,'com_banners'),
(2,'com_cache'),
(3,'com_categories'),
(4,'com_config'),
(5,'com_contact'),
(6,'com_content'),
(7,'com_installer'),
(8,'com_media'),
(9,'com_menus'),
(10,'com_messages'),
(11,'com_modules'),
(12,'com_newsfeeds'),
(13,'com_plugins'),
(14,'com_redirect'),
(15,'com_tags'),
(16,'com_templates'),
(17,'com_users'),
(18,'com_checkin'),
(19,'com_scheduler'),
(20,'com_fields'),
(21,'com_guidedtours');
/*!40000 ALTER TABLE `aq6ko_action_logs_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_action_logs_users`
--

DROP TABLE IF EXISTS `aq6ko_action_logs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_action_logs_users` (
  `user_id` int(10) unsigned NOT NULL,
  `notify` tinyint(3) unsigned NOT NULL,
  `extensions` text NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_action_logs_users`
--

LOCK TABLES `aq6ko_action_logs_users` WRITE;
/*!40000 ALTER TABLE `aq6ko_action_logs_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_action_logs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_assets`
--

DROP TABLE IF EXISTS `aq6ko_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_assets`
--

LOCK TABLES `aq6ko_assets` WRITE;
/*!40000 ALTER TABLE `aq6ko_assets` DISABLE KEYS */;
INSERT INTO `aq6ko_assets` VALUES
(1,0,0,195,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2,1,1,2,1,'com_admin','com_admin','{}'),
(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6,1,11,12,1,'com_config','com_config','{}'),
(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8,1,17,46,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),
(9,1,47,48,1,'com_cpanel','com_cpanel','{}'),
(10,1,49,50,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11,1,51,54,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}'),
(12,11,52,53,2,'com_languages.language.1','English (en-GB)','{}'),
(13,1,55,56,1,'com_login','com_login','{}'),
(14,1,57,58,1,'com_mails','com_mails','{}'),
(15,1,59,60,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16,1,61,64,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}'),
(17,1,65,66,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18,1,67,144,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}'),
(19,1,145,148,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20,1,149,150,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}'),
(21,1,151,152,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}'),
(23,1,153,154,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}'),
(24,1,159,162,1,'com_users','com_users','{\"core.admin\":{\"7\":1}}'),
(26,1,163,164,1,'com_wrapper','com_wrapper','{}'),
(27,8,18,27,2,'com_content.category.2','Uncategorised','{}'),
(28,3,4,5,2,'com_banners.category.3','Uncategorised','{}'),
(29,7,14,15,2,'com_contact.category.4','Uncategorised','{}'),
(30,19,146,147,2,'com_newsfeeds.category.5','Uncategorised','{}'),
(32,24,160,161,2,'com_users.category.7','Uncategorised','{}'),
(33,1,165,166,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34,1,167,168,1,'com_joomlaupdate','com_joomlaupdate','{}'),
(35,1,169,170,1,'com_tags','com_tags','{}'),
(36,1,171,172,1,'com_contenthistory','com_contenthistory','{}'),
(37,1,173,174,1,'com_ajax','com_ajax','{}'),
(38,1,175,176,1,'com_postinstall','com_postinstall','{}'),
(39,18,68,69,2,'com_modules.module.1','Main Menu','{}'),
(40,18,70,71,2,'com_modules.module.2','Login','{}'),
(41,18,72,73,2,'com_modules.module.3','Popular Articles','{}'),
(42,18,74,75,2,'com_modules.module.4','Recently Added Articles','{}'),
(43,18,76,77,2,'com_modules.module.8','Toolbar','{}'),
(44,18,78,79,2,'com_modules.module.9','Notifications','{}'),
(45,18,80,81,2,'com_modules.module.10','Logged-in Users','{}'),
(46,18,82,83,2,'com_modules.module.12','Admin Menu','{}'),
(49,18,88,89,2,'com_modules.module.15','Title','{}'),
(50,18,90,91,2,'com_modules.module.16','Login Form','{}'),
(51,18,92,93,2,'com_modules.module.17','Breadcrumbs','{}'),
(52,18,94,95,2,'com_modules.module.79','Multilanguage status','{}'),
(53,18,98,99,2,'com_modules.module.86','Joomla Version','{}'),
(54,16,62,63,2,'com_menus.menu.1','Main Menu','{}'),
(55,18,102,103,2,'com_modules.module.87','Sample Data','{}'),
(56,8,28,45,2,'com_content.workflow.1','COM_WORKFLOW_BASIC_WORKFLOW','{}'),
(57,56,29,30,3,'com_content.stage.1','COM_WORKFLOW_BASIC_STAGE','{}'),
(58,56,31,32,3,'com_content.transition.1','UNPUBLISH','{}'),
(59,56,33,34,3,'com_content.transition.2','PUBLISH','{}'),
(60,56,35,36,3,'com_content.transition.3','TRASH','{}'),
(61,56,37,38,3,'com_content.transition.4','ARCHIVE','{}'),
(62,56,39,40,3,'com_content.transition.5','FEATURE','{}'),
(63,56,41,42,3,'com_content.transition.6','UNFEATURE','{}'),
(64,56,43,44,3,'com_content.transition.7','PUBLISH_AND_FEATURE','{}'),
(65,1,155,156,1,'com_privacy','com_privacy','{}'),
(66,1,157,158,1,'com_actionlogs','com_actionlogs','{}'),
(67,18,84,85,2,'com_modules.module.88','Latest Actions','{}'),
(68,18,86,87,2,'com_modules.module.89','Privacy Dashboard','{}'),
(70,18,96,97,2,'com_modules.module.103','Site','{}'),
(71,18,100,101,2,'com_modules.module.104','System','{}'),
(72,18,104,105,2,'com_modules.module.91','System Dashboard','{}'),
(73,18,106,107,2,'com_modules.module.92','Content Dashboard','{}'),
(74,18,108,109,2,'com_modules.module.93','Menus Dashboard','{}'),
(75,18,110,111,2,'com_modules.module.94','Components Dashboard','{}'),
(76,18,112,113,2,'com_modules.module.95','Users Dashboard','{}'),
(77,18,114,115,2,'com_modules.module.99','Frontend Link','{}'),
(78,18,116,117,2,'com_modules.module.100','Messages','{}'),
(79,18,118,119,2,'com_modules.module.101','Post Install Messages','{}'),
(80,18,120,121,2,'com_modules.module.102','User Status','{}'),
(82,18,122,123,2,'com_modules.module.105','3rd Party','{}'),
(83,18,124,125,2,'com_modules.module.106','Help Dashboard','{}'),
(84,18,126,127,2,'com_modules.module.107','Privacy Requests','{}'),
(85,18,128,129,2,'com_modules.module.108','Privacy Status','{}'),
(86,18,130,131,2,'com_modules.module.96','Popular Articles','{}'),
(87,18,132,133,2,'com_modules.module.97','Recently Added Articles','{}'),
(88,18,134,135,2,'com_modules.module.98','Logged-in Users','{}'),
(89,18,136,137,2,'com_modules.module.90','Login Support','{}'),
(90,1,177,184,1,'com_scheduler','com_scheduler','{}'),
(91,1,185,186,1,'com_associations','com_associations','{}'),
(92,1,187,188,1,'com_categories','com_categories','{}'),
(93,1,189,190,1,'com_fields','com_fields','{}'),
(94,1,191,192,1,'com_workflow','com_workflow','{}'),
(95,1,193,194,1,'com_guidedtours','com_guidedtours','{}'),
(96,18,138,139,2,'com_modules.module.109','Guided Tours','{}'),
(97,90,178,179,2,'com_scheduler.task.1','Rotate Logs','{}'),
(98,90,180,181,2,'com_scheduler.task.2','Session GC','{}'),
(99,90,182,183,2,'com_scheduler.task.3','Update Notification','{}'),
(100,27,19,20,3,'com_content.article.1','Live Chat','{}'),
(101,27,21,22,3,'com_content.article.2','PizzaShop','{}'),
(102,27,23,24,3,'com_content.article.3','IA','{}'),
(103,18,140,141,2,'com_modules.module.110','PizzaShop Menu','{}'),
(104,18,142,143,2,'com_modules.module.111','PizzaShop','{}'),
(105,27,25,26,3,'com_content.article.4','PizzaShop','{}');
/*!40000 ALTER TABLE `aq6ko_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_associations`
--

DROP TABLE IF EXISTS `aq6ko_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_associations`
--

LOCK TABLES `aq6ko_associations` WRITE;
/*!40000 ALTER TABLE `aq6ko_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_banner_clients`
--

DROP TABLE IF EXISTS `aq6ko_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text DEFAULT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_banner_clients`
--

LOCK TABLES `aq6ko_banner_clients` WRITE;
/*!40000 ALTER TABLE `aq6ko_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_banner_tracks`
--

DROP TABLE IF EXISTS `aq6ko_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_banner_tracks`
--

LOCK TABLES `aq6ko_banner_tracks` WRITE;
/*!40000 ALTER TABLE `aq6ko_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_banners`
--

DROP TABLE IF EXISTS `aq6ko_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(2048) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_banners`
--

LOCK TABLES `aq6ko_banners` WRITE;
/*!40000 ALTER TABLE `aq6ko_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_categories`
--

DROP TABLE IF EXISTS `aq6ko_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_categories`
--

LOCK TABLES `aq6ko_categories` WRITE;
/*!40000 ALTER TABLE `aq6ko_categories` DISABLE KEYS */;
INSERT INTO `aq6ko_categories` VALUES
(1,0,0,0,11,0,'','system','ROOT','root','','',1,NULL,NULL,1,'{}','','','{}',772,'2025-04-23 13:38:46',772,'2025-04-23 13:38:46',0,'*',1),
(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"workflow_id\":\"use_default\"}','','','{\"author\":\"\",\"robots\":\"\"}',772,'2025-04-23 13:38:46',772,'2025-04-23 13:38:46',0,'*',1),
(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',772,'2025-04-23 13:38:46',772,'2025-04-23 13:38:46',0,'*',1),
(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',772,'2025-04-23 13:38:46',772,'2025-04-23 13:38:46',0,'*',1),
(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',772,'2025-04-23 13:38:46',772,'2025-04-23 13:38:46',0,'*',1),
(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',772,'2025-04-23 13:38:46',772,'2025-04-23 13:38:46',0,'*',1);
/*!40000 ALTER TABLE `aq6ko_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_contact_details`
--

DROP TABLE IF EXISTS `aq6ko_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL DEFAULT '',
  `sortname2` varchar(255) NOT NULL DEFAULT '',
  `sortname3` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(7) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_contact_details`
--

LOCK TABLES `aq6ko_contact_details` WRITE;
/*!40000 ALTER TABLE `aq6ko_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_content`
--

DROP TABLE IF EXISTS `aq6ko_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_content`
--

LOCK TABLES `aq6ko_content` WRITE;
/*!40000 ALTER TABLE `aq6ko_content` DISABLE KEYS */;
INSERT INTO `aq6ko_content` VALUES
(1,100,'Live Chat','live-chat','<div class=\"joomla-chat-container\" style=\"max-width: 900px; margin: 0 auto; padding: 20px;\">\r\n    <iframe src=\"http://74.225.221.36:30090\" width=\"100%\" height=\"800\" frameborder=\"0\" scrolling=\"auto\" style=\"border: none; width: 100%; min-height: 800px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);\"></iframe>\r\n</div>','',1,2,'2025-04-23 13:39:31',772,'','2025-04-26 15:53:49',772,NULL,NULL,'2025-04-23 13:39:31',NULL,'{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,2,'','',1,122,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'*',''),
(2,101,'PizzaShop','pizzashop','','',-2,2,'2025-04-23 13:40:11',772,'','2025-04-28 17:19:14',772,NULL,NULL,'2025-04-23 13:40:11',NULL,'{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',17,1,'','',1,125,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'*',''),
(3,102,'IA','ia','<iframe src=\"http://74.225.221.36:30086\" \r\n        width=\"100%\" \r\n        height=\"900\" \r\n        frameborder=\"0\" \r\n        scrolling=\"auto\" \r\n        style=\"border: none; width: 100%; min-height: 900px; \r\n               background: #f8f9fa; border-radius: 8px; \r\n               box-shadow: 0 4px 20px rgba(0,0,0,0.1);\">\r\n</iframe>\r\n','',1,2,'2025-04-24 18:01:20',772,'','2025-04-26 11:46:32',772,NULL,NULL,'2025-04-24 18:01:20',NULL,'{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,1,'','',1,86,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'*',''),
(4,105,'PizzaShop','pizzashop-2','<style>\r\n    .welcome-message {\r\n        font-size: 2em;\r\n        font-weight: bold;\r\n        color: #FF6347; /* culoare roșie */\r\n        text-align: center;\r\n        margin-bottom: 20px;\r\n    }\r\n\r\n    .pizza-menu {\r\n        text-align: center;\r\n        margin-top: 20px;\r\n    }\r\n</style>\r\n\r\n<div class=\"welcome-message\">\r\n    Bine ai venit la Pizzeria Antonio!\r\n</div>\r\n\r\n<div class=\"pizza-menu\">\r\n    {loadmodule mod_custom, PizzaShop Menu}\r\n</div>\r\n','',1,2,'2025-04-28 17:22:17',772,'','2025-04-28 17:49:47',772,NULL,NULL,'2025-04-28 17:22:17',NULL,'{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',15,0,'','',1,216,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `aq6ko_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_content_frontpage`
--

DROP TABLE IF EXISTS `aq6ko_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_content_frontpage`
--

LOCK TABLES `aq6ko_content_frontpage` WRITE;
/*!40000 ALTER TABLE `aq6ko_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_content_rating`
--

DROP TABLE IF EXISTS `aq6ko_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) unsigned NOT NULL DEFAULT 0,
  `rating_count` int(10) unsigned NOT NULL DEFAULT 0,
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_content_rating`
--

LOCK TABLES `aq6ko_content_rating` WRITE;
/*!40000 ALTER TABLE `aq6ko_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_content_types`
--

DROP TABLE IF EXISTS `aq6ko_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(400) NOT NULL DEFAULT '',
  `table` varchar(2048) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_content_types`
--

LOCK TABLES `aq6ko_content_types` WRITE;
/*!40000 ALTER TABLE `aq6ko_content_types` DISABLE KEYS */;
INSERT INTO `aq6ko_content_types` VALUES
(1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','',''),
(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `aq6ko_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_contentitem_tag_map`
--

DROP TABLE IF EXISTS `aq6ko_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_contentitem_tag_map`
--

LOCK TABLES `aq6ko_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `aq6ko_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_extensions`
--

DROP TABLE IF EXISTS `aq6ko_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_extensions`
--

LOCK TABLES `aq6ko_extensions` WRITE;
/*!40000 ALTER TABLE `aq6ko_extensions` DISABLE KEYS */;
INSERT INTO `aq6ko_extensions` VALUES
(1,0,'com_wrapper','component','com_wrapper','','',1,1,1,0,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Wrapper\",\"filename\":\"wrapper\"}','','',NULL,NULL,0,0,NULL),
(2,0,'com_admin','component','com_admin','','',1,1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Admin\"}','','',NULL,NULL,0,0,NULL),
(3,0,'com_banners','component','com_banners','','',1,1,1,0,1,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Banners\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','',NULL,NULL,0,0,NULL),
(4,0,'com_cache','component','com_cache','','',1,1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cache\"}','','',NULL,NULL,0,0,NULL),
(5,0,'com_categories','component','com_categories','','',1,1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Categories\"}','','',NULL,NULL,0,0,NULL),
(6,0,'com_checkin','component','com_checkin','','',1,1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Checkin\"}','','',NULL,NULL,0,0,NULL),
(7,0,'com_contact','component','com_contact','','',1,1,1,0,1,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contact\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}','',NULL,NULL,0,0,NULL),
(8,0,'com_cpanel','component','com_cpanel','','',1,1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cpanel\"}','','',NULL,NULL,0,0,NULL),
(9,0,'com_installer','component','com_installer','','',1,1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Installer\"}','{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','',NULL,NULL,0,0,NULL),
(10,0,'com_languages','component','com_languages','','',1,1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Languages\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','',NULL,NULL,0,0,NULL),
(11,0,'com_login','component','com_login','','',1,1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Login\"}','','',NULL,NULL,0,0,NULL),
(12,0,'com_media','component','com_media','','',1,1,0,1,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Media\",\"filename\":\"media\"}','{\"upload_maxsize\":\"10\",\"file_path\":\"files\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,avif,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp,avif\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,image\\/avif,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}','',NULL,NULL,0,0,NULL),
(13,0,'com_menus','component','com_menus','','',1,1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Menus\",\"filename\":\"menus\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','',NULL,NULL,0,0,NULL),
(14,0,'com_messages','component','com_messages','','',1,1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Messages\"}','','',NULL,NULL,0,0,NULL),
(15,0,'com_modules','component','com_modules','','',1,1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Modules\",\"filename\":\"modules\"}','','',NULL,NULL,0,0,NULL),
(16,0,'com_newsfeeds','component','com_newsfeeds','','',1,1,1,0,1,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}','',NULL,NULL,0,0,NULL),
(17,0,'com_plugins','component','com_plugins','','',1,1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Plugins\"}','','',NULL,NULL,0,0,NULL),
(18,0,'com_templates','component','com_templates','','',1,1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Templates\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,woff2,ttf,otf\",\"compressed_formats\":\"zip\",\"difference\":\"SideBySide\"}','',NULL,NULL,0,0,NULL),
(19,0,'com_content','component','com_content','','',1,1,0,1,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Content\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}','',NULL,NULL,0,0,NULL),
(20,0,'com_config','component','com_config','','',1,1,0,1,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Config\",\"filename\":\"config\"}','{\"filters\":{\"1\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','',NULL,NULL,0,0,NULL),
(21,0,'com_redirect','component','com_redirect','','',1,1,0,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Redirect\"}','','',NULL,NULL,0,0,NULL),
(22,0,'com_users','component','com_users','','',1,1,0,1,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Users\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','',NULL,NULL,0,0,NULL),
(23,0,'com_finder','component','com_finder','','',1,1,0,0,1,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Finder\",\"filename\":\"finder\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','',NULL,NULL,0,0,NULL),
(24,0,'com_joomlaupdate','component','com_joomlaupdate','','',1,1,0,1,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Joomlaupdate\"}','{\"updatesource\":\"default\",\"customurl\":\"\"}','',NULL,NULL,0,0,NULL),
(25,0,'com_tags','component','com_tags','','',1,1,1,0,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Tags\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','',NULL,NULL,0,0,NULL),
(26,0,'com_contenthistory','component','com_contenthistory','','',1,1,1,0,1,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contenthistory\",\"filename\":\"contenthistory\"}','','',NULL,NULL,0,0,NULL),
(27,0,'com_ajax','component','com_ajax','','',1,1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"ajax\"}','','',NULL,NULL,0,0,NULL),
(28,0,'com_postinstall','component','com_postinstall','','',1,1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Postinstall\"}','','',NULL,NULL,0,0,NULL),
(29,0,'com_fields','component','com_fields','','',1,1,1,0,1,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL),
(30,0,'com_associations','component','com_associations','','',1,1,1,0,1,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Associations\"}','','',NULL,NULL,0,0,NULL),
(31,0,'com_privacy','component','com_privacy','','',1,1,1,0,1,'{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Privacy\",\"filename\":\"privacy\"}','','',NULL,NULL,0,0,NULL),
(32,0,'com_actionlogs','component','com_actionlogs','','',1,1,1,0,1,'{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Actionlogs\"}','{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_fields\",\"com_guidedtours\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}','',NULL,NULL,0,0,NULL),
(33,0,'com_workflow','component','com_workflow','','',1,1,0,1,1,'{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Workflow\"}','{}','',NULL,NULL,0,0,NULL),
(34,0,'com_mails','component','com_mails','','',1,1,1,1,1,'{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Mails\"}','','',NULL,NULL,0,0,NULL),
(35,0,'com_scheduler','component','com_scheduler','','',1,1,1,0,1,'{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Scheduler\"}','{}','',NULL,NULL,0,0,NULL),
(36,0,'com_guidedtours','component','com_guidedtours','','',1,1,0,0,1,'{\"name\":\"com_guidedtours\",\"type\":\"component\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"COM_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Guidedtours\"}','{}','',NULL,NULL,0,0,NULL),
(37,0,'lib_joomla','library','joomla','','',0,1,1,1,1,'{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"joomla\"}','','',NULL,NULL,0,0,NULL),
(38,0,'lib_phpass','library','phpass','','',0,1,1,1,1,'{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"phpass\"}','','',NULL,NULL,0,0,NULL),
(39,0,'mod_articles_archive','module','mod_articles_archive','','',0,1,1,0,1,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesArchive\",\"filename\":\"mod_articles_archive\"}','','',NULL,NULL,0,0,NULL),
(40,0,'mod_articles_latest','module','mod_articles_latest','','',0,1,1,0,1,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesLatest\",\"filename\":\"mod_articles_latest\"}','','',NULL,NULL,0,0,NULL),
(41,0,'mod_articles_popular','module','mod_articles_popular','','',0,1,1,0,1,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesPopular\",\"filename\":\"mod_articles_popular\"}','','',NULL,NULL,0,0,NULL),
(42,0,'mod_banners','module','mod_banners','','',0,1,1,0,1,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Banners\",\"filename\":\"mod_banners\"}','','',NULL,NULL,0,0,NULL),
(43,0,'mod_breadcrumbs','module','mod_breadcrumbs','','',0,1,1,0,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Breadcrumbs\",\"filename\":\"mod_breadcrumbs\"}','','',NULL,NULL,0,0,NULL),
(44,0,'mod_custom','module','mod_custom','','',0,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL),
(45,0,'mod_feed','module','mod_feed','','',0,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL),
(46,0,'mod_footer','module','mod_footer','','',0,1,1,0,1,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Footer\",\"filename\":\"mod_footer\"}','','',NULL,NULL,0,0,NULL),
(47,0,'mod_login','module','mod_login','','',0,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL),
(48,0,'mod_menu','module','mod_menu','','',0,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL),
(49,0,'mod_articles_news','module','mod_articles_news','','',0,1,1,0,1,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesNews\",\"filename\":\"mod_articles_news\"}','','',NULL,NULL,0,0,NULL),
(50,0,'mod_random_image','module','mod_random_image','','',0,1,1,0,1,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RandomImage\",\"filename\":\"mod_random_image\"}','','',NULL,NULL,0,0,NULL),
(51,0,'mod_related_items','module','mod_related_items','','',0,1,1,0,1,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RelatedItems\",\"filename\":\"mod_related_items\"}','','',NULL,NULL,0,0,NULL),
(52,0,'mod_stats','module','mod_stats','','',0,1,1,0,1,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Stats\",\"filename\":\"mod_stats\"}','','',NULL,NULL,0,0,NULL),
(53,0,'mod_syndicate','module','mod_syndicate','','',0,1,1,0,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Syndicate\",\"filename\":\"mod_syndicate\"}','','',NULL,NULL,0,0,NULL),
(54,0,'mod_users_latest','module','mod_users_latest','','',0,1,1,0,1,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\UsersLatest\",\"filename\":\"mod_users_latest\"}','','',NULL,NULL,0,0,NULL),
(55,0,'mod_whosonline','module','mod_whosonline','','',0,1,1,0,1,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Whosonline\",\"filename\":\"mod_whosonline\"}','','',NULL,NULL,0,0,NULL),
(56,0,'mod_wrapper','module','mod_wrapper','','',0,1,1,0,1,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Wrapper\",\"filename\":\"mod_wrapper\"}','','',NULL,NULL,0,0,NULL),
(57,0,'mod_articles_category','module','mod_articles_category','','',0,1,1,0,1,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategory\",\"filename\":\"mod_articles_category\"}','','',NULL,NULL,0,0,NULL),
(58,0,'mod_articles_categories','module','mod_articles_categories','','',0,1,1,0,1,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategories\",\"filename\":\"mod_articles_categories\"}','','',NULL,NULL,0,0,NULL),
(59,0,'mod_languages','module','mod_languages','','',0,1,1,0,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Languages\",\"filename\":\"mod_languages\"}','','',NULL,NULL,0,0,NULL),
(60,0,'mod_finder','module','mod_finder','','',0,1,0,0,1,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Finder\",\"filename\":\"mod_finder\"}','','',NULL,NULL,0,0,NULL),
(61,0,'MOD_ARTICLES','module','mod_articles','','',0,1,0,0,1,'{\"name\":\"MOD_ARTICLES\",\"type\":\"module\",\"creationDate\":\"2024-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.0\",\"description\":\"MOD_ARTICLES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Articles\",\"filename\":\"mod_articles\"}','','',NULL,NULL,0,0,NULL),
(62,0,'mod_custom','module','mod_custom','','',1,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL),
(63,0,'mod_feed','module','mod_feed','','',1,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL),
(64,0,'mod_latest','module','mod_latest','','',1,1,1,0,1,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Latest\",\"filename\":\"mod_latest\"}','','',NULL,NULL,0,0,NULL),
(65,0,'mod_logged','module','mod_logged','','',1,1,1,0,1,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Logged\",\"filename\":\"mod_logged\"}','','',NULL,NULL,0,0,NULL),
(66,0,'mod_login','module','mod_login','','',1,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL),
(67,0,'mod_loginsupport','module','mod_loginsupport','','',1,1,1,0,1,'{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Loginsupport\",\"filename\":\"mod_loginsupport\"}','','',NULL,NULL,0,0,NULL),
(68,0,'mod_menu','module','mod_menu','','',1,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL),
(69,0,'mod_popular','module','mod_popular','','',1,1,1,0,1,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Popular\",\"filename\":\"mod_popular\"}','','',NULL,NULL,0,0,NULL),
(70,0,'mod_quickicon','module','mod_quickicon','','',1,1,1,0,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Quickicon\",\"filename\":\"mod_quickicon\"}','','',NULL,NULL,0,0,NULL),
(71,0,'mod_frontend','module','mod_frontend','','',1,1,1,0,1,'{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Frontend\",\"filename\":\"mod_frontend\"}','','',NULL,NULL,0,0,NULL),
(72,0,'mod_messages','module','mod_messages','','',1,1,1,0,1,'{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Messages\",\"filename\":\"mod_messages\"}','','',NULL,NULL,0,0,NULL),
(73,0,'mod_post_installation_messages','module','mod_post_installation_messages','','',1,1,1,0,1,'{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PostInstallationMessages\",\"filename\":\"mod_post_installation_messages\"}','','',NULL,NULL,0,0,NULL),
(74,0,'mod_user','module','mod_user','','',1,1,1,0,1,'{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\User\",\"filename\":\"mod_user\"}','','',NULL,NULL,0,0,NULL),
(75,0,'mod_title','module','mod_title','','',1,1,1,0,1,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Title\",\"filename\":\"mod_title\"}','','',NULL,NULL,0,0,NULL),
(76,0,'mod_toolbar','module','mod_toolbar','','',1,1,1,0,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Toolbar\",\"filename\":\"mod_toolbar\"}','','',NULL,NULL,0,0,NULL),
(77,0,'mod_multilangstatus','module','mod_multilangstatus','','',1,1,1,0,1,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\MultilangStatus\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL),
(78,0,'mod_version','module','mod_version','','',1,1,1,0,1,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Version\",\"filename\":\"mod_version\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL),
(79,0,'mod_stats_admin','module','mod_stats_admin','','',1,1,1,0,1,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\StatsAdmin\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),
(80,0,'mod_tags_popular','module','mod_tags_popular','','',0,1,1,0,1,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsPopular\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL),
(81,0,'mod_tags_similar','module','mod_tags_similar','','',0,1,1,0,1,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsSimilar\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL),
(82,0,'mod_sampledata','module','mod_sampledata','','',1,1,1,0,1,'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Sampledata\",\"filename\":\"mod_sampledata\"}','{}','',NULL,NULL,0,0,NULL),
(83,0,'mod_latestactions','module','mod_latestactions','','',1,1,1,0,1,'{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\LatestActions\",\"filename\":\"mod_latestactions\"}','{}','',NULL,NULL,0,0,NULL),
(84,0,'mod_privacy_dashboard','module','mod_privacy_dashboard','','',1,1,1,0,1,'{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyDashboard\",\"filename\":\"mod_privacy_dashboard\"}','{}','',NULL,NULL,0,0,NULL),
(85,0,'mod_submenu','module','mod_submenu','','',1,1,1,0,1,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Submenu\",\"filename\":\"mod_submenu\"}','{}','',NULL,NULL,0,0,NULL),
(86,0,'mod_privacy_status','module','mod_privacy_status','','',1,1,1,0,1,'{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyStatus\",\"filename\":\"mod_privacy_status\"}','{}','',NULL,NULL,0,0,NULL),
(87,0,'mod_guidedtours','module','mod_guidedtours','','',1,1,1,0,1,'{\"name\":\"mod_guidedtours\",\"type\":\"module\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"MOD_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\GuidedTours\",\"filename\":\"mod_guidedtours\"}','{}','',NULL,NULL,0,0,NULL),
(88,0,'plg_actionlog_joomla','plugin','joomla','','actionlog',0,1,1,0,1,'{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla\",\"filename\":\"joomla\"}','{}','',NULL,NULL,1,0,NULL),
(89,0,'plg_api-authentication_basic','plugin','basic','','api-authentication',0,0,1,0,1,'{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic\",\"filename\":\"basic\"}','{}','',NULL,NULL,1,0,NULL),
(90,0,'plg_api-authentication_token','plugin','token','','api-authentication',0,1,1,0,1,'{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,2,0,NULL),
(91,0,'plg_authentication_cookie','plugin','cookie','','authentication',0,1,1,0,1,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Cookie\",\"filename\":\"cookie\"}','','',NULL,NULL,1,0,NULL),
(92,0,'plg_authentication_joomla','plugin','joomla','','authentication',0,1,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL),
(93,0,'plg_authentication_ldap','plugin','ldap','','authentication',0,0,1,0,1,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Ldap\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','',NULL,NULL,3,0,NULL),
(94,0,'plg_behaviour_compat','plugin','compat','','behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_compat\",\"type\":\"plugin\",\"creationDate\":\"2023-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_COMPAT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Compat\",\"filename\":\"compat\"}','{\"classes_aliases\":\"1\",\"es5_assets\":\"1\"}','',NULL,NULL,1,0,NULL),
(95,0,'plg_behaviour_taggable','plugin','taggable','','behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable\",\"filename\":\"taggable\"}','{}','',NULL,NULL,2,0,NULL),
(96,0,'plg_behaviour_versionable','plugin','versionable','','behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable\",\"filename\":\"versionable\"}','{}','',NULL,NULL,3,0,NULL),
(97,0,'plg_content_confirmconsent','plugin','confirmconsent','','content',0,0,1,0,1,'{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent\",\"filename\":\"confirmconsent\"}','{}','',NULL,NULL,1,0,NULL),
(98,0,'plg_content_contact','plugin','contact','','content',0,1,1,0,1,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL),
(99,0,'plg_content_emailcloak','plugin','emailcloak','','content',0,1,1,0,1,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\EmailCloak\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','',NULL,NULL,3,0,NULL),
(100,0,'plg_content_fields','plugin','fields','','content',0,1,1,0,1,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,4,0,NULL),
(101,0,'plg_content_finder','plugin','finder','','content',0,1,1,0,1,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,5,0,NULL),
(102,0,'plg_content_joomla','plugin','joomla','','content',0,1,1,0,1,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,6,0,NULL),
(103,0,'plg_content_loadmodule','plugin','loadmodule','','content',0,1,1,0,1,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\LoadModule\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','',NULL,NULL,7,0,NULL),
(104,0,'plg_content_pagebreak','plugin','pagebreak','','content',0,1,1,0,1,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageBreak\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','',NULL,NULL,8,0,NULL),
(105,0,'plg_content_pagenavigation','plugin','pagenavigation','','content',0,1,1,0,1,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageNavigation\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','',NULL,NULL,9,0,NULL),
(106,0,'plg_content_vote','plugin','vote','','content',0,0,1,0,1,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Vote\",\"filename\":\"vote\"}','','',NULL,NULL,10,0,NULL),
(107,0,'plg_editors-xtd_article','plugin','article','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article\",\"filename\":\"article\"}','','',NULL,NULL,1,0,NULL),
(108,0,'plg_editors-xtd_contact','plugin','contact','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL),
(109,0,'plg_editors-xtd_fields','plugin','fields','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,3,0,NULL),
(110,0,'plg_editors-xtd_image','plugin','image','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image\",\"filename\":\"image\"}','','',NULL,NULL,4,0,NULL),
(111,0,'plg_editors-xtd_menu','plugin','menu','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu\",\"filename\":\"menu\"}','','',NULL,NULL,5,0,NULL),
(112,0,'plg_editors-xtd_module','plugin','module','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module\",\"filename\":\"module\"}','','',NULL,NULL,6,0,NULL),
(113,0,'plg_editors-xtd_pagebreak','plugin','pagebreak','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak\",\"filename\":\"pagebreak\"}','','',NULL,NULL,7,0,NULL),
(114,0,'plg_editors-xtd_readmore','plugin','readmore','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore\",\"filename\":\"readmore\"}','','',NULL,NULL,8,0,NULL),
(115,0,'plg_editors_codemirror','plugin','codemirror','','editors',0,1,1,0,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"6.0.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','',NULL,NULL,1,0,NULL),
(116,0,'plg_editors_none','plugin','none','','editors',0,1,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\None\",\"filename\":\"none\"}','','',NULL,NULL,2,0,NULL),
(117,0,'plg_editors_tinymce','plugin','tinymce','','editors',0,1,1,0,1,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"6.8.5\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE\",\"filename\":\"tinymce\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"blocks\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styles\",\"|\",\"blocks\",\"fontfamily\",\"fontsize\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"jtemplate\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','',NULL,NULL,3,0,NULL),
(118,0,'plg_extension_finder','plugin','finder','','extension',0,1,1,0,1,'{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,1,0,NULL),
(119,0,'plg_extension_joomla','plugin','joomla','','extension',0,1,1,0,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL),
(120,0,'plg_extension_joomlaupdate','plugin','joomlaupdate','','extension',0,1,1,0,1,'{\"name\":\"plg_extension_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.0.0\",\"description\":\"PLG_EXTENSION_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}','','',NULL,NULL,3,0,NULL),
(121,0,'plg_extension_namespacemap','plugin','namespacemap','','extension',0,1,1,1,1,'{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap\",\"filename\":\"namespacemap\"}','{}','',NULL,NULL,4,0,NULL),
(122,0,'plg_fields_calendar','plugin','calendar','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Calendar\",\"filename\":\"calendar\"}','','',NULL,NULL,1,0,NULL),
(123,0,'plg_fields_checkboxes','plugin','checkboxes','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes\",\"filename\":\"checkboxes\"}','','',NULL,NULL,2,0,NULL),
(124,0,'plg_fields_color','plugin','color','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Color\",\"filename\":\"color\"}','','',NULL,NULL,3,0,NULL),
(125,0,'plg_fields_editor','plugin','editor','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Editor\",\"filename\":\"editor\"}','{\"buttons\":0,\"width\":\"100%\",\"height\":\"250px\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}','',NULL,NULL,4,0,NULL),
(126,0,'plg_fields_imagelist','plugin','imagelist','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Imagelist\",\"filename\":\"imagelist\"}','','',NULL,NULL,5,0,NULL),
(127,0,'plg_fields_integer','plugin','integer','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Integer\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','',NULL,NULL,6,0,NULL),
(128,0,'plg_fields_list','plugin','list','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\ListField\",\"filename\":\"list\"}','','',NULL,NULL,7,0,NULL),
(129,0,'plg_fields_media','plugin','media','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Media\",\"filename\":\"media\"}','','',NULL,NULL,8,0,NULL),
(130,0,'plg_fields_radio','plugin','radio','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Radio\",\"filename\":\"radio\"}','','',NULL,NULL,9,0,NULL),
(131,0,'plg_fields_sql','plugin','sql','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\SQL\",\"filename\":\"sql\"}','','',NULL,NULL,10,0,NULL),
(132,0,'plg_fields_subform','plugin','subform','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Subform\",\"filename\":\"subform\"}','','',NULL,NULL,11,0,NULL),
(133,0,'plg_fields_text','plugin','text','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Text\",\"filename\":\"text\"}','','',NULL,NULL,12,0,NULL),
(134,0,'plg_fields_textarea','plugin','textarea','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Textarea\",\"filename\":\"textarea\"}','{\"rows\":10,\"cols\":10,\"maxlength\":\"\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}','',NULL,NULL,13,0,NULL),
(135,0,'plg_fields_url','plugin','url','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Url\",\"filename\":\"url\"}','','',NULL,NULL,14,0,NULL),
(136,0,'plg_fields_user','plugin','user','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\User\",\"filename\":\"user\"}','','',NULL,NULL,15,0,NULL),
(137,0,'plg_fields_usergrouplist','plugin','usergrouplist','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList\",\"filename\":\"usergrouplist\"}','','',NULL,NULL,16,0,NULL),
(138,0,'plg_filesystem_local','plugin','local','','filesystem',0,1,1,0,1,'{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Filesystem\\\\Local\",\"filename\":\"local\"}','{}','',NULL,NULL,1,0,NULL),
(139,0,'plg_finder_categories','plugin','categories','','finder',0,1,1,0,1,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Categories\",\"filename\":\"categories\"}','','',NULL,NULL,1,0,NULL),
(140,0,'plg_finder_contacts','plugin','contacts','','finder',0,1,1,0,1,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Contacts\",\"filename\":\"contacts\"}','','',NULL,NULL,2,0,NULL),
(141,0,'plg_finder_content','plugin','content','','finder',0,1,1,0,1,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Content\",\"filename\":\"content\"}','','',NULL,NULL,3,0,NULL),
(142,0,'plg_finder_newsfeeds','plugin','newsfeeds','','finder',0,1,1,0,1,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','','',NULL,NULL,4,0,NULL),
(143,0,'plg_finder_tags','plugin','tags','','finder',0,1,1,0,1,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Tags\",\"filename\":\"tags\"}','','',NULL,NULL,5,0,NULL),
(144,0,'plg_installer_folderinstaller','plugin','folderinstaller','','installer',0,1,1,0,1,'{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Folder\",\"filename\":\"folderinstaller\"}','','',NULL,NULL,2,0,NULL),
(145,0,'plg_installer_override','plugin','override','','installer',0,1,1,0,1,'{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Override\",\"filename\":\"override\"}','','',NULL,NULL,4,0,NULL),
(146,0,'plg_installer_packageinstaller','plugin','packageinstaller','','installer',0,1,1,0,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Package\",\"filename\":\"packageinstaller\"}','','',NULL,NULL,1,0,NULL),
(147,0,'plg_installer_urlinstaller','plugin','urlinstaller','','installer',0,1,1,0,1,'{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Url\",\"filename\":\"urlinstaller\"}','','',NULL,NULL,3,0,NULL),
(148,0,'plg_installer_webinstaller','plugin','webinstaller','','installer',0,1,1,0,1,'{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Web\",\"filename\":\"webinstaller\"}','{\"tab_position\":\"1\"}','',NULL,NULL,5,0,NULL),
(149,0,'plg_media-action_crop','plugin','crop','','media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Crop\",\"filename\":\"crop\"}','{}','',NULL,NULL,1,0,NULL),
(150,0,'plg_media-action_resize','plugin','resize','','media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Resize\",\"filename\":\"resize\"}','{}','',NULL,NULL,2,0,NULL),
(151,0,'plg_media-action_rotate','plugin','rotate','','media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate\",\"filename\":\"rotate\"}','{}','',NULL,NULL,3,0,NULL),
(152,0,'plg_privacy_actionlogs','plugin','actionlogs','','privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,1,0,NULL),
(153,0,'plg_privacy_consents','plugin','consents','','privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Consents\",\"filename\":\"consents\"}','{}','',NULL,NULL,2,0,NULL),
(154,0,'plg_privacy_contact','plugin','contact','','privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL),
(155,0,'plg_privacy_content','plugin','content','','privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL),
(156,0,'plg_privacy_message','plugin','message','','privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Message\",\"filename\":\"message\"}','{}','',NULL,NULL,5,0,NULL),
(157,0,'plg_privacy_user','plugin','user','','privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\User\",\"filename\":\"user\"}','{}','',NULL,NULL,6,0,NULL),
(158,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}','','',NULL,NULL,1,0,NULL),
(159,0,'plg_quickicon_extensionupdate','plugin','extensionupdate','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate\",\"filename\":\"extensionupdate\"}','','',NULL,NULL,2,0,NULL),
(160,0,'plg_quickicon_overridecheck','plugin','overridecheck','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck\",\"filename\":\"overridecheck\"}','','',NULL,NULL,3,0,NULL),
(161,0,'plg_quickicon_downloadkey','plugin','downloadkey','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey\",\"filename\":\"downloadkey\"}','','',NULL,NULL,4,0,NULL),
(162,0,'plg_quickicon_privacycheck','plugin','privacycheck','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck\",\"filename\":\"privacycheck\"}','{}','',NULL,NULL,5,0,NULL),
(163,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck\",\"filename\":\"phpversioncheck\"}','','',NULL,NULL,6,0,NULL),
(164,0,'plg_quickicon_eos','plugin','eos','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_eos\",\"type\":\"plugin\",\"creationDate\":\"2023-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_QUICKICON_EOS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Eos\",\"filename\":\"eos\"}','','',NULL,NULL,7,0,NULL),
(165,0,'plg_sampledata_blog','plugin','blog','','sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\Blog\",\"filename\":\"blog\"}','','',NULL,NULL,1,0,NULL),
(166,0,'plg_sampledata_multilang','plugin','multilang','','sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage\",\"filename\":\"multilang\"}','','',NULL,NULL,2,0,NULL),
(167,0,'plg_schemaorg_article','plugin','article','','schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_article\",\"type\":\"plugin\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Article\",\"filename\":\"article\"}','{}','',NULL,NULL,1,0,NULL),
(168,0,'plg_schemaorg_blogposting','plugin','blogposting','','schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_blogposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BLOGPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\BlogPosting\",\"filename\":\"blogposting\"}','{}','',NULL,NULL,2,0,NULL),
(169,0,'plg_schemaorg_book','plugin','book','','schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_book\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BOOK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Book\",\"filename\":\"book\"}','{}','',NULL,NULL,3,0,NULL),
(170,0,'plg_schemaorg_event','plugin','event','','schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_event\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_EVENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Event\",\"filename\":\"event\"}','{}','',NULL,NULL,4,0,NULL),
(171,0,'plg_schemaorg_jobposting','plugin','jobposting','','schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_jobposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_JOBPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\JobPosting\",\"filename\":\"jobposting\"}','{}','',NULL,NULL,5,0,NULL),
(172,0,'plg_schemaorg_organization','plugin','organization','','schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_organization\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_ORGANIZATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Organization\",\"filename\":\"organization\"}','{}','',NULL,NULL,6,0,NULL),
(173,0,'plg_schemaorg_person','plugin','person','','schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_person\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_PERSON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Person\",\"filename\":\"person\"}','{}','',NULL,NULL,7,0,NULL),
(174,0,'plg_schemaorg_recipe','plugin','recipe','','schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_recipe\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_RECIPE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Recipe\",\"filename\":\"recipe\"}','{}','',NULL,NULL,8,0,NULL),
(175,0,'plg_schemaorg_custom','plugin','custom','','schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_custom\",\"type\":\"plugin\",\"creationDate\":\"2024-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Custom\",\"filename\":\"custom\"}','{}','',NULL,NULL,9,0,NULL),
(176,0,'plg_system_accessibility','plugin','accessibility','','system',0,0,1,0,1,'{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Accessibility\",\"filename\":\"accessibility\"}','{}','',NULL,NULL,1,0,NULL),
(177,0,'plg_system_actionlogs','plugin','actionlogs','','system',0,1,1,0,1,'{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ActionLogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,2,0,NULL),
(178,0,'plg_system_cache','plugin','cache','','system',0,0,1,0,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Cache\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','',NULL,NULL,3,0,NULL),
(179,0,'plg_system_debug','plugin','debug','','system',0,1,1,0,1,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Debug\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','',NULL,NULL,4,0,NULL),
(180,0,'plg_system_fields','plugin','fields','','system',0,1,1,0,1,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,5,0,NULL),
(181,0,'plg_system_highlight','plugin','highlight','','system',0,1,1,0,1,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Highlight\",\"filename\":\"highlight\"}','','',NULL,NULL,6,0,NULL),
(182,0,'plg_system_httpheaders','plugin','httpheaders','','system',0,1,1,0,1,'{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Httpheaders\",\"filename\":\"httpheaders\"}','{}','',NULL,NULL,7,0,NULL),
(183,0,'plg_system_jooa11y','plugin','jooa11y','','system',0,1,1,0,1,'{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Jooa11y\",\"filename\":\"jooa11y\"}','','',NULL,NULL,8,0,NULL),
(184,0,'plg_system_languagecode','plugin','languagecode','','system',0,0,1,0,1,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageCode\",\"filename\":\"languagecode\"}','','',NULL,NULL,9,0,NULL),
(185,0,'plg_system_languagefilter','plugin','languagefilter','','system',0,0,1,0,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageFilter\",\"filename\":\"languagefilter\"}','','',NULL,NULL,10,0,NULL),
(186,0,'plg_system_log','plugin','log','','system',0,1,1,0,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Log\",\"filename\":\"log\"}','','',NULL,NULL,11,0,NULL),
(187,0,'plg_system_logout','plugin','logout','','system',0,1,1,0,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Logout\",\"filename\":\"logout\"}','','',NULL,NULL,12,0,NULL),
(188,0,'plg_system_privacyconsent','plugin','privacyconsent','','system',0,0,1,0,1,'{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,14,0,NULL),
(189,0,'plg_system_redirect','plugin','redirect','','system',0,0,1,0,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Redirect\",\"filename\":\"redirect\"}','','',NULL,NULL,15,0,NULL),
(190,0,'plg_system_remember','plugin','remember','','system',0,1,1,0,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Remember\",\"filename\":\"remember\"}','','',NULL,NULL,16,0,NULL),
(191,0,'plg_system_schedulerunner','plugin','schedulerunner','','system',0,1,1,0,1,'{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner\",\"filename\":\"schedulerunner\"}','{}','',NULL,NULL,17,0,NULL),
(192,0,'plg_system_schemaorg','plugin','schemaorg','','system',0,1,1,0,0,'{\"name\":\"plg_system_schemaorg\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SYSTEM_SCHEMAORG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Schemaorg\",\"filename\":\"schemaorg\"}','{}','',NULL,NULL,18,0,NULL),
(193,0,'plg_system_sef','plugin','sef','','system',0,1,1,0,1,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Sef\",\"filename\":\"sef\"}','{\"domain\":\"\",\"indexphp\":\"1\",\"trailingslash\":\"0\",\"enforcesuffix\":\"1\",\"strictrouting\":\"1\"}','',NULL,NULL,19,0,NULL),
(194,0,'plg_system_shortcut','plugin','shortcut','','system',0,1,1,0,1,'{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Shortcut\",\"filename\":\"shortcut\"}','{}','',NULL,NULL,21,0,NULL),
(195,0,'plg_system_skipto','plugin','skipto','','system',0,1,1,0,1,'{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Skipto\",\"filename\":\"skipto\"}','{}','',NULL,NULL,22,0,NULL),
(196,0,'plg_system_stats','plugin','stats','','system',0,0,1,0,1,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Stats\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":1745415574,\"unique_id\":\"07e03138254df6e2ee94bbf80cb36fe69f3ee674\",\"interval\":12}','',NULL,NULL,23,0,NULL),
(197,0,'plg_system_task_notification','plugin','tasknotification','','system',0,1,1,0,1,'{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\TaskNotification\",\"filename\":\"tasknotification\"}','','',NULL,NULL,24,0,NULL),
(198,0,'plg_system_webauthn','plugin','webauthn','','system',0,1,1,0,1,'{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Webauthn\",\"filename\":\"webauthn\"}','{}','',NULL,NULL,26,0,NULL),
(199,0,'plg_task_check_files','plugin','checkfiles','','task',0,1,1,0,1,'{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Checkfiles\",\"filename\":\"checkfiles\"}','{}','',NULL,NULL,1,0,NULL),
(200,0,'plg_task_deleteactionlogs','plugin','deleteactionlogs','','task',0,1,1,0,1,'{\"name\":\"plg_task_deleteactionlogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_DELETEACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\DeleteActionLogs\",\"filename\":\"deleteactionlogs\"}','{}','',NULL,NULL,2,0,NULL),
(201,0,'plg_task_globalcheckin','plugin','globalcheckin','','task',0,1,1,0,0,'{\"name\":\"plg_task_globalcheckin\",\"type\":\"plugin\",\"creationDate\":\"2023-06-22\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_GLOBALCHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Globalcheckin\",\"filename\":\"globalcheckin\"}','{}','',NULL,NULL,3,0,NULL),
(202,0,'plg_task_requests','plugin','requests','','task',0,1,1,0,1,'{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Requests\",\"filename\":\"requests\"}','{}','',NULL,NULL,4,0,NULL),
(203,0,'plg_task_privacyconsent','plugin','privacyconsent','','task',0,1,1,0,1,'{\"name\":\"plg_task_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,5,0,NULL),
(204,0,'plg_task_rotatelogs','plugin','rotatelogs','','task',0,1,1,0,1,'{\"name\":\"plg_task_rotatelogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_ROTATELOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\RotateLogs\",\"filename\":\"rotatelogs\"}','{}','',NULL,NULL,6,0,NULL),
(205,0,'plg_task_sessiongc','plugin','sessiongc','','task',0,1,1,0,1,'{\"name\":\"plg_task_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2023-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SessionGC\",\"filename\":\"sessiongc\"}','{}','',NULL,NULL,7,0,NULL),
(206,0,'plg_task_site_status','plugin','sitestatus','','task',0,1,1,0,1,'{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SiteStatus\",\"filename\":\"sitestatus\"}','{}','',NULL,NULL,8,0,NULL),
(207,0,'plg_task_updatenotification','plugin','updatenotification','','task',0,1,1,0,1,'{\"name\":\"plg_task_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\UpdateNotification\",\"filename\":\"updatenotification\"}','{}','',NULL,NULL,9,0,NULL),
(208,0,'plg_multifactorauth_totp','plugin','totp','','multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Totp\",\"filename\":\"totp\"}','','',NULL,NULL,1,0,NULL),
(209,0,'plg_multifactorauth_yubikey','plugin','yubikey','','multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Yubikey\",\"filename\":\"yubikey\"}','','',NULL,NULL,2,0,NULL),
(210,0,'plg_multifactorauth_webauthn','plugin','webauthn','','multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Webauthn\",\"filename\":\"webauthn\"}','','',NULL,NULL,3,0,NULL),
(211,0,'plg_multifactorauth_email','plugin','email','','multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_email\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Email\",\"filename\":\"email\"}','','',NULL,NULL,4,0,NULL),
(212,0,'plg_multifactorauth_fixed','plugin','fixed','','multifactorauth',0,0,1,0,1,'{\"name\":\"plg_multifactorauth_fixed\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Fixed\",\"filename\":\"fixed\"}','','',NULL,NULL,5,0,NULL),
(213,0,'plg_user_contactcreator','plugin','contactcreator','','user',0,0,1,0,1,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\ContactCreator\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}','',NULL,NULL,1,0,NULL),
(214,0,'plg_user_joomla','plugin','joomla','','user',0,1,1,0,1,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Joomla\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','',NULL,NULL,2,0,NULL),
(215,0,'plg_user_profile','plugin','profile','','user',0,0,1,0,1,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Profile\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','',NULL,NULL,3,0,NULL),
(216,0,'plg_user_terms','plugin','terms','','user',0,0,1,0,1,'{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Terms\",\"filename\":\"terms\"}','{}','',NULL,NULL,4,0,NULL),
(217,0,'plg_user_token','plugin','token','','user',0,1,1,0,1,'{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,5,0,NULL),
(218,0,'plg_webservices_banners','plugin','banners','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Banners\",\"filename\":\"banners\"}','{}','',NULL,NULL,1,0,NULL),
(219,0,'plg_webservices_config','plugin','config','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Config\",\"filename\":\"config\"}','{}','',NULL,NULL,2,0,NULL),
(220,0,'plg_webservices_contact','plugin','contact','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL),
(221,0,'plg_webservices_content','plugin','content','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL),
(222,0,'plg_webservices_installer','plugin','installer','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Installer\",\"filename\":\"installer\"}','{}','',NULL,NULL,5,0,NULL),
(223,0,'plg_webservices_languages','plugin','languages','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Languages\",\"filename\":\"languages\"}','{}','',NULL,NULL,6,0,NULL),
(224,0,'plg_webservices_media','plugin','media','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Media\",\"filename\":\"media\"}','{}','',NULL,NULL,7,0,NULL),
(225,0,'plg_webservices_menus','plugin','menus','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Menus\",\"filename\":\"menus\"}','{}','',NULL,NULL,7,0,NULL),
(226,0,'plg_webservices_messages','plugin','messages','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Messages\",\"filename\":\"messages\"}','{}','',NULL,NULL,8,0,NULL),
(227,0,'plg_webservices_modules','plugin','modules','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Modules\",\"filename\":\"modules\"}','{}','',NULL,NULL,9,0,NULL),
(228,0,'plg_webservices_newsfeeds','plugin','newsfeeds','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{}','',NULL,NULL,10,0,NULL),
(229,0,'plg_webservices_plugins','plugin','plugins','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Plugins\",\"filename\":\"plugins\"}','{}','',NULL,NULL,11,0,NULL),
(230,0,'plg_webservices_privacy','plugin','privacy','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Privacy\",\"filename\":\"privacy\"}','{}','',NULL,NULL,12,0,NULL),
(231,0,'plg_webservices_redirect','plugin','redirect','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Redirect\",\"filename\":\"redirect\"}','{}','',NULL,NULL,13,0,NULL),
(232,0,'plg_webservices_tags','plugin','tags','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Tags\",\"filename\":\"tags\"}','{}','',NULL,NULL,14,0,NULL),
(233,0,'plg_webservices_templates','plugin','templates','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Templates\",\"filename\":\"templates\"}','{}','',NULL,NULL,15,0,NULL),
(234,0,'plg_webservices_users','plugin','users','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Users\",\"filename\":\"users\"}','{}','',NULL,NULL,16,0,NULL),
(235,0,'plg_workflow_featuring','plugin','featuring','','workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Featuring\",\"filename\":\"featuring\"}','{}','',NULL,NULL,1,0,NULL),
(236,0,'plg_workflow_notification','plugin','notification','','workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Notification\",\"filename\":\"notification\"}','{}','',NULL,NULL,2,0,NULL),
(237,0,'plg_workflow_publishing','plugin','publishing','','workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Publishing\",\"filename\":\"publishing\"}','{}','',NULL,NULL,3,0,NULL),
(238,0,'plg_system_guidedtours','plugin','guidedtours','','system',0,1,1,0,1,'{\"name\":\"plg_system_guidedtours\",\"type\":\"plugin\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\GuidedTours\",\"filename\":\"guidedtours\"}','{}','',NULL,NULL,15,0,NULL),
(239,0,'atum','template','atum','','',1,1,1,0,1,'{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','','',NULL,NULL,0,0,NULL),
(240,0,'cassiopeia','template','cassiopeia','','',0,1,1,0,1,'{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}','',NULL,NULL,0,0,NULL),
(241,0,'files_joomla','file','joomla','','',0,1,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2025-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.3.0\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\"}','','',NULL,NULL,0,0,NULL),
(242,0,'English (en-GB) Language Pack','package','pkg_en-GB','','',0,1,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2025-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.3.0.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"pkg_en-GB\"}','','',NULL,NULL,0,0,NULL),
(243,242,'English (en-GB)','language','en-GB','','',0,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2025-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.3.0\",\"description\":\"en-GB site language\",\"group\":\"\",\"changelogurl\":\"\"}','','',NULL,NULL,0,0,NULL),
(244,242,'English (en-GB)','language','en-GB','','',1,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2025-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.3.0\",\"description\":\"en-GB administrator language\",\"group\":\"\",\"changelogurl\":\"\"}','','',NULL,NULL,0,0,NULL),
(245,242,'English (en-GB)','language','en-GB','','',3,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2025-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.3.0\",\"description\":\"en-GB api language\",\"group\":\"\",\"changelogurl\":\"\"}','','',NULL,NULL,0,0,NULL),
(247,248,'PLG_SYSTEM_REGULARLABS','plugin','regularlabs','','system',0,1,1,0,0,'{\"name\":\"PLG_SYSTEM_REGULARLABS\",\"type\":\"plugin\",\"creationDate\":\"March 2025\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2025 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/regularlabs.com\",\"version\":\"25.3.16992\",\"description\":\"PLG_SYSTEM_REGULARLABS_DESC\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"RegularLabs\\\\Plugin\\\\System\\\\RegularLabs\",\"filename\":\"regularlabs\"}','{\"combine_admin_menu\":\"0\",\"max_list_count\":\"10000\"}','',NULL,NULL,0,0,NULL),
(248,0,'PKG_REGULARLABS','package','pkg_regularlabs','','',0,1,1,0,0,'{\"name\":\"PKG_REGULARLABS\",\"type\":\"package\",\"creationDate\":\"March 2025\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2025 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/regularlabs.com\",\"version\":\"25.3.16992\",\"description\":\"\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"pkg_regularlabs\"}','{}','',NULL,NULL,0,0,NULL),
(249,251,'PLG_SYSTEM_SOURCERER','plugin','sourcerer','','system',0,1,1,0,0,'{\"name\":\"PLG_SYSTEM_SOURCERER\",\"type\":\"plugin\",\"creationDate\":\"March 2025\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2025 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/regularlabs.com\",\"version\":\"12.0.2\",\"description\":\"PLG_SYSTEM_SOURCERER_DESC\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"RegularLabs\\\\Plugin\\\\System\\\\Sourcerer\",\"filename\":\"sourcerer\"}','{\"enable_css\":\"1\",\"enable_js\":\"1\",\"enable_php\":\"1\",\"forbidden_php\":\"dl, escapeshellarg, escapeshellcmd, exec, passthru, popen, proc_close, proc_open, shell_exec, symlink, system\",\"forbidden_tags\":\"\",\"@wizard\":\"0\",\"button_text\":\"Code\",\"enable_frontend\":\"1\",\"color_code\":\"1\",\"syntax_word\":\"source\",\"tag_characters\":\"{.}\",\"trim\":\"0\",\"enable_in_head\":\"0\",\"remove_from_search\":\"0\",\"include_path\":\"\\/\",\"tmp_path\":\"\",\"place_comments\":\"1\"}','',NULL,NULL,0,0,''),
(250,251,'PLG_EDITORS-XTD_SOURCERER','plugin','sourcerer','','editors-xtd',0,1,1,0,0,'{\"name\":\"PLG_EDITORS-XTD_SOURCERER\",\"type\":\"plugin\",\"creationDate\":\"March 2025\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2025 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/regularlabs.com\",\"version\":\"12.0.2\",\"description\":\"PLG_EDITORS-XTD_SOURCERER_DESC\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"RegularLabs\\\\Plugin\\\\EditorButton\\\\Sourcerer\",\"filename\":\"sourcerer\"}','[]','',NULL,NULL,0,0,''),
(251,0,'PKG_SOURCERER','package','pkg_sourcerer','','',0,1,1,0,0,'{\"name\":\"PKG_SOURCERER\",\"type\":\"package\",\"creationDate\":\"March 2025\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2025 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/regularlabs.com\",\"version\":\"12.0.2\",\"description\":\"\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"pkg_sourcerer\"}','{}','',NULL,NULL,0,0,NULL),
(254,248,'Regular Labs Library','library','regularlabs','','',0,1,1,0,0,'{\"name\":\"Regular Labs Library\",\"type\":\"library\",\"creationDate\":\"March 2025\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2025 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/regularlabs.com\",\"version\":\"25.3.16992\",\"description\":\"Regular Labs Library - used by Regular Labs extensions\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"RegularLabs\\\\Library\",\"filename\":\"regularlabs\"}','{}','',NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `aq6ko_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_fields`
--

DROP TABLE IF EXISTS `aq6ko_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `default_value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `only_use_in_subform` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `fieldparams` mediumtext NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_fields`
--

LOCK TABLES `aq6ko_fields` WRITE;
/*!40000 ALTER TABLE `aq6ko_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_fields_categories`
--

DROP TABLE IF EXISTS `aq6ko_fields_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_fields_categories`
--

LOCK TABLES `aq6ko_fields_categories` WRITE;
/*!40000 ALTER TABLE `aq6ko_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_fields_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_fields_groups`
--

DROP TABLE IF EXISTS `aq6ko_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_fields_groups`
--

LOCK TABLES `aq6ko_fields_groups` WRITE;
/*!40000 ALTER TABLE `aq6ko_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_fields_values`
--

DROP TABLE IF EXISTS `aq6ko_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` mediumtext DEFAULT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_fields_values`
--

LOCK TABLES `aq6ko_fields_values` WRITE;
/*!40000 ALTER TABLE `aq6ko_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_fields_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_finder_filters`
--

DROP TABLE IF EXISTS `aq6ko_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int(10) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `params` mediumtext DEFAULT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_finder_filters`
--

LOCK TABLES `aq6ko_finder_filters` WRITE;
/*!40000 ALTER TABLE `aq6ko_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_finder_links`
--

DROP TABLE IF EXISTS `aq6ko_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(400) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `state` int(11) NOT NULL DEFAULT 1,
  `access` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double unsigned NOT NULL DEFAULT 0,
  `sale_price` double unsigned NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob DEFAULT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_language` (`language`),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_finder_links`
--

LOCK TABLES `aq6ko_finder_links` WRITE;
/*!40000 ALTER TABLE `aq6ko_finder_links` DISABLE KEYS */;
INSERT INTO `aq6ko_finder_links` VALUES
(1,'index.php?option=com_content&view=article&id=1','index.php?option=com_content&view=article&id=1:live-chat&catid=2','Live Chat',' ','2025-04-26 15:53:49','843a604035f78e0aa8c4898e24737e07',1,1,1,'*','2025-04-23 13:39:31',NULL,'2025-04-23 13:39:31',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:1:\" \";i:3;a:25:{s:2:\"id\";i:1;s:5:\"alias\";s:9:\"live chat\";s:7:\"summary\";s:325:\"<div class=\"joomla-chat-container\" style=\"max-width: 900px; margin: 0 auto; padding: 20px;\">\r\n    <iframe src=\"http://74.225.221.36:30090\" width=\"100%\" height=\"800\" frameborder=\"0\" scrolling=\"auto\" style=\"border: none; width: 100%; min-height: 800px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);\"></iframe>\r\n</div>\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:173:\"{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}\";s:5:\"catid\";i:2;s:10:\"created_by\";i:772;s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2025-04-26 15:53:49\";s:11:\"modified_by\";i:772;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:6:\"robots\";s:0:\"\";s:6:\"author\";s:0:\"\";s:6:\"rights\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:9;s:8:\"ordering\";i:2;s:8:\"category\";s:13:\"Uncategorised\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:11:\"1:live-chat\";s:7:\"catslug\";s:15:\"2:uncategorised\";s:6:\"author\";s:14:\"Antonio Heasca\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2025-04-23 13:39:31\";i:10;N;i:11;s:64:\"index.php?option=com_content&view=article&id=1:live-chat&catid=2\";i:12;N;i:13;s:19:\"2025-04-23 13:39:31\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:14:\"Antonio Heasca\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:13:\"Uncategorised\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:7;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}}i:16;s:9:\"Live Chat\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=1\";}'),
(2,'index.php?option=com_content&view=article&id=2','index.php?option=com_content&view=article&id=2:pizzashop&catid=2','PizzaShop','','2025-04-28 17:19:14','9cbbbd84fda7347ef34aa04f89271b39',1,0,1,'*','2025-04-23 13:40:11',NULL,'2025-04-23 13:40:11',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:25:{s:2:\"id\";i:2;s:5:\"alias\";s:9:\"pizzashop\";s:7:\"summary\";s:0:\"\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:173:\"{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}\";s:5:\"catid\";i:2;s:10:\"created_by\";i:772;s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2025-04-28 17:19:14\";s:11:\"modified_by\";i:772;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:6:\"robots\";s:0:\"\";s:6:\"author\";s:0:\"\";s:6:\"rights\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:17;s:8:\"ordering\";i:1;s:8:\"category\";s:13:\"Uncategorised\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:11:\"2:pizzashop\";s:7:\"catslug\";s:15:\"2:uncategorised\";s:6:\"author\";s:14:\"Antonio Heasca\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2025-04-23 13:40:11\";i:10;N;i:11;s:64:\"index.php?option=com_content&view=article&id=2:pizzashop&catid=2\";i:12;N;i:13;s:19:\"2025-04-23 13:40:11\";i:14;i:0;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":5:{s:5:\"title\";s:14:\"Antonio Heasca\";s:5:\"state\";i:0;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:13:\"Uncategorised\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:7;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}}i:16;s:9:\"PizzaShop\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=2\";}'),
(3,'index.php?option=com_content&view=article&id=3','index.php?option=com_content&view=article&id=3:ia&catid=2','IA',' ','2025-04-26 11:46:32','5ece92650ec66f6a5caa7f936edc93f5',1,1,1,'*','2025-04-24 18:01:20',NULL,'2025-04-24 18:01:20',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:1:\" \";i:3;a:25:{s:2:\"id\";i:3;s:5:\"alias\";s:2:\"ia\";s:7:\"summary\";s:328:\"<iframe src=\"http://74.225.221.36:30086\" \r\n        width=\"100%\" \r\n        height=\"900\" \r\n        frameborder=\"0\" \r\n        scrolling=\"auto\" \r\n        style=\"border: none; width: 100%; min-height: 900px; \r\n               background: #f8f9fa; border-radius: 8px; \r\n               box-shadow: 0 4px 20px rgba(0,0,0,0.1);\">\r\n</iframe>\r\n\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:173:\"{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}\";s:5:\"catid\";i:2;s:10:\"created_by\";i:772;s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2025-04-26 11:46:32\";s:11:\"modified_by\";i:772;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:6:\"robots\";s:0:\"\";s:6:\"author\";s:0:\"\";s:6:\"rights\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:3;s:8:\"ordering\";i:0;s:8:\"category\";s:13:\"Uncategorised\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:4:\"3:ia\";s:7:\"catslug\";s:15:\"2:uncategorised\";s:6:\"author\";s:14:\"Antonio Heasca\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2025-04-24 18:01:20\";i:10;N;i:11;s:57:\"index.php?option=com_content&view=article&id=3:ia&catid=2\";i:12;N;i:13;s:19:\"2025-04-24 18:01:20\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:14:\"Antonio Heasca\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:13:\"Uncategorised\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:7;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}}i:16;s:2:\"IA\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=3\";}'),
(4,'index.php?option=com_content&view=article&id=4','index.php?option=com_content&view=article&id=4:pizzashop-2&catid=2','PizzaShop',' Bine ai venit la Pizzeria Antonio! ','2025-04-28 17:49:47','ecc64fb9cd6641787393195c05842b70',1,1,1,'*','2025-04-28 17:22:17',NULL,'2025-04-28 17:22:17',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:36:\" Bine ai venit la Pizzeria Antonio! \";i:3;a:25:{s:2:\"id\";i:4;s:5:\"alias\";s:11:\"pizzashop 2\";s:7:\"summary\";s:415:\"<style>\r\n    .welcome-message {\r\n        font-size: 2em;\r\n        font-weight: bold;\r\n        color: #FF6347; /* culoare roșie */\r\n        text-align: center;\r\n        margin-bottom: 20px;\r\n    }\r\n\r\n    .pizza-menu {\r\n        text-align: center;\r\n        margin-top: 20px;\r\n    }\r\n</style>\r\n\r\n<div class=\"welcome-message\">\r\n    Bine ai venit la Pizzeria Antonio!\r\n</div>\r\n\r\n<div class=\"pizza-menu\">\r\n    \r\n</div>\r\n\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:173:\"{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}\";s:5:\"catid\";i:2;s:10:\"created_by\";i:772;s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2025-04-28 17:49:47\";s:11:\"modified_by\";i:772;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:6:\"robots\";s:0:\"\";s:6:\"author\";s:0:\"\";s:6:\"rights\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:15;s:8:\"ordering\";i:0;s:8:\"category\";s:13:\"Uncategorised\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:13:\"4:pizzashop-2\";s:7:\"catslug\";s:15:\"2:uncategorised\";s:6:\"author\";s:14:\"Antonio Heasca\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2025-04-28 17:22:17\";i:10;N;i:11;s:66:\"index.php?option=com_content&view=article&id=4:pizzashop-2&catid=2\";i:12;N;i:13;s:19:\"2025-04-28 17:22:17\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:14:\"Antonio Heasca\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:13:\"Uncategorised\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:7;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}}i:16;s:9:\"PizzaShop\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=4\";}');
/*!40000 ALTER TABLE `aq6ko_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_finder_links_terms`
--

DROP TABLE IF EXISTS `aq6ko_finder_links_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_finder_links_terms` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_finder_links_terms`
--

LOCK TABLES `aq6ko_finder_links_terms` WRITE;
/*!40000 ALTER TABLE `aq6ko_finder_links_terms` DISABLE KEYS */;
INSERT INTO `aq6ko_finder_links_terms` VALUES
(1,1,0.17),
(1,2,0.56004),
(2,2,0.56004),
(3,2,0.56004),
(4,2,0.88673),
(1,3,0.98679),
(1,4,0.48),
(2,4,0.48),
(3,4,0.48),
(4,4,0.48),
(1,5,0.98679),
(2,11,0.17),
(4,11,0.2),
(4,32,0.09331),
(2,44,2.22),
(4,44,2.22),
(3,53,0.17),
(3,54,0.49321),
(4,152,0.17),
(4,154,0.09331),
(4,155,0.18669),
(4,156,0.37331),
(4,157,0.23331);
/*!40000 ALTER TABLE `aq6ko_finder_links_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_finder_logging`
--

DROP TABLE IF EXISTS `aq6ko_finder_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_finder_logging` (
  `searchterm` varchar(255) NOT NULL DEFAULT '',
  `md5sum` varchar(32) NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 1,
  `results` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5sum`),
  KEY `searchterm` (`searchterm`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_finder_logging`
--

LOCK TABLES `aq6ko_finder_logging` WRITE;
/*!40000 ALTER TABLE `aq6ko_finder_logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_finder_logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_finder_taxonomy`
--

DROP TABLE IF EXISTS `aq6ko_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) NOT NULL DEFAULT '',
  `state` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `access` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_access` (`access`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_level` (`level`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_finder_taxonomy`
--

LOCK TABLES `aq6ko_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `aq6ko_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `aq6ko_finder_taxonomy` VALUES
(1,0,0,17,0,'','ROOT','root',1,1,'*'),
(2,1,1,4,1,'type','Type','type',1,1,'*'),
(3,2,2,3,2,'type/article','Article','article',1,1,'*'),
(4,1,5,8,1,'author','Author','author',1,1,'*'),
(5,4,6,7,2,'author/antonio-heasca','Antonio Heasca','antonio-heasca',1,1,'*'),
(6,1,9,12,1,'category','Category','category',1,1,'*'),
(7,6,10,11,2,'category/uncategorised','Uncategorised','uncategorised',1,1,'*'),
(8,1,13,16,1,'language','Language','language',1,1,'*'),
(9,8,14,15,2,'language/4086f6336014c75439f87cbda42d9c51','*','4086f6336014c75439f87cbda42d9c51',1,1,'*');
/*!40000 ALTER TABLE `aq6ko_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `aq6ko_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_finder_taxonomy_map`
--

LOCK TABLES `aq6ko_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `aq6ko_finder_taxonomy_map` DISABLE KEYS */;
INSERT INTO `aq6ko_finder_taxonomy_map` VALUES
(1,3),
(1,5),
(1,7),
(1,9),
(2,3),
(2,7),
(2,9),
(3,3),
(3,5),
(3,7),
(3,9),
(4,3),
(4,5),
(4,7),
(4,9);
/*!40000 ALTER TABLE `aq6ko_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_finder_terms`
--

DROP TABLE IF EXISTS `aq6ko_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `weight` float unsigned NOT NULL DEFAULT 0,
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_stem` (`stem`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_finder_terms`
--

LOCK TABLES `aq6ko_finder_terms` WRITE;
/*!40000 ALTER TABLE `aq6ko_finder_terms` DISABLE KEYS */;
INSERT INTO `aq6ko_finder_terms` VALUES
(1,'1','1',0,0,0.1,'',9,'*'),
(2,'antonio','antonio',0,0,0.4667,'A535',44,'*'),
(3,'chat','chat',0,0,0.2667,'C300',9,'*'),
(4,'heasca','heasca',0,0,0.4,'H200',44,'*'),
(5,'live','live',0,0,0.2667,'L100',9,'*'),
(8,'00','00',0,0,0.2,'',4,'*'),
(9,'0712','0712',0,0,0.4,'',4,'*'),
(10,'10','10',0,0,0.2,'',4,'*'),
(11,'2','2',0,0,0.1,'',32,'*'),
(12,'20','20',0,0,0.2,'',4,'*'),
(13,'22','22',0,0,0.2,'',4,'*'),
(14,'23','23',0,0,0.2,'',4,'*'),
(15,'24','24',0,0,0.2,'',4,'*'),
(16,'25','25',0,0,0.2,'',4,'*'),
(17,'26','26',0,0,0.2,'',1,'*'),
(18,'345','345',0,0,0.3,'',4,'*'),
(19,'678','678',0,0,0.3,'',4,'*'),
(20,'acasă','acasă',0,0,0.3333,'A200',4,'*'),
(21,'alegeți','alegeți',0,0,0.4667,'A420',1,'*'),
(22,'bună','bună',0,0,0.2667,'B500',4,'*'),
(23,'cea','cea',0,0,0.2,'C000',4,'*'),
(24,'comenzi','comenzi',0,0,0.4667,'C520',1,'*'),
(25,'că','că',0,0,0.1333,'C000',1,'*'),
(26,'din','din',0,0,0.2,'D500',4,'*'),
(27,'direct','direct',0,0,0.4,'D623',1,'*'),
(28,'duminică','duminică',0,0,0.5333,'D520',4,'*'),
(29,'e','e',0,0,0.0667,'E000',1,'*'),
(30,'formaggi','formaggi',0,0,0.5333,'F652',9,'*'),
(31,'funghi','funghi',0,0,0.4,'F520',1,'*'),
(32,'la','la',0,0,0.1333,'L000',12,'*'),
(33,'livrată','livrată',0,0,0.4667,'L163',4,'*'),
(34,'luni','luni',0,0,0.2667,'L500',4,'*'),
(35,'mai','mai',0,0,0.2,'M000',4,'*'),
(36,'margherita','margherita',0,0,0.6667,'M6263',9,'*'),
(37,'meniul','meniul',0,0,0.4,'M400',4,'*'),
(38,'mulțumim','mulțumim',0,0,0.5333,'M450',1,'*'),
(39,'ne','ne',0,0,0.1333,'N000',1,'*'),
(40,'nostru','nostru',0,0,0.4,'N236',4,'*'),
(41,'oraș','oraș',0,0,0.2667,'O600',4,'*'),
(42,'pepperoni','pepperoni',0,0,0.6,'P650',9,'*'),
(43,'pizza','pizza',0,0,0.3333,'P200',9,'*'),
(44,'pizzashop','pizzashop',0,0,0.6,'P210',32,'*'),
(45,'poftă','poftă',0,0,0.3333,'P300',1,'*'),
(46,'program','program',0,0,0.4667,'P6265',4,'*'),
(47,'prosciutto','prosciutto',0,0,0.6667,'P623',1,'*'),
(48,'quattro','quattro',0,0,0.4667,'Q360',9,'*'),
(49,'ron','ron',0,0,0.2,'R500',4,'*'),
(50,'tine','tine',0,0,0.2667,'T500',4,'*'),
(51,'vegetariana','vegetariana',0,0,0.7333,'V2365',4,'*'),
(52,'️','️',0,0,0.0667,'️000',1,'*'),
(53,'3','3',0,0,0.1,'',3,'*'),
(54,'ia','ia',0,0,0.1333,'I000',3,'*'),
(55,'a','a',0,0,0.0667,'A000',3,'*'),
(56,'acum','acum',0,0,0.2667,'A250',3,'*'),
(57,'autentic','autentic',0,0,0.5333,'A3532',3,'*'),
(58,'comandă','comandă',0,0,0.4667,'C530',3,'*'),
(59,'contact','contact',0,0,0.4667,'C5323',8,'*'),
(60,'crea','crea',0,0,0.2667,'C600',3,'*'),
(61,'culinară','culinară',0,0,0.5333,'C456',3,'*'),
(62,'de','de',0,0,0.1333,'D000',3,'*'),
(63,'despre','despre',0,0,0.4,'D216',3,'*'),
(64,'doar','doar',0,0,0.2667,'D600',3,'*'),
(65,'experiență','experiență',0,0,0.6667,'E2165',3,'*'),
(66,'familie','familie',0,0,0.4667,'F540',3,'*'),
(67,'folosim','folosim',0,0,0.4667,'F425',3,'*'),
(68,'gustul','gustul',0,0,0.4,'G340',3,'*'),
(69,'ingrediente','ingrediente',0,0,0.7333,'I526353',3,'*'),
(70,'italian','italian',0,0,0.4667,'I345',3,'*'),
(71,'noi','noi',0,0,0.2,'N000',3,'*'),
(72,'o','o',0,0,0.0667,'O000',3,'*'),
(73,'pasionați','pasionați',0,0,0.6,'P250',3,'*'),
(74,'pentru','pentru',0,0,0.4,'P536',3,'*'),
(75,'pizzerie','pizzerie',0,0,0.5333,'P260',3,'*'),
(76,'proaspete','proaspete',0,0,0.6,'P6213',3,'*'),
(77,'rețete','rețete',0,0,0.4,'R300',3,'*'),
(78,'suntem','suntem',0,0,0.4,'S535',3,'*'),
(79,'tradiționale','tradiționale',0,0,0.8,'T6354',3,'*'),
(80,'vezi','vezi',0,0,0.2667,'V200',3,'*'),
(81,'și','și',0,0,0.1333,'ș000',3,'*'),
(82,'delicious','delicious',0,0,0.6,'D420',8,'*'),
(83,'fast','fast',0,0,0.2667,'F230',8,'*'),
(84,'fresh','fresh',0,0,0.3333,'F620',8,'*'),
(85,'menu','menu',0,0,0.2667,'M000',8,'*'),
(86,'view','view',0,0,0.2667,'V000',3,'*'),
(89,'+40','+40',0,0,0.3,'',5,'*'),
(90,'123','123',0,0,0.3,'',5,'*'),
(91,'22.99','22.99',0,0,0.5,'',5,'*'),
(92,'24.00','24.00',0,0,0.5,'',5,'*'),
(93,'26.99','26.99',0,0,0.5,'',5,'*'),
(94,'28.50','28.50',0,0,0.5,'',5,'*'),
(95,'456','456',0,0,0.3,'',5,'*'),
(96,'789','789',0,0,0.3,'',5,'*'),
(97,'and','and',0,0,0.2,'A530',5,'*'),
(98,'basil','basil',0,0,0.3333,'B240',5,'*'),
(99,'best','best',0,0,0.2667,'B230',5,'*'),
(100,'brie','brie',0,0,0.2667,'B600',5,'*'),
(101,'cheeses','cheeses',0,0,0.4667,'C000',5,'*'),
(102,'com','com',0,0,0.2,'C500',5,'*'),
(103,'example','example',0,0,0.4667,'E2514',5,'*'),
(104,'four','four',0,0,0.2667,'F600',5,'*'),
(105,'gorgonzola','gorgonzola',0,0,0.6667,'G62524',5,'*'),
(106,'in','in',0,0,0.1333,'I500',5,'*'),
(107,'lei','lei',0,0,0.2,'L000',5,'*'),
(108,'mozzarella','mozzarella',0,0,0.6667,'M264',5,'*'),
(109,'now','now',0,0,0.2,'N000',5,'*'),
(110,'order','order',0,0,0.3333,'O636',5,'*'),
(111,'our','our',0,0,0.2,'O600',5,'*'),
(112,'parmesan','parmesan',0,0,0.5333,'P6525',5,'*'),
(113,'sauce','sauce',0,0,0.3333,'S000',5,'*'),
(114,'slices','slices',0,0,0.4,'S420',5,'*'),
(115,'the','the',0,0,0.2,'T000',5,'*'),
(116,'to','to',0,0,0.1333,'T000',5,'*'),
(117,'tomato','tomato',0,0,0.4,'T530',5,'*'),
(118,'town','town',0,0,0.2667,'T500',5,'*'),
(119,'us','us',0,0,0.1333,'U200',5,'*'),
(120,'vegetables','vegetables',0,0,0.6667,'V23142',5,'*'),
(121,'vegetarian','vegetarian',0,0,0.6667,'V2365',5,'*'),
(122,'welcome','welcome',0,0,0.4667,'W425',5,'*'),
(152,'4','4',0,0,0.1,'',15,'*'),
(153,'source','source',0,0,0.4,'S620',7,'*'),
(154,'ai','ai',0,0,0.1333,'A000',8,'*'),
(155,'bine','bine',0,0,0.2667,'B500',8,'*'),
(156,'pizzeria','pizzeria',0,0,0.5333,'P260',8,'*'),
(157,'venit','venit',0,0,0.3333,'V530',8,'*'),
(161,'.pizza-menu','.pizza-menu',0,0,0.7333,'P250',2,'*'),
(162,'.welcome-message','.welcome-message',0,0,1,'W4252',2,'*'),
(163,'20px','20px',0,0,0.2667,'P200',2,'*'),
(164,'2em','2em',0,0,0.2,'E500',2,'*'),
(165,'bold','bold',0,0,0.2667,'B430',2,'*'),
(166,'center','center',0,0,0.4,'C536',2,'*'),
(167,'color','color',0,0,0.3333,'C460',2,'*'),
(168,'culoare','culoare',0,0,0.4667,'C460',2,'*'),
(169,'ff6347','ff6347',0,0,0.4,'F000',2,'*'),
(170,'font-size','font-size',0,0,0.6,'F532',2,'*'),
(171,'font-weight','font-weight',0,0,0.7333,'F5323',2,'*'),
(172,'margin-bottom','margin-bottom',0,0,0.8667,'M625135',2,'*'),
(173,'margin-top','margin-top',0,0,0.6667,'M62531',2,'*'),
(174,'roșie','roșie',0,0,0.3333,'R000',2,'*'),
(175,'text-align','text-align',0,0,0.6667,'T23425',2,'*');
/*!40000 ALTER TABLE `aq6ko_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_finder_terms_common`
--

DROP TABLE IF EXISTS `aq6ko_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `custom` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_finder_terms_common`
--

LOCK TABLES `aq6ko_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `aq6ko_finder_terms_common` DISABLE KEYS */;
INSERT INTO `aq6ko_finder_terms_common` VALUES
('a','en',0),
('about','en',0),
('above','en',0),
('after','en',0),
('again','en',0),
('against','en',0),
('all','en',0),
('am','en',0),
('an','en',0),
('and','en',0),
('any','en',0),
('are','en',0),
('aren\'t','en',0),
('as','en',0),
('at','en',0),
('be','en',0),
('because','en',0),
('been','en',0),
('before','en',0),
('being','en',0),
('below','en',0),
('between','en',0),
('both','en',0),
('but','en',0),
('by','en',0),
('can\'t','en',0),
('cannot','en',0),
('could','en',0),
('couldn\'t','en',0),
('did','en',0),
('didn\'t','en',0),
('do','en',0),
('does','en',0),
('doesn\'t','en',0),
('doing','en',0),
('don\'t','en',0),
('down','en',0),
('during','en',0),
('each','en',0),
('few','en',0),
('for','en',0),
('from','en',0),
('further','en',0),
('had','en',0),
('hadn\'t','en',0),
('has','en',0),
('hasn\'t','en',0),
('have','en',0),
('haven\'t','en',0),
('having','en',0),
('he','en',0),
('he\'d','en',0),
('he\'ll','en',0),
('he\'s','en',0),
('her','en',0),
('here','en',0),
('here\'s','en',0),
('hers','en',0),
('herself','en',0),
('him','en',0),
('himself','en',0),
('his','en',0),
('how','en',0),
('how\'s','en',0),
('i','en',0),
('i\'d','en',0),
('i\'ll','en',0),
('i\'m','en',0),
('i\'ve','en',0),
('if','en',0),
('in','en',0),
('into','en',0),
('is','en',0),
('isn\'t','en',0),
('it','en',0),
('it\'s','en',0),
('its','en',0),
('itself','en',0),
('let\'s','en',0),
('me','en',0),
('more','en',0),
('most','en',0),
('mustn\'t','en',0),
('my','en',0),
('myself','en',0),
('no','en',0),
('nor','en',0),
('not','en',0),
('of','en',0),
('off','en',0),
('on','en',0),
('once','en',0),
('only','en',0),
('or','en',0),
('other','en',0),
('ought','en',0),
('our','en',0),
('ours','en',0),
('ourselves','en',0),
('out','en',0),
('over','en',0),
('own','en',0),
('same','en',0),
('shan\'t','en',0),
('she','en',0),
('she\'d','en',0),
('she\'ll','en',0),
('she\'s','en',0),
('should','en',0),
('shouldn\'t','en',0),
('so','en',0),
('some','en',0),
('such','en',0),
('than','en',0),
('that','en',0),
('that\'s','en',0),
('the','en',0),
('their','en',0),
('theirs','en',0),
('them','en',0),
('themselves','en',0),
('then','en',0),
('there','en',0),
('there\'s','en',0),
('these','en',0),
('they','en',0),
('they\'d','en',0),
('they\'ll','en',0),
('they\'re','en',0),
('they\'ve','en',0),
('this','en',0),
('those','en',0),
('through','en',0),
('to','en',0),
('too','en',0),
('under','en',0),
('until','en',0),
('up','en',0),
('very','en',0),
('was','en',0),
('wasn\'t','en',0),
('we','en',0),
('we\'d','en',0),
('we\'ll','en',0),
('we\'re','en',0),
('we\'ve','en',0),
('were','en',0),
('weren\'t','en',0),
('what','en',0),
('what\'s','en',0),
('when','en',0),
('when\'s','en',0),
('where','en',0),
('where\'s','en',0),
('which','en',0),
('while','en',0),
('who','en',0),
('who\'s','en',0),
('whom','en',0),
('why','en',0),
('why\'s','en',0),
('with','en',0),
('won\'t','en',0),
('would','en',0),
('wouldn\'t','en',0),
('you','en',0),
('you\'d','en',0),
('you\'ll','en',0),
('you\'re','en',0),
('you\'ve','en',0),
('your','en',0),
('yours','en',0),
('yourself','en',0),
('yourselves','en',0);
/*!40000 ALTER TABLE `aq6ko_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_finder_tokens`
--

DROP TABLE IF EXISTS `aq6ko_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `weight` float unsigned NOT NULL DEFAULT 1,
  `context` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `language` char(7) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_stem` (`stem`),
  KEY `idx_context` (`context`),
  KEY `idx_language` (`language`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_finder_tokens`
--

LOCK TABLES `aq6ko_finder_tokens` WRITE;
/*!40000 ALTER TABLE `aq6ko_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `aq6ko_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `term_weight` float unsigned NOT NULL DEFAULT 0,
  `context` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `context_weight` float unsigned NOT NULL DEFAULT 0,
  `total_weight` float unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_finder_tokens_aggregate`
--

LOCK TABLES `aq6ko_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `aq6ko_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_finder_types`
--

DROP TABLE IF EXISTS `aq6ko_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_finder_types`
--

LOCK TABLES `aq6ko_finder_types` WRITE;
/*!40000 ALTER TABLE `aq6ko_finder_types` DISABLE KEYS */;
INSERT INTO `aq6ko_finder_types` VALUES
(1,'Category',''),
(2,'Contact',''),
(3,'Article',''),
(4,'News Feed',''),
(5,'Tag','');
/*!40000 ALTER TABLE `aq6ko_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_guidedtour_steps`
--

DROP TABLE IF EXISTS `aq6ko_guidedtour_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_guidedtour_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `interactive_type` int(11) NOT NULL DEFAULT 1,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `params` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tour` (`tour_id`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_guidedtour_steps`
--

LOCK TABLES `aq6ko_guidedtour_steps` WRITE;
/*!40000 ALTER TABLE `aq6ko_guidedtour_steps` DISABLE KEYS */;
INSERT INTO `aq6ko_guidedtour_steps` VALUES
(1,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION',1,'bottom','.button-new',2,1,'administrator/index.php?option=com_guidedtours&view=tours','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(2,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION',2,'bottom','#jform_title',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(3,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION',3,'top','#jform_url',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(4,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION',4,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(5,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION',5,'top','joomla-field-fancy-select .choices',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(6,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_DESCRIPTION',6,'bottom','#jform_autostart0',2,3,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(7,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION',7,'top','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(8,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION',8,'bottom','',0,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(9,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION',9,'top','#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn',2,1,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(10,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION',10,'bottom','.button-new',2,1,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(11,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION',11,'bottom','#jform_title',2,2,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(12,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION',12,'bottom','#jform_description,#jform_description_ifr',2,3,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(13,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION',13,'bottom','#jform_published',2,3,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(14,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION',14,'top','#jform_position',2,3,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(15,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION',15,'top','#jform_target',2,3,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(16,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION',16,'top','#jform_type',2,3,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(17,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION',17,'bottom','#save-group-children-save .button-save',2,1,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(18,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION',18,'bottom','',0,1,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(19,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION',19,'bottom','.button-new',2,1,'administrator/index.php?option=com_content&view=articles','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(20,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION',20,'bottom','#jform_title',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(21,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION',21,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(22,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION',22,'bottom','#jform_articletext,#jform_articletext_ifr',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(23,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION',23,'bottom','#jform_state',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(24,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION',24,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(25,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION',25,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(26,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION',26,'bottom','#jform_access',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(27,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION',27,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(28,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION',28,'top','#jform_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(29,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION',29,'top','#jform_version_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(30,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION',30,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_content&view=article&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(31,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION',31,'bottom','',0,1,'administrator/index.php?option=com_content&view=article&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(32,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION',32,'bottom','.button-new',2,1,'administrator/index.php?option=com_categories&view=categories&extension=com_content','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(33,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION',33,'bottom','#jform_title',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(34,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION',34,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(35,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION',35,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(36,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION',36,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(37,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION',37,'bottom','#jform_published',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(38,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION',38,'bottom','#jform_access',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(39,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION',39,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(40,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION',40,'top','#jform_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(41,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION',41,'top','#jform_version_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(42,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION',42,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(43,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION',43,'bottom','',0,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(44,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION',44,'bottom','.button-new',2,1,'administrator/index.php?option=com_menus&view=menus','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(45,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION',45,'bottom','#jform_title',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(46,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION',46,'top','#jform_menutype',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(47,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION',47,'top','#jform_menudescription',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(48,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION',48,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(49,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION',49,'bottom','',0,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(50,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION',50,'bottom','.button-new',2,1,'administrator/index.php?option=com_tags&view=tags','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(51,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION',51,'bottom','#jform_title',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(52,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION',52,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(53,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION',53,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(54,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION',54,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(55,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION',55,'bottom','#jform_published',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(56,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION',56,'bottom','#jform_access',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(57,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION',57,'top','#jform_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(58,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION',58,'top','#jform_version_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(59,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION',59,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(60,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION',60,'bottom','',0,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(61,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION',61,'bottom','.button-new',2,1,'administrator/index.php?option=com_banners&view=banners','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(62,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION',62,'bottom','#jform_name',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(63,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION',63,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(64,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION',64,'bottom','.col-lg-9',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(65,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION',65,'bottom','#jform_state',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(66,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION',66,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(67,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION',67,'bottom','#jform_sticky1',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(68,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION',68,'top','#jform_version_note',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(69,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION',69,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(70,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION',70,'bottom','',0,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(71,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION',71,'bottom','.button-new',2,1,'administrator/index.php?option=com_contact&view=contacts','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(72,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION',72,'bottom','#jform_name',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(73,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION',73,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(74,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION',74,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(75,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION',75,'bottom','#jform_published',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(76,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION',76,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(77,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION',77,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(78,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION',78,'bottom','#jform_access',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(79,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION',79,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(80,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION',80,'top','#jform_version_note',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(81,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION',81,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(82,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION',82,'bottom','',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(83,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION',83,'bottom','.button-new',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeeds','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(84,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION',84,'bottom','#jform_name',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(85,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION',85,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(86,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION',86,'bottom','#jform_link',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(87,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION',87,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(88,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION',88,'bottom','#jform_published',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(89,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION',89,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(90,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION',90,'bottom','#jform_access',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(91,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION',91,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(92,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION',92,'top','#jform_version_note',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(93,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION',93,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(94,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION',94,'bottom','',0,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(95,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION',95,'bottom','.button-new',2,1,'administrator/index.php?option=com_finder&view=filters','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(96,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION',96,'bottom','#jform_title',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(97,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION',97,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(98,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION',98,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(99,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION',99,'bottom','#jform_state',2,3,'administrator/index.php?option=com_finder&view=filter&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(100,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION',100,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(101,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION',101,'bottom','',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(102,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION',102,'bottom','.button-new',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(103,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION',103,'bottom','#jform_name',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(104,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION',104,'bottom','#jform_username',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(105,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION',105,'bottom','#jform_password',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(106,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION',106,'bottom','#jform_password2',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(107,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION',107,'bottom','#jform_email',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(108,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION',108,'top','#jform_sendEmail0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(109,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION',109,'top','#jform_block0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(110,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION',110,'top','#jform_requireReset0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(111,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION',111,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(112,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION',112,'bottom','',0,1,'administrator/index.php?option=com_users&view=user&layout=edit','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(113,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_DESCRIPTION',113,'right','#sidebarmenu',0,1,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(114,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_DESCRIPTION',114,'center','',0,1,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(115,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_DESCRIPTION',115,'left','.quickicons-for-update_quickicon .card',0,1,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(116,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_DESCRIPTION',116,'bottom','#header',0,1,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL),
(117,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_DESCRIPTION',117,'right','#sidebarmenu nav > ul:first-of-type > li:last-child',0,1,'','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,'*','',NULL);
/*!40000 ALTER TABLE `aq6ko_guidedtour_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_guidedtours`
--

DROP TABLE IF EXISTS `aq6ko_guidedtours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_guidedtours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `extensions` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `autostart` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`),
  KEY `idx_uid` (`uid`(191))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_guidedtours`
--

LOCK TABLES `aq6ko_guidedtours` WRITE;
/*!40000 ALTER TABLE `aq6ko_guidedtours` DISABLE KEYS */;
INSERT INTO `aq6ko_guidedtours` VALUES
(1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE','joomla-guidedtours','COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION',1,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,1,'*','',1,0),
(2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE','joomla-guidedtoursteps','COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION',2,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,1,'*','',1,0),
(3,'COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE','joomla-articles','COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION',3,'[\"com_content\",\"com_categories\"]','administrator/index.php?option=com_content&view=articles','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,1,'*','',1,0),
(4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE','joomla-categories','COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION',4,'[\"com_content\",\"com_categories\"]','administrator/index.php?option=com_categories&view=categories&extension=com_content','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,1,'*','',1,0),
(5,'COM_GUIDEDTOURS_TOUR_MENUS_TITLE','joomla-menus','COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION',5,'[\"com_menus\"]','administrator/index.php?option=com_menus&view=menus','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,1,'*','',1,0),
(6,'COM_GUIDEDTOURS_TOUR_TAGS_TITLE','joomla-tags','COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION',6,'[\"com_tags\"]','administrator/index.php?option=com_tags&view=tags','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,1,'*','',1,0),
(7,'COM_GUIDEDTOURS_TOUR_BANNERS_TITLE','joomla-banners','COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION',7,'[\"com_banners\"]','administrator/index.php?option=com_banners&view=banners','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,1,'*','',1,0),
(8,'COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE','joomla-contacts','COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION',8,'[\"com_contact\"]','administrator/index.php?option=com_contact&view=contacts','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,1,'*','',1,0),
(9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE','joomla-newsfeeds','COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION',9,'[\"com_newsfeeds\"]','administrator/index.php?option=com_newsfeeds&view=newsfeeds','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,1,'*','',1,0),
(10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE','joomla-smartsearch','COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION',10,'[\"com_finder\"]','administrator/index.php?option=com_finder&view=filters','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,1,'*','',1,0),
(11,'COM_GUIDEDTOURS_TOUR_USERS_TITLE','joomla-users','COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION',11,'[\"com_users\"]','administrator/index.php?option=com_users&view=users','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,1,'*','',1,0),
(12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_TITLE','joomla-welcome','COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_DESCRIPTION',12,'[\"com_cpanel\"]','administrator/index.php','2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL,1,'*','',1,1);
/*!40000 ALTER TABLE `aq6ko_guidedtours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_history`
--

DROP TABLE IF EXISTS `aq6ko_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `character_count` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_history`
--

LOCK TABLES `aq6ko_history` WRITE;
/*!40000 ALTER TABLE `aq6ko_history` DISABLE KEYS */;
INSERT INTO `aq6ko_history` VALUES
(1,'com_content.article.1','','2025-04-23 13:39:31',772,1675,'cb8f9f6ef6aa83aef23956d22c0c0e6b22ae7688','{\"id\":1,\"asset_id\":100,\"title\":\"Live Chat\",\"alias\":\"live-chat\",\"introtext\":\"<iframe src=\\\"http:\\/\\/localhost:90\\\" width=\\\"100%\\\" height=\\\"500\\\" frameborder=\\\"0\\\"><\\/iframe>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:39:31\",\"created_by\":772,\"created_by_alias\":\"\",\"modified\":\"2025-04-23 13:39:31\",\"modified_by\":772,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2025-04-23 13:39:31\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(3,'com_content.article.3','','2025-04-24 18:01:20',772,1660,'bd25501e66443ca993e848de9cc6f0f949999f4b','{\"id\":3,\"asset_id\":102,\"title\":\"IA\",\"alias\":\"ia\",\"introtext\":\"<iframe src=\\\"http:\\/\\/localhost:30086\\\" width=\\\"100%\\\" height=\\\"600\\\" frameborder=\\\"0\\\"><\\/iframe>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-24 18:01:20\",\"created_by\":772,\"created_by_alias\":\"\",\"modified\":\"2025-04-24 18:01:20\",\"modified_by\":772,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2025-04-24 18:01:20\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(4,'com_content.article.1','','2025-04-24 18:17:03',772,1696,'d84df044c6136d1257dc684b14db18cc8dac0a6e','{\"id\":\"1\",\"asset_id\":100,\"title\":\"Live Chat\",\"alias\":\"live-chat\",\"introtext\":\"<iframe src=\\\"http:\\/\\/localhost:30090\\\" width=\\\"100%\\\" height=\\\"500\\\" frameborder=\\\"0\\\"><\\/iframe>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:39:31\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-24 18:17:03\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-24 18:16:57\",\"publish_up\":\"2025-04-23 13:39:31\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":2,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":10,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(5,'com_content.article.1','','2025-04-25 19:42:59',772,1827,'83433685f4ca4d95c952811a31038f8febd829eb','{\"id\":\"1\",\"asset_id\":100,\"title\":\"Live Chat\",\"alias\":\"live-chat\",\"introtext\":\"<iframe src=\\\"http:\\/\\/localhost:30090\\\" width=\\\"100%\\\" height=\\\"800\\\" frameborder=\\\"0\\\" scrolling=\\\"auto\\\" style=\\\"border: none; width: 100%; min-height: 800px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);\\\"><\\/iframe>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:39:31\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-25 19:42:59\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-25 19:41:47\",\"publish_up\":\"2025-04-23 13:39:31\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":2,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":35,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(6,'com_content.article.1','','2025-04-25 19:44:50',772,1593,'daf7b6e827bcf4547b112035e4c58fedc0f59206','{\"id\":\"1\",\"asset_id\":100,\"title\":\"Live Chat\",\"alias\":\"live-chat\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:39:31\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-25 19:44:50\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-25 19:44:46\",\"publish_up\":\"2025-04-23 13:39:31\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":2,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":40,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(7,'com_content.article.1','','2025-04-25 19:45:00',772,1942,'ad2f647d8a3d97490ba5c38288ccae234d73b6f0','{\"id\":\"1\",\"asset_id\":100,\"title\":\"Live Chat\",\"alias\":\"live-chat\",\"introtext\":\"<div class=\\\"joomla-chat-container\\\" style=\\\"max-width: 900px; margin: 0 auto; padding: 20px;\\\">\\r\\n    <iframe src=\\\"http:\\/\\/localhost:30090\\\" width=\\\"100%\\\" height=\\\"800\\\" frameborder=\\\"0\\\" scrolling=\\\"auto\\\" style=\\\"border: none; width: 100%; min-height: 800px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);\\\"><\\/iframe>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:39:31\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-25 19:45:00\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-25 19:44:56\",\"publish_up\":\"2025-04-23 13:39:31\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":2,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":41,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(8,'com_content.article.3','','2025-04-26 11:26:19',772,1907,'17388932d4fc44824e5411c3ca88b5cca56280d3','{\"id\":\"3\",\"asset_id\":102,\"title\":\"IA\",\"alias\":\"ia\",\"introtext\":\"<div class=\\\"ia\\\" style=\\\"max-width: 900px; margin: 0 auto; padding: 20px;\\\">\\r\\n    <iframe src=\\\"http:\\/\\/localhost:30086\\\" width=\\\"100%\\\" height=\\\"800\\\" frameborder=\\\"0\\\" scrolling=\\\"auto\\\" style=\\\"border: none; width: 100%; min-height: 800px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);\\\"><\\/iframe>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-24 18:01:20\",\"created_by\":772,\"created_by_alias\":\"\",\"modified\":\"2025-04-26 11:26:19\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-26 11:25:37\",\"publish_up\":\"2025-04-24 18:01:20\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":26,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(9,'com_content.article.3','','2025-04-26 11:46:32',772,1938,'4ae42672131ee9927d32d1328cdb2aa297310c9d','{\"id\":\"3\",\"asset_id\":102,\"title\":\"IA\",\"alias\":\"ia\",\"introtext\":\"<iframe src=\\\"http:\\/\\/localhost:30086\\\" \\r\\n        width=\\\"100%\\\" \\r\\n        height=\\\"900\\\" \\r\\n        frameborder=\\\"0\\\" \\r\\n        scrolling=\\\"auto\\\" \\r\\n        style=\\\"border: none; width: 100%; min-height: 900px; \\r\\n               background: #f8f9fa; border-radius: 8px; \\r\\n               box-shadow: 0 4px 20px rgba(0,0,0,0.1);\\\">\\r\\n<\\/iframe>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-24 18:01:20\",\"created_by\":772,\"created_by_alias\":\"\",\"modified\":\"2025-04-26 11:46:32\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-26 11:44:35\",\"publish_up\":\"2025-04-24 18:01:20\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":44,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(12,'com_content.article.2','','2025-04-26 12:19:10',772,1940,'b7a66a877fc8ea1a6412c07e841af2487018b2af','{\"id\":\"2\",\"asset_id\":101,\"title\":\"PizzaShop\",\"alias\":\"pizzashop\",\"introtext\":\"<div class=\\\"joomla-chat-container\\\" style=\\\"max-width: 900px; margin: 0 auto; padding: 20px;\\\">\\r\\n    <iframe src=\\\"http:\\/\\/localhost:30090\\\" width=\\\"100%\\\" height=\\\"800\\\" frameborder=\\\"0\\\" scrolling=\\\"auto\\\" style=\\\"border: none; width: 100%; min-height: 800px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);\\\"><\\/iframe>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:40:11\",\"created_by\":772,\"created_by_alias\":\"\",\"modified\":\"2025-04-26 12:19:10\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-26 12:19:04\",\"publish_up\":\"2025-04-23 13:40:11\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":1,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":38,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(13,'com_content.article.2','','2025-04-26 12:19:24',772,1939,'6c366011a8453d3c449bd612ff9980f701b00ed8','{\"id\":\"2\",\"asset_id\":101,\"title\":\"PizzaShop\",\"alias\":\"pizzashop\",\"introtext\":\"<div class=\\\"joomla-chat-container\\\" style=\\\"max-width: 900px; margin: 0 auto; padding: 20px;\\\">\\r\\n    <iframe src=\\\"http:\\/\\/localhost:5173\\\" width=\\\"100%\\\" height=\\\"800\\\" frameborder=\\\"0\\\" scrolling=\\\"auto\\\" style=\\\"border: none; width: 100%; min-height: 800px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);\\\"><\\/iframe>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:40:11\",\"created_by\":772,\"created_by_alias\":\"\",\"modified\":\"2025-04-26 12:19:24\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-26 12:19:13\",\"publish_up\":\"2025-04-23 13:40:11\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":1,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":39,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(14,'com_content.article.2','','2025-04-26 15:26:51',772,1978,'238815cc51bd9772fffeb7c3a86abbe2dcd4248e','{\"id\":\"2\",\"asset_id\":101,\"title\":\"PizzaShop\",\"alias\":\"pizzashop\",\"introtext\":\"<h1>PizzaShop<\\/h1>\\r\\n<p>Fresh. Fast. Delicious.<\\/p>\\r\\n\\r\\n<img src=\\\"\\/images\\/pizza.png\\\" alt=\\\"Delicious Pizza\\\" style=\\\"width:100%; max-width:600px; border-radius:8px; margin-top:20px;\\\">\\r\\n\\r\\n<a href=\\\"\\/menu\\\" style=\\\"display:inline-block; margin-top:30px; padding:10px 20px; background-color:#e63946; color:white; border-radius:5px; text-decoration:none;\\\">View Menu<\\/a>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:40:11\",\"created_by\":772,\"created_by_alias\":\"\",\"modified\":\"2025-04-26 15:26:51\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-26 15:26:43\",\"publish_up\":\"2025-04-23 13:40:11\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":1,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":45,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(15,'com_content.article.2','','2025-04-26 15:29:40',772,1979,'a320c54cf0876a0de5b9eda616eda33af58d894d','{\"id\":\"2\",\"asset_id\":101,\"title\":\"PizzaShop\",\"alias\":\"pizzashop\",\"introtext\":\"<h1>PizzaShop<\\/h1>\\r\\n<p>Fresh. Fast. Delicious.<\\/p>\\r\\n\\r\\n<img src=\\\"\\/images\\/pizza.jpeg\\\" alt=\\\"Delicious Pizza\\\" style=\\\"width:100%; max-width:600px; border-radius:8px; margin-top:20px;\\\">\\r\\n\\r\\n<a href=\\\"\\/menu\\\" style=\\\"display:inline-block; margin-top:30px; padding:10px 20px; background-color:#e63946; color:white; border-radius:5px; text-decoration:none;\\\">View Menu<\\/a>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:40:11\",\"created_by\":772,\"created_by_alias\":\"\",\"modified\":\"2025-04-26 15:29:40\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-26 15:26:59\",\"publish_up\":\"2025-04-23 13:40:11\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":1,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":46,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(16,'com_content.article.2','','2025-04-26 16:01:59',772,5845,'8055dc5fe5b03882ee9d1dcdbc9043c9de81806d','{\"id\":\"2\",\"asset_id\":101,\"title\":\"PizzaShop\",\"alias\":\"pizzashop\",\"introtext\":\"<!DOCTYPE html>\\r\\n<html lang=\\\"en\\\">\\r\\n<head>\\r\\n    <meta charset=\\\"UTF-8\\\">\\r\\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\\r\\n    <title>PizzaShop<\\/title>\\r\\n    <style>\\r\\n        body {\\r\\n            font-family: \'Arial\', sans-serif;\\r\\n            background-color: #fff8f0;\\r\\n            margin: 0;\\r\\n            padding: 0;\\r\\n        }\\r\\n        header {\\r\\n            background-color: #e63946;\\r\\n            color: white;\\r\\n            padding: 20px 0;\\r\\n            text-align: center;\\r\\n        }\\r\\n        nav {\\r\\n            background-color: #ffb703;\\r\\n            padding: 10px;\\r\\n            text-align: center;\\r\\n        }\\r\\n        nav a {\\r\\n            margin: 0 15px;\\r\\n            color: #333;\\r\\n            text-decoration: none;\\r\\n            font-weight: bold;\\r\\n        }\\r\\n        nav a:hover {\\r\\n            text-decoration: underline;\\r\\n        }\\r\\n        .hero {\\r\\n            text-align: center;\\r\\n            padding: 50px 20px;\\r\\n            background: url(\'https:\\/\\/images.unsplash.com\\/photo-1601924582971-6ec2b711b03e\') no-repeat center center\\/cover;\\r\\n            color: white;\\r\\n            min-height: 400px;\\r\\n            display: flex;\\r\\n            flex-direction: column;\\r\\n            justify-content: center;\\r\\n        }\\r\\n        .hero h1 {\\r\\n            font-size: 3em;\\r\\n            margin: 0;\\r\\n        }\\r\\n        .hero p {\\r\\n            font-size: 1.5em;\\r\\n            margin-top: 10px;\\r\\n        }\\r\\n        .menu {\\r\\n            padding: 40px 20px;\\r\\n            max-width: 1000px;\\r\\n            margin: auto;\\r\\n        }\\r\\n        .menu h2 {\\r\\n            text-align: center;\\r\\n            margin-bottom: 30px;\\r\\n        }\\r\\n        .pizza-item {\\r\\n            background: white;\\r\\n            padding: 20px;\\r\\n            margin: 20px 0;\\r\\n            border-radius: 10px;\\r\\n            box-shadow: 0 4px 8px rgba(0,0,0,0.1);\\r\\n            transition: transform 0.3s;\\r\\n        }\\r\\n        .pizza-item:hover {\\r\\n            transform: scale(1.02);\\r\\n        }\\r\\n        .pizza-item h3 {\\r\\n            margin-top: 0;\\r\\n        }\\r\\n        .order-btn {\\r\\n            display: inline-block;\\r\\n            margin-top: 15px;\\r\\n            padding: 10px 20px;\\r\\n            background-color: #e63946;\\r\\n            color: white;\\r\\n            border-radius: 5px;\\r\\n            text-decoration: none;\\r\\n            font-weight: bold;\\r\\n        }\\r\\n        .order-btn:hover {\\r\\n            background-color: #d62828;\\r\\n        }\\r\\n        footer {\\r\\n            background-color: #ffb703;\\r\\n            text-align: center;\\r\\n            padding: 10px;\\r\\n            margin-top: 50px;\\r\\n        }\\r\\n    <\\/style>\\r\\n<\\/head>\\r\\n<body>\\r\\n\\r\\n<header>\\r\\n    <h1>PizzaShop<\\/h1>\\r\\n    <p>Fresh. Fast. Delicious.<\\/p>\\r\\n<\\/header>\\r\\n\\r\\n<nav>\\r\\n    <a href=\\\"#menu\\\">Menu<\\/a>\\r\\n    <a href=\\\"#contact\\\">Contact<\\/a>\\r\\n<\\/nav>\\r\\n\\r\\n<section class=\\\"hero\\\">\\r\\n    <h1>Welcome to PizzaShop<\\/h1>\\r\\n    <p>The best pizza in town!<\\/p>\\r\\n<\\/section>\\r\\n\\r\\n<section id=\\\"menu\\\" class=\\\"menu\\\">\\r\\n    <h2>Our Menu<\\/h2>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Margherita - 22.99 lei<\\/h3>\\r\\n        <p>Tomato sauce, mozzarella, fresh basil.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Pepperoni - 26.99 lei<\\/h3>\\r\\n        <p>Tomato sauce, mozzarella, pepperoni slices.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Quattro Formaggi - 28.50 lei<\\/h3>\\r\\n        <p>Four cheeses: mozzarella, gorgonzola, parmesan, and brie.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Vegetarian - 24.00 lei<\\/h3>\\r\\n        <p>Fresh vegetables, mozzarella, tomato sauce.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n<\\/section>\\r\\n\\r\\n<footer id=\\\"contact\\\">\\r\\n    <p>Contact us: pizzashop@example.com | +40 123 456 789<\\/p>\\r\\n<\\/footer>\\r\\n\\r\\n<\\/body>\\r\\n<\\/html>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:40:11\",\"created_by\":772,\"created_by_alias\":\"\",\"modified\":\"2025-04-26 16:01:59\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-26 15:58:41\",\"publish_up\":\"2025-04-23 13:40:11\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":1,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":78,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(17,'com_content.article.2','','2025-04-26 16:03:05',772,5802,'89a4fb6be0ea4285728063a678befb479b4fa9e0','{\"id\":\"2\",\"asset_id\":101,\"title\":\"PizzaShop\",\"alias\":\"pizzashop\",\"introtext\":\"<!DOCTYPE html>\\r\\n<html lang=\\\"en\\\">\\r\\n<head>\\r\\n    <meta charset=\\\"UTF-8\\\">\\r\\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\\r\\n    <title>PizzaShop<\\/title>\\r\\n    <style>\\r\\n        body {\\r\\n            font-family: \'Arial\', sans-serif;\\r\\n            background-color: #fff8f0;\\r\\n            margin: 0;\\r\\n            padding: 0;\\r\\n        }\\r\\n        header {\\r\\n            background-color: #e63946;\\r\\n            color: white;\\r\\n            padding: 20px 0;\\r\\n            text-align: center;\\r\\n        }\\r\\n        nav {\\r\\n            background-color: #ffb703;\\r\\n            padding: 10px;\\r\\n            text-align: center;\\r\\n        }\\r\\n        nav a {\\r\\n            margin: 0 15px;\\r\\n            color: #333;\\r\\n            text-decoration: none;\\r\\n            font-weight: bold;\\r\\n        }\\r\\n        nav a:hover {\\r\\n            text-decoration: underline;\\r\\n        }\\r\\n        .hero {\\r\\n            text-align: center;\\r\\n            padding: 50px 20px;\\r\\n            background: url(\'images\\/pizza.jpeg\') no-repeat center center\\/cover;\\r\\n            color: white;\\r\\n            min-height: 400px;\\r\\n            display: flex;\\r\\n            flex-direction: column;\\r\\n            justify-content: center;\\r\\n        }\\r\\n        .hero h1 {\\r\\n            font-size: 3em;\\r\\n            margin: 0;\\r\\n        }\\r\\n        .hero p {\\r\\n            font-size: 1.5em;\\r\\n            margin-top: 10px;\\r\\n        }\\r\\n        .menu {\\r\\n            padding: 40px 20px;\\r\\n            max-width: 1000px;\\r\\n            margin: auto;\\r\\n        }\\r\\n        .menu h2 {\\r\\n            text-align: center;\\r\\n            margin-bottom: 30px;\\r\\n        }\\r\\n        .pizza-item {\\r\\n            background: white;\\r\\n            padding: 20px;\\r\\n            margin: 20px 0;\\r\\n            border-radius: 10px;\\r\\n            box-shadow: 0 4px 8px rgba(0,0,0,0.1);\\r\\n            transition: transform 0.3s;\\r\\n        }\\r\\n        .pizza-item:hover {\\r\\n            transform: scale(1.02);\\r\\n        }\\r\\n        .pizza-item h3 {\\r\\n            margin-top: 0;\\r\\n        }\\r\\n        .order-btn {\\r\\n            display: inline-block;\\r\\n            margin-top: 15px;\\r\\n            padding: 10px 20px;\\r\\n            background-color: #e63946;\\r\\n            color: white;\\r\\n            border-radius: 5px;\\r\\n            text-decoration: none;\\r\\n            font-weight: bold;\\r\\n        }\\r\\n        .order-btn:hover {\\r\\n            background-color: #d62828;\\r\\n        }\\r\\n        footer {\\r\\n            background-color: #ffb703;\\r\\n            text-align: center;\\r\\n            padding: 10px;\\r\\n            margin-top: 50px;\\r\\n        }\\r\\n    <\\/style>\\r\\n<\\/head>\\r\\n<body>\\r\\n\\r\\n<header>\\r\\n    <h1>PizzaShop<\\/h1>\\r\\n    <p>Fresh. Fast. Delicious.<\\/p>\\r\\n<\\/header>\\r\\n\\r\\n<nav>\\r\\n    <a href=\\\"#menu\\\">Menu<\\/a>\\r\\n    <a href=\\\"#contact\\\">Contact<\\/a>\\r\\n<\\/nav>\\r\\n\\r\\n<section class=\\\"hero\\\">\\r\\n    <h1>Welcome to PizzaShop<\\/h1>\\r\\n    <p>The best pizza in town!<\\/p>\\r\\n<\\/section>\\r\\n\\r\\n<section id=\\\"menu\\\" class=\\\"menu\\\">\\r\\n    <h2>Our Menu<\\/h2>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Margherita - 22.99 lei<\\/h3>\\r\\n        <p>Tomato sauce, mozzarella, fresh basil.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Pepperoni - 26.99 lei<\\/h3>\\r\\n        <p>Tomato sauce, mozzarella, pepperoni slices.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Quattro Formaggi - 28.50 lei<\\/h3>\\r\\n        <p>Four cheeses: mozzarella, gorgonzola, parmesan, and brie.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Vegetarian - 24.00 lei<\\/h3>\\r\\n        <p>Fresh vegetables, mozzarella, tomato sauce.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n<\\/section>\\r\\n\\r\\n<footer id=\\\"contact\\\">\\r\\n    <p>Contact us: pizzashop@example.com | +40 123 456 789<\\/p>\\r\\n<\\/footer>\\r\\n\\r\\n<\\/body>\\r\\n<\\/html>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:40:11\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-26 16:03:05\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-26 16:02:43\",\"publish_up\":\"2025-04-23 13:40:11\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":12,\"ordering\":1,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":80,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(18,'com_content.article.2','','2025-04-26 16:04:09',772,5800,'57b6fc5ceb3f7ed636118b75eb934cd7b0579db0','{\"id\":\"2\",\"asset_id\":101,\"title\":\"PizzaShop\",\"alias\":\"pizzashop\",\"introtext\":\"<!DOCTYPE html>\\r\\n<html lang=\\\"en\\\">\\r\\n<head>\\r\\n    <meta charset=\\\"UTF-8\\\">\\r\\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\\r\\n    <title>PizzaShop<\\/title>\\r\\n    <style>\\r\\n        body {\\r\\n            font-family: \'Arial\', sans-serif;\\r\\n            background-color: #fff8f0;\\r\\n            margin: 0;\\r\\n            padding: 0;\\r\\n        }\\r\\n        header {\\r\\n            background-color: #e63946;\\r\\n            color: white;\\r\\n            padding: 20px 0;\\r\\n            text-align: center;\\r\\n        }\\r\\n        nav {\\r\\n            background-color: #ffb703;\\r\\n            padding: 10px;\\r\\n            text-align: center;\\r\\n        }\\r\\n        nav a {\\r\\n            margin: 0 15px;\\r\\n            color: #333;\\r\\n            text-decoration: none;\\r\\n            font-weight: bold;\\r\\n        }\\r\\n        nav a:hover {\\r\\n            text-decoration: underline;\\r\\n        }\\r\\n        .hero {\\r\\n            text-align: center;\\r\\n            padding: 50px 20px;\\r\\n            background: url(\'images\\/pizza.jpeg\') no-repeat center center\\/cover;\\r\\n            color: red;\\r\\n            min-height: 400px;\\r\\n            display: flex;\\r\\n            flex-direction: column;\\r\\n            justify-content: center;\\r\\n        }\\r\\n        .hero h1 {\\r\\n            font-size: 3em;\\r\\n            margin: 0;\\r\\n        }\\r\\n        .hero p {\\r\\n            font-size: 1.5em;\\r\\n            margin-top: 10px;\\r\\n        }\\r\\n        .menu {\\r\\n            padding: 40px 20px;\\r\\n            max-width: 1000px;\\r\\n            margin: auto;\\r\\n        }\\r\\n        .menu h2 {\\r\\n            text-align: center;\\r\\n            margin-bottom: 30px;\\r\\n        }\\r\\n        .pizza-item {\\r\\n            background: white;\\r\\n            padding: 20px;\\r\\n            margin: 20px 0;\\r\\n            border-radius: 10px;\\r\\n            box-shadow: 0 4px 8px rgba(0,0,0,0.1);\\r\\n            transition: transform 0.3s;\\r\\n        }\\r\\n        .pizza-item:hover {\\r\\n            transform: scale(1.02);\\r\\n        }\\r\\n        .pizza-item h3 {\\r\\n            margin-top: 0;\\r\\n        }\\r\\n        .order-btn {\\r\\n            display: inline-block;\\r\\n            margin-top: 15px;\\r\\n            padding: 10px 20px;\\r\\n            background-color: #e63946;\\r\\n            color: white;\\r\\n            border-radius: 5px;\\r\\n            text-decoration: none;\\r\\n            font-weight: bold;\\r\\n        }\\r\\n        .order-btn:hover {\\r\\n            background-color: #d62828;\\r\\n        }\\r\\n        footer {\\r\\n            background-color: #ffb703;\\r\\n            text-align: center;\\r\\n            padding: 10px;\\r\\n            margin-top: 50px;\\r\\n        }\\r\\n    <\\/style>\\r\\n<\\/head>\\r\\n<body>\\r\\n\\r\\n<header>\\r\\n    <h1>PizzaShop<\\/h1>\\r\\n    <p>Fresh. Fast. Delicious.<\\/p>\\r\\n<\\/header>\\r\\n\\r\\n<nav>\\r\\n    <a href=\\\"#menu\\\">Menu<\\/a>\\r\\n    <a href=\\\"#contact\\\">Contact<\\/a>\\r\\n<\\/nav>\\r\\n\\r\\n<section class=\\\"hero\\\">\\r\\n    <h1>Welcome to PizzaShop<\\/h1>\\r\\n    <p>The best pizza in town!<\\/p>\\r\\n<\\/section>\\r\\n\\r\\n<section id=\\\"menu\\\" class=\\\"menu\\\">\\r\\n    <h2>Our Menu<\\/h2>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Margherita - 22.99 lei<\\/h3>\\r\\n        <p>Tomato sauce, mozzarella, fresh basil.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Pepperoni - 26.99 lei<\\/h3>\\r\\n        <p>Tomato sauce, mozzarella, pepperoni slices.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Quattro Formaggi - 28.50 lei<\\/h3>\\r\\n        <p>Four cheeses: mozzarella, gorgonzola, parmesan, and brie.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Vegetarian - 24.00 lei<\\/h3>\\r\\n        <p>Fresh vegetables, mozzarella, tomato sauce.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n<\\/section>\\r\\n\\r\\n<footer id=\\\"contact\\\">\\r\\n    <p>Contact us: pizzashop@example.com | +40 123 456 789<\\/p>\\r\\n<\\/footer>\\r\\n\\r\\n<\\/body>\\r\\n<\\/html>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:40:11\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-26 16:04:09\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-26 16:03:05\",\"publish_up\":\"2025-04-23 13:40:11\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":13,\"ordering\":1,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":80,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(19,'com_content.article.2','','2025-04-26 16:04:26',772,5715,'908aaa47b688dc2a61d2fb95eb4abfa9dfd8d899','{\"id\":\"2\",\"asset_id\":101,\"title\":\"PizzaShop\",\"alias\":\"pizzashop\",\"introtext\":\"<!DOCTYPE html>\\r\\n<html lang=\\\"en\\\">\\r\\n<head>\\r\\n    <meta charset=\\\"UTF-8\\\">\\r\\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\\r\\n    <title>PizzaShop<\\/title>\\r\\n    <style>\\r\\n        body {\\r\\n            font-family: \'Arial\', sans-serif;\\r\\n            background-color: #fff8f0;\\r\\n            margin: 0;\\r\\n            padding: 0;\\r\\n        }\\r\\n        header {\\r\\n            background-color: #e63946;\\r\\n            color: white;\\r\\n            padding: 20px 0;\\r\\n            text-align: center;\\r\\n        }\\r\\n        nav {\\r\\n            background-color: #ffb703;\\r\\n            padding: 10px;\\r\\n            text-align: center;\\r\\n        }\\r\\n        nav a {\\r\\n            margin: 0 15px;\\r\\n            color: #333;\\r\\n            text-decoration: none;\\r\\n            font-weight: bold;\\r\\n        }\\r\\n        nav a:hover {\\r\\n            text-decoration: underline;\\r\\n        }\\r\\n        .hero {\\r\\n            text-align: center;\\r\\n            padding: 50px 20px;\\r\\n            color: red;\\r\\n            min-height: 400px;\\r\\n            display: flex;\\r\\n            flex-direction: column;\\r\\n            justify-content: center;\\r\\n        }\\r\\n        .hero h1 {\\r\\n            font-size: 3em;\\r\\n            margin: 0;\\r\\n        }\\r\\n        .hero p {\\r\\n            font-size: 1.5em;\\r\\n            margin-top: 10px;\\r\\n        }\\r\\n        .menu {\\r\\n            padding: 40px 20px;\\r\\n            max-width: 1000px;\\r\\n            margin: auto;\\r\\n        }\\r\\n        .menu h2 {\\r\\n            text-align: center;\\r\\n            margin-bottom: 30px;\\r\\n        }\\r\\n        .pizza-item {\\r\\n            background: white;\\r\\n            padding: 20px;\\r\\n            margin: 20px 0;\\r\\n            border-radius: 10px;\\r\\n            box-shadow: 0 4px 8px rgba(0,0,0,0.1);\\r\\n            transition: transform 0.3s;\\r\\n        }\\r\\n        .pizza-item:hover {\\r\\n            transform: scale(1.02);\\r\\n        }\\r\\n        .pizza-item h3 {\\r\\n            margin-top: 0;\\r\\n        }\\r\\n        .order-btn {\\r\\n            display: inline-block;\\r\\n            margin-top: 15px;\\r\\n            padding: 10px 20px;\\r\\n            background-color: #e63946;\\r\\n            color: white;\\r\\n            border-radius: 5px;\\r\\n            text-decoration: none;\\r\\n            font-weight: bold;\\r\\n        }\\r\\n        .order-btn:hover {\\r\\n            background-color: #d62828;\\r\\n        }\\r\\n        footer {\\r\\n            background-color: #ffb703;\\r\\n            text-align: center;\\r\\n            padding: 10px;\\r\\n            margin-top: 50px;\\r\\n        }\\r\\n    <\\/style>\\r\\n<\\/head>\\r\\n<body>\\r\\n\\r\\n<header>\\r\\n    <h1>PizzaShop<\\/h1>\\r\\n    <p>Fresh. Fast. Delicious.<\\/p>\\r\\n<\\/header>\\r\\n\\r\\n<nav>\\r\\n    <a href=\\\"#menu\\\">Menu<\\/a>\\r\\n    <a href=\\\"#contact\\\">Contact<\\/a>\\r\\n<\\/nav>\\r\\n\\r\\n<section class=\\\"hero\\\">\\r\\n    <h1>Welcome to PizzaShop<\\/h1>\\r\\n    <p>The best pizza in town!<\\/p>\\r\\n<\\/section>\\r\\n\\r\\n<section id=\\\"menu\\\" class=\\\"menu\\\">\\r\\n    <h2>Our Menu<\\/h2>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Margherita - 22.99 lei<\\/h3>\\r\\n        <p>Tomato sauce, mozzarella, fresh basil.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Pepperoni - 26.99 lei<\\/h3>\\r\\n        <p>Tomato sauce, mozzarella, pepperoni slices.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Quattro Formaggi - 28.50 lei<\\/h3>\\r\\n        <p>Four cheeses: mozzarella, gorgonzola, parmesan, and brie.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"pizza-item\\\">\\r\\n        <h3>Vegetarian - 24.00 lei<\\/h3>\\r\\n        <p>Fresh vegetables, mozzarella, tomato sauce.<\\/p>\\r\\n        <a href=\\\"#\\\" class=\\\"order-btn\\\">Order Now<\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n<\\/section>\\r\\n\\r\\n<footer id=\\\"contact\\\">\\r\\n    <p>Contact us: pizzashop@example.com | +40 123 456 789<\\/p>\\r\\n<\\/footer>\\r\\n\\r\\n<\\/body>\\r\\n<\\/html>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:40:11\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-26 16:04:26\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-26 16:04:09\",\"publish_up\":\"2025-04-23 13:40:11\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":14,\"ordering\":1,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":80,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(20,'com_content.article.2','','2025-04-28 16:54:46',772,1594,'e71d11dbc5442910345bfaeba9048de49166dbd6','{\"id\":\"2\",\"asset_id\":101,\"title\":\"PizzaShop\",\"alias\":\"pizzashop\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-23 13:40:11\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-28 16:54:46\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-28 16:53:16\",\"publish_up\":\"2025-04-23 13:40:11\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":16,\"ordering\":1,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":88,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(21,'com_content.article.2','','2025-04-28 17:19:14',772,1596,'a58fb5286808c7ae5ac9c9e537bbda725218be73','{\"id\":\"2\",\"asset_id\":101,\"title\":\"PizzaShop\",\"alias\":\"pizzashop\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":\"-2\",\"catid\":2,\"created\":\"2025-04-23 13:40:11\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-28 17:19:14\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-28 17:19:08\",\"publish_up\":\"2025-04-23 13:40:11\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":17,\"ordering\":1,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":125,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(22,'com_content.article.4','','2025-04-28 17:22:17',772,1577,'2479a6423bd665fe07c8e13c6b53a7edb1ea3961','{\"id\":4,\"asset_id\":105,\"title\":\"PizzaShop\",\"alias\":\"pizzashop-2\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-28 17:22:17\",\"created_by\":772,\"created_by_alias\":\"\",\"modified\":\"2025-04-28 17:22:17\",\"modified_by\":772,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2025-04-28 17:22:17\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(23,'com_content.article.4','','2025-04-28 17:27:42',772,1613,'6211f0bc17b75fcd5d71037aedd20d878ecc0a64','{\"id\":\"4\",\"asset_id\":105,\"title\":\"PizzaShop\",\"alias\":\"pizzashop-2\",\"introtext\":\"{loadmoduleid 111}\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-28 17:22:17\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-28 17:27:42\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-28 17:27:27\",\"publish_up\":\"2025-04-28 17:22:17\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":24,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(24,'com_content.article.4','','2025-04-28 17:28:06',772,2907,'cedcfb78b8c159fb6bca00d917919f8a073d9a95','{\"id\":\"4\",\"asset_id\":105,\"title\":\"PizzaShop\",\"alias\":\"pizzashop-2\",\"introtext\":\"{source}\\r\\n<?php\\r\\n$host = \'joomla-db\';\\r\\n$user = \'joomla\';\\r\\n$pass = \'parola123\';\\r\\n$db = \'joomla\';\\r\\n\\r\\n$conn = new mysqli($host, $user, $pass, $db);\\r\\nif ($conn->connect_error) {\\r\\n    die(\\\"Conexiune e\\u0219uat\\u0103: \\\" . $conn->connect_error);\\r\\n}\\r\\n\\r\\n\\/\\/ Mesaj de \\u00eent\\u00e2mpinare\\r\\necho \'<div style=\\\"text-align:center; margin-bottom: 30px;\\\">\';\\r\\necho \'<h1 style=\\\"color:#e63946; font-size:2.5em; margin-bottom:10px;\\\">Pizzeria Antonio<\\/h1>\';\\r\\necho \'<p style=\\\"font-size:1.3em; color:#333;\\\">Bine ai venit la cea mai gustoas\\u0103 pizzerie din ora\\u0219!<\\/p>\';\\r\\necho \'<p style=\\\"font-size:1.3em; color:#333;\\\">Iat\\u0103 meniul nostru!!!<\\/p>\';\\r\\necho \'<\\/div>\';\\r\\n\\r\\n$sql = \\\"SELECT name, description, price, image_url FROM pizza_images\\\";\\r\\n$result = $conn->query($sql);\\r\\n\\r\\necho \'<div class=\\\"menu\\\">\';\\r\\nwhile($row = $result->fetch_assoc()) {\\r\\n    echo \'<div class=\\\"pizza-item\\\">\';\\r\\n    echo \'<h3>\' . htmlspecialchars($row[\\\"name\\\"]) . \' - \' . htmlspecialchars($row[\\\"price\\\"]) . \' lei<\\/h3>\';\\r\\n    echo \'<img src=\\\"\' . htmlspecialchars($row[\\\"image_url\\\"]) . \'\\\" style=\\\"max-width:200px;\\\"><br>\';\\r\\n    echo \'<p>\' . htmlspecialchars($row[\\\"description\\\"]) . \'<\\/p>\';\\r\\n    echo \'<\\/div>\';\\r\\n}\\r\\necho \'<\\/div>\';\\r\\n\\r\\n$conn->close();\\r\\n?>\\r\\n{\\/source}\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-28 17:22:17\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-28 17:28:06\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-28 17:27:42\",\"publish_up\":\"2025-04-28 17:22:17\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":25,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(25,'com_content.article.4','','2025-04-28 17:28:59',772,4206,'fd9e8c9aa4e8663ca4aad6968485a1a97ebf9a3d','{\"id\":\"4\",\"asset_id\":105,\"title\":\"PizzaShop\",\"alias\":\"pizzashop-2\",\"introtext\":\"{source}<span style=\\\"font-family:monospace;color:#555555;\\\"><span style=\\\"color:#770088;\\\">{source}<\\/span><br><span style=\\\"color:#0000cc;\\\">&lt;?php<br>$host = \'joomla-db\';<br>$user = \'joomla\';<br>$pass = \'parola123\';<br>$db = \'joomla\';<br><br>$conn = new mysqli($host, $user, $pass, $db);<br>if ($conn-&gt;connect_error) {<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">die(\\\"Conexiune e\\u0219uat\\u0103: \\\" . $conn-&gt;connect_error);<br>}<br><br>\\/\\/ Mesaj de &icirc;nt&acirc;mpinare<br>echo \'<span style=\\\"color:#117700;\\\">&lt;div style=\\\"text-align:center; margin-bottom: 30px;\\\"&gt;<\\/span>\';<br>echo \'<span style=\\\"color:#117700;\\\">&lt;h1 style=\\\"color:#e63946; font-size:2.5em; margin-bottom:10px;\\\"&gt;<\\/span>Pizzeria Antonio<span style=\\\"color:#117700;\\\">&lt;\\/h1&gt;<\\/span>\';<br>echo \'<span style=\\\"color:#117700;\\\">&lt;p style=\\\"font-size:1.3em; color:#333;\\\"&gt;<\\/span>Bine ai venit la cea mai gustoas\\u0103 pizzerie din ora\\u0219!<span style=\\\"color:#117700;\\\">&lt;\\/p&gt;<\\/span>\';<br>echo \'<span style=\\\"color:#117700;\\\">&lt;p style=\\\"font-size:1.3em; color:#333;\\\"&gt;<\\/span>Iat\\u0103 meniul nostru!!!<span style=\\\"color:#117700;\\\">&lt;\\/p&gt;<\\/span>\';<br>echo \'<span style=\\\"color:#117700;\\\">&lt;\\/div&gt;<\\/span>\';<br><br>$sql = \\\"SELECT name, description, price, image_url FROM pizza_images\\\";<br>$result = $conn-&gt;query($sql);<br><br>echo \'<span style=\\\"color:#117700;\\\">&lt;div class=\\\"menu\\\"&gt;<\\/span>\';<br>while($row = $result-&gt;fetch_assoc()) {<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">echo \'<span style=\\\"color:#117700;\\\">&lt;div class=\\\"pizza-item\\\"&gt;<\\/span>\';<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">echo \'<span style=\\\"color:#117700;\\\">&lt;h3&gt;<\\/span>\' . htmlspecialchars($row[\\\"name\\\"]) . \' - \' . htmlspecialchars($row[\\\"price\\\"]) . \' lei<span style=\\\"color:#117700;\\\">&lt;\\/h3&gt;<\\/span>\';<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">echo \'<span style=\\\"color:#117700;\\\">&lt;img src=\\\"\' . htmlspecialchars($row[\\\"image_url\\\"]) . \'\\\" style=\\\"max-width:200px;\\\"&gt;<\\/span><span style=\\\"color:#117700;\\\">&lt;br&gt;<\\/span>\';<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">echo \'<span style=\\\"color:#117700;\\\">&lt;p&gt;<\\/span>\' . htmlspecialchars($row[\\\"description\\\"]) . \'<span style=\\\"color:#117700;\\\">&lt;\\/p&gt;<\\/span>\';<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">echo \'<span style=\\\"color:#117700;\\\">&lt;\\/div&gt;<\\/span>\';<br>}<br>echo \'<span style=\\\"color:#117700;\\\">&lt;\\/div&gt;<\\/span>\';<br><br>$conn-&gt;close();<br>?&gt;<\\/span><br><span style=\\\"color:#770088;\\\">{\\/source}<\\/span><\\/span>{\\/source}\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-28 17:22:17\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-28 17:28:59\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-28 17:28:06\",\"publish_up\":\"2025-04-28 17:22:17\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":26,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(26,'com_content.article.4','','2025-04-28 17:36:04',772,1676,'5d09e44b617faa80fc1a2756afd75f4c774b4b3e','{\"id\":\"4\",\"asset_id\":105,\"title\":\"PizzaShop\",\"alias\":\"pizzashop-2\",\"introtext\":\"Bine ai venit la Pizzeria Antonio!\\r\\n\\r\\n{loadmodule mod_custom, PizzaShop Menu}\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-28 17:22:17\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-28 17:36:04\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-28 17:35:18\",\"publish_up\":\"2025-04-28 17:22:17\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":34,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(27,'com_content.article.4','','2025-04-28 17:45:11',772,2108,'830933bd6d0ef21b518972fd211594f3ea111e13','{\"id\":\"4\",\"asset_id\":105,\"title\":\"PizzaShop\",\"alias\":\"pizzashop-2\",\"introtext\":\"<style>\\r\\n    .welcome-message {\\r\\n        font-size: 2em;\\r\\n        font-weight: bold;\\r\\n        color: #FF6347; \\/* culoare ro\\u0219ie *\\/\\r\\n        text-align: center;\\r\\n        margin-bottom: 20px;\\r\\n    }\\r\\n\\r\\n    .pizza-menu {\\r\\n        text-align: center;\\r\\n        margin-top: 20px;\\r\\n    }\\r\\n<\\/style>\\r\\n\\r\\n<div class=\\\"welcome-message\\\">\\r\\n    Bine ai venit la Pizzeria Antonio!\\r\\n<\\/div>\\r\\n\\r\\n<div class=\\\"pizza-menu\\\">\\r\\n    {loadmodule mod_custom, PizzaShop Menu}\\r\\n<\\/div>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-28 17:22:17\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-28 17:45:11\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-28 17:43:40\",\"publish_up\":\"2025-04-28 17:22:17\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":107,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),
(28,'com_content.article.4','','2025-04-28 17:45:58',772,3392,'09479b19615f2f213d1c0c371bfb93aa6c475359','{\"id\":\"4\",\"asset_id\":105,\"title\":\"PizzaShop\",\"alias\":\"pizzashop-2\",\"introtext\":\"{source}<span style=\\\"font-family:monospace;color:#555555;\\\"><span style=\\\"color:#117700;\\\">&lt;style&gt;<\\/span><br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">.welcome-message {<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\"><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">font-size: 2em;<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\"><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">font-weight: bold;<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\"><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">color: #FF6347; \\/* culoare ro\\u0219ie *\\/<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\"><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">text-align: center;<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\"><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">margin-bottom: 20px;<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">}<br><br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">.pizza-menu {<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\"><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">text-align: center;<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\"><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">margin-top: 20px;<br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">}<br><span style=\\\"color:#117700;\\\">&lt;\\/style&gt;<\\/span><br><br><span style=\\\"color:#117700;\\\">&lt;div class=\\\"welcome-message\\\"&gt;<\\/span><br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\">Bine ai venit la Pizzeria Antonio!<br><span style=\\\"color:#117700;\\\">&lt;\\/div&gt;<\\/span><br><br><span style=\\\"color:#117700;\\\">&lt;div class=\\\"pizza-menu\\\"&gt;<\\/span><br><img src=\\\"\\/media\\/sourcerer\\/images\\/tab.svg\\\"><span style=\\\"color:#770088;\\\">{loadmodule mod_custom, PizzaShop Menu}<\\/span><br><span style=\\\"color:#117700;\\\">&lt;\\/div&gt;<\\/span><\\/span>{\\/source}\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-04-28 17:22:17\",\"created_by\":\"772\",\"created_by_alias\":\"\",\"modified\":\"2025-04-28 17:45:58\",\"modified_by\":772,\"checked_out\":772,\"checked_out_time\":\"2025-04-28 17:45:11\",\"publish_up\":\"2025-04-28 17:22:17\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":108,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0);
/*!40000 ALTER TABLE `aq6ko_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_languages`
--

DROP TABLE IF EXISTS `aq6ko_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_languages` (
  `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_languages`
--

LOCK TABLES `aq6ko_languages` WRITE;
/*!40000 ALTER TABLE `aq6ko_languages` DISABLE KEYS */;
INSERT INTO `aq6ko_languages` VALUES
(1,0,'en-GB','English (en-GB)','English (United Kingdom)','en','en_gb','','','','',1,1,1);
/*!40000 ALTER TABLE `aq6ko_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_mail_templates`
--

DROP TABLE IF EXISTS `aq6ko_mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_mail_templates` (
  `template_id` varchar(127) NOT NULL DEFAULT '',
  `extension` varchar(127) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `htmlbody` mediumtext NOT NULL,
  `attachments` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`template_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_mail_templates`
--

LOCK TABLES `aq6ko_mail_templates` WRITE;
/*!40000 ALTER TABLE `aq6ko_mail_templates` DISABLE KEYS */;
INSERT INTO `aq6ko_mail_templates` VALUES
('com_actionlogs.notification','com_actionlogs','','COM_ACTIONLOGS_EMAIL_SUBJECT','COM_ACTIONLOGS_EMAIL_BODY','COM_ACTIONLOGS_EMAIL_HTMLBODY','','{\"tags\":[\"messages\",\"message\",\"date\",\"extension\",\"username\"]}'),
('com_config.test_mail','com_config','','COM_CONFIG_SENDMAIL_SUBJECT','COM_CONFIG_SENDMAIL_BODY','','','{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail','com_contact','','COM_CONTACT_ENQUIRY_SUBJECT','COM_CONTACT_ENQUIRY_TEXT','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy','com_contact','','COM_CONTACT_COPYSUBJECT_OF','COM_CONTACT_COPYTEXT_OF','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),
('com_messages.new_message','com_messages','','COM_MESSAGES_NEW_MESSAGE','COM_MESSAGES_NEW_MESSAGE_BODY','','','{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),
('com_privacy.notification.admin.export','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.admin.remove','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.export','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.remove','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.userdataexport','com_privacy','','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY','','','{\"tags\":[\"sitename\",\"url\"]}'),
('com_users.massmail.mail','com_users','','COM_USERS_MASSMAIL_MAIL_SUBJECT','COM_USERS_MASSMAIL_MAIL_BODY','','','{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),
('com_users.password_reset','com_users','','COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT','COM_USERS_EMAIL_PASSWORD_RESET_BODY','','','{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),
('com_users.registration.admin.new_notification','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.admin.verification_request','com_users','','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),
('com_users.registration.user.admin_activated','com_users','','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.registration_mail','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder','com_users','','COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT','COM_USERS_EMAIL_USERNAME_REMINDER_BODY','','','{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_multifactorauth_email.mail','plg_multifactorauth_email','','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY','','','{\"tags\":[\"code\",\"sitename\",\"siteurl\",\"username\",\"email\",\"fullname\"]}'),
('plg_system_tasknotification.failure_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY','','','{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_task_privacyconsent.request.reminder','plg_task_privacyconsent','','PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT','PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_BODY','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_task_updatenotification.mail','plg_task_updatenotification','','PLG_TASK_UPDATENOTIFICATION_EMAIL_SUBJECT','PLG_TASK_UPDATENOTIFICATION_EMAIL_BODY','','','{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail','plg_user_joomla','','PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT','PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY','','','{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');
/*!40000 ALTER TABLE `aq6ko_mail_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_menu`
--

DROP TABLE IF EXISTS `aq6ko_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_menu`
--

LOCK TABLES `aq6ko_menu` WRITE;
/*!40000 ALTER TABLE `aq6ko_menu` DISABLE KEYS */;
INSERT INTO `aq6ko_menu` VALUES
(1,'','Menu_Item_Root','root','','','','',1,0,0,0,NULL,NULL,0,0,'',0,'',0,49,0,'*',0,NULL,NULL),
(2,'main','com_banners','Banners','','Banners','index.php?option=com_banners','component',1,1,1,3,NULL,NULL,0,0,'class:bookmark',0,'',1,10,0,'*',1,NULL,NULL),
(3,'main','com_banners','Banners','','Banners/Banners','index.php?option=com_banners&view=banners','component',1,2,2,3,NULL,NULL,0,0,'class:banners',0,'',2,3,0,'*',1,NULL,NULL),
(4,'main','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&view=categories&extension=com_banners','component',1,2,2,5,NULL,NULL,0,0,'class:banners-cat',0,'',4,5,0,'*',1,NULL,NULL),
(5,'main','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,3,NULL,NULL,0,0,'class:banners-clients',0,'',6,7,0,'*',1,NULL,NULL),
(6,'main','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,3,NULL,NULL,0,0,'class:banners-tracks',0,'',8,9,0,'*',1,NULL,NULL),
(7,'main','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',1,1,1,7,NULL,NULL,0,0,'class:address-book',0,'',11,20,0,'*',1,NULL,NULL),
(8,'main','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact&view=contacts','component',1,7,2,7,NULL,NULL,0,0,'class:contact',0,'',12,13,0,'*',1,NULL,NULL),
(9,'main','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&view=categories&extension=com_contact','component',1,7,2,5,NULL,NULL,0,0,'class:contact-cat',0,'',14,15,0,'*',1,NULL,NULL),
(10,'main','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,16,NULL,NULL,0,0,'class:rss',0,'',23,28,0,'*',1,NULL,NULL),
(11,'main','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds&view=newsfeeds','component',1,10,2,16,NULL,NULL,0,0,'class:newsfeeds',0,'',24,25,0,'*',1,NULL,NULL),
(12,'main','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&view=categories&extension=com_newsfeeds','component',1,10,2,5,NULL,NULL,0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1,NULL,NULL),
(13,'main','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',1,1,1,23,NULL,NULL,0,0,'class:search-plus',0,'',29,38,0,'*',1,NULL,NULL),
(14,'main','com_tags','Tags','','Tags','index.php?option=com_tags&view=tags','component',1,1,1,25,NULL,NULL,0,1,'class:tags',0,'',39,40,0,'',1,NULL,NULL),
(15,'main','com_associations','Multilingual Associations','','Multilingual Associations','index.php?option=com_associations&view=associations','component',1,1,1,30,NULL,NULL,0,0,'class:language',0,'',21,22,0,'*',1,NULL,NULL),
(16,'main','mod_menu_fields','Contact Custom Fields','','contact/Custom Fields','index.php?option=com_fields&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',16,17,0,'*',1,NULL,NULL),
(17,'main','mod_menu_fields_group','Contact Custom Fields Group','','contact/Custom Fields Group','index.php?option=com_fields&view=groups&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',18,19,0,'*',1,NULL,NULL),
(18,'main','com_finder_index','Smart-Search-Index','','Smart Search/Index','index.php?option=com_finder&view=index','component',1,13,2,23,NULL,NULL,0,0,'class:finder',0,'',30,31,0,'*',1,NULL,NULL),
(19,'main','com_finder_maps','Smart-Search-Maps','','Smart Search/Maps','index.php?option=com_finder&view=maps','component',1,13,2,23,NULL,NULL,0,0,'class:finder-maps',0,'',32,33,0,'*',1,NULL,NULL),
(20,'main','com_finder_filters','Smart-Search-Filters','','Smart Search/Filters','index.php?option=com_finder&view=filters','component',1,13,2,23,NULL,NULL,0,0,'class:finder-filters',0,'',34,35,0,'*',1,NULL,NULL),
(21,'main','com_finder_searches','Smart-Search-Searches','','Smart Search/Searches','index.php?option=com_finder&view=searches','component',1,13,2,23,NULL,NULL,0,0,'class:finder-searches',0,'',36,37,0,'*',1,NULL,NULL),
(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=article&id=4','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',41,42,1,'*',0,NULL,NULL),
(102,'mainmenu','Chat','chat','','chat','index.php?option=com_content&view=article&id=1','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',43,44,0,'*',0,NULL,NULL),
(103,'mainmenu','Image tagging','image-tagging','','image-tagging','index.php?option=com_content&view=article&id=3','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',45,46,0,'*',0,NULL,NULL),
(104,'mainmenu','Menu','menu','','menu','index.php?option=com_content&view=article&id=2','component',-2,1,1,19,NULL,NULL,0,1,' ',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',47,48,0,'*',0,NULL,NULL);
/*!40000 ALTER TABLE `aq6ko_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_menu_types`
--

DROP TABLE IF EXISTS `aq6ko_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_menu_types`
--

LOCK TABLES `aq6ko_menu_types` WRITE;
/*!40000 ALTER TABLE `aq6ko_menu_types` DISABLE KEYS */;
INSERT INTO `aq6ko_menu_types` VALUES
(1,0,'mainmenu','Main Menu','The main menu for the site',0,1);
/*!40000 ALTER TABLE `aq6ko_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_messages`
--

DROP TABLE IF EXISTS `aq6ko_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id_to` int(10) unsigned NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `priority` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_messages`
--

LOCK TABLES `aq6ko_messages` WRITE;
/*!40000 ALTER TABLE `aq6ko_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_messages_cfg`
--

DROP TABLE IF EXISTS `aq6ko_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_messages_cfg`
--

LOCK TABLES `aq6ko_messages_cfg` WRITE;
/*!40000 ALTER TABLE `aq6ko_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_modules`
--

DROP TABLE IF EXISTS `aq6ko_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_modules`
--

LOCK TABLES `aq6ko_modules` WRITE;
/*!40000 ALTER TABLE `aq6ko_modules` DISABLE KEYS */;
INSERT INTO `aq6ko_modules` VALUES
(1,39,'Main Menu','','',1,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(2,40,'Login','','',1,'login',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'',1,'*'),
(3,41,'Popular Articles','','',6,'cpanel',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(4,42,'Recently Added Articles','','',4,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(8,43,'Toolbar','','',1,'toolbar',NULL,NULL,NULL,NULL,1,'mod_toolbar',3,1,'',1,'*'),
(9,44,'Notifications','','',3,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',3,1,'{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(10,45,'Logged-in Users','','',2,'cpanel',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(12,46,'Admin Menu','','',1,'menu',NULL,NULL,NULL,NULL,1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),
(15,49,'Title','','',1,'title',NULL,NULL,NULL,NULL,1,'mod_title',3,1,'',1,'*'),
(16,50,'Login Form','','',7,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),
(17,51,'Breadcrumbs','','',1,'breadcrumbs',NULL,NULL,NULL,NULL,1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*'),
(79,52,'Multilanguage status','','',2,'status',NULL,NULL,NULL,NULL,1,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(86,53,'Joomla Version','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_version',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(87,55,'Sample Data','','',1,'cpanel',NULL,NULL,NULL,NULL,1,'mod_sampledata',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(88,67,'Latest Actions','','',3,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latestactions',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(89,68,'Privacy Dashboard','','',5,'cpanel',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(90,89,'Login Support','','',1,'sidebar',NULL,NULL,NULL,NULL,1,'mod_loginsupport',1,1,'{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),
(91,72,'System Dashboard','','',1,'cpanel-system',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(92,73,'Content Dashboard','','',1,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(93,74,'Menus Dashboard','','',1,'cpanel-menus',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(94,75,'Components Dashboard','','',1,'cpanel-components',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(95,76,'Users Dashboard','','',1,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(96,86,'Popular Articles','','',3,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(97,87,'Recently Added Articles','','',4,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(98,88,'Logged-in Users','','',2,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(99,77,'Frontend Link','','',5,'status',NULL,NULL,NULL,NULL,1,'mod_frontend',1,1,'',1,'*'),
(100,78,'Messages','','',4,'status',NULL,NULL,NULL,NULL,1,'mod_messages',3,1,'',1,'*'),
(101,79,'Post Install Messages','','',3,'status',NULL,NULL,NULL,NULL,1,'mod_post_installation_messages',3,1,'',1,'*'),
(102,80,'User Status','','',6,'status',NULL,NULL,NULL,NULL,1,'mod_user',3,1,'',1,'*'),
(103,70,'Site','','',1,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(104,71,'System','','',2,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(105,82,'3rd Party','','',4,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(106,83,'Help Dashboard','','',1,'cpanel-help',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(107,84,'Privacy Requests','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(108,85,'Privacy Status','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_status',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(109,96,'Guided Tours','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_guidedtours',1,1,'',1,'*'),
(110,103,'PizzaShop Menu','','<?php\r\n$mysqli = new mysqli(\"127.0.0.1\", \"joomla\", \"parola123\", \"joomla\", 3307);\r\n\r\n// Verifică conexiunea\r\nif ($mysqli->connect_error) {\r\n    echo \"Eroare conectare baza de date!\";\r\n    exit();\r\n}\r\n\r\n$result = $mysqli->query(\"SELECT nume, descriere, pret FROM MenuPizze\");\r\n\r\necho \"<div style=\'max-width:600px; margin:auto; padding:20px;\'>\";\r\n\r\necho \"<h2 style=\'text-align:center;\'>? PizzaShop Menu ?</h2>\";\r\n\r\nwhile ($row = $result->fetch_assoc()) {\r\n    echo \"<div style=\'padding:10px; border-bottom:1px solid #ddd;\'>\";\r\n    echo \"<h3 style=\'margin:0;\'>\" . htmlspecialchars($row[\'nume\']) . \" - \" . htmlspecialchars(number_format($row[\'pret\'], 2)) . \" lei</h3>\";\r\n    echo \"<p style=\'margin:5px 0;\'>\" . htmlspecialchars($row[\'descriere\']) . \"</p>\";\r\n    echo \"</div>\";\r\n}\r\n\r\necho \"</div>\";\r\n\r\n$mysqli->close();\r\n?>\r\n',1,'',NULL,NULL,NULL,NULL,-2,'mod_custom',1,1,'{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(111,104,'PizzaShop','','{source}<span style=\"font-family:monospace;color:#555555;\"><span style=\"color:#0000cc;\">&lt;?php<br>$host = \'joomla-db\';<br>$user = \'joomla\';<br>$pass = \'parola123\';<br>$db = \'joomla\';<br><br>$conn = new mysqli($host, $user, $pass, $db);<br>if ($conn-&gt;connect_error) {<br><img src=\"/media/sourcerer/images/tab.svg\">die(\"Conexiune eșuată: \" . $conn-&gt;connect_error);<br>}<br><br>// Mesaj de &icirc;nt&acirc;mpinare<br>echo \'<span style=\"color:#117700;\">&lt;div style=\"text-align:center; margin-bottom: 30px;\"&gt;</span>\';<br>echo \'<span style=\"color:#117700;\">&lt;h1 style=\"color:#e63946; font-size:2.5em; margin-bottom:10px;\"&gt;</span>Pizzeria Antonio<span style=\"color:#117700;\">&lt;/h1&gt;</span>\';<br>echo \'<span style=\"color:#117700;\">&lt;p style=\"font-size:1.3em; color:#333;\"&gt;</span>Bine ai venit la cea mai gustoasă pizzerie din oraș!<span style=\"color:#117700;\">&lt;/p&gt;</span>\';<br>echo \'<span style=\"color:#117700;\">&lt;p style=\"font-size:1.3em; color:#333;\"&gt;</span>Iată meniul nostru!!!<span style=\"color:#117700;\">&lt;/p&gt;</span>\';<br>echo \'<span style=\"color:#117700;\">&lt;/div&gt;</span>\';<br><br>$sql = \"SELECT name, description, price, image_url FROM pizza_images\";<br>$result = $conn-&gt;query($sql);<br><br>echo \'<span style=\"color:#117700;\">&lt;div class=\"menu\"&gt;</span>\';<br>while($row = $result-&gt;fetch_assoc()) {<br><img src=\"/media/sourcerer/images/tab.svg\">echo \'<span style=\"color:#117700;\">&lt;div class=\"pizza-item\"&gt;</span>\';<br><img src=\"/media/sourcerer/images/tab.svg\">echo \'<span style=\"color:#117700;\">&lt;h3&gt;</span>\' . htmlspecialchars($row[\"name\"]) . \' - \' . htmlspecialchars($row[\"price\"]) . \' lei<span style=\"color:#117700;\">&lt;/h3&gt;</span>\';<br><img src=\"/media/sourcerer/images/tab.svg\">echo \'<span style=\"color:#117700;\">&lt;img src=\"\' . htmlspecialchars($row[\"image_url\"]) . \'\" style=\"max-width:200px;\"&gt;</span><span style=\"color:#117700;\">&lt;br&gt;</span>\';<br><img src=\"/media/sourcerer/images/tab.svg\">echo \'<span style=\"color:#117700;\">&lt;p&gt;</span>\' . htmlspecialchars($row[\"description\"]) . \'<span style=\"color:#117700;\">&lt;/p&gt;</span>\';<br><img src=\"/media/sourcerer/images/tab.svg\">echo \'<span style=\"color:#117700;\">&lt;/div&gt;</span>\';<br>}<br>echo \'<span style=\"color:#117700;\">&lt;/div&gt;</span>\';<br><br>$conn-&gt;close();<br>?&gt;</span></span>{/source}',1,'main-bottom',NULL,NULL,'2025-04-28 17:47:29',NULL,1,'mod_custom',1,1,'{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `aq6ko_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_modules_menu`
--

DROP TABLE IF EXISTS `aq6ko_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_modules_menu`
--

LOCK TABLES `aq6ko_modules_menu` WRITE;
/*!40000 ALTER TABLE `aq6ko_modules_menu` DISABLE KEYS */;
INSERT INTO `aq6ko_modules_menu` VALUES
(1,0),
(2,0),
(3,0),
(4,0),
(6,0),
(7,0),
(8,0),
(9,0),
(10,0),
(12,0),
(14,0),
(15,0),
(16,0),
(17,0),
(79,0),
(86,0),
(87,0),
(88,0),
(89,0),
(90,0),
(91,0),
(92,0),
(93,0),
(94,0),
(95,0),
(96,0),
(97,0),
(98,0),
(99,0),
(100,0),
(101,0),
(102,0),
(103,0),
(104,0),
(105,0),
(106,0),
(107,0),
(108,0),
(109,0),
(110,101),
(111,101);
/*!40000 ALTER TABLE `aq6ko_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_newsfeeds`
--

DROP TABLE IF EXISTS `aq6ko_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `numarticles` int(10) unsigned NOT NULL DEFAULT 1,
  `cache_time` int(10) unsigned NOT NULL DEFAULT 3600,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_newsfeeds`
--

LOCK TABLES `aq6ko_newsfeeds` WRITE;
/*!40000 ALTER TABLE `aq6ko_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_overrider`
--

DROP TABLE IF EXISTS `aq6ko_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_overrider` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_overrider`
--

LOCK TABLES `aq6ko_overrider` WRITE;
/*!40000 ALTER TABLE `aq6ko_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_postinstall_messages`
--

DROP TABLE IF EXISTS `aq6ko_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_postinstall_messages`
--

LOCK TABLES `aq6ko_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `aq6ko_postinstall_messages` DISABLE KEYS */;
INSERT INTO `aq6ko_postinstall_messages` VALUES
(1,241,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),
(2,241,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),
(3,241,'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION','plg_system_httpheaders',1,'action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_condition','4.0.0',1),
(4,241,'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION','com_users',1,'action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_condition','4.2.0',1);
/*!40000 ALTER TABLE `aq6ko_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_privacy_consents`
--

DROP TABLE IF EXISTS `aq6ko_privacy_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_privacy_consents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_privacy_consents`
--

LOCK TABLES `aq6ko_privacy_consents` WRITE;
/*!40000 ALTER TABLE `aq6ko_privacy_consents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_privacy_consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_privacy_requests`
--

DROP TABLE IF EXISTS `aq6ko_privacy_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_privacy_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) NOT NULL DEFAULT '',
  `confirm_token` varchar(100) NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_privacy_requests`
--

LOCK TABLES `aq6ko_privacy_requests` WRITE;
/*!40000 ALTER TABLE `aq6ko_privacy_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_privacy_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_redirect_links`
--

DROP TABLE IF EXISTS `aq6ko_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) NOT NULL,
  `new_url` varchar(2048) DEFAULT NULL,
  `referer` varchar(2048) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint(6) NOT NULL DEFAULT 301,
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modified` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_redirect_links`
--

LOCK TABLES `aq6ko_redirect_links` WRITE;
/*!40000 ALTER TABLE `aq6ko_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_scheduler_logs`
--

DROP TABLE IF EXISTS `aq6ko_scheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_scheduler_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(255) NOT NULL DEFAULT '',
  `tasktype` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `duration` decimal(5,3) NOT NULL,
  `jobid` int(10) unsigned NOT NULL,
  `taskid` int(10) unsigned NOT NULL,
  `exitcode` int(11) NOT NULL,
  `lastdate` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `nextdate` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  PRIMARY KEY (`id`),
  KEY `idx_taskname` (`taskname`),
  KEY `idx_tasktype` (`tasktype`),
  KEY `idx_lastdate` (`lastdate`),
  KEY `idx_nextdate` (`nextdate`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_scheduler_logs`
--

LOCK TABLES `aq6ko_scheduler_logs` WRITE;
/*!40000 ALTER TABLE `aq6ko_scheduler_logs` DISABLE KEYS */;
INSERT INTO `aq6ko_scheduler_logs` VALUES
(1,'Session GC','Session Data Purge',0.001,2,1,0,'2025-04-24 18:00:56','2025-04-25 18:00:56'),
(2,'Update Notification','Joomla! Update Notification',1.512,3,1,0,'2025-04-24 18:01:04','2025-04-25 18:01:05'),
(3,'Session GC','Session Data Purge',0.000,2,2,0,'2025-04-25 19:11:57','2025-04-26 19:11:57'),
(4,'Update Notification','Joomla! Update Notification',1.394,3,2,0,'2025-04-25 19:12:19','2025-04-26 19:12:20'),
(5,'Session GC','Session Data Purge',0.000,2,3,0,'2025-04-28 16:31:58','2025-04-29 16:31:58'),
(6,'Update Notification','Joomla! Update Notification',1.164,3,3,0,'2025-04-28 16:32:01','2025-04-29 16:32:02');
/*!40000 ALTER TABLE `aq6ko_scheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_scheduler_tasks`
--

DROP TABLE IF EXISTS `aq6ko_scheduler_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_scheduler_tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text DEFAULT NULL COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text DEFAULT NULL COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `last_exit_code` int(11) NOT NULL DEFAULT 0 COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int(11) DEFAULT 0 COMMENT 'Count of successful triggers',
  `times_failed` int(11) DEFAULT 0 COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint(6) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0 COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint(6) NOT NULL DEFAULT 0 COMMENT 'If 1, the task is only accessible via CLI',
  `params` text NOT NULL,
  `note` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_state` (`state`),
  KEY `idx_last_exit` (`last_exit_code`),
  KEY `idx_next_exec` (`next_execution`),
  KEY `idx_locked` (`locked`),
  KEY `idx_priority` (`priority`),
  KEY `idx_cli_exclusive` (`cli_exclusive`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_scheduler_tasks`
--

LOCK TABLES `aq6ko_scheduler_tasks` WRITE;
/*!40000 ALTER TABLE `aq6ko_scheduler_tasks` DISABLE KEYS */;
INSERT INTO `aq6ko_scheduler_tasks` VALUES
(1,97,'Rotate Logs','rotation.logs','{\"rule-type\":\"interval-days\",\"interval-days\":\"30\",\"exec-day\":\"23\",\"exec-time\":\"13:00\"}','{\"type\":\"interval\",\"exp\":\"P30D\"}',1,0,NULL,'2025-05-23 13:00:00',0,0,NULL,0,0,0,'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"logstokeep\":1}',NULL,'2025-04-23 13:38:46',772,NULL,NULL),
(2,98,'Session GC','session.gc','{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"13:00\"}','{\"type\":\"interval\",\"exp\":\"PT24H\"}',1,0,'2025-04-28 16:31:58','2025-04-29 16:31:58',3,0,NULL,0,0,0,'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"enable_session_gc\":1,\"enable_session_metadata_gc\":1}',NULL,'2025-04-23 13:38:46',772,NULL,NULL),
(3,99,'Update Notification','update.notification','{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"13:00\"}','{\"type\":\"interval\",\"exp\":\"PT24H\"}',1,0,'2025-04-28 16:32:01','2025-04-29 16:32:02',3,0,NULL,0,0,0,'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"email\":\"\",\"language_override\":\"\"}',NULL,'2025-04-23 13:38:46',772,NULL,NULL);
/*!40000 ALTER TABLE `aq6ko_scheduler_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_schemaorg`
--

DROP TABLE IF EXISTS `aq6ko_schemaorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_schemaorg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemId` int(10) unsigned DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `schemaType` varchar(100) DEFAULT NULL,
  `schema` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_schemaorg`
--

LOCK TABLES `aq6ko_schemaorg` WRITE;
/*!40000 ALTER TABLE `aq6ko_schemaorg` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_schemaorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_schemas`
--

DROP TABLE IF EXISTS `aq6ko_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_schemas`
--

LOCK TABLES `aq6ko_schemas` WRITE;
/*!40000 ALTER TABLE `aq6ko_schemas` DISABLE KEYS */;
INSERT INTO `aq6ko_schemas` VALUES
(241,'5.3.0-2025-03-14');
/*!40000 ALTER TABLE `aq6ko_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_session`
--

DROP TABLE IF EXISTS `aq6ko_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(3) unsigned DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_session`
--

LOCK TABLES `aq6ko_session` WRITE;
/*!40000 ALTER TABLE `aq6ko_session` DISABLE KEYS */;
INSERT INTO `aq6ko_session` VALUES
('2d394b8a9217a9ad9c5386ebf8dab444',1,0,1745863178,'joomla|s:10132:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjY6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjkzMTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE3NDU4NTc5MTg7czo0OiJsYXN0IjtpOjE3NDU4NjMxNzg7czozOiJub3ciO2k6MTc0NTg2MzE3ODt9czo1OiJ0b2tlbiI7czozMjoiOGFiM2I5M2JmZDM1YzlmMzQyOWIxMmFiMWI0YWNiZmEiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Nzp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6NDp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjtzOjEyOiJyZWRpcmVjdF91cmwiO047czo2OiJtYW5hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjthOjc6e3M6Njoic2VhcmNoIjtzOjY6IlNvdXJjZSI7czo2OiJzdGF0dXMiO3M6MDoiIjtzOjk6ImNsaWVudF9pZCI7czowOiIiO3M6NDoidHlwZSI7czowOiIiO3M6NjoiZm9sZGVyIjtzOjA6IiI7czoxMDoicGFja2FnZV9pZCI7czowOiIiO3M6NDoiY29yZSI7czowOiIiO31zOjQ6Imxpc3QiO2E6Mjp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjg6Im5hbWUgQVNDIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjt9czoxMDoibGltaXRzdGFydCI7aTowO319czoxMToiY29tX3BsdWdpbnMiO086ODoic3RkQ2xhc3MiOjI6e3M6NzoicGx1Z2lucyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo2OiJmaWx0ZXIiO2E6NTp7czo2OiJzZWFyY2giO3M6NzoiY29udGVudCI7czo3OiJlbmFibGVkIjtzOjA6IiI7czo2OiJmb2xkZXIiO3M6MDoiIjtzOjc6ImVsZW1lbnQiO3M6MDoiIjtzOjY6ImFjY2VzcyI7czowOiIiO31zOjQ6Imxpc3QiO2E6NDp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjEwOiJmb2xkZXIgQVNDIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjk6InNvcnRUYWJsZSI7czo2OiJmb2xkZXIiO3M6MTQ6ImRpcmVjdGlvblRhYmxlIjtzOjM6IkFTQyI7fXM6MTA6ImxpbWl0c3RhcnQiO2k6MDt9czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6InBsdWdpbiI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319fXM6MTA6ImNvbV9jb25maWciO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiY29uZmlnIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Imdsb2JhbCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjthOjEwMzp7czo3OiJjYWNoaW5nIjtpOjA7czoxMzoiY2FjaGVfaGFuZGxlciI7czo0OiJmaWxlIjtzOjIwOiJjYWNoZV9wbGF0Zm9ybXByZWZpeCI7YjowO3M6OToiY2FjaGV0aW1lIjtpOjE1O3M6MTA6ImNhY2hlX3BhdGgiO3M6MDoiIjtzOjE3OiJtZW1jYWNoZWRfcGVyc2lzdCI7YjoxO3M6MTg6Im1lbWNhY2hlZF9jb21wcmVzcyI7YjowO3M6MjE6Im1lbWNhY2hlZF9zZXJ2ZXJfaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6MjE6Im1lbWNhY2hlZF9zZXJ2ZXJfcG9ydCI7aToxMTIxMTtzOjEzOiJyZWRpc19wZXJzaXN0IjtiOjE7czoxNzoicmVkaXNfc2VydmVyX2hvc3QiO3M6OToibG9jYWxob3N0IjtzOjE3OiJyZWRpc19zZXJ2ZXJfcG9ydCI7aTo2Mzc5O3M6MTc6InJlZGlzX3NlcnZlcl9hdXRoIjtzOjA6IiI7czoxNToicmVkaXNfc2VydmVyX2RiIjtpOjA7czo2OiJkYnR5cGUiO3M6NjoibXlzcWxpIjtzOjQ6Imhvc3QiO3M6OToiam9vbWxhLWRiIjtzOjQ6InVzZXIiO3M6Njoiam9vbWxhIjtzOjg6InBhc3N3b3JkIjtzOjk6InBhcm9sYTEyMyI7czoyOiJkYiI7czo2OiJqb29tbGEiO3M6ODoiZGJwcmVmaXgiO3M6NjoiYXE2a29fIjtzOjEyOiJkYmVuY3J5cHRpb24iO2k6MDtzOjg6ImRic3Nsa2V5IjtzOjA6IiI7czo5OiJkYnNzbGNlcnQiO3M6MDoiIjtzOjIxOiJkYnNzbHZlcmlmeXNlcnZlcmNlcnQiO2I6MDtzOjc6ImRic3NsY2EiO3M6MDoiIjtzOjExOiJkYnNzbGNpcGhlciI7czowOiIiO3M6NToiZGVidWciO2I6MDtzOjEwOiJkZWJ1Z19sYW5nIjtiOjA7czoxNjoiZGVidWdfbGFuZ19jb25zdCI7YjoxO3M6NDoiY29ycyI7YjowO3M6MTc6ImNvcnNfYWxsb3dfb3JpZ2luIjtzOjE6IioiO3M6MTg6ImNvcnNfYWxsb3dfaGVhZGVycyI7czoyNzoiQ29udGVudC1UeXBlLFgtSm9vbWxhLVRva2VuIjtzOjE4OiJjb3JzX2FsbG93X21ldGhvZHMiO3M6MDoiIjtzOjE5OiJiZWhpbmRfbG9hZGJhbGFuY2VyIjtiOjA7czoxMjoicHJveHlfZW5hYmxlIjtiOjA7czoxMDoicHJveHlfaG9zdCI7czowOiIiO3M6MTA6InByb3h5X3BvcnQiO3M6MDoiIjtzOjEwOiJwcm94eV91c2VyIjtzOjA6IiI7czo2OiJvZmZzZXQiO3M6MzoiVVRDIjtzOjEwOiJtYWlsb25saW5lIjtiOjE7czoxMToibWFzc21haWxvZmYiO2I6MDtzOjg6Im1haWxmcm9tIjtzOjI0OiJhbnRvbmlvaGVhc2NhNEBnbWFpbC5jb20iO3M6ODoiZnJvbW5hbWUiO3M6OToiUGl6emFTaG9wIjtzOjc6InJlcGx5dG8iO3M6MDoiIjtzOjExOiJyZXBseXRvbmFtZSI7czowOiIiO3M6NjoibWFpbGVyIjtzOjQ6Im1haWwiO3M6ODoic2VuZG1haWwiO3M6MTg6Ii91c3Ivc2Jpbi9zZW5kbWFpbCI7czo4OiJzbXRwaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6ODoic210cHBvcnQiO2k6MjU7czoxMDoic210cHNlY3VyZSI7czo0OiJub25lIjtzOjg6InNtdHBhdXRoIjtiOjA7czo4OiJzbXRwdXNlciI7czowOiIiO3M6ODoic210cHBhc3MiO3M6MDoiIjtzOjg6Ik1ldGFEZXNjIjtzOjA6IiI7czo2OiJyb2JvdHMiO3M6MDoiIjtzOjEwOiJNZXRhUmlnaHRzIjtzOjA6IiI7czoxMDoiTWV0YUF1dGhvciI7YjoxO3M6MTE6Ik1ldGFWZXJzaW9uIjtiOjA7czozOiJzZWYiO2I6MTtzOjExOiJzZWZfcmV3cml0ZSI7YjowO3M6MTA6InNlZl9zdWZmaXgiO2I6MDtzOjEyOiJ1bmljb2Rlc2x1Z3MiO2I6MDtzOjE5OiJzaXRlbmFtZV9wYWdldGl0bGVzIjtpOjA7czo4OiJ0bXBfcGF0aCI7czoxNzoiL3Zhci93d3cvaHRtbC90bXAiO3M6NDoiZ3ppcCI7YjowO3M6MTU6ImVycm9yX3JlcG9ydGluZyI7czo3OiJkZWZhdWx0IjtzOjk6ImZvcmNlX3NzbCI7aTowO3M6MTU6InNlc3Npb25faGFuZGxlciI7czo4OiJkYXRhYmFzZSI7czoyMzoic2Vzc2lvbl9maWxlc3lzdGVtX3BhdGgiO3M6MDoiIjtzOjI5OiJzZXNzaW9uX21lbWNhY2hlZF9zZXJ2ZXJfaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6Mjk6InNlc3Npb25fbWVtY2FjaGVkX3NlcnZlcl9wb3J0IjtpOjExMjExO3M6MjE6InNlc3Npb25fcmVkaXNfcGVyc2lzdCI7aToxO3M6MjU6InNlc3Npb25fcmVkaXNfc2VydmVyX2hvc3QiO3M6OToibG9jYWxob3N0IjtzOjI1OiJzZXNzaW9uX3JlZGlzX3NlcnZlcl9wb3J0IjtpOjYzNzk7czoyNToic2Vzc2lvbl9yZWRpc19zZXJ2ZXJfYXV0aCI7czowOiIiO3M6MjM6InNlc3Npb25fcmVkaXNfc2VydmVyX2RiIjtpOjA7czo4OiJsaWZldGltZSI7aToxNTtzOjE0OiJzaGFyZWRfc2Vzc2lvbiI7YjowO3M6MTY6InNlc3Npb25fbWV0YWRhdGEiO2I6MTtzOjI2OiJzZXNzaW9uX21ldGFkYXRhX2Zvcl9ndWVzdCI7YjoxO3M6ODoic2l0ZW5hbWUiO3M6OToiUGl6emFTaG9wIjtzOjc6Im9mZmxpbmUiO2I6MDtzOjIzOiJkaXNwbGF5X29mZmxpbmVfbWVzc2FnZSI7aToxO3M6MTU6Im9mZmxpbmVfbWVzc2FnZSI7czo2OToiVGhpcyBzaXRlIGlzIGRvd24gZm9yIG1haW50ZW5hbmNlLjxiciAvPlBsZWFzZSBjaGVjayBiYWNrIGFnYWluIHNvb24uIjtzOjEzOiJvZmZsaW5lX2ltYWdlIjtzOjA6IiI7czoxMjoiZnJvbnRlZGl0aW5nIjtpOjE7czo2OiJlZGl0b3IiO3M6MTA6ImNvZGVtaXJyb3IiO3M6NzoiY2FwdGNoYSI7czoxOiIwIjtzOjY6ImFjY2VzcyI7aToxO3M6MTA6Imxpc3RfbGltaXQiO2k6MjA7czoxMDoiZmVlZF9saW1pdCI7aToxMDtzOjEwOiJmZWVkX2VtYWlsIjtzOjQ6Im5vbmUiO3M6ODoibG9nX3BhdGgiO3M6MzI6Ii92YXIvd3d3L2h0bWwvYWRtaW5pc3RyYXRvci9sb2dzIjtzOjE0OiJsb2dfZXZlcnl0aGluZyI7aTowO3M6MTQ6ImxvZ19kZXByZWNhdGVkIjtpOjA7czoxNDoibG9nX3ByaW9yaXRpZXMiO2E6MTp7aTowO3M6MzoiYWxsIjt9czoxNDoibG9nX2NhdGVnb3JpZXMiO3M6MDoiIjtzOjE3OiJsb2dfY2F0ZWdvcnlfbW9kZSI7aTowO3M6MTM6ImNvb2tpZV9kb21haW4iO3M6MDoiIjtzOjExOiJjb29raWVfcGF0aCI7czowOiIiO3M6NToicnVsZXMiO2E6MTM6e3M6MTU6ImNvcmUubG9naW4uc2l0ZSI7YToyOntpOjY7YjoxO2k6MjtiOjE7fXM6MTY6ImNvcmUubG9naW4uYWRtaW4iO2E6MTp7aTo2O2I6MTt9czoxNDoiY29yZS5sb2dpbi5hcGkiO2E6MTp7aTo4O2I6MTt9czoxODoiY29yZS5sb2dpbi5vZmZsaW5lIjthOjE6e2k6NjtiOjE7fXM6MTA6ImNvcmUuYWRtaW4iO2E6MTp7aTo4O2I6MTt9czoxMjoiY29yZS5vcHRpb25zIjthOjA6e31zOjExOiJjb3JlLm1hbmFnZSI7YToxOntpOjc7YjoxO31zOjExOiJjb3JlLmNyZWF0ZSI7YToyOntpOjY7YjoxO2k6MztiOjE7fXM6MTE6ImNvcmUuZGVsZXRlIjthOjE6e2k6NjtiOjE7fXM6OToiY29yZS5lZGl0IjthOjI6e2k6NjtiOjE7aTo0O2I6MTt9czoxNToiY29yZS5lZGl0LnN0YXRlIjthOjI6e2k6NjtiOjE7aTo1O2I6MTt9czoxMzoiY29yZS5lZGl0Lm93biI7YToyOntpOjY7YjoxO2k6MztiOjE7fXM6MTU6ImNvcmUuZWRpdC52YWx1ZSI7YTowOnt9fXM6NzoiZmlsdGVycyI7YTo5OntpOjE7YTozOntzOjExOiJmaWx0ZXJfdHlwZSI7czo0OiJOT05FIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6OTthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjQ6Ik5PTkUiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo2O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6NDoiTk9ORSI7czoxMToiZmlsdGVyX3RhZ3MiO3M6MDoiIjtzOjE3OiJmaWx0ZXJfYXR0cmlidXRlcyI7czowOiIiO31pOjc7YTozOntzOjExOiJmaWx0ZXJfdHlwZSI7czo0OiJOT05FIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6MjthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjQ6Ik5PTkUiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTozO2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6NDoiTk9ORSI7czoxMToiZmlsdGVyX3RhZ3MiO3M6MDoiIjtzOjE3OiJmaWx0ZXJfYXR0cmlidXRlcyI7czowOiIiO31pOjQ7YTozOntzOjExOiJmaWx0ZXJfdHlwZSI7czo0OiJOT05FIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6NTthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjQ6Ik5PTkUiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo4O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6NDoiTk9ORSI7czoxMToiZmlsdGVyX3RhZ3MiO3M6MDoiIjtzOjE3OiJmaWx0ZXJfYXR0cmlidXRlcyI7czowOiIiO319czo4OiJhc3NldF9pZCI7czoxOiIxIjt9fX19czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoibW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxOiIwIjtPOjg6InN0ZENsYXNzIjoyOntzOjk6ImNsaWVudF9pZCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czoxMDoiYS5wb3NpdGlvbiI7czo1OiJzdGFydCI7ZDowO319czo5OiJjbGllbnRfaWQiO3M6MToiMCI7fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjE6e2k6MDtpOjE3O319fXM6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZXh0ZW5zaW9uX2lkIjtOO3M6NjoicGFyYW1zIjtOO319fXM6MTE6ImNvbV9jb250ZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiYXJ0aWNsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YToxOntpOjA7aTozO31zOjQ6ImRhdGEiO047fX19czo5OiJjb21fbWVudXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NToiaXRlbXMiO086ODoic3RkQ2xhc3MiOjU6e3M6NToibW9kYWwiO086ODoic3RkQ2xhc3MiOjI6e3M6ODoibWVudXR5cGUiO3M6MDoiIjtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fXM6ODoibWVudXR5cGUiO3M6ODoibWFpbm1lbnUiO3M6OToiY2xpZW50X2lkIjtpOjA7czoxMDoibGltaXRzdGFydCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6Iml0ZW0iO086ODoic3RkQ2xhc3MiOjQ6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7TjtzOjQ6InR5cGUiO047czo0OiJsaW5rIjtOO319fXM6MTM6ImNvbV90ZW1wbGF0ZXMiO086ODoic3RkQ2xhc3MiOjM6e3M6OToidGVtcGxhdGVzIjtPOjg6InN0ZENsYXNzIjo0OntzOjk6ImNsaWVudF9pZCI7aTowO3M6NDoibGlzdCI7YToyOntzOjEyOiJmdWxsb3JkZXJpbmciO3M6MTM6ImEuZWxlbWVudCBBU0MiO3M6NToibGltaXQiO3M6MjoiMjAiO31zOjY6ImZpbHRlciI7YToxOntzOjY6InNlYXJjaCI7czowOiIiO31zOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fXM6Njoic3R5bGVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjk6ImNsaWVudF9pZCI7czoxOiIwIjtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6MTA6ImEudGVtcGxhdGUiO3M6NToic3RhcnQiO2Q6MDt9fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJzdHlsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTo3NzI7fXM6OToiY29tX3VzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJtZmFfY2hlY2tlZCI7aToxO31zOjg6Im92ZXJyaWRlIjtPOjg6InN0ZENsYXNzIjowOnt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',772,'antonioheasca'),
('3c2088299632268e7b5d66c3422fa20e',1,0,1745867698,'joomla|s:1460:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjY6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjI5O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTc0NTg2NzI0NjtzOjQ6Imxhc3QiO2k6MTc0NTg2NzY5ODtzOjM6Im5vdyI7aToxNzQ1ODY3Njk4O31zOjU6InRva2VuIjtzOjMyOiI3MjM4MzhkM2YyODNiNjM4NTg2Y2FiN2IwNmFlZmZhOCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjo0OntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO3M6NjoibWFuYWdlIjtPOjg6InN0ZENsYXNzIjozOntzOjY6ImZpbHRlciI7YTo3OntzOjY6InNlYXJjaCI7czo5OiJTb3VyY2VyZXIiO3M6Njoic3RhdHVzIjtzOjA6IiI7czo5OiJjbGllbnRfaWQiO3M6MDoiIjtzOjQ6InR5cGUiO3M6MDoiIjtzOjY6ImZvbGRlciI7czo2OiJzeXN0ZW0iO3M6MTA6InBhY2thZ2VfaWQiO3M6MDoiIjtzOjQ6ImNvcmUiO3M6MDoiIjt9czo0OiJsaXN0IjthOjI6e3M6MTI6ImZ1bGxvcmRlcmluZyI7czo4OiJuYW1lIEFTQyI7czo1OiJsaW1pdCI7czoyOiIyMCI7fXM6MTA6ImxpbWl0c3RhcnQiO2k6MDt9czoxMjoicmVkaXJlY3RfdXJsIjtOO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6NzcyO31zOjk6ImNvbV91c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMToibWZhX2NoZWNrZWQiO2k6MTt9czo4OiJvdmVycmlkZSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',772,'antonioheasca'),
('5fc33d48495f0d89f5fc654b0501a730',0,1,1745867700,'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE1MjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE3NDU4NjcyMzA7czo0OiJsYXN0IjtpOjE3NDU4Njc1NTA7czozOiJub3ciO2k6MTc0NTg2NzcwMDt9czo1OiJ0b2tlbiI7czozMjoiZWZjZWY4MTUxYmIxNTQxYTAwOWFlYTk3ZGQwNTdkODUiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";',0,''),
('f674e0d4048262244984a03b73ee673f',0,1,1745863193,'joomla|s:776:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzQ1ODYwOTQ2O3M6NDoibGFzdCI7aToxNzQ1ODYzMTkyO3M6Mzoibm93IjtpOjE3NDU4NjMxOTM7fXM6NzoiY291bnRlciI7aToyNTY7czo1OiJ0b2tlbiI7czozMjoiYmYxZTA0MGIyNTQzZjk3YzU1NGEwMGU5YmYyZWRlODQiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',0,'');
/*!40000 ALTER TABLE `aq6ko_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_tags`
--

DROP TABLE IF EXISTS `aq6ko_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_tags`
--

LOCK TABLES `aq6ko_tags` WRITE;
/*!40000 ALTER TABLE `aq6ko_tags` DISABLE KEYS */;
INSERT INTO `aq6ko_tags` VALUES
(1,0,0,1,0,'','ROOT','root','','',1,NULL,NULL,1,'','','','',772,'2025-04-23 13:38:46','',772,'2025-04-23 13:38:46','','',0,'*',1,NULL,NULL);
/*!40000 ALTER TABLE `aq6ko_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_template_overrides`
--

DROP TABLE IF EXISTS `aq6ko_template_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_template_overrides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `hash_id` varchar(255) NOT NULL DEFAULT '',
  `extension_id` int(11) DEFAULT 0,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `action` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_extension_id` (`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_template_overrides`
--

LOCK TABLES `aq6ko_template_overrides` WRITE;
/*!40000 ALTER TABLE `aq6ko_template_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_template_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_template_styles`
--

DROP TABLE IF EXISTS `aq6ko_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_template_styles`
--

LOCK TABLES `aq6ko_template_styles` WRITE;
/*!40000 ALTER TABLE `aq6ko_template_styles` DISABLE KEYS */;
INSERT INTO `aq6ko_template_styles` VALUES
(10,'atum',1,'1','Atum - Default',1,'','{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"colorScheme\":\"os\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),
(11,'cassiopeia',0,'1','Cassiopeia - Default',1,'','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"systemFontBody\":\"\",\"systemFontHeading\":\"\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}');
/*!40000 ALTER TABLE `aq6ko_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_tuf_metadata`
--

DROP TABLE IF EXISTS `aq6ko_tuf_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_tuf_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT 0,
  `root` text DEFAULT NULL,
  `targets` text DEFAULT NULL,
  `snapshot` text DEFAULT NULL,
  `timestamp` text DEFAULT NULL,
  `mirrors` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Secure TUF Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_tuf_metadata`
--

LOCK TABLES `aq6ko_tuf_metadata` WRITE;
/*!40000 ALTER TABLE `aq6ko_tuf_metadata` DISABLE KEYS */;
INSERT INTO `aq6ko_tuf_metadata` VALUES
(1,1,'{\"signed\":{\"_type\":\"root\",\"spec_version\":\"1.0\",\"version\":6,\"expires\":\"2026-01-04T10:59:13Z\",\"keys\":{\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"9b2af2d9b9727227735253d795bd27ea8f0e294a5f3603e822dc5052b44802b9\"}},\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a18e5ebabc19d5d5984b601a292ece61ba3662ab2d071dc520da5bd4f8948799\"}},\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"cb0a7a131961a20edea051d6dc2b091fb650bd399bd8514adb67b3c60db9f8f9\"}},\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"589d029a68b470deff1ca16dbf3eea6b5b3fcba0ae7bb52c468abc7fb058b2a2\"}},\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6043c8bacc76ac5c9750f45454dd865c6ca1fc57d69e14cc192cfd420f6a66a9\"}},\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a4b8509488f1c29ab0b1f610e7452fbec78b4f33f1fba5a418d6ff087c567429\"}},\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6eb44460e5914e8e0df726ddb90bd1f3771b8ce5af19b40fb01ac5a85b023a6f\"}},\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ad1950e117b29ebe7a38635a2e574123e07571e4f9a011783e053b5f15d2562a\"}},\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"5d451915bc2b93a0e4e4745bc6a8b292d58996d50e0fb66c78c7827152a65879\"}}},\"roles\":{\"root\":{\"keyids\":[\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\"],\"threshold\":1},\"snapshot\":{\"keyids\":[\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\"],\"threshold\":1},\"targets\":{\"keyids\":[\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\"],\"threshold\":1},\"timestamp\":{\"keyids\":[\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\"],\"threshold\":1}},\"consistent_snapshot\":true},\"signatures\":[{\"keyid\":\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"sig\":\"ba9fc6e7ff7a8b85d8c60eb0319e6be7a501aba26898ed1ad64db6726b5315f3f426fcf29e632f2cbdb83a888324a1a0963d3145e0a0b34803be4c6e20732d0d\"}]}','{\"signed\":{\"_type\":\"targets\",\"spec_version\":\"1.0\",\"version\":45,\"expires\":\"2025-07-15T15:52:29Z\",\"targets\":{\"Joomla_5.1.2-Stable-Upgrade_Package.zip\":{\"length\":28134889,\"hashes\":{\"sha512\":\"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html\",\"title\":\"Joomla! 5.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.2\"}},\"Joomla_5.2.6-Stable-Update_Package.zip\":{\"length\":28858320,\"hashes\":{\"sha512\":\"6a3d43d074e52d700c9c979f48707ac1cbcffb4a10a93b5b719250b131a0951a2202db6cc47875b702012a63db6a7df71d358b49d034b0bb28954ebdb009145c\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.6 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-2-6/Joomla_5.2.6-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.6/Joomla_5.2.6-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.2.6/Joomla_5.2.6-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5925-joomla-5-2-6-security-release.html\",\"title\":\"Joomla! 5.2.6 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.6\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.6\"}},\"Joomla_5.3.0-Stable-Update_Package.zip\":{\"length\":29094600,\"hashes\":{\"sha512\":\"6c97969b1d4c18cd64db20f49d82e4a5b8a32c563422a2b5608a5707d5425d1b7d9d3a344b2dc15f3b505e3bf198fabbbb1137cc93ced74c1de632139384efb0\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.3.0 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-3-0/Joomla_5.3.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.3.0/Joomla_5.3.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.3.0/Joomla_5.3.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5927-joomla-5-3-is-here.html\",\"title\":\"Joomla! 5.3.0 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.3.0\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.3.0\"}},\"Joomla_5.3.0-rc1-Release_Candidate-Update_Package.zip\":{\"length\":29060802,\"hashes\":{\"sha512\":\"498b052058fc0d4a28c8466d9db7fe8d97cbe4cf491d78cbab78d3aa66b888f30fb1fa71de1dfe26c0fd244c51dc8c7be6ba80750100ab6132eb57df444f2f53\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.3.0-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.3.0-rc1/Joomla_5.3.0-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5923-joomla-5-3-0-release-candidate.html\",\"title\":\"Joomla! 5.3.0-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.3.0-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.3.0-rc1\"}},\"Joomla_5.3.0-rc2-Release_Candidate-Update_Package.zip\":{\"length\":29075074,\"hashes\":{\"sha512\":\"9ecebc56f171d16ce65f9199393093201c2a34b02447dfed5703549821b21eec311da7cfdde899dd6dd9a3b823624901f351dd3c70ea7215e1b190480f30fbdb\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.3.0-rc2 Release Candidate\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.3.0-rc2/Joomla_5.3.0-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5924-joomla-5-3-0-release-candidate-2.html\",\"title\":\"Joomla! 5.3.0-rc2 Release Candidate\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.3.0-rc2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.3.0-rc2\"}}}},\"signatures\":[{\"keyid\":\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"sig\":\"95d8905d3cd5b4159fe71f8b8442abb7f9aad4914c9efca4dbd5d61cf1be4bf53274e4e5f1482762c317bd448bc5787dc3a3b138331dad1fce9e7f9393e0ae06\"},{\"keyid\":\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"sig\":\"98909c1a4e5997749d303c22450119738b13c2e7ae797837fe8d675a6b31b0751773f96f0cb09f3c45a887d3ce976f9565dabe612bf821843867bf000bb48c09\"}]}','{\"signed\":{\"_type\":\"snapshot\",\"spec_version\":\"1.0\",\"version\":50,\"expires\":\"2025-11-11T15:57:56Z\",\"meta\":{\"targets.json\":{\"length\":6104,\"hashes\":{\"sha512\":\"28f0c208b4ebadbdbf8809fc847fe4e5b59965567e40362b1b9c7ca0b3df4130cf6dbf9524c8a0ae7e65c98ed4c6ede23874f5eaff1e0b20ae7b7144efbb01a9\"},\"version\":45}}},\"signatures\":[{\"keyid\":\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"sig\":\"918c5d8a068c91f4e51303b1c56326db01f8025ee7b30c113ba7e47eee614ea78657e6d8f8e0f730c6efd965a558062d43bc38069dfe5929470859982449a304\"}]}','{\"signed\":{\"_type\":\"timestamp\",\"spec_version\":\"1.0\",\"version\":561,\"expires\":\"2025-04-30T01:11:51Z\",\"meta\":{\"snapshot.json\":{\"length\":531,\"hashes\":{\"sha512\":\"1346dde0dbd5e8fcc7760ffd68e3346f5b9a9ce4f9f0a398abb6d1bca68ce3803645172bf54aa1af52859a2ad1e73b027ea788f88058cc897e9952e3db2670b6\"},\"version\":50}}},\"signatures\":[{\"keyid\":\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\",\"sig\":\"8b0cbff65c1ba3a22e666e17cf2bf76cd4fea339aad3fb5ecc3c5b86c75a6be249b136089c778c2a23e3ffde5ea5fd9c2f0f58b1258a82e9428fd07697eb5803\"}]}',NULL);
/*!40000 ALTER TABLE `aq6ko_tuf_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_ucm_base`
--

DROP TABLE IF EXISTS `aq6ko_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_ucm_base`
--

LOCK TABLES `aq6ko_ucm_base` WRITE;
/*!40000 ALTER TABLE `aq6ko_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_ucm_content`
--

DROP TABLE IF EXISTS `aq6ko_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext DEFAULT NULL,
  `core_state` tinyint(4) NOT NULL DEFAULT 0,
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int(10) unsigned DEFAULT NULL,
  `core_access` int(10) unsigned NOT NULL DEFAULT 0,
  `core_params` text DEFAULT NULL,
  `core_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text DEFAULT NULL,
  `core_urls` text DEFAULT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT 0,
  `core_version` int(10) unsigned NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text DEFAULT NULL,
  `core_metadesc` text DEFAULT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT 0,
  `core_type_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_ucm_content`
--

LOCK TABLES `aq6ko_ucm_content` WRITE;
/*!40000 ALTER TABLE `aq6ko_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_update_sites`
--

DROP TABLE IF EXISTS `aq6ko_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_update_sites`
--

LOCK TABLES `aq6ko_update_sites` WRITE;
/*!40000 ALTER TABLE `aq6ko_update_sites` DISABLE KEYS */;
INSERT INTO `aq6ko_update_sites` VALUES
(1,'Joomla! Core','tuf','https://update.joomla.org/cms/',1,1745861529,'',NULL,NULL),
(2,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_5.xml',1,1745861882,'',NULL,NULL),
(3,'Joomla! Update Component','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1745861882,'',NULL,NULL),
(4,'Regular Labs Library','extension','https://download.regularlabs.com/updates.xml?e=library&type=.xml',1,1745861882,'',NULL,NULL),
(5,'Regular Labs - Sourcerer','extension','https://download.regularlabs.com/updates.xml?e=sourcerer&type=.xml',1,1745861883,'',NULL,NULL);
/*!40000 ALTER TABLE `aq6ko_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_update_sites_extensions`
--

DROP TABLE IF EXISTS `aq6ko_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_update_sites_extensions`
--

LOCK TABLES `aq6ko_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `aq6ko_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `aq6ko_update_sites_extensions` VALUES
(1,241),
(2,242),
(3,24),
(4,248),
(5,251);
/*!40000 ALTER TABLE `aq6ko_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_updates`
--

DROP TABLE IF EXISTS `aq6ko_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(4) DEFAULT 0,
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_updates`
--

LOCK TABLES `aq6ko_updates` WRITE;
/*!40000 ALTER TABLE `aq6ko_updates` DISABLE KEYS */;
INSERT INTO `aq6ko_updates` VALUES
(320,2,0,'Afrikaans','','pkg_af-ZA','package','',0,'5.0.2.1','','https://update.joomla.org/language/details5/af-ZA_details.xml','','',''),
(321,2,0,'Belarusian','','pkg_be-BY','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/be-BY_details.xml','','',''),
(322,2,0,'Bulgarian','','pkg_bg-BG','package','',0,'5.2.4.1','','https://update.joomla.org/language/details5/bg-BG_details.xml','','',''),
(323,2,0,'Catalan','','pkg_ca-ES','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/ca-ES_details.xml','','',''),
(324,2,0,'Chinese, Simplified','','pkg_zh-CN','package','',0,'5.1.2.1','','https://update.joomla.org/language/details5/zh-CN_details.xml','','',''),
(325,2,0,'Chinese, Traditional','','pkg_zh-TW','package','',0,'5.0.3.1','','https://update.joomla.org/language/details5/zh-TW_details.xml','','',''),
(326,2,0,'Croatian','','pkg_hr-HR','package','',0,'5.2.1.1','','https://update.joomla.org/language/details5/hr-HR_details.xml','','',''),
(327,2,0,'Czech','','pkg_cs-CZ','package','',0,'5.2.0.1','','https://update.joomla.org/language/details5/cs-CZ_details.xml','','',''),
(328,2,0,'Danish','','pkg_da-DK','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/da-DK_details.xml','','',''),
(329,2,0,'Dutch','','pkg_nl-NL','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/nl-NL_details.xml','','',''),
(330,2,0,'English, Australia','','pkg_en-AU','package','',0,'5.0.3.1','','https://update.joomla.org/language/details5/en-AU_details.xml','','',''),
(331,2,0,'English, Canada','','pkg_en-CA','package','',0,'5.2.4.1','','https://update.joomla.org/language/details5/en-CA_details.xml','','',''),
(332,2,0,'English, New Zealand','','pkg_en-NZ','package','',0,'5.2.4.1','','https://update.joomla.org/language/details5/en-NZ_details.xml','','',''),
(333,2,0,'English, USA','','pkg_en-US','package','',0,'5.2.4.1','','https://update.joomla.org/language/details5/en-US_details.xml','','',''),
(334,2,0,'Estonian','','pkg_et-EE','package','',0,'5.2.5.1','','https://update.joomla.org/language/details5/et-EE_details.xml','','',''),
(335,2,0,'Finnish','','pkg_fi-FI','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/fi-FI_details.xml','','',''),
(336,2,0,'Flemish','','pkg_nl-BE','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/nl-BE_details.xml','','',''),
(337,2,0,'French','','pkg_fr-FR','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/fr-FR_details.xml','','',''),
(338,2,0,'French, Canada','','pkg_fr-CA','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/fr-CA_details.xml','','',''),
(339,2,0,'Georgian','','pkg_ka-GE','package','',0,'5.2.4.1','','https://update.joomla.org/language/details5/ka-GE_details.xml','','',''),
(340,2,0,'German','','pkg_de-DE','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/de-DE_details.xml','','',''),
(341,2,0,'German, Austria','','pkg_de-AT','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/de-AT_details.xml','','',''),
(342,2,0,'German, Liechtenstein','','pkg_de-LI','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/de-LI_details.xml','','',''),
(343,2,0,'German, Luxembourg','','pkg_de-LU','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/de-LU_details.xml','','',''),
(344,2,0,'German, Switzerland','','pkg_de-CH','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/de-CH_details.xml','','',''),
(345,2,0,'Greek','','pkg_el-GR','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/el-GR_details.xml','','',''),
(346,2,0,'Hungarian','','pkg_hu-HU','package','',0,'5.2.4.1','','https://update.joomla.org/language/details5/hu-HU_details.xml','','',''),
(347,2,0,'Italian','','pkg_it-IT','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/it-IT_details.xml','','',''),
(348,2,0,'Japanese','','pkg_ja-JP','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/ja-JP_details.xml','','',''),
(349,2,0,'Kazakh','','pkg_kk-KZ','package','',0,'5.0.0.4','','https://update.joomla.org/language/details5/kk-KZ_details.xml','','',''),
(350,2,0,'Korean','','pkg_ko-KR','package','',0,'5.0.2.1','','https://update.joomla.org/language/details5/ko-KR_details.xml','','',''),
(351,2,0,'Latvian','','pkg_lv-LV','package','',0,'5.2.4.1','','https://update.joomla.org/language/details5/lv-LV_details.xml','','',''),
(352,2,0,'Lithuanian','','pkg_lt-LT','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/lt-LT_details.xml','','',''),
(353,2,0,'Norwegian Bokmål','','pkg_nb-NO','package','',0,'5.2.3.1','','https://update.joomla.org/language/details5/nb-NO_details.xml','','',''),
(354,2,0,'Pashto Afghanistan','','pkg_ps-AF','package','',0,'5.0.1.1','','https://update.joomla.org/language/details5/ps-AF_details.xml','','',''),
(355,2,0,'Persian Farsi','','pkg_fa-IR','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/fa-IR_details.xml','','',''),
(356,2,0,'Polish','','pkg_pl-PL','package','',0,'5.1.2.1','','https://update.joomla.org/language/details5/pl-PL_details.xml','','',''),
(357,2,0,'Portuguese, Brazil','','pkg_pt-BR','package','',0,'5.2.6.1','','https://update.joomla.org/language/details5/pt-BR_details.xml','','',''),
(358,2,0,'Portuguese, Portugal','','pkg_pt-PT','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/pt-PT_details.xml','','',''),
(359,2,0,'Romanian','','pkg_ro-RO','package','',0,'5.2.0.2','','https://update.joomla.org/language/details5/ro-RO_details.xml','','',''),
(360,2,0,'Russian','','pkg_ru-RU','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/ru-RU_details.xml','','',''),
(361,2,0,'Serbian, Cyrillic','','pkg_sr-RS','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/sr-RS_details.xml','','',''),
(362,2,0,'Serbian, Latin','','pkg_sr-YU','package','',0,'5.2.3.1','','https://update.joomla.org/language/details5/sr-YU_details.xml','','',''),
(363,2,0,'Slovak','','pkg_sk-SK','package','',0,'5.2.6.1','','https://update.joomla.org/language/details5/sk-SK_details.xml','','',''),
(364,2,0,'Slovenian','','pkg_sl-SI','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/sl-SI_details.xml','','',''),
(365,2,0,'Spanish','','pkg_es-ES','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/es-ES_details.xml','','',''),
(366,2,0,'Swedish','','pkg_sv-SE','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/sv-SE_details.xml','','',''),
(367,2,0,'Tamil, India','','pkg_ta-IN','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/ta-IN_details.xml','','',''),
(368,2,0,'Thai','','pkg_th-TH','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/th-TH_details.xml','','',''),
(369,2,0,'Turkish','','pkg_tr-TR','package','',0,'5.3.0.1','','https://update.joomla.org/language/details5/tr-TR_details.xml','','',''),
(370,2,0,'Ukrainian','','pkg_uk-UA','package','',0,'5.1.3.1','','https://update.joomla.org/language/details5/uk-UA_details.xml','','',''),
(371,2,0,'Urdu, Pakistan','','pkg_ur-PK','package','',0,'5.1.2.1','','https://update.joomla.org/language/details5/ur-PK_details.xml','','',''),
(372,2,0,'Welsh','','pkg_cy-GB','package','',0,'5.3.0.2','','https://update.joomla.org/language/details5/cy-GB_details.xml','','','');
/*!40000 ALTER TABLE `aq6ko_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_user_keys`
--

DROP TABLE IF EXISTS `aq6ko_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_user_keys`
--

LOCK TABLES `aq6ko_user_keys` WRITE;
/*!40000 ALTER TABLE `aq6ko_user_keys` DISABLE KEYS */;
INSERT INTO `aq6ko_user_keys` VALUES
(1,'antonioheasca','$2y$10$3M6QI7X7JkjxVXaOVAAcSeq1NWVXDG64wDfXP3T1KhfjrFHvOvUta','DXNO92x9Rd6DkeNO4y5Y','1750674191','joomla_remember_me_46a7f4ffde90072a70db654cefae857b');
/*!40000 ALTER TABLE `aq6ko_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_user_mfa`
--

DROP TABLE IF EXISTS `aq6ko_user_mfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_user_mfa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(100) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `options` mediumtext NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int(11) NOT NULL DEFAULT 0,
  `last_try` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_user_mfa`
--

LOCK TABLES `aq6ko_user_mfa` WRITE;
/*!40000 ALTER TABLE `aq6ko_user_mfa` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_user_mfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_user_notes`
--

DROP TABLE IF EXISTS `aq6ko_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_user_notes`
--

LOCK TABLES `aq6ko_user_notes` WRITE;
/*!40000 ALTER TABLE `aq6ko_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_user_profiles`
--

DROP TABLE IF EXISTS `aq6ko_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_user_profiles`
--

LOCK TABLES `aq6ko_user_profiles` WRITE;
/*!40000 ALTER TABLE `aq6ko_user_profiles` DISABLE KEYS */;
INSERT INTO `aq6ko_user_profiles` VALUES
(772,'guidedtour.id.12','{\"state\":\"skipped\"}',0);
/*!40000 ALTER TABLE `aq6ko_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_user_usergroup_map`
--

DROP TABLE IF EXISTS `aq6ko_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_user_usergroup_map`
--

LOCK TABLES `aq6ko_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `aq6ko_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `aq6ko_user_usergroup_map` VALUES
(772,8);
/*!40000 ALTER TABLE `aq6ko_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_usergroups`
--

DROP TABLE IF EXISTS `aq6ko_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_usergroups`
--

LOCK TABLES `aq6ko_usergroups` WRITE;
/*!40000 ALTER TABLE `aq6ko_usergroups` DISABLE KEYS */;
INSERT INTO `aq6ko_usergroups` VALUES
(1,0,1,18,'Public'),
(2,1,8,15,'Registered'),
(3,2,9,14,'Author'),
(4,3,10,13,'Editor'),
(5,4,11,12,'Publisher'),
(6,1,4,7,'Manager'),
(7,6,5,6,'Administrator'),
(8,1,16,17,'Super Users'),
(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `aq6ko_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_users`
--

DROP TABLE IF EXISTS `aq6ko_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Backup Codes',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=773 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_users`
--

LOCK TABLES `aq6ko_users` WRITE;
/*!40000 ALTER TABLE `aq6ko_users` DISABLE KEYS */;
INSERT INTO `aq6ko_users` VALUES
(772,'Antonio Heasca','antonioheasca','antonioheasca4@gmail.com','$2y$10$.Hf.kjhczmtB5nKBGuuaZ.4e3SSondZZK8yn2jWIm.0HVllgvs0Ni',0,1,'2025-04-23 13:38:47','2025-04-28 19:07:30','0','',NULL,0,'','',0,'');
/*!40000 ALTER TABLE `aq6ko_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_viewlevels`
--

DROP TABLE IF EXISTS `aq6ko_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_viewlevels`
--

LOCK TABLES `aq6ko_viewlevels` WRITE;
/*!40000 ALTER TABLE `aq6ko_viewlevels` DISABLE KEYS */;
INSERT INTO `aq6ko_viewlevels` VALUES
(1,'Public',0,'[1]'),
(2,'Registered',2,'[6,2,8]'),
(3,'Special',3,'[6,3,8]'),
(5,'Guest',1,'[9]'),
(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `aq6ko_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_webauthn_credentials`
--

DROP TABLE IF EXISTS `aq6ko_webauthn_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_webauthn_credentials` (
  `id` varchar(1000) NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) NOT NULL COMMENT 'User handle',
  `label` varchar(190) NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext NOT NULL COMMENT 'Credential source data, JSON format',
  PRIMARY KEY (`id`(100)),
  KEY `user_id` (`user_id`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_webauthn_credentials`
--

LOCK TABLES `aq6ko_webauthn_credentials` WRITE;
/*!40000 ALTER TABLE `aq6ko_webauthn_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `aq6ko_webauthn_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_workflow_associations`
--

DROP TABLE IF EXISTS `aq6ko_workflow_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_workflow_associations` (
  `item_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Extension table id value',
  `stage_id` int(11) NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`,`extension`),
  KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_stage_id` (`stage_id`),
  KEY `idx_extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_workflow_associations`
--

LOCK TABLES `aq6ko_workflow_associations` WRITE;
/*!40000 ALTER TABLE `aq6ko_workflow_associations` DISABLE KEYS */;
INSERT INTO `aq6ko_workflow_associations` VALUES
(1,1,'com_content.article'),
(2,1,'com_content.article'),
(3,1,'com_content.article'),
(4,1,'com_content.article');
/*!40000 ALTER TABLE `aq6ko_workflow_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_workflow_stages`
--

DROP TABLE IF EXISTS `aq6ko_workflow_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_workflow_stages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_id` (`workflow_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_workflow_stages`
--

LOCK TABLES `aq6ko_workflow_stages` WRITE;
/*!40000 ALTER TABLE `aq6ko_workflow_stages` DISABLE KEYS */;
INSERT INTO `aq6ko_workflow_stages` VALUES
(1,57,1,1,1,'COM_WORKFLOW_BASIC_STAGE','',1,NULL,NULL);
/*!40000 ALTER TABLE `aq6ko_workflow_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_workflow_transitions`
--

DROP TABLE IF EXISTS `aq6ko_workflow_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_workflow_transitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `from_stage_id` int(11) NOT NULL,
  `to_stage_id` int(11) NOT NULL,
  `options` text NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_from_stage_id` (`from_stage_id`),
  KEY `idx_to_stage_id` (`to_stage_id`),
  KEY `idx_workflow_id` (`workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_workflow_transitions`
--

LOCK TABLES `aq6ko_workflow_transitions` WRITE;
/*!40000 ALTER TABLE `aq6ko_workflow_transitions` DISABLE KEYS */;
INSERT INTO `aq6ko_workflow_transitions` VALUES
(1,58,1,1,1,'UNPUBLISH','',-1,1,'{\"publishing\":\"0\"}',NULL,NULL),
(2,59,2,1,1,'PUBLISH','',-1,1,'{\"publishing\":\"1\"}',NULL,NULL),
(3,60,3,1,1,'TRASH','',-1,1,'{\"publishing\":\"-2\"}',NULL,NULL),
(4,61,4,1,1,'ARCHIVE','',-1,1,'{\"publishing\":\"2\"}',NULL,NULL),
(5,62,5,1,1,'FEATURE','',-1,1,'{\"featuring\":\"1\"}',NULL,NULL),
(6,63,6,1,1,'UNFEATURE','',-1,1,'{\"featuring\":\"0\"}',NULL,NULL),
(7,64,7,1,1,'PUBLISH_AND_FEATURE','',-1,1,'{\"publishing\":\"1\",\"featuring\":\"1\"}',NULL,NULL);
/*!40000 ALTER TABLE `aq6ko_workflow_transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aq6ko_workflows`
--

DROP TABLE IF EXISTS `aq6ko_workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aq6ko_workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `extension` varchar(50) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_extension` (`extension`),
  KEY `idx_default` (`default`),
  KEY `idx_created` (`created`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_modified` (`modified`),
  KEY `idx_modified_by` (`modified_by`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aq6ko_workflows`
--

LOCK TABLES `aq6ko_workflows` WRITE;
/*!40000 ALTER TABLE `aq6ko_workflows` DISABLE KEYS */;
INSERT INTO `aq6ko_workflows` VALUES
(1,56,1,'COM_WORKFLOW_BASIC_WORKFLOW','','com_content.article',1,1,'2025-04-23 13:38:46',772,'2025-04-23 13:38:46',772,NULL,NULL);
/*!40000 ALTER TABLE `aq6ko_workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza_images`
--

DROP TABLE IF EXISTS `pizza_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizza_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza_images`
--

LOCK TABLES `pizza_images` WRITE;
/*!40000 ALTER TABLE `pizza_images` DISABLE KEYS */;
INSERT INTO `pizza_images` VALUES
(1,'Margherita','Sos de roșii, mozzarella, busuioc proaspăt.',22.99,'/images/pizzas/margherita.jpg'),
(2,'Pepperoni','Sos de roșii, mozzarella, felii de pepperoni.',26.99,'/images/pizzas/pepperoni.jpg'),
(3,'Quattro Formaggi','Patru brânzeturi: mozzarella, gorgonzola, parmezan și brie.',28.50,'/images/pizzas/quattro.jpg'),
(4,'Vegetarian','Legume proaspete, mozzarella, sos de roșii.',24.00,'/images/pizzas/vegetarian.jpg');
/*!40000 ALTER TABLE `pizza_images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-28 19:28:29
