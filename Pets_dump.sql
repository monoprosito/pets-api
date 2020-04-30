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

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE owner (
  `id` INT AUTO_INCREMENT NOT NULL,
  `uuid` VARCHAR(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  PRIMARY KEY (`id`, `uuid`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
INSERT INTO `owner` (uuid, created_at, updated_at, firstname, lastname)
VALUES ("521a55f4-7d82-47d9-b54c-a76916479545","2017-03-25 19:42:40","2017-03-25 19:42:40","Jhon","Smith"),
("521a55f4-7d82-47d9-b54c-a76916479546","2017-03-25 19:42:40","2017-03-25 19:42:40","Santiago","Arboleda"),
("521a55f4-7d82-47d9-b54c-a76916479547","2017-03-25 19:42:40","2017-03-25 19:42:40","Giovanni","Perez"),
("521a55f4-7d82-47d9-b54c-a76916479548","2017-03-25 19:42:40","2017-03-25 19:42:40","Jorge","Salazar"),
("521a55f4-7d82-47d9-b54c-a76916479549","2017-03-25 19:42:40","2017-03-25 19:42:40","Julian","Castañeda"),
("521a55f4-7d82-47d9-b54c-a76916479550","2017-03-25 19:42:40","2017-03-25 19:42:40","Jonatan","Mazo");
