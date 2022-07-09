-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: tech_blog_db
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `comment_text` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,2,9,'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','2022-07-09 16:30:51','2022-07-09 16:30:51'),(2,3,8,'In hac habitasse platea dictumst.','2022-07-09 16:30:51','2022-07-09 16:30:51'),(3,1,7,'Vivamus vestibulum sagittis sapien.','2022-07-09 16:30:51','2022-07-09 16:30:51'),(4,1,5,'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','2022-07-09 16:30:51','2022-07-09 16:30:51'),(5,3,4,'Sed vel enim sit amet nunc viverra dapibus.','2022-07-09 16:30:51','2022-07-09 16:30:51'),(6,5,1,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.','2022-07-09 16:30:51','2022-07-09 16:30:51'),(7,1,1,'Morbi a ipsum.','2022-07-09 16:30:51','2022-07-09 16:30:51');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `post_content` text,
  `post_url` text,
  `user_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.',NULL,'https://europa.eu/parturient/montes/nascetur/ridiculus/mus/etiam/vel.aspx',1,'2022-07-09 16:30:50','2022-07-09 16:30:50'),(2,'Nunc purus.',NULL,'http://desdev.cn/enim/blandit/mi.jpg',4,'2022-07-09 16:30:50','2022-07-09 16:30:50'),(3,'Morbi non quam nec dui luctus rutrum.',NULL,'http://ucla.edu/consequat/nulla.html',1,'2022-07-09 16:30:50','2022-07-09 16:30:50'),(4,'Duis ac nibh.',NULL,'http://theguardian.com/dui/vel/nisl/duis/ac/nibh.aspx',3,'2022-07-09 16:30:50','2022-07-09 16:30:50'),(5,'Curabitur at ipsum ac tellus semper interdum.',NULL,'https://reverbnation.com/ligula/sit.jpg',5,'2022-07-09 16:30:50','2022-07-09 16:30:50'),(6,'In hac habitasse platea dictumst.',NULL,'http://china.com.cn/lectus/vestibulum.json',3,'2022-07-09 16:30:50','2022-07-09 16:30:50'),(7,'Donec dapibus.',NULL,'https://instagram.com/ac/neque/duis/bibendum/morbi/non.xml',4,'2022-07-09 16:30:50','2022-07-09 16:30:50'),(8,'Nulla tellus.',NULL,'https://lycos.com/natoque/penatibus/et.html',3,'2022-07-09 16:30:50','2022-07-09 16:30:50'),(9,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.',NULL,'https://paginegialle.it/mattis/egestas.jsp',2,'2022-07-09 16:30:50','2022-07-09 16:30:50'),(10,'In hac habitasse platea dictumst.',NULL,'http://wikia.com/turpis/eget.jpg',4,'2022-07-09 16:30:50','2022-07-09 16:30:50'),(11,'this is the test','tryung dstuff',NULL,2,'2022-07-09 16:34:45','2022-07-09 16:34:45'),(12,'this is luca post','post is written here',NULL,6,'2022-07-09 16:48:02','2022-07-09 16:48:02');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('6HrNxFUUY04R4Zo8RXfDZIXQoSSXmFMh','2022-07-10 16:51:16','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}','2022-07-09 16:51:16','2022-07-09 16:51:16');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'djiri4','gmidgley4@weather.com','$2b$10$tS6tSBFLxSB4TWnCPXePr..WOTnE9eGEXJ7/frFzbNV5fRhylCBpS'),(2,'msabbins8','lmongain8@google.ru','$2b$10$i5CCpUUp/ojMaY8zh16Kdue85Xbc.GlrYHNjk4TQHayHRPv2hcrDe'),(3,'jwilloughway1','rmebes1@sogou.com','$2b$10$9QtKHLuH/4DCj8T0GwY3C.Qz/zq7BRGorBHCuG08k5zonSVqeIiFW'),(4,'mpergens6','hnapleton6@feedburner.com','$2b$10$G7V/6y7mp5/260NyUlDvquo..mXW8gFkWMk5WPB2zUB3FTrG.wPPm'),(5,'dstanmer3','ihellier3@goo.ne.jp','$2b$10$b36FkW3OuH6lF.zObxcOyeDo/gcITMRcWBVKjkzkHfYHKC7uMWPVq'),(6,'luca','luca@luca.com','$2b$10$8KEy5fqIo7Qj2Q5TPtMuEe1SftVPi3n5KHKZVogX134toc.U.v3Fu');
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

-- Dump completed on 2022-07-09 13:36:03
