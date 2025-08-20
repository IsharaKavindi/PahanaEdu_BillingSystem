-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: pahanaedu_database
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `billitem`
--

DROP TABLE IF EXISTS `billitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billitem` (
  `billid` int NOT NULL AUTO_INCREMENT,
  `itemid` varchar(10) NOT NULL,
  `title` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`billid`)
) ENGINE=InnoDB AUTO_INCREMENT=1042 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billitem`
--

LOCK TABLES `billitem` WRITE;
/*!40000 ALTER TABLE `billitem` DISABLE KEYS */;
INSERT INTO `billitem` VALUES (1,'1','weed',3,1000),(2,'1','weed',1,1000),(3,'2','weed',2,1000),(4,'2','weed',2,1000),(5,'1','weed',1,1000),(6,'2','weed',8,1000),(7,'1','weed',15,1000),(8,'1','weed',15,1000),(9,'1','weed',1,1000),(10,'1','weed',2,1000),(11,'1','weed',15,1000),(12,'1','weed',1,1000),(13,'2','weed',1,1000),(14,'1','weed',28,1000),(15,'1','weed',1,1000),(16,'1','weed',1,1000),(17,'1','weed',12,1000),(18,'1','weed',1,1000),(19,'2','weed',1,1000),(20,'1','weed',4,1000),(21,'1','weed',7,1000),(22,'1','weed',1,1000),(23,'1','weed',1,1000),(24,'1','weed',1,1000),(25,'1','weed',1,1000),(26,'1','weed',1,1000),(27,'1','weed',1,1000),(28,'2','weed',1,1000),(29,'2','weed',1,1000),(30,'1','weed',1,1000),(31,'1','weed',17,1000),(32,'1','weed',17,1000),(33,'1','weed',17,1000),(34,'1','weed',1,1000),(35,'2','weed',1,1000),(36,'2','weed',1,1000),(37,'1','weed',2,1000),(38,'1','weed',1,1000),(39,'2','weed',3,1000),(40,'2','weed',3,1000),(41,'1','weed',1,1000),(42,'1','weed',1,1000),(43,'1','weed',1,1000),(44,'1','weed',1,1000),(45,'1','weed',1,1000),(46,'1','weed',1,1000),(47,'1','weed',1,1000),(48,'1','weed',1,1000),(49,'1','weed',1,1000),(50,'1','weed',1,1000),(51,'1','weed',1,1000),(52,'1','weed',1,1000),(53,'1','weed',4,1000),(54,'1','weed',5,1000),(55,'1','weed',5,1000),(56,'1','weed',1,1000),(57,'1','weed',1,1000),(58,'2','weed',1,1000),(59,'2','weed',1,1000),(60,'2','weed',1,1000),(61,'1','weed',1,1000),(62,'1','weed',1,1000),(63,'1','weed',1,1000),(64,'2','weed',1,1000),(65,'2','weed',1,1000),(66,'2','weed',1,1000),(67,'2','weed',1,1000),(68,'2','weed',1,1000),(69,'1','weed',1,1000),(70,'1','weed',9,1000),(71,'1','weed',1,1000),(72,'1','weed',1,1000),(73,'1','weed',1,1000),(74,'1','weed',1,1000),(75,'1','weed',1,1000),(76,'2','weed',5,1000),(77,'2','weed',1,1000),(78,'2','weed',1,1000),(79,'2','weed',1,1000),(80,'1','weed',1,1000),(81,'1','weed',1,1000),(82,'1','weed',1,1000),(83,'1','weed',1,1000),(84,'1','weed',1,1000),(85,'2','weed',1,1000),(86,'1','weed',1,1000),(87,'1','weed',1,1000),(88,'1','weed',1,1000),(89,'1','weed',1,1000),(90,'1','weed',1,1000),(91,'1','weed',1,1000),(92,'1','weed',8,1000),(93,'1','weed',3,1000),(94,'1','weed',1,1000),(95,'1','weed',3,1000),(96,'1','weed',2,1000),(97,'1','weed',4,1000),(98,'1','weed',4,1000),(99,'2','weed',1,1000),(100,'2','weed',1,1000),(101,'1','weed',1,1000),(102,'1','weed',1,1000),(103,'1','weed',10,1000),(104,'1','weed',3,1000),(105,'1','weed',1,1000),(106,'1','weed',1,1000),(107,'1','weed',1,1000),(108,'1','weed',4,1000),(109,'1','weed',1,1000),(110,'1','weed',6,1000),(111,'1','weed',2,1000),(112,'2','weed',1,1000),(113,'1','weed',4,1000),(114,'1','weed',2,1000),(115,'1','weed',1,1000),(116,'1','weed',1,1000),(117,'1','weed',1,1000),(118,'1','weed',1,1000),(119,'1','weed',4,1000),(120,'1','weed',3,1000),(121,'1','weed',1,1000),(122,'1','weed',1,1000),(123,'1','weed',11,1000),(124,'1','weed',1,1000),(125,'1','weed',1,1000),(126,'1','weed',1,1000),(127,'1','weed',3,1000),(128,'1','AAAA',1,1000),(129,'1','AAAA',1,1000),(130,'1','AAAA',1,1000),(131,'1','AAAA',1,1000),(132,'1','AAAA',1,1000),(133,'1','AAAA',1,1000),(134,'1','AAAA',1,1000),(135,'1','AAAA',1,1000),(136,'1','AAAA',1,1000),(137,'1','AAAA',1,1000),(138,'1','AAAA',1,1000),(139,'1','AAAA',1,1000),(140,'1','AAAA',1,1000),(141,'1','AAAA',1,1000),(142,'1','AAAA',1,1000),(143,'1','AAAA',1,1000),(144,'1','AAAA',1,1000),(145,'1','AAAA',1,1000),(146,'1','AAAA',1,1000),(147,'3','weed',1,2000),(148,'1','AAAA',1,1000),(149,'2','BBB',1,1000),(150,'3','weed',1,2000),(151,'1','AAAA',1,1000),(152,'1','AAAA',1,1000),(153,'1','AAAA',1,1000),(154,'1','AAAA',1,1000),(155,'2','BBB',1,1000),(156,'3','weed',1,2000),(157,'3','weed',1,2000),(158,'3','weed',1,2000),(159,'2','BBB',1,1000),(160,'3','weed',1,2000),(161,'7','eerttg',1,1111),(162,'2','BBB',1,1000),(163,'2','BBB',1,1000),(164,'2','BBB',1,1000),(165,'2','BBB',1,1000),(166,'2','BBB',1,1000),(167,'2','BBB',1,1000),(168,'2','BBB',1,1000),(169,'2','BBB',1,1000),(170,'2','BBB',1,1000),(171,'2','BBB',1,1000),(172,'2','BBB',1,1000),(173,'2','BBB',1,1000),(174,'2','BBB',1,1000),(175,'2','BBB',1,1000),(176,'2','BBB',1,1000),(177,'2','BBB',1,1000),(178,'2','BBB',1,1000),(179,'2','BBB',1,1000),(180,'2','BBB',1,1000),(181,'2','BBB',1,1000),(182,'2','BBB',1,1000),(183,'2','BBB',1,1000),(184,'2','BBB',1,1000),(185,'2','BBB',1,1000),(186,'2','BBB',1,1000),(187,'3','weed',1,2000),(188,'2','BBB',1,1000),(189,'2','BBB',1,1000),(190,'2','BBB',1,1000),(191,'3','weed',1,2000),(192,'3','weed',1,2000),(193,'3','weed',1,2000),(194,'3','weed',1,2000),(195,'3','weed',1,2000),(196,'2','BBB',1,1000),(197,'11','eerttg',1,1111),(198,'11','eerttg',1,1111),(199,'11','eerttg',1,1111),(999,'ITEM001','Test Item',2,250),(1000,'1','ONE YELLOW EYE',1,4000),(1001,'4','BOO BOO INVESTIGATES',1,1260),(1002,'1','ONE YELLOW EYE',1,4000),(1003,'2','CAMELLIA',1,900),(1004,'1','ONE YELLOW EYE',1,4000),(1005,'3','SHERLOCK HOLMES 7 BOOKS SET',1,5000),(1006,'3','SHERLOCK HOLMES 7 BOOKS SET',1,5000),(1007,'3','SHERLOCK HOLMES 7 BOOKS SET',1,5000),(1008,'3','SHERLOCK HOLMES 7 BOOKS SET',1,5000),(1009,'3','SHERLOCK HOLMES 7 BOOKS SET',1,5000),(1010,'3','SHERLOCK HOLMES 7 BOOKS SET',1,5000),(1011,'1','ONE YELLOW EYE',1,4000),(1012,'2','CAMELLIA',1,900),(1013,'2','CAMELLIA',1,900),(1014,'1','ONE YELLOW EYE',1,4000),(1015,'1','ONE YELLOW EYE',1,4000),(1016,'3','SHERLOCK HOLMES 7 BOOKS SET',1,5000),(1017,'3','SHERLOCK HOLMES 7 BOOKS SET',1,5000),(1018,'1','ONE YELLOW EYE',1,4000),(1019,'2','CAMELLIA',1,900),(1020,'1','ONE YELLOW EYE',1,4000),(1021,'1','ONE YELLOW EYE',1,4000),(1022,'1','ONE YELLOW EYE',1,4000),(1023,'1','ONE YELLOW EYE',1,4000),(1024,'1','ONE YELLOW EYE',1,4000),(1025,'1','ONE YELLOW EYE',1,4000),(1026,'1','ONE YELLOW EYE',1,4000),(1027,'1','ONE YELLOW EYE',1,4000),(1028,'1','ONE YELLOW EYE',1,4000),(1029,'1','ONE YELLOW EYE',1,4000),(1030,'1','ONE YELLOW EYE',1,4000),(1031,'1','ONE YELLOW EYE',1,4000),(1032,'1','ONE YELLOW EYE',1,4000),(1033,'1','ONE YELLOW EYE',1,4000),(1034,'1','ONE YELLOW EYE',1,4000),(1035,'1','ONE YELLOW EYE',1,4000),(1036,'1','ONE YELLOW EYE',1,4000),(1037,'1','ONE YELLOW EYE',1,4000),(1038,'1','ONE YELLOW EYE',3,4000),(1039,'2','CAMELLIA',1,900),(1040,'1','ONE YELLOW EYE',4,4000),(1041,'2','CAMELLIA',1,900);
/*!40000 ALTER TABLE `billitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `billid` int NOT NULL AUTO_INCREMENT,
  `billnum` varchar(45) DEFAULT NULL,
  `date` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL,
  `totalitems` int NOT NULL,
  `total` int NOT NULL,
  `points` int NOT NULL,
  `cusid` int NOT NULL,
  `cusnic` varchar(45) NOT NULL,
  PRIMARY KEY (`billid`),
  UNIQUE KEY `billnum_UNIQUE` (`billnum`)
) ENGINE=InnoDB AUTO_INCREMENT=1025 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (999,'BILL123','2025-08-20','12:00',2,500,50,1,'123456789V'),(1000,'BILL-1755647793626606','20/08/2025','05:54:00',2,10000,25,2,'200523458100'),(1001,'BILL-1755649749306801','20/08/2025','05:59:13',2,4900,12,2,'200523458100'),(1002,'BILL-175564996536327','20/08/2025','06:03:06',1,900,2,2,'200523458100'),(1003,'BILL-1755650486951870','20/08/2025','06:11:29',1,4000,10,2,'200523458100'),(1004,'BILL-1755650781681347','20/08/2025','06:16:24',2,9000,22,2,'200523458100'),(1005,'BILL-1755650850841376','20/08/2025','06:52:43',1,4000,10,2,'200523458100'),(1006,'BILL-175565307815052','20/08/2025','06:54:45',1,4000,10,2,'200523458100'),(1024,'BILL-1755708402574242','20/08/2025','22:17:14',5,16900,42,2,'200523458100');
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `accountnum` varchar(15) NOT NULL,
  `address` varchar(45) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nic_UNIQUE` (`nic`),
  UNIQUE KEY `accountnum_UNIQUE` (`accountnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Roy','200223702699','200223702699','Maharagama','0772273338','roy22@gmail.com'),(2,'Amal','200523458100','200523458100','Katubadda','0772277100','ama00l@gmail.com'),(3,'Kamal','200023458122','200023458122','Piliyandala','0772277222','kama55l@gmail.com'),(4,'Nimal','200123458144','200123458144','Maharagama','0712277144','ni55l@gmail.com'),(5,'Sherin','200023458150','200023458150','Nugegoda','0722277155','sherin@gmail.com'),(6,'Shasha','200123458166','200123458166','Papiliyana','0712277444','shasha333@gmail.com'),(7,'Gavindu','200123458188','200123458188','Nugegoda','0772277209','gavindu000@gmail.com'),(8,'Ishara','200623458133','200623458133','Pannipitiya','0772277133','ishara2006@gmail.com'),(9,'Vimal','200023158166','200023158166','Meegoda','0742277166','vimal222@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `itemid` varchar(10) NOT NULL,
  `title` varchar(80) NOT NULL,
  `author` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('1','ONE YELLOW EYE','LEIGH RADFORD','Fiction',4000,40),('2','CAMELLIA','Virajinee Thennakoon','Nawakatha',900,80),('3','SHERLOCK HOLMES 7 BOOKS SET',' Arthur Conan Doyle','Childrens',5000,30),('4','BOO BOO INVESTIGATES','Tanushree Podder','Childrens',1260,40),('5','ZANA AND THE BUMBLING GENIE','Padmini Sankar','Childrens',2000,40),('6','BAKMI','Chamika Sampath Silva','Nawakatha',1800,55),('7','MATHAKA AVI','Denuwan Abeweera','Nawakatha',2000,40),('8','THE QUIET','BARNABY MARTIN','Fiction',4250,25);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('amal123','Amal',24,'amal@gmail.com','amal123'),('asha123','Asha',22,'ash@gmail.com','amal123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-21  4:29:30
