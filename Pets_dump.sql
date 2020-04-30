-- MySQL dump 10.13  Distrib 5.7.8-rc, for Linux (x86_64)
--
-- Host: localhost    Database: holbi_ptes_pld
-- ------------------------------------------------------
-- Server version	5.7.8-rc

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

-- Drop database
DROP DATABASE IF EXISTS holbi_ptes_pld;

-- Create database & user if doesn't exist:
CREATE DATABASE IF NOT EXISTS holbi_ptes_pld;
CREATE USER IF NOT EXISTS 'pets_usr'@'localhost';
SET PASSWORD FOR 'pets_usr'@'localhost' = 'group0';
GRANT ALL ON holbi_ptes_pld.* TO 'pets_usr'@'localhost';
GRANT SELECT ON performance_schema.* TO 'pets_usr'@'localhost';
FLUSH PRIVILEGES;

--
-- Table structure for table `owner`
--

USE holbi_ptes_pld;

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE owners (
  `id` INT AUTO_INCREMENT NOT NULL,
  `uuid` VARCHAR(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  KEY `uuid` (`uuid`),
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owners` WRITE;
INSERT INTO `owners` (uuid, created_at, updated_at, firstname, lastname)
VALUES ("521a55f4-7d82-47d9-b54c-a76916479545","2017-03-25 19:42:40","2017-03-25 19:42:40","Jhon","Smith"),
("521a55f4-7d82-47d9-b54c-a76916479546","2017-03-25 19:42:40","2017-03-25 19:42:40","Santiago","Arboleda"),
("521a55f4-7d82-47d9-b54c-a76916479547","2017-03-25 19:42:40","2017-03-25 19:42:40","Giovanni","Perez"),
("521a55f4-7d82-47d9-b54c-a76916479548","2017-03-25 19:42:40","2017-03-25 19:42:40","Jorge","Salazar"),
("521a55f4-7d82-47d9-b54c-a76916479549","2017-03-25 19:42:40","2017-03-25 19:42:40","Julian","Castañeda"),
("521a55f4-7d82-47d9-b54c-a76916479550","2017-03-25 19:42:40","2017-03-25 19:42:40","Jonatan","Mazo");
UNLOCK TABLES;

--
-- Table structure for table `Pet`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pets` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `uuid` VARCHAR(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL,
  `age` INT NOT NULL,
  `color` varchar(128) NOT NULL,
  `owner` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`owner`) REFERENCES `owners`(`uuid`) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pet`
--

LOCK TABLES `pets` WRITE;
INSERT INTO `pets` (uuid, created_at, updated_at, name, age, color, owner)
VALUES ("621a55e4-7d82-47d9-b54c-a76916479551","2017-03-25 19:42:40","2017-03-25 19:42:40","Mayaka",5,"Red","521a55f4-7d82-47d9-b54c-a76916479545"),
("621a55e4-7d82-47d9-b54c-a76916479552","2017-03-25 19:42:40","2017-03-25 19:42:40","Mayaka",3,"Red","521a55f4-7d82-47d9-b54c-a76916479546"),
("621a55e4-7d82-47d9-b54c-a76916479553","2017-03-25 19:42:40","2017-03-25 19:42:40","Mayaka",4,"Red","521a55f4-7d82-47d9-b54c-a76916479547"),
("621a55e4-7d82-47d9-b54c-a76916479554","2017-03-25 19:42:40","2017-03-25 19:42:40","Mayaka",1,"Red","521a55f4-7d82-47d9-b54c-a76916479548"),
("621a55e4-7d82-47d9-b54c-a76916479555","2017-03-25 19:42:40","2017-03-25 19:42:40","Mayaka",6,"Red","521a55f4-7d82-47d9-b54c-a76916479549"),
("621a55e4-7d82-47d9-b54c-a76916479556","2017-03-25 19:42:40","2017-03-25 19:42:40","Mayaka",7,"Red","521a55f4-7d82-47d9-b54c-a76916479550");
UNLOCK TABLES;

-- Dump completed on PLD
