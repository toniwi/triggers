-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: alumnes
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumne`
--

DROP TABLE IF EXISTS `alumne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumne` (
  `codi` char(4) NOT NULL,
  `dni` char(9) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` char(9) DEFAULT NULL,
  PRIMARY KEY (`codi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumne`
--

LOCK TABLES `alumne` WRITE;
/*!40000 ALTER TABLE `alumne` DISABLE KEYS */;
INSERT INTO `alumne` VALUES ('0001','11111111A','Ivan Chover','1998-01-01','ivan@gmail.com','666555444'),('0002','22222222B','Marcos Alemany','2003-02-02','marcos@gmail.com','656666555'),('0003','33333333C','Enrique Gregori','2003-03-03','enrique@gmail.com','666666111'),('0004','44444444D','Daniel Morant','2003-04-04','daniel@gmail.com','666666666'),('0005','55555555E','Toni Costa','1997-05-05','toni@gmail.com','655220111');
/*!40000 ALTER TABLE `alumne` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `alumne_ai` AFTER INSERT ON `alumne` FOR EACH ROW INSERT INTO ins_alumne(i_codi,i_name,i_email,i_phone)
VALUES (new.codi,new.name,new.email,new.phone) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `alumne_bd` BEFORE DELETE ON `alumne` FOR EACH ROW INSERT INTO del_alumne (d_codi,d_dni,d_name,d_birthdate,d_email,d_phone,user,fecha)
VALUES (old.codi,old.dni,old.name,old.birthdate,old.email,old.phone,CURRENT_USER,NOW()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `del_alumne`
--

DROP TABLE IF EXISTS `del_alumne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `del_alumne` (
  `d_codi` char(4) DEFAULT NULL,
  `d_dni` char(9) DEFAULT NULL,
  `d_name` varchar(30) DEFAULT NULL,
  `d_birthdate` date DEFAULT NULL,
  `d_email` varchar(30) DEFAULT NULL,
  `d_phone` char(9) DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `del_alumne`
--

LOCK TABLES `del_alumne` WRITE;
/*!40000 ALTER TABLE `del_alumne` DISABLE KEYS */;
INSERT INTO `del_alumne` VALUES ('0006','66666666F','Vicent Calderon','2003-06-06','vicent@gmail.com','616616616','root@localhost','2021-05-28');
/*!40000 ALTER TABLE `del_alumne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ins_alumne`
--

DROP TABLE IF EXISTS `ins_alumne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ins_alumne` (
  `i_codi` char(4) DEFAULT NULL,
  `i_name` varchar(30) DEFAULT NULL,
  `i_email` varchar(30) DEFAULT NULL,
  `i_phone` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ins_alumne`
--

LOCK TABLES `ins_alumne` WRITE;
/*!40000 ALTER TABLE `ins_alumne` DISABLE KEYS */;
INSERT INTO `ins_alumne` VALUES ('0006','Vicent Calderon','vicent@gmail.com','616616616');
/*!40000 ALTER TABLE `ins_alumne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upd_alumne`
--

DROP TABLE IF EXISTS `upd_alumne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upd_alumne` (
  `u_codi` char(4) DEFAULT NULL,
  `old_name` varchar(30) DEFAULT NULL,
  `old_birthdate` date DEFAULT NULL,
  `old_email` varchar(30) DEFAULT NULL,
  `old_phone` char(9) DEFAULT NULL,
  `new_name` varchar(30) DEFAULT NULL,
  `new_birthdate` date DEFAULT NULL,
  `new_email` varchar(30) DEFAULT NULL,
  `new_phone` char(9) DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upd_alumne`
--

LOCK TABLES `upd_alumne` WRITE;
/*!40000 ALTER TABLE `upd_alumne` DISABLE KEYS */;
/*!40000 ALTER TABLE `upd_alumne` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-28 16:36:15
