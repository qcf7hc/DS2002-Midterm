CREATE DATABASE  IF NOT EXISTS `northwind_dw2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `northwind_dw2`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: northwind_dw2
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `dim_customers`
--

DROP TABLE IF EXISTS `dim_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_customers` (
  `customer_key` bigint NOT NULL,
  `company` text,
  `last_name` text,
  `first_name` text,
  `job_title` text,
  `business_phone` text,
  `fax_number` text,
  `address` text,
  `city` text,
  `state_province` text,
  `zip_postal_code` text,
  `country_region` text,
  PRIMARY KEY (`customer_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_customers`
--

LOCK TABLES `dim_customers` WRITE;
/*!40000 ALTER TABLE `dim_customers` DISABLE KEYS */;
INSERT INTO `dim_customers` VALUES (1,'Company A','Bedecs','Anna','Owner','(123)555-0100','(123)555-0101','123 1st Street','Seattle','WA','99999','USA'),(2,'Company B','Gratacos Solsona','Antonio','Owner','(123)555-0100','(123)555-0101','123 2nd Street','Boston','MA','99999','USA'),(3,'Company C','Axen','Thomas','Purchasing Representative','(123)555-0100','(123)555-0101','123 3rd Street','Los Angelas','CA','99999','USA'),(4,'Company D','Lee','Christina','Purchasing Manager','(123)555-0100','(123)555-0101','123 4th Street','New York','NY','99999','USA'),(5,'Company E','O’Donnell','Martin','Owner','(123)555-0100','(123)555-0101','123 5th Street','Minneapolis','MN','99999','USA'),(6,'Company F','Pérez-Olaeta','Francisco','Purchasing Manager','(123)555-0100','(123)555-0101','123 6th Street','Milwaukee','WI','99999','USA'),(7,'Company G','Xie','Ming-Yang','Owner','(123)555-0100','(123)555-0101','123 7th Street','Boise','ID','99999','USA'),(8,'Company H','Andersen','Elizabeth','Purchasing Representative','(123)555-0100','(123)555-0101','123 8th Street','Portland','OR','99999','USA'),(9,'Company I','Mortensen','Sven','Purchasing Manager','(123)555-0100','(123)555-0101','123 9th Street','Salt Lake City','UT','99999','USA'),(10,'Company J','Wacker','Roland','Purchasing Manager','(123)555-0100','(123)555-0101','123 10th Street','Chicago','IL','99999','USA'),(11,'Company K','Krschne','Peter','Purchasing Manager','(123)555-0100','(123)555-0101','123 11th Street','Miami','FL','99999','USA'),(12,'Company L','Edwards','John','Purchasing Manager','(123)555-0100','(123)555-0101','123 12th Street','Las Vegas','NV','99999','USA'),(13,'Company M','Ludick','Andre','Purchasing Representative','(123)555-0100','(123)555-0101','456 13th Street','Memphis','TN','99999','USA'),(14,'Company N','Grilo','Carlos','Purchasing Representative','(123)555-0100','(123)555-0101','456 14th Street','Denver','CO','99999','USA'),(15,'Company O','Kupkova','Helena','Purchasing Manager','(123)555-0100','(123)555-0101','456 15th Street','Honolulu','HI','99999','USA'),(16,'Company P','Goldschmidt','Daniel','Purchasing Representative','(123)555-0100','(123)555-0101','456 16th Street','San Francisco','CA','99999','USA'),(17,'Company Q','Bagel','Jean Philippe','Owner','(123)555-0100','(123)555-0101','456 17th Street','Seattle','WA','99999','USA'),(18,'Company R','Autier Miconi','Catherine','Purchasing Representative','(123)555-0100','(123)555-0101','456 18th Street','Boston','MA','99999','USA'),(19,'Company S','Eggerer','Alexander','Accounting Assistant','(123)555-0100','(123)555-0101','789 19th Street','Los Angelas','CA','99999','USA'),(20,'Company T','Li','George','Purchasing Manager','(123)555-0100','(123)555-0101','789 20th Street','New York','NY','99999','USA'),(21,'Company U','Tham','Bernard','Accounting Manager','(123)555-0100','(123)555-0101','789 21th Street','Minneapolis','MN','99999','USA'),(22,'Company V','Ramos','Luciana','Purchasing Assistant','(123)555-0100','(123)555-0101','789 22th Street','Milwaukee','WI','99999','USA'),(23,'Company W','Entin','Michael','Purchasing Manager','(123)555-0100','(123)555-0101','789 23th Street','Portland','OR','99999','USA'),(24,'Company X','Hasselberg','Jonas','Owner','(123)555-0100','(123)555-0101','789 24th Street','Salt Lake City','UT','99999','USA'),(25,'Company Y','Rodman','John','Purchasing Manager','(123)555-0100','(123)555-0101','789 25th Street','Chicago','IL','99999','USA'),(26,'Company Z','Liu','Run','Accounting Assistant','(123)555-0100','(123)555-0101','789 26th Street','Miami','FL','99999','USA'),(27,'Company AA','Toh','Karen','Purchasing Manager','(123)555-0100','(123)555-0101','789 27th Street','Las Vegas','NV','99999','USA'),(28,'Company BB','Raghav','Amritansh','Purchasing Manager','(123)555-0100','(123)555-0101','789 28th Street','Memphis','TN','99999','USA'),(29,'Company CC','Lee','Soo Jung','Purchasing Manager','(123)555-0100','(123)555-0101','789 29th Street','Denver','CO','99999','USA');
/*!40000 ALTER TABLE `dim_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_employees`
--

DROP TABLE IF EXISTS `dim_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_employees` (
  `employee_key` bigint NOT NULL,
  `company` text,
  `last_name` text,
  `first_name` text,
  `email_address` text,
  `job_title` text,
  `business_phone` text,
  `home_phone` text,
  `fax_number` text,
  `address` text,
  `city` text,
  `state_province` text,
  `zip_postal_code` text,
  `country_region` text,
  `web_page` text,
  PRIMARY KEY (`employee_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_employees`
--

LOCK TABLES `dim_employees` WRITE;
/*!40000 ALTER TABLE `dim_employees` DISABLE KEYS */;
INSERT INTO `dim_employees` VALUES (1,'Northwind Traders','Freehafer','Nancy','nancy@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102','(123)555-0103','123 1st Avenue','Seattle','WA','99999','USA','#http://northwindtraders.com#'),(2,'Northwind Traders','Cencini','Andrew','andrew@northwindtraders.com','Vice President, Sales','(123)555-0100','(123)555-0102','(123)555-0103','123 2nd Avenue','Bellevue','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#'),(3,'Northwind Traders','Kotas','Jan','jan@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102','(123)555-0103','123 3rd Avenue','Redmond','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#'),(4,'Northwind Traders','Sergienko','Mariya','mariya@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102','(123)555-0103','123 4th Avenue','Kirkland','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#'),(5,'Northwind Traders','Thorpe','Steven','steven@northwindtraders.com','Sales Manager','(123)555-0100','(123)555-0102','(123)555-0103','123 5th Avenue','Seattle','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#'),(6,'Northwind Traders','Neipper','Michael','michael@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102','(123)555-0103','123 6th Avenue','Redmond','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#'),(7,'Northwind Traders','Zare','Robert','robert@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102','(123)555-0103','123 7th Avenue','Seattle','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#'),(8,'Northwind Traders','Giussani','Laura','laura@northwindtraders.com','Sales Coordinator','(123)555-0100','(123)555-0102','(123)555-0103','123 8th Avenue','Redmond','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#'),(9,'Northwind Traders','Hellung-Larsen','Anne','anne@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102','(123)555-0103','123 9th Avenue','Seattle','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#');
/*!40000 ALTER TABLE `dim_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_invoices`
--

DROP TABLE IF EXISTS `dim_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_invoices` (
  `invoice_key` bigint DEFAULT NULL,
  `order_key` bigint NOT NULL,
  `invoice_date` text,
  `due_date` text,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `amount_due` double DEFAULT NULL,
  PRIMARY KEY (`order_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_invoices`
--

LOCK TABLES `dim_invoices` WRITE;
/*!40000 ALTER TABLE `dim_invoices` DISABLE KEYS */;
INSERT INTO `dim_invoices` VALUES (15,30,'2006-03-24 11:03:00',NULL,0,0,0),(5,31,'2006-03-22 16:08:59',NULL,0,0,0),(6,32,'2006-03-22 16:10:27',NULL,0,0,0),(14,33,'2006-03-24 11:02:02',NULL,0,0,0),(13,34,'2006-03-24 11:00:55',NULL,0,0,0),(12,35,'2006-03-24 10:59:41',NULL,0,0,0),(11,36,'2006-03-24 10:58:40',NULL,0,0,0),(10,37,'2006-03-24 10:57:38',NULL,0,0,0),(9,38,'2006-03-24 10:56:57',NULL,0,0,0),(8,39,'2006-03-24 10:55:46',NULL,0,0,0),(7,40,'2006-03-24 10:41:41',NULL,0,0,0),(36,42,'2006-04-04 11:41:14',NULL,0,0,0),(23,45,'2006-04-04 11:09:24',NULL,0,0,0),(22,46,'2006-04-04 11:08:49',NULL,0,0,0),(21,47,'2006-04-04 11:08:14',NULL,0,0,0),(20,48,'2006-04-04 11:07:37',NULL,0,0,0),(19,50,'2006-04-04 11:06:56',NULL,0,0,0),(18,51,'2006-04-04 11:06:13',NULL,0,0,0),(17,55,'2006-04-04 11:05:04',NULL,0,0,0),(16,56,'2006-04-03 13:50:15',NULL,0,0,0),(39,58,'2006-04-04 11:43:08',NULL,0,0,0),(37,60,'2006-04-04 11:41:45',NULL,0,0,0),(38,63,'2006-04-04 11:42:26',NULL,0,0,0),(35,67,'2006-04-04 11:40:38',NULL,0,0,0),(34,69,'2006-04-04 11:40:16',NULL,0,0,0),(33,70,'2006-04-04 11:39:53',NULL,0,0,0),(32,71,'2006-04-04 11:39:29',NULL,0,0,0),(31,72,'2006-04-04 11:38:53',NULL,0,0,0),(30,73,'2006-04-04 11:38:32',NULL,0,0,0),(29,74,'2006-04-04 11:38:11',NULL,0,0,0),(28,75,'2006-04-04 11:37:49',NULL,0,0,0),(27,76,'2006-04-04 11:37:09',NULL,0,0,0),(26,77,'2006-04-04 11:36:47',NULL,0,0,0),(25,78,'2006-04-04 11:36:21',NULL,0,0,0),(24,79,'2006-04-04 11:35:54',NULL,0,0,0);
/*!40000 ALTER TABLE `dim_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_products`
--

DROP TABLE IF EXISTS `dim_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_products` (
  `product_key` bigint NOT NULL,
  `product_code` text,
  `product_name` text,
  `standard_cost` double DEFAULT NULL,
  `list_price` double DEFAULT NULL,
  `reorder_level` bigint DEFAULT NULL,
  `target_level` bigint DEFAULT NULL,
  `quantity_per_unit` text,
  `discontinued` bigint DEFAULT NULL,
  `minimum_reorder_quantity` double DEFAULT NULL,
  `category` text,
  PRIMARY KEY (`product_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_products`
--

LOCK TABLES `dim_products` WRITE;
/*!40000 ALTER TABLE `dim_products` DISABLE KEYS */;
INSERT INTO `dim_products` VALUES (1,'NWTB-1','Northwind Traders Chai',13.5,18,10,40,'10 boxes x 20 bags',0,10,'Beverages'),(3,'NWTCO-3','Northwind Traders Syrup',7.5,10,25,100,'12 - 550 ml bottles',0,25,'Condiments'),(4,'NWTCO-4','Northwind Traders Cajun Seasoning',16.5,22,10,40,'48 - 6 oz jars',0,10,'Condiments'),(5,'NWTO-5','Northwind Traders Olive Oil',16.0125,21.35,10,40,'36 boxes',0,10,'Oil'),(6,'NWTJP-6','Northwind Traders Boysenberry Spread',18.75,25,25,100,'12 - 8 oz jars',0,25,'Jams, Preserves'),(7,'NWTDFN-7','Northwind Traders Dried Pears',22.5,30,10,40,'12 - 1 lb pkgs.',0,10,'Dried Fruit & Nuts'),(8,'NWTS-8','Northwind Traders Curry Sauce',30,40,10,40,'12 - 12 oz jars',0,10,'Sauces'),(14,'NWTDFN-14','Northwind Traders Walnuts',17.4375,23.25,10,40,'40 - 100 g pkgs.',0,10,'Dried Fruit & Nuts'),(17,'NWTCFV-17','Northwind Traders Fruit Cocktail',29.25,39,10,40,'15.25 OZ',0,10,'Canned Fruit & Vegetables'),(19,'NWTBGM-19','Northwind Traders Chocolate Biscuits Mix',6.9,9.2,5,20,'10 boxes x 12 pieces',0,5,'Baked Goods & Mixes'),(20,'NWTJP-6','Northwind Traders Marmalade',60.75,81,10,40,'30 gift boxes',0,10,'Jams, Preserves'),(21,'NWTBGM-21','Northwind Traders Scones',7.5,10,5,20,'24 pkgs. x 4 pieces',0,5,'Baked Goods & Mixes'),(34,'NWTB-34','Northwind Traders Beer',10.5,14,15,60,'24 - 12 oz bottles',0,15,'Beverages'),(40,'NWTCM-40','Northwind Traders Crab Meat',13.8,18.4,30,120,'24 - 4 oz tins',0,30,'Canned Meat'),(41,'NWTSO-41','Northwind Traders Clam Chowder',7.2375,9.65,10,40,'12 - 12 oz cans',0,10,'Soups'),(43,'NWTB-43','Northwind Traders Coffee',34.5,46,25,100,'16 - 500 g tins',0,25,'Beverages'),(48,'NWTCA-48','Northwind Traders Chocolate',9.5625,12.75,25,100,'10 pkgs',0,25,'Candy'),(51,'NWTDFN-51','Northwind Traders Dried Apples',39.75,53,10,40,'50 - 300 g pkgs.',0,10,'Dried Fruit & Nuts'),(52,'NWTG-52','Northwind Traders Long Grain Rice',5.25,7,25,100,'16 - 2 kg boxes',0,25,'Grains'),(56,'NWTP-56','Northwind Traders Gnocchi',28.5,38,30,120,'24 - 250 g pkgs.',0,30,'Pasta'),(57,'NWTP-57','Northwind Traders Ravioli',14.625,19.5,20,80,'24 - 250 g pkgs.',0,20,'Pasta'),(65,'NWTS-65','Northwind Traders Hot Pepper Sauce',15.7875,21.05,10,40,'32 - 8 oz bottles',0,10,'Sauces'),(66,'NWTS-66','Northwind Traders Tomato Sauce',12.75,17,20,80,'24 - 8 oz jars',0,20,'Sauces'),(72,'NWTD-72','Northwind Traders Mozzarella',26.1,34.8,10,40,'24 - 200 g pkgs.',0,10,'Dairy products'),(74,'NWTDFN-74','Northwind Traders Almonds',7.5,10,5,20,'5 kg pkg.',0,5,'Dried Fruit & Nuts'),(77,'NWTCO-77','Northwind Traders Mustard',9.75,13,15,60,'12 boxes',0,15,'Condiments'),(80,'NWTDFN-80','Northwind Traders Dried Plums',3,3.5,50,75,'1 lb bag',0,25,'Dried Fruit & Nuts'),(81,'NWTB-81','Northwind Traders Green Tea',2,2.99,100,125,'20 bags per box',0,25,'Beverages'),(82,'NWTC-82','Northwind Traders Granola',2,4,20,100,NULL,0,NULL,'Cereal'),(83,'NWTCS-83','Northwind Traders Potato Chips',0.5,1.8,30,200,NULL,0,NULL,'Chips, Snacks'),(85,'NWTBGM-85','Northwind Traders Brownie Mix',9,12.49,10,20,'3 boxes',0,5,'Baked Goods & Mixes'),(86,'NWTBGM-86','Northwind Traders Cake Mix',10.5,15.99,10,20,'4 boxes',0,5,'Baked Goods & Mixes'),(87,'NWTB-87','Northwind Traders Tea',2,4,20,50,'100 count per box',0,NULL,'Beverages'),(88,'NWTCFV-88','Northwind Traders Pears',1,1.3,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables'),(89,'NWTCFV-89','Northwind Traders Peaches',1,1.5,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables'),(90,'NWTCFV-90','Northwind Traders Pineapple',1,1.8,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables'),(91,'NWTCFV-91','Northwind Traders Cherry Pie Filling',1,2,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables'),(92,'NWTCFV-92','Northwind Traders Green Beans',1,1.2,10,40,'14.5 OZ',0,NULL,'Canned Fruit & Vegetables'),(93,'NWTCFV-93','Northwind Traders Corn',1,1.2,10,40,'14.5 OZ',0,NULL,'Canned Fruit & Vegetables'),(94,'NWTCFV-94','Northwind Traders Peas',1,1.5,10,40,'14.5 OZ',0,NULL,'Canned Fruit & Vegetables'),(95,'NWTCM-95','Northwind Traders Tuna Fish',0.5,2,30,50,'5 oz',0,NULL,'Canned Meat'),(96,'NWTCM-96','Northwind Traders Smoked Salmon',2,4,30,50,'5 oz',0,NULL,'Canned Meat'),(97,'NWTC-82','Northwind Traders Hot Cereal',3,5,50,200,NULL,0,NULL,'Cereal'),(98,'NWTSO-98','Northwind Traders Vegetable Soup',1,1.89,100,200,NULL,0,NULL,'Soups'),(99,'NWTSO-99','Northwind Traders Chicken Soup',1,1.95,100,200,NULL,0,NULL,'Soups');
/*!40000 ALTER TABLE `dim_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_shippers`
--

DROP TABLE IF EXISTS `dim_shippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_shippers` (
  `shipper_key` bigint NOT NULL,
  `company` text,
  `address` text,
  `city` text,
  `state_province` text,
  `zip_postal_code` text,
  `country_region` text,
  PRIMARY KEY (`shipper_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_shippers`
--

LOCK TABLES `dim_shippers` WRITE;
/*!40000 ALTER TABLE `dim_shippers` DISABLE KEYS */;
INSERT INTO `dim_shippers` VALUES (1,'Shipping Company A','123 Any Street','Memphis','TN','99999','USA'),(2,'Shipping Company B','123 Any Street','Memphis','TN','99999','USA'),(3,'Shipping Company C','123 Any Street','Memphis','TN','99999','USA');
/*!40000 ALTER TABLE `dim_shippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_suppliers`
--

DROP TABLE IF EXISTS `dim_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_suppliers` (
  `supplier_key` bigint NOT NULL,
  `company` text,
  `last_name` text,
  `first_name` text,
  `job_title` text,
  PRIMARY KEY (`supplier_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_suppliers`
--

LOCK TABLES `dim_suppliers` WRITE;
/*!40000 ALTER TABLE `dim_suppliers` DISABLE KEYS */;
INSERT INTO `dim_suppliers` VALUES (1,'Supplier A','Andersen','Elizabeth A.','Sales Manager'),(2,'Supplier B','Weiler','Cornelia','Sales Manager'),(3,'Supplier C','Kelley','Madeleine','Sales Representative'),(4,'Supplier D','Sato','Naoki','Marketing Manager'),(5,'Supplier E','Hernandez-Echevarria','Amaya','Sales Manager'),(6,'Supplier F','Hayakawa','Satomi','Marketing Assistant'),(7,'Supplier G','Glasson','Stuart','Marketing Manager'),(8,'Supplier H','Dunton','Bryn Paul','Sales Representative'),(9,'Supplier I','Sandberg','Mikael','Sales Manager'),(10,'Supplier J','Sousa','Luis','Sales Manager');
/*!40000 ALTER TABLE `dim_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_inventory_transactions`
--

DROP TABLE IF EXISTS `fact_inventory_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_inventory_transactions` (
  `fact_inventory_transaction_key` bigint NOT NULL,
  `transaction_key` bigint DEFAULT NULL,
  `transaction_type` text,
  `transaction_created_date` text,
  `transaction_modified_date` text,
  `product_key` bigint DEFAULT NULL,
  `quantity` bigint DEFAULT NULL,
  `purchase_order_key` text,
  `customer_order_key` text,
  PRIMARY KEY (`fact_inventory_transaction_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_inventory_transactions`
--

LOCK TABLES `fact_inventory_transactions` WRITE;
/*!40000 ALTER TABLE `fact_inventory_transactions` DISABLE KEYS */;
INSERT INTO `fact_inventory_transactions` VALUES (1,35,'Purchased','2006-03-22 16:02:28','2006-03-22 16:02:28',80,75,NULL,NULL),(2,36,'Purchased','2006-03-22 16:02:48','2006-03-22 16:02:48',72,40,NULL,NULL),(3,37,'Purchased','2006-03-22 16:03:04','2006-03-22 16:03:04',52,100,NULL,NULL),(4,38,'Purchased','2006-03-22 16:03:09','2006-03-22 16:03:09',56,120,NULL,NULL),(5,39,'Purchased','2006-03-22 16:03:14','2006-03-22 16:03:14',57,80,NULL,NULL),(6,40,'Purchased','2006-03-22 16:03:40','2006-03-22 16:03:40',6,100,NULL,NULL),(7,41,'Purchased','2006-03-22 16:03:47','2006-03-22 16:03:47',7,40,NULL,NULL),(8,42,'Purchased','2006-03-22 16:03:54','2006-03-22 16:03:54',8,40,NULL,NULL),(9,43,'Purchased','2006-03-22 16:04:02','2006-03-22 16:04:02',14,40,NULL,NULL),(10,44,'Purchased','2006-03-22 16:04:07','2006-03-22 16:04:07',17,40,NULL,NULL),(11,45,'Purchased','2006-03-22 16:04:12','2006-03-22 16:04:12',19,20,NULL,NULL),(12,46,'Purchased','2006-03-22 16:04:17','2006-03-22 16:04:17',20,40,NULL,NULL),(13,47,'Purchased','2006-03-22 16:04:20','2006-03-22 16:04:20',21,20,NULL,NULL),(14,48,'Purchased','2006-03-22 16:04:24','2006-03-22 16:04:24',40,120,NULL,NULL),(15,49,'Purchased','2006-03-22 16:04:28','2006-03-22 16:04:28',41,40,NULL,NULL),(16,50,'Purchased','2006-03-22 16:04:31','2006-03-22 16:04:31',48,100,NULL,NULL),(17,51,'Purchased','2006-03-22 16:04:38','2006-03-22 16:04:38',51,40,NULL,NULL),(18,52,'Purchased','2006-03-22 16:04:41','2006-03-22 16:04:41',74,20,NULL,NULL),(19,53,'Purchased','2006-03-22 16:04:45','2006-03-22 16:04:45',77,60,NULL,NULL),(20,54,'Purchased','2006-03-22 16:05:07','2006-03-22 16:05:07',3,100,NULL,NULL),(21,55,'Purchased','2006-03-22 16:05:11','2006-03-22 16:05:11',4,40,NULL,NULL),(22,56,'Purchased','2006-03-22 16:05:14','2006-03-22 16:05:14',5,40,NULL,NULL),(23,57,'Purchased','2006-03-22 16:05:26','2006-03-22 16:05:26',65,40,NULL,NULL),(24,58,'Purchased','2006-03-22 16:05:32','2006-03-22 16:05:32',66,80,NULL,NULL),(25,59,'Purchased','2006-03-22 16:05:47','2006-03-22 16:05:47',1,40,NULL,NULL),(26,60,'Purchased','2006-03-22 16:05:51','2006-03-22 16:05:51',34,60,NULL,NULL),(27,61,'Purchased','2006-03-22 16:06:00','2006-03-22 16:06:00',43,100,NULL,NULL),(28,62,'Purchased','2006-03-22 16:06:03','2006-03-22 16:06:03',81,125,NULL,NULL),(29,72,'Purchased','2006-03-24 10:41:30','2006-03-24 10:41:30',81,200,NULL,NULL),(30,74,'Purchased','2006-03-24 10:53:13','2006-03-24 10:53:13',48,100,NULL,NULL),(31,76,'Purchased','2006-03-24 10:53:36','2006-03-24 10:53:36',43,300,NULL,NULL),(32,78,'Purchased','2006-03-24 10:54:04','2006-03-24 10:54:04',41,200,NULL,NULL),(33,80,'Purchased','2006-03-24 10:54:33','2006-03-24 10:54:33',19,30,NULL,NULL),(34,82,'Purchased','2006-03-24 10:54:58','2006-03-24 10:54:58',34,100,NULL,NULL),(35,100,'Purchased','2006-04-04 11:00:54','2006-04-04 11:00:54',57,100,NULL,NULL),(36,102,'Purchased','2006-04-04 11:01:14','2006-04-04 11:01:14',34,50,NULL,NULL),(37,103,'Purchased','2006-04-04 11:01:35','2006-04-04 11:01:35',43,250,NULL,NULL),(38,105,'Purchased','2006-04-04 11:01:55','2006-04-04 11:01:55',8,25,NULL,NULL),(39,107,'Purchased','2006-04-04 11:02:17','2006-04-04 11:02:17',34,300,NULL,NULL),(40,109,'Purchased','2006-04-04 11:02:37','2006-04-04 11:02:37',19,25,NULL,NULL),(41,111,'Purchased','2006-04-04 11:02:56','2006-04-04 11:02:56',19,10,NULL,NULL),(42,113,'Purchased','2006-04-04 11:03:12','2006-04-04 11:03:12',72,50,NULL,NULL),(43,115,'Purchased','2006-04-04 11:03:38','2006-04-04 11:03:38',41,50,NULL,NULL),(44,63,'Sold','2006-03-22 16:07:56','2006-03-24 11:03:00',80,30,NULL,NULL),(45,64,'Sold','2006-03-22 16:08:19','2006-03-22 16:08:59',7,10,NULL,NULL),(46,65,'Sold','2006-03-22 16:08:29','2006-03-22 16:08:59',51,10,NULL,NULL),(47,66,'Sold','2006-03-22 16:08:37','2006-03-22 16:08:59',80,10,NULL,NULL),(48,67,'Sold','2006-03-22 16:09:46','2006-03-22 16:10:27',1,15,NULL,NULL),(49,68,'Sold','2006-03-22 16:10:06','2006-03-22 16:10:27',43,20,NULL,NULL),(50,69,'Sold','2006-03-22 16:11:39','2006-03-24 11:00:55',19,20,NULL,NULL),(51,70,'Sold','2006-03-22 16:11:56','2006-03-24 10:59:41',48,10,NULL,NULL),(52,71,'Sold','2006-03-22 16:12:29','2006-03-24 10:57:38',8,17,NULL,NULL),(53,73,'Sold','2006-03-24 10:41:33','2006-03-24 10:41:42',81,200,NULL,NULL),(54,75,'Sold','2006-03-24 10:53:16','2006-03-24 10:55:46',48,100,NULL,NULL),(55,77,'Sold','2006-03-24 10:53:39','2006-03-24 10:56:57',43,300,NULL,NULL),(56,79,'Sold','2006-03-24 10:54:07','2006-03-24 10:58:40',41,200,NULL,NULL),(57,81,'Sold','2006-03-24 10:54:35','2006-03-24 11:02:02',19,30,NULL,NULL),(58,83,'Sold','2006-03-24 10:55:02','2006-03-24 11:03:00',34,100,NULL,NULL),(59,84,'Sold','2006-03-24 14:48:15','2006-04-04 11:41:14',6,10,NULL,NULL),(60,85,'Sold','2006-03-24 14:48:23','2006-04-04 11:41:14',4,10,NULL,NULL),(61,91,'Sold','2006-03-24 14:51:03','2006-04-04 11:09:24',40,50,NULL,NULL),(62,92,'Sold','2006-03-24 14:55:03','2006-04-04 11:06:56',21,20,NULL,NULL),(63,93,'Sold','2006-03-24 14:55:39','2006-04-04 11:06:13',5,25,NULL,NULL),(64,94,'Sold','2006-03-24 14:55:52','2006-04-04 11:06:13',41,30,NULL,NULL),(65,95,'Sold','2006-03-24 14:56:09','2006-04-04 11:06:13',40,30,NULL,NULL),(66,99,'Sold','2006-04-03 13:50:08','2006-04-03 13:50:15',48,10,NULL,NULL),(67,101,'Sold','2006-04-04 11:00:56','2006-04-04 11:08:49',57,100,NULL,NULL),(68,106,'Sold','2006-04-04 11:01:58','2006-04-04 11:07:37',8,25,NULL,NULL),(69,108,'Sold','2006-04-04 11:02:19','2006-04-04 11:08:14',34,300,NULL,NULL),(70,110,'Sold','2006-04-04 11:02:39','2006-04-04 11:41:14',19,10,NULL,NULL),(71,112,'Sold','2006-04-04 11:02:58','2006-04-04 11:07:37',19,25,NULL,NULL),(72,114,'Sold','2006-04-04 11:03:14','2006-04-04 11:08:49',72,50,NULL,NULL),(73,116,'Sold','2006-04-04 11:03:39','2006-04-04 11:09:24',41,50,NULL,NULL),(74,117,'Sold','2006-04-04 11:04:55','2006-04-04 11:05:04',34,87,NULL,NULL),(75,118,'Sold','2006-04-04 11:35:50','2006-04-04 11:35:54',51,30,NULL,NULL),(76,119,'Sold','2006-04-04 11:35:51','2006-04-04 11:35:54',7,30,NULL,NULL),(77,120,'Sold','2006-04-04 11:36:15','2006-04-04 11:36:21',17,40,NULL,NULL),(78,121,'Sold','2006-04-04 11:36:39','2006-04-04 11:36:47',6,90,NULL,NULL),(79,122,'Sold','2006-04-04 11:37:06','2006-04-04 11:37:09',4,30,NULL,NULL),(80,123,'Sold','2006-04-04 11:37:45','2006-04-04 11:37:49',48,40,NULL,NULL),(81,124,'Sold','2006-04-04 11:38:07','2006-04-04 11:38:11',48,40,NULL,NULL),(82,125,'Sold','2006-04-04 11:38:27','2006-04-04 11:38:32',41,10,NULL,NULL),(83,126,'Sold','2006-04-04 11:38:48','2006-04-04 11:38:53',43,5,NULL,NULL),(84,127,'Sold','2006-04-04 11:39:12','2006-04-04 11:39:29',40,40,NULL,NULL),(85,128,'Sold','2006-04-04 11:39:50','2006-04-04 11:39:53',8,20,NULL,NULL),(86,129,'Sold','2006-04-04 11:40:13','2006-04-04 11:40:16',80,15,NULL,NULL),(87,130,'Sold','2006-04-04 11:40:32','2006-04-04 11:40:38',74,20,NULL,NULL),(88,131,'Sold','2006-04-04 11:41:39','2006-04-04 11:41:45',72,40,NULL,NULL),(89,132,'Sold','2006-04-04 11:42:17','2006-04-04 11:42:26',3,50,NULL,NULL),(90,133,'Sold','2006-04-04 11:42:24','2006-04-04 11:42:26',8,3,NULL,NULL),(91,134,'Sold','2006-04-04 11:42:48','2006-04-04 11:43:08',20,40,NULL,NULL),(92,135,'Sold','2006-04-04 11:43:05','2006-04-04 11:43:08',52,40,NULL,NULL),(93,86,'On Hold','2006-03-24 14:49:16','2006-03-24 14:49:16',80,20,NULL,NULL),(94,87,'On Hold','2006-03-24 14:49:20','2006-03-24 14:49:20',81,50,NULL,NULL),(95,88,'On Hold','2006-03-24 14:50:09','2006-03-24 14:50:09',1,25,NULL,NULL),(96,89,'On Hold','2006-03-24 14:50:14','2006-03-24 14:50:14',43,25,NULL,NULL),(97,90,'On Hold','2006-03-24 14:50:18','2006-03-24 14:50:18',81,25,NULL,NULL),(98,96,'On Hold','2006-03-30 16:46:34','2006-03-30 16:46:34',34,12,NULL,NULL),(99,97,'On Hold','2006-03-30 17:23:27','2006-03-30 17:23:27',34,10,NULL,NULL),(100,98,'On Hold','2006-03-30 17:24:33','2006-03-30 17:24:33',34,1,NULL,NULL),(101,104,'On Hold','2006-04-04 11:01:37','2006-04-04 11:01:37',43,300,NULL,NULL),(102,136,'On Hold','2006-04-25 17:04:05','2006-04-25 17:04:57',56,110,NULL,NULL);
/*!40000 ALTER TABLE `fact_inventory_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_purchase_orders`
--

DROP TABLE IF EXISTS `fact_purchase_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_purchase_orders` (
  `fact_purchase_order_key` bigint NOT NULL,
  `purchase_order_key` bigint DEFAULT NULL,
  `supplier_key` bigint DEFAULT NULL,
  `created_by` double DEFAULT NULL,
  `submitted_date` text,
  `creation_date` text,
  `status` text,
  `expected_date` text,
  `shipping_fee` double DEFAULT NULL,
  `taxes` double DEFAULT NULL,
  `payment_date` text,
  `payment_amount` double DEFAULT NULL,
  `payment_method` text,
  `approved_by` double DEFAULT NULL,
  `approved_date` text,
  `submitted_by` bigint DEFAULT NULL,
  `purchase_order_detail_key` bigint DEFAULT NULL,
  `product_key` bigint DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `unit_cost` double DEFAULT NULL,
  `date_received` text,
  `posted_to_inventory` bigint DEFAULT NULL,
  `inventory_key` double DEFAULT NULL,
  PRIMARY KEY (`fact_purchase_order_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_purchase_orders`
--

LOCK TABLES `fact_purchase_orders` WRITE;
/*!40000 ALTER TABLE `fact_purchase_orders` DISABLE KEYS */;
INSERT INTO `fact_purchase_orders` VALUES (1,90,1,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,238,1,40,14,'2006-01-22 00:00:00',1,59),(2,91,3,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,239,3,100,8,'2006-01-22 00:00:00',1,54),(3,91,3,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,240,4,40,16,'2006-01-22 00:00:00',1,55),(4,91,3,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,241,5,40,16,'2006-01-22 00:00:00',1,56),(5,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,242,6,100,19,'2006-01-22 00:00:00',1,40),(6,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,243,7,40,22,'2006-01-22 00:00:00',1,41),(7,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,244,8,40,30,'2006-01-22 00:00:00',1,42),(8,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,245,14,40,17,'2006-01-22 00:00:00',1,43),(9,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,246,17,40,29,'2006-01-22 00:00:00',1,44),(10,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,247,19,20,7,'2006-01-22 00:00:00',1,45),(11,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,248,20,40,61,'2006-01-22 00:00:00',1,46),(12,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,249,21,20,8,'2006-01-22 00:00:00',1,47),(13,90,1,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,250,34,60,10,'2006-01-22 00:00:00',1,60),(14,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,251,40,120,14,'2006-01-22 00:00:00',1,48),(15,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,252,41,40,7,'2006-01-22 00:00:00',1,49),(16,90,1,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,253,43,100,34,'2006-01-22 00:00:00',1,61),(17,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,254,48,100,10,'2006-01-22 00:00:00',1,50),(18,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,255,51,40,40,'2006-01-22 00:00:00',1,51),(19,93,5,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,256,52,100,5,'2006-01-22 00:00:00',1,37),(20,93,5,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,257,56,120,28,'2006-01-22 00:00:00',1,38),(21,93,5,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,258,57,80,15,'2006-01-22 00:00:00',1,39),(22,91,3,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,259,65,40,16,'2006-01-22 00:00:00',1,57),(23,91,3,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,260,66,80,13,'2006-01-22 00:00:00',1,58),(24,94,6,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,261,72,40,26,'2006-01-22 00:00:00',1,36),(25,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,262,74,20,8,'2006-01-22 00:00:00',1,52),(26,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,263,77,60,10,'2006-01-22 00:00:00',1,53),(27,95,4,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,264,80,75,3,'2006-01-22 00:00:00',1,35),(28,90,1,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,265,81,125,2,'2006-01-22 00:00:00',1,62),(29,96,1,5,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',5,266,34,100,10,'2006-01-22 00:00:00',1,82),(30,97,2,7,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',7,267,19,30,7,'2006-01-22 00:00:00',1,80),(31,98,2,4,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',4,268,41,200,7,'2006-01-22 00:00:00',1,78),(32,99,1,3,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',3,269,43,300,34,'2006-01-22 00:00:00',1,76),(33,100,2,9,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',9,270,48,100,10,'2006-01-22 00:00:00',1,74),(34,101,1,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,271,81,200,2,'2006-01-22 00:00:00',1,72),(35,102,1,1,'2006-03-24 00:00:00','2006-03-24 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-04-04 00:00:00',1,272,43,300,34,NULL,0,NULL),(36,103,2,1,'2006-03-24 00:00:00','2006-03-24 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-04-04 00:00:00',1,273,19,10,7,'2006-04-17 00:00:00',1,111),(37,104,2,1,'2006-03-24 00:00:00','2006-03-24 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-04-04 00:00:00',1,274,41,50,7,'2006-04-06 00:00:00',1,115),(38,105,5,7,'2006-03-24 00:00:00','2006-03-24 00:00:00','Approved',NULL,0,0,NULL,0,'Check',2,'2006-04-04 00:00:00',7,275,57,100,15,'2006-04-05 00:00:00',1,100),(39,106,6,7,'2006-03-24 00:00:00','2006-03-24 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-04-04 00:00:00',7,276,72,50,26,'2006-04-05 00:00:00',1,113),(40,107,1,6,'2006-03-24 00:00:00','2006-03-24 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-04-04 00:00:00',6,277,34,300,10,'2006-04-05 00:00:00',1,107),(41,108,2,4,'2006-03-24 00:00:00','2006-03-24 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-04-04 00:00:00',4,278,8,25,30,'2006-04-05 00:00:00',1,105),(42,109,2,4,'2006-03-24 00:00:00','2006-03-24 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-04-04 00:00:00',4,279,19,25,7,'2006-04-05 00:00:00',1,109),(43,110,1,3,'2006-03-24 00:00:00','2006-03-24 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-04-04 00:00:00',3,280,43,250,34,'2006-04-10 00:00:00',1,103),(44,90,1,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,281,1,40,14,NULL,0,NULL),(45,92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,282,19,20,7,NULL,0,NULL),(46,111,1,2,'2006-03-31 00:00:00','2006-03-31 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-04-04 00:00:00',2,283,34,50,10,'2006-04-04 00:00:00',1,102),(47,91,3,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,285,3,50,8,NULL,0,NULL),(48,91,3,2,'2006-01-14 00:00:00','2006-01-22 00:00:00','Approved',NULL,0,0,NULL,0,NULL,2,'2006-01-22 00:00:00',2,286,4,40,16,NULL,0,NULL),(49,140,6,NULL,'2006-04-25 00:00:00','2006-04-25 16:40:51','Approved',NULL,0,0,NULL,0,NULL,2,'2006-04-25 16:41:33',2,288,85,10,9,NULL,0,NULL),(50,141,8,NULL,'2006-04-25 00:00:00','2006-04-25 17:10:35','Approved',NULL,0,0,NULL,0,NULL,2,'2006-04-25 17:10:55',2,289,6,10,18.75,NULL,0,NULL),(51,142,8,NULL,'2006-04-25 00:00:00','2006-04-25 17:18:29','Approved',NULL,0,0,NULL,0,'Check',2,'2006-04-25 17:18:51',2,290,1,1,13.5,NULL,0,NULL),(52,146,2,2,'2006-04-26 18:26:37','2006-04-26 18:26:37','Submitted',NULL,0,0,NULL,0,NULL,NULL,NULL,2,292,20,40,60,NULL,0,NULL),(53,146,2,2,'2006-04-26 18:26:37','2006-04-26 18:26:37','Submitted',NULL,0,0,NULL,0,NULL,NULL,NULL,2,293,51,40,39,NULL,0,NULL),(54,147,7,2,'2006-04-26 18:33:28','2006-04-26 18:33:28','Submitted',NULL,0,0,NULL,0,NULL,NULL,NULL,2,294,40,120,13,NULL,0,NULL),(55,148,5,2,'2006-04-26 18:33:52','2006-04-26 18:33:52','Submitted',NULL,0,0,NULL,0,NULL,NULL,NULL,2,295,72,40,26,NULL,0,NULL);
/*!40000 ALTER TABLE `fact_purchase_orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23  1:34:17
