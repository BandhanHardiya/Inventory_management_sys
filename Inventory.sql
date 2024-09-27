CREATE DATABASE  IF NOT EXISTS `inventory_management_sys` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventory_management_sys`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: inventory_management_sys
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryID` int NOT NULL,
  `categoryName` varchar(20) NOT NULL,
  `description` varchar(90) NOT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'laptop','Portable Computers with build-in screens and keyboard'),(2,'Mouse','Pointing device used to control a cursor on the screen'),(3,'Monitors','Dislplay screen for computers'),(4,'Printers','Devices for printing documents and images'),(5,'USB Drivers','Portable Storge devices'),(6,'Hard Disks','Storage devices for data, typically used in computer'),(7,'Graphic Cards','Hardware for rendering images and video'),(8,'RAM','Memory used by computers to run applicatios'),(9,'Power Supplies','Devices providing power to computer components'),(10,'CPUs','Central processing units, the main processors of computers'),(11,'Motherboards','Main circuit boards connecting all components in a computer'),(12,'Keyboards','Input devices for typing on computers'),(13,'webcam','Cameras for capturing video and images for computers'),(14,'Headphones','Audio devices for personal listening'),(15,'Speakers','Audio output devices for computers and media players'),(16,'External Hard Drives','Portable data storage devices'),(17,'SSDs','Solid-stat drives for faster data storage'),(18,'Network Devices','Routers, modems and network cards'),(19,'Cooling systems','Devices for cooling computer components'),(20,'Cases','Enclosures for housing computer components'),(21,'Memory cards','Poratble storage cards for cameras and phones'),(22,'Optical Drives','Devices for reading CDs, DVDs and Blu-rays'),(23,'Tablets','Portable touchscreen computer'),(24,'Smartphones','Mobile phones with advanced computing capabilites'),(25,'Smartwatches','Wearable devices with fitness and smartphone features'),(26,'Projectors','Devices for projecting images onto large screen'),(27,'VR Headseats','Virtual reality devices for immersive experinces'),(28,'Scanners','Devices for scanning documents into digita form'),(29,'Game Consoles','Devices for playing video games'),(30,'Docking stations','Devices for connecting laptops to multipal peripherals'),(31,'Cables and Adapters','Accessories for connecting devices and peripherals'),(32,'Storage Servers','Dedicated devices for network data storage'),(33,'Security Cameras','Cameras for home and business surveillance'),(34,'Software','Computer programs and applications'),(35,'Smart Home Devices','Internet-connected devices for home automation'),(36,'UPS','Uninterruptible power supplies for backup power'),(37,'E-Readers','Devices for reading digital books'),(38,'3D Printers','Devices for printng objects in three dimensions'),(39,'Laser Printers','High-speed printers using laser technology'),(40,'Inkjet Printers','Printers using ink catridges for printing');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerID` int NOT NULL,
  `customerName` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `postalcode` varchar(15) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phoneNO` varchar(20) NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John Smith','12 Oak st','New York','10001','USA','+1-212-555-1234'),(2,'Maria Garcia','45 Maple Ave','Los Angles','90001','USA','+1-310-555-5678'),(3,'Li Wei','78 Jiangsu Rd','Shanghai','200040','China','+86-21-5555-9876'),(4,'Ahmed Khan','9 Park Lane','Dubai','12345','UAE','+971-4-555-4321'),(5,'Anika Mehta','23 Nandanvan Rd','Mumbai','400001','India','+91-22-5555-2234'),(6,'Emma Brown','56 Cedar St','London','W1D3QT','UK','+44-20-5555-6789'),(7,'Hiroshi Tanaka','11 Sakura Ave','Tokyo','100-0001','Japan','+81-3-5555-7890'),(8,'Pedro Hemandez','32 Calle sol','Madrid','28001','Spain','+34-91-555-3456'),(9,'Chloe Martin','77 Rue La Fayetta','Paris','75009','France','+33-1-5555-6789'),(10,'Luca Rossi','18 Via Roma','Rome','00100','Italy','+39-06-555-8901'),(11,'Kevin Peterrson','29 Sunset Blvd','Miami','33101','USA','+1-305-555-9876'),(12,'Fatima Ali','88 Al wahda St','Abu Dhabi','54321','UAE','+971-2-555-5678'),(13,'Zhang Wei','15 Guanghua Rd','Beijing','100020','China','+86-10-5555-7890'),(14,'Paul Schneider','66 Berliner Strasse','Berlin','10115','Germany','+49-30-5555-2345'),(15,'Natasha Lvanova','10 Nevsky Prospect','St. Petersburg','190000','Russia','+7-812-555-4567'),(16,'Sarah Williams','25 King St','Sydney','2000','Australia','+61-2-5555-7890'),(17,'Carlos Mendes','52 Avenida Brasil','Rio de janeiro','20000-000','Brazil','+55-21-555-6789'),(18,'Ali Hassan','34 Zamaleka St','Cairo','11511','Egypt','+20-2-555-1234'),(19,'Sofia Fernandes','19 Rua flores','Lisbon','1200-000','Portugal','+351-21-555-3456'),(20,'Emily Johnson','101 Queen St','Toronto','M5K2N2','Canada','+1-416-555-6789'),(21,'Sunil Kumar','10 MG Road','Bangalore','560001','India','+91-80-5555-7890'),(22,'Elena Popov','22 Ulitsa Tverskaya','Moscow','101000','Russia','+7-495-555-8901'),(23,'Oliver Green','33 Oxford St','London','W1C 1LX','UK','+44-20-5555-1234'),(24,'Hassan Mohammed','76 Al Fahidi St','Dubai','112233','UAE','+971-4-555-8901'),(25,'Maria Costa','47 Rua Augusta','Sao Paulo','01305-000','Brazil','+55-11-555-2345'),(26,'Maxime Dupont','54 Boulevard Haussmann','Paris','75008','France','+33-1-5555-3456'),(27,'Antonio Russo','67 Piazzz Navona','Rome','00186','Itley','+39-06-555-2345'),(28,'Jennifer Taylor','88 Bay St','Melbourne','3000','Australia','+61-3-5555-1234'),(29,'George Mitchell','99 Wall St','New York','10005','USA','+1-212-555-2345'),(30,'Akira Suzuki','12 Shibuya Crossing','Tokyo','150-0002','Japan','+81-3-5555-5678'),(31,'Emily Thompson','20 Queen St','Wellington','6011','New Zealand','+64-4-555-2345'),(32,'Ahmad Rashid','5 King Fahd Rd','Riyadh','11567','Saudi Arabia','+966-11-555-12345'),(33,'Isabelle Lefever','44 Avenue Montaigne','Paris','75008','France','+33-1-5555-8901'),(34,'Daniel Roberts','98 Sunset Blvd','Los Angeles','90002','USA','+1-310-555-6789'),(35,'Mohan Raj','87 RK Salai','Chennai','600001','India','+91-44-5555-3456'),(36,'Lisa Fischer','32 Hauptstrasse','Munich','80331','Germany','+49-89-5555-3456'),(37,'Fernando Lopez','75 Calle Mayor','Barcelona','08002','Spain','+34-93-555-2345'),(38,'Nur Fatimah','29 Jalan Sudirman','Jakarta','10220','Indonesia','+62-21-555-7890'),(39,'Victor Hernandez','11 Paseo de la Reforma','Mexico City','06500','Mexico','+52-55-555-8901'),(40,'Claire Wilson','66 Front St','Toronto','M5V 3L9','Canada','+1-416-555-2345');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderID` int NOT NULL,
  `productID` int NOT NULL,
  `customerID` int NOT NULL,
  `orderDate` date NOT NULL,
  `shipDate` date NOT NULL,
  `shipAddress` varchar(30) NOT NULL,
  `shipcity` varchar(20) NOT NULL,
  `shipPostalCode` varchar(12) NOT NULL,
  `shipCountry` varchar(15) NOT NULL,
  PRIMARY KEY (`orderID`),
  KEY `fk` (`customerID`),
  CONSTRAINT `fk` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (10646,27,27,'2024-08-27','2024-08-31','67 Piazza Navona','Rome','00186','Italy'),(11145,35,35,'2024-09-04','2024-09-08','28 Karl Johan Gate','Oslo','0162','Norway'),(11205,30,30,'2024-08-30','2024-09-03','12 Shibuya Crossing','Tokyo','150-0002','Japan'),(11256,8,8,'2024-08-08','2024-08-12','32 Calle Sol','Madrid','28001','Spain'),(11645,22,22,'2024-08-22','2024-08-26','22 Ulitsa Tverskaya','Moscow','101000','Russia'),(13934,16,16,'2024-08-16','2024-08-20','25 King St','Sydney','2000','Australia'),(14600,39,39,'2024-09-08','2024-09-12','47 The Grange','Melbourn','3000','Australia'),(19832,2,2,'2024-08-02','2024-08-04','45 Maple Ave','Los Angeles','90001','USA'),(22223,21,21,'2024-08-21','2024-08-25','10 MG Road','Bangalore','560001','India'),(22346,18,18,'2024-08-18','2024-08-22','34 Zamalek St','Cairo','11511','Egypt'),(32105,26,26,'2024-08-26','2024-08-30','54 Boulevard Haussmann','Paris','75008','France'),(33452,33,33,'2024-09-02','2024-09-06','44 Avenue Montaigne','Paris','75008','France'),(34542,13,13,'2024-08-13','2024-08-17','45 Guangha Rd','Beijing','100020','China'),(40013,31,31,'2024-08-31','2024-09-04','20 Queen St','Wellingtom','6011','New Zealand'),(44687,15,15,'2024-08-15','2024-08-19','10 Nevsky Prospect','St.Petersburg','190000','Russia'),(45541,6,6,'2024-08-06','2024-08-10','56 Cedar St','London','W1D 3QT','UK'),(49851,4,4,'2024-08-04','2024-08-07','9 Park Lane','Dubai','12345','UAE'),(60654,32,32,'2024-09-01','2024-09-05','5 King Fahd Rd','Riyadh','11564','Saudi Arabia'),(61464,24,24,'2024-08-24','2024-08-28','76 AL Fahidi','Dubai','112233','UAE'),(61654,1,1,'2024-08-01','2024-08-03','12 Oak St','New York','10001','USA'),(65789,9,9,'2024-08-09','2024-08-13','77 Rue La Fayette','Paris','75009','France'),(67145,5,5,'2024-08-05','2024-08-09','23 Nandanvan Rd','Mumbai','400001','India'),(72233,36,36,'2024-09-05','2024-09-09','23 Wenceslas Square','Prague','11000','Czechin'),(75553,14,14,'2024-08-14','2024-08-18','66 Berliner Strasse','Berlin','10115','Germany'),(77321,34,34,'2024-09-03','2024-09-07','18 Orchard Rd','Singapore','238838','Singapore'),(78144,10,10,'2024-08-10','2024-08-14','18 Via Roma','Rome','00100','Italy'),(79805,28,28,'2024-08-28','2024-09-01','88 Bay St','Melbourne','3000','Australia'),(79871,25,25,'2024-08-25','2024-08-29','47 Rua Augusta','Sao Paulo','01305-000','Brazil'),(87124,19,19,'2024-08-19','2024-08-23','19 Rua Flores','Lison','1200-000','Portugal'),(87132,7,7,'2024-08-07','2024-08-11','11 Sakura Ave','Tokyo','100-0001','Japan'),(87145,11,11,'2024-08-11','2024-08-15','29 Sunset Blvd','Miami','33101','USA'),(87146,17,17,'2024-08-17','2024-08-21','52 Avenida Brasil','Rio de janeiro','20000-000','Brazil'),(94043,29,29,'2024-08-29','2024-09-02','99 Wall St','New York','10005','USA'),(96056,38,38,'2024-09-07','2024-09-11','88 Spadina Ave','Toronto','M5V 2L9','Canada'),(97263,37,37,'2024-09-06','2024-09-10','50 High St','London','W1D 3QU','UK'),(98013,40,40,'2024-09-09','2024-09-13','91 Charles St','Boston','02114','USA'),(98161,3,3,'2024-08-03','2024-08-06','78 Jiangsu Rd','Shanghai','200040','China'),(98712,23,23,'2024-08-23','2024-08-27','33 Oxford St','London','W1C 1LX','UK'),(99877,20,20,'2024-08-20','2024-08-24','101 Queen St','Toronto','M5H 2N2','Canada'),(99951,12,12,'2024-08-12','2024-08-16','88 AL Wahda St','Abu Dhabi','54321','UAE');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productID` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(50) NOT NULL,
  `categoryID` int NOT NULL,
  `stock` int NOT NULL,
  `prize` int NOT NULL,
  `MRP` int NOT NULL,
  `suppliersID` int NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Laptop Dell Inspiron',1,25,55000,60000,1),(2,'Laptop HP Pavilion',1,100,58000,63000,2),(3,'Mouse Logitech M235',2,100,800,1000,3),(4,'Keyboard HP K1500',2,75,600,800,2),(5,'Monitor Samsung 24',3,40,9500,10500,4),(6,'Monitor LG 27',3,35,12000,13000,5),(7,'Printer Canon Pixma',4,50,7000,7500,6),(8,'Printer HP Deskjet',4,55,7500,8000,2),(9,'USB Driver SanDisk 32GB',5,200,500,600,7),(10,'USB Driver Kingston 64GB',5,180,750,850,7),(11,'Hard Disk WD 1TB',6,60,3500,4000,8),(12,'SSD Samsung 500GB',6,45,6000,6500,9),(13,'Graphics Card Nvidia',7,25,30000,32000,10),(14,'Graphics Card AMD RX',7,20,28000,30000,11),(15,'RAM Corsair 16GB',8,80,4500,5000,12),(16,'Ram Kingston 8GB',8,90,2500,3000,7),(17,'Power Supply Corsair',9,40,5000,5500,13),(18,'Power Supply Cooler Master',9,35,6000,6500,14),(19,'CPU Intel i7',10,25,35000,38000,15),(20,'CPU AMD Ryzen 5',10,30,28000,30000,11),(21,'Laptop Asus Vivobook',1,20,45000,48000,16),(22,'Laptop Acer Aspire',1,18,42000,46000,17),(23,'Mouse Razer DeathAdder',2,110,2500,2800,18),(24,'Keyboard Logitech G213',2,60,3500,3800,3),(25,'Monitor AOC 22',3,38,8500,9000,19),(26,'Monitor BenQ 27',3,40,11000,11500,20),(27,'Printer Epson L220',4,50,9000,9500,21),(28,'Printer Brother DCP',4,45,10000,10500,22),(29,'USB Driver HP 64GB',5,190,700,750,2),(30,'USB Driver PNY 128GB',5,160,1200,1400,23),(31,'Hard Disk Seagate 2TB',6,55,5000,5500,24),(32,'SSD Kingston 1TB',6,40,9500,10000,7),(33,'Graphics Card Asus ROG',7,15,60000,63000,16),(34,'Graphics Card Zotac RTX',7,10,70000,74000,25),(35,'RAM G.Skill 16GB',8,85,4800,5200,26),(36,'RAM ADATA 8GB',8,95,2300,2700,27),(37,'Power Supply EVGA 750W',9,42,6500,7000,28),(38,'Power Supply Seasonic',9,38,7000,7500,29),(39,'CPU Intel i9',10,22,45000,48000,30),(40,'CPU AMD Ryzen 9',10,18,40000,42000,11);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplierID` int NOT NULL,
  `supplierName` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `postal_code` varchar(15) NOT NULL,
  `country` varchar(25) NOT NULL,
  `phoneNo` varchar(18) NOT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Dell Technologies','1 Dell Way','Round Rock','78682','USA','+1-800-456-3355'),(2,'HP Inc.','1501 Page Mill Rd','Palo Alto','94304','USA','+1-800-752-0900'),(3,'Logitch','7700 Gateway Blvd','Newark','94560','USA','+1-800-231-7717'),(4,'Samsung Electronics','129 Samsung-RO','Suwon','16677','South Korea','+82-800-231-7717'),(5,'LG Electronics','128 Yeoui-daero','Seoul','150-721','South Korea','+82-2-3777-1114'),(6,'Canon Inc.','30-2, Shimomaruko 3-chome','Ota-Ku, Tokyo','146-8501','Japan','+81-3-3758-2111'),(7,'Kingston Technology','17600 Newhope st','Fountain Valley','92708','USA','+1-800-337-8410'),(8,'Western Digital','5601 Great Oaks Pkwy','San Jose','95119','USA','+1-800-275-4932'),(9,'Samsung SSD','129 Samsung-RO','Suwon','16677','South Korea','+82-800-726-7864'),(10,'Nvidia Corporation','2788 San Tomas Expy','Santa Clara','95051','USA','+1-800-797-6530'),(11,'AMD','2485 Augustine Dr','Santa Clara','95054','USA','+1-408-749-4000'),(12,'Corsair','47100 Bayside Pkwy','Fremont','94538','USA','+4-888-222-4346'),(13,'Cooler Master','2531 LawsonLn','Santa Clara','95051','USA','+1-408-988-0950'),(14,'EVGA Corporation','408 Saturn St','Brea','92821','USA','+1-888-880-3842'),(15,'Intal Corporation','2200 Mission College Blvd','Santa Clara','95054','USA','+1-408-765-8080'),(16,'Asus','15 Li-Te Rd','Taipei','112','Taiwan','+886-2-2896-3447'),(17,'Acer Inc.','8F, 88, Sec.1, Xintai','New Taipei','221','Taiwan','+886-2-2696-1234'),(18,'Razer Inc.','201 3rd St','San Francisco','94103','USA','+1-899-872-5233'),(19,'AOC International','4, Zongfu Road','Chengdu','610016','China','+86-28-8652-1000'),(20,'BenQ Corporation','16 Jihu Rd','Taipei','104','Taiwan','+886-2-8188-2233'),(21,'Epson','3-3-5 Owa','Suwa-Shi, Nagano','392-8502','Japan','+81-266-52-3131'),(22,'Brother Industries','15-1, Naeshiro-Cho','Mizuho-ku, Nagoya','467-8561','Japan','+81-52-824-2410'),(23,'PNY Technologies','100 Jefferson Rd','Parsippany','07054','USA','+1-800-234-4597'),(24,'Seagate Technology','1200 S De Anza Blvd','Cupertion','95014','USA','+1-800-732-4283'),(25,'Zotac','19 Zongfu Rd','Chengdu','610016','China','+86-28-8652-2000'),(26,'G,Skill','4F, 18 Lane 76, Rui Guang Rd','Taipei','114','Taiwan','+886-2-8751-3000'),(27,'ADTA Technology','18F, No.258, Liancheng Rd','New Taipei','135','Taiwan','+886-2-8228-0886'),(28,'EVGA Corporation','408 Saturn St','Brea','92821','USA','+1-888-880-3842'),(29,'Seasonic','22F, 121 Zongxin Rd','Taipei','144','Taiwan','+886-2-2659-0330'),(30,'Intal Corporation','2200 Mission College Blvd','Santa Clara','95054','USA','+1-408-765-8080'),(31,'MSI (Micro-Srar International','69, Lide St','Taipei','241','Taiwan','+886-2-3234-5599'),(32,'Thermaltake','16 Jihu Rd','Taipei','104','Taiwan','+886-2-8772-1364'),(33,'TP-Link Technologies','South City Tower, 10th Floor','Shenzhen','518057','China','+86-755-2650-4400'),(34,'Netgear','350 E Plumeria Dr','San Jose','95134','USA','+1-888-638-4327'),(35,'Apple Inc.','One Apple Park Way','Cupertion','95014','USA','+1-800-275-2273'),(36,'Lenovo','1009 Think Place','Morrisville','27560','USA','+1-855-253-6686'),(37,'Sony Electronics','16535 Via Esprillo','San Diego','92127','USA','+1-800-222-7669'),(38,'Microsoft Corporation','1 Microsoft Way','Redmond','98052','USA','+1-800-642-7676'),(39,'Huawei','14/15F, Shenzhen City','Shenzhen','518040','China','+86-755-2878-08808'),(40,'Fujitsu Ltd.','1-1 Kamikodanaka 4-chome','Kawasaki','211-8588','Japan','+81-44-777-1111');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-27 19:41:33
