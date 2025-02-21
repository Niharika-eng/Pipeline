-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: supermarket
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_price` float GENERATED ALWAYS AS ((`price` * `quantity`)) STORED,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9952 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` (`order_id`, `timestamp`, `customer_id`, `product_name`, `category`, `price`, `quantity`) VALUES (1052,'2025-02-02 09:29:16',14090,'Orange Juice','Beverages',3,1),(1138,'2025-01-15 12:05:26',60153,'Milk','Dairy',1.5,5),(1249,'2025-01-07 06:19:23',58667,'Orange Juice','Beverages',3,5),(1312,'2025-02-19 09:55:23',74002,'Milk','Dairy',1.5,5),(1505,'2025-02-16 00:12:03',97293,'Apple','Fruits',0.8,3),(1641,'2025-01-09 18:05:18',40217,'Orange Juice','Beverages',3,5),(2150,'2025-02-07 00:00:10',28349,'Apple','Fruits',0.8,3),(2210,'2025-02-13 16:00:49',90831,'Orange Juice','Beverages',3,2),(2241,'2025-01-19 15:42:37',87489,'Rice','Grains',2.5,2),(2281,'2025-01-31 14:48:32',33612,'Rice','Grains',2.5,5),(2328,'2025-02-07 00:27:58',35144,'Eggs','Dairy',3.5,4),(2471,'2025-02-16 00:37:23',31701,'Apple','Fruits',0.8,2),(2551,'2025-02-05 00:08:57',63040,'Bread','Bakery',2,3),(2586,'2025-01-15 14:02:37',80189,'Rice','Grains',2.5,1),(2601,'2025-01-30 21:29:54',98274,'Rice','Grains',2.5,1),(2630,'2025-02-05 04:59:20',62913,'Eggs','Dairy',3.5,3),(2711,'2025-02-07 06:46:30',78138,'Orange Juice','Beverages',3,5),(2950,'2025-01-21 20:12:07',12497,'Eggs','Dairy',3.5,2),(3049,'2025-01-25 15:17:48',42028,'Milk','Dairy',1.5,1),(3328,'2025-02-20 20:34:40',10965,'Orange Juice','Beverages',3,4),(3585,'2025-01-29 04:29:59',45146,'Bread','Bakery',2,2),(3638,'2025-02-10 17:38:14',44355,'Rice','Grains',2.5,5),(3645,'2025-01-05 16:20:12',95644,'Bread','Bakery',2,1),(3666,'2025-01-26 04:06:40',13313,'Orange Juice','Beverages',3,4),(3783,'2025-02-18 02:34:39',88133,'Orange Juice','Beverages',3,4),(3909,'2025-01-19 04:22:30',71218,'Chicken','Meat',5,4),(4102,'2025-01-05 19:54:14',15707,'Chicken','Meat',5,2),(4265,'2025-01-23 19:48:57',59389,'Eggs','Dairy',3.5,2),(4299,'2025-01-09 23:09:48',32511,'Apple','Fruits',0.8,2),(4305,'2025-01-18 03:19:34',64522,'Bread','Bakery',2,3),(4421,'2025-02-12 12:09:47',98276,'Apple','Fruits',0.8,2),(4434,'2025-01-31 02:57:29',80697,'Rice','Grains',2.5,3),(4474,'2025-01-12 04:00:38',72503,'Bread','Bakery',2,5),(4676,'2025-02-11 13:40:15',69430,'Bread','Bakery',2,5),(4765,'2025-02-18 09:10:23',92178,'Eggs','Dairy',3.5,3),(4841,'2025-02-09 01:55:37',78448,'Milk','Dairy',1.5,1),(4888,'2025-01-07 17:44:39',64297,'Chicken','Meat',5,2),(5023,'2025-01-10 10:20:30',14300,'Chicken','Meat',5,3),(5110,'2025-01-02 12:47:36',60125,'Eggs','Dairy',3.5,4),(5128,'2025-01-21 12:18:47',70991,'Orange Juice','Beverages',3,3),(5234,'2025-01-21 10:48:47',24935,'Milk','Dairy',1.5,2),(5248,'2025-02-07 10:26:56',31061,'Orange Juice','Beverages',3,2),(5303,'2025-02-17 10:13:41',77552,'Rice','Grains',2.5,4),(5363,'2025-01-13 23:03:07',59128,'Bread','Bakery',2,1),(5595,'2025-01-26 01:53:26',26124,'Eggs','Dairy',3.5,1),(5880,'2025-01-10 01:47:31',31899,'Chicken','Meat',5,2),(6297,'2025-02-16 13:40:11',13855,'Orange Juice','Beverages',3,1),(6359,'2025-01-01 11:27:07',11700,'Milk','Dairy',1.5,2),(6423,'2025-01-14 12:45:16',22201,'Apple','Fruits',0.8,5),(6592,'2025-01-17 00:02:06',10452,'Bread','Bakery',2,1),(6705,'2025-01-24 02:33:21',76505,'Apple','Fruits',0.8,3),(6716,'2025-01-04 01:14:53',87177,'Apple','Fruits',0.8,2),(6758,'2025-01-30 13:16:56',51841,'Bread','Bakery',2,2),(6796,'2025-01-15 21:08:22',89398,'Rice','Grains',2.5,1),(6822,'2025-01-10 22:34:59',28595,'Bread','Bakery',2,1),(7102,'2025-01-01 11:23:47',15815,'Milk','Dairy',1.5,5),(7120,'2025-01-28 21:05:47',60049,'Bread','Bakery',2,2),(7197,'2025-01-25 22:50:55',60178,'Apple','Fruits',0.8,5),(7201,'2025-01-07 02:52:34',95426,'Milk','Dairy',1.5,1),(7225,'2025-01-04 09:21:41',31321,'Milk','Dairy',1.5,3),(7246,'2025-01-11 03:19:41',41590,'Eggs','Dairy',3.5,5),(7722,'2025-02-20 00:44:09',70115,'Eggs','Dairy',3.5,3),(7752,'2025-01-26 23:23:02',69780,'Orange Juice','Beverages',3,1),(7759,'2025-02-07 08:58:54',64403,'Milk','Dairy',1.5,2),(7835,'2025-01-03 18:17:08',90848,'Chicken','Meat',5,5),(8112,'2025-01-03 20:07:19',54793,'Chicken','Meat',5,5),(8122,'2025-02-03 02:01:11',20249,'Bread','Bakery',2,4),(8126,'2025-02-15 12:41:35',15129,'Eggs','Dairy',3.5,1),(8274,'2025-02-07 13:06:22',54896,'Apple','Fruits',0.8,1),(8330,'2025-01-01 06:47:23',26677,'Eggs','Dairy',3.5,5),(8516,'2025-01-28 20:12:38',45797,'Orange Juice','Beverages',3,3),(8559,'2025-01-09 16:12:51',85855,'Milk','Dairy',1.5,2),(8588,'2025-01-19 19:19:46',41827,'Eggs','Dairy',3.5,1),(8637,'2025-01-23 08:37:12',14162,'Milk','Dairy',1.5,1),(8806,'2025-01-19 08:05:05',86504,'Bread','Bakery',2,3),(9077,'2025-02-18 00:43:58',83783,'Milk','Dairy',1.5,2),(9086,'2025-02-12 22:32:27',26324,'Eggs','Dairy',3.5,3),(9126,'2025-01-23 07:37:51',57605,'Orange Juice','Beverages',3,2),(9386,'2025-02-01 01:12:25',57642,'Apple','Fruits',0.8,1),(9410,'2025-01-07 00:17:24',10435,'Chicken','Meat',5,1),(9420,'2025-02-01 22:28:10',82713,'Orange Juice','Beverages',3,1),(9476,'2025-01-20 11:18:39',94907,'Eggs','Dairy',3.5,4),(9523,'2025-02-20 18:09:09',53892,'Milk','Dairy',1.5,1),(9706,'2025-01-21 22:31:07',21813,'Bread','Bakery',2,3),(9778,'2025-02-12 03:33:12',22202,'Bread','Bakery',2,3),(9812,'2025-01-02 00:09:11',72845,'Eggs','Dairy',3.5,4),(9817,'2025-02-18 05:52:29',95009,'Bread','Bakery',2,4),(9824,'2025-02-17 09:24:56',34881,'Eggs','Dairy',3.5,1),(9838,'2025-02-03 03:53:49',78323,'Eggs','Dairy',3.5,3),(9863,'2025-01-18 17:06:44',70394,'Chicken','Meat',5,3),(9917,'2025-01-22 03:38:25',69556,'Rice','Grains',2.5,2),(9951,'2025-02-13 20:27:47',12837,'Eggs','Dairy',3.5,4);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-21  8:05:02
