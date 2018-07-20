CREATE DATABASE  IF NOT EXISTS `activity_center` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `activity_center`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: activity_center
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20180720174341_first','2.1.1-rtm-30846');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `creatorid` int(11) DEFAULT NULL,
  `title` longtext NOT NULL,
  `duration` int(11) NOT NULL,
  `durationtime` longtext NOT NULL,
  `description` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_activities_creatorid` (`creatorid`),
  CONSTRAINT `FK_activities_users_creatorid` FOREIGN KEY (`creatorid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (2,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',2,'Big Party!',5,'Days','My plaid red sweater','2018-07-27 11:02:00.000000'),(3,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',2,'Watch Anime',30,'Minutes','dsafsafsafdsafdsf','2019-12-12 00:00:00.000000'),(4,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',1,'Playing Video Games',24,'Minutes','Hi this is really going great.','2018-07-27 15:00:00.000000'),(5,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',3,'Nothing',4,'Hours','I\'ve invented something called a \"meal\" where we eat. Join me!','2018-07-30 12:00:00.000000'),(6,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',1,'Playing Video Games',30,'Minutes','Hi this is really going great.','2018-07-20 13:41:00.000000'),(7,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',2,'Eating Food',30,'Hours','I\'ve invented something called a \"meal\" where we eat. Join me!','2018-07-20 10:00:00.000000'),(8,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',1,'dasfasdf',30,'Minutes','I\'ve invented something called a \"meal\" where we eat. Join me!','2018-07-21 09:00:00.000000'),(9,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',1,'More Nothing',3,'Hours','I\'ve invented something called a \"meal\" where we eat. Join me!','2018-08-16 00:00:00.000000'),(10,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',1,'Eating Food 2.0',200,'Minutes','Hi this is really going great.','2018-08-16 15:00:00.000000'),(11,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',1,'A Cool Time at the Park',25,'Minutes','My plaid red sweater','2018-08-16 02:00:00.000000');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsvps`
--

DROP TABLE IF EXISTS `rsvps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsvps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `activityid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_rsvps_activityid` (`activityid`),
  KEY `IX_rsvps_userid` (`userid`),
  CONSTRAINT `FK_rsvps_activities_activityid` FOREIGN KEY (`activityid`) REFERENCES `activities` (`id`),
  CONSTRAINT `FK_rsvps_users_userid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsvps`
--

LOCK TABLES `rsvps` WRITE;
/*!40000 ALTER TABLE `rsvps` DISABLE KEYS */;
INSERT INTO `rsvps` VALUES (2,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',2,2),(3,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',2,3),(11,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',1,4),(14,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',3,5),(15,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',1,3),(16,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',1,6),(17,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',2,7),(18,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',1,8),(19,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',1,9),(20,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',1,10),(21,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000',1,11);
/*!40000 ALTER TABLE `rsvps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `first_name` longtext NOT NULL,
  `last_name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL,
  `confirm_password` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000','Nat','Rosser','nat@nat.com','AQAAAAEAACcQAAAAEOZvMMZzvyQGgpMcL9KBflsZ7MQifFPkeh8BmtFL4mtDMlEmo6NXdilR2FD+y9rs2Q==','AQAAAAEAACcQAAAAEKTde5i1/1sSwCu4XoYETlBxspftZkI7d0ecE7IEaOFdFoz3FeQ+uREM5vZIsC51tg=='),(2,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000','Josh','Schabel','josh@josh.com','AQAAAAEAACcQAAAAEKN7AV51NijzSRtgxglBIsNKn5V2pQGD/9xlpzBb8wg/+ow0shlwgEkJxRVYr29Szg==','AQAAAAEAACcQAAAAEHeQbgG5+gUCeDAmrWrDyOFDCu848PG5d1StUP5MThHZOa9UmTuma5rq8xjxcwAraA=='),(3,'0001-01-01 00:00:00.000000','0001-01-01 00:00:00.000000','Will','VanDyke','will@will.com','AQAAAAEAACcQAAAAEMpWZCyLnXRMN0gu65mR0SCTJ8GsGi1eQ+gTbkXNVNTgIKOzIfFjXwosu1CZ46+ZvA==','AQAAAAEAACcQAAAAEIh2kn3ujIHmu6PGkP0omdzO4uPW1ju1un+F1XALE2dZ5QUO4yGE3ChhGPeNFVWwpg==');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-20 16:36:20
