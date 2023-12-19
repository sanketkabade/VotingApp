-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: votingdata
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `voters`
--

DROP TABLE IF EXISTS `voters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `votingStatus` varchar(45) DEFAULT '0',
  `age` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `pass_UNIQUE` (`pass`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='voterdata';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voters`
--

LOCK TABLES `voters` WRITE;
/*!40000 ALTER TABLE `voters` DISABLE KEYS */;
INSERT INTO `voters` VALUES (1,'admin','abc','12345','male','admin@gmail.com','admin','0','20'),(3,'Sanket Kabade','Buthwar peth kabade galli phutane boll miraj','6542163541','male','kabade111@gmail.com','123456','1','23'),(4,'sakshi patil','kawlapur','6542163541','female','spatil@gmail.com','Spatil','1','23'),(6,'ashu ghadi','malwadi','9788564500','female','ashwini@gmail.com','ashu@123','1','21'),(7,'shwetali patil','sangli','9822411975','female','sweta11@gmail.com','sweta123','1','21'),(8,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL),(9,'rakesh jagput','kolhapur','9075202338','male','rakesh1282@gmail.com','1234','1','19'),(12,'shubham phutane','kolhapur','7075202338','male','pshubham@gmail.com','shubham1','0','23'),(13,'girish harge','miraj','7057061362','male','giriharge@gmail.com','giri1231','1','23'),(14,'raju sonavne','surat','9822411975','male','raju@gmail.com','raju123','1','24'),(16,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL),(17,'somesh kudch','miraj','9371444888','male','someshK123@gmai.com','somesh','0','24'),(56,'aniket phutane','sangli','9197989999','male','acp@gmail.com','Ani9999','1','27'),(57,'aniket phutane','sangli','9197989999','male','acp1@gmail.com','Ani999','0','27'),(58,'vaishu patil','pune','6676562200','female','vaishu@gmail.com','vaish','1','21'),(60,'ashish kabade','miraj','9846521652','male','ashish@gamil.com','ashish','0','23'),(63,'ashish kabade','miraj','9846521652','male','ashish1@gamil.com','ashish1','0','23'),(64,'shravni butale','kavte','9879879874','female','butale17@gmail.com','B1234','0','17'),(65,'anil kabade','miraj','9766760056','male','anilkabade111@gmail.com','kabade','0','45'),(66,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL),(67,'sahil kabade','miraj','6542163541','male','skabade1@gmail.com','k1234','0','21'),(68,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL),(69,'abc','Buthwar peth kabade galli phutane boll miraj','1234565252','other','sanketkade111@gmail.com','abc','0','21'),(70,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL),(71,'ram','pune','9766760056','male','ram@gmail.com','ram','0','23'),(73,'suchita kabade','Budhwar peth kabade,galli','1234567890','female','kabadesanket1383@gmail.co','12345678','0','21'),(74,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
/*!40000 ALTER TABLE `voters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-14 21:51:01
