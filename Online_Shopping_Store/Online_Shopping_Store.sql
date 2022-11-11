-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: shopping_store
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `cameras`
--

DROP TABLE IF EXISTS `cameras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cameras` (
  `camID` varchar(10) NOT NULL,
  `camName` varchar(45) DEFAULT NULL,
  `camSpecs` varchar(100) DEFAULT NULL,
  `camPrice` double DEFAULT NULL,
  `QtyInStock` int DEFAULT NULL,
  PRIMARY KEY (`camID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cameras`
--

LOCK TABLES `cameras` WRITE;
/*!40000 ALTER TABLE `cameras` DISABLE KEYS */;
/*!40000 ALTER TABLE `cameras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothes`
--

DROP TABLE IF EXISTS `clothes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothes` (
  `ItemCode` varchar(5) NOT NULL,
  `ItemName` varchar(45) DEFAULT NULL,
  `ItemType` varchar(5) DEFAULT NULL,
  `ItemSize` varchar(10) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `QtyInStock` int DEFAULT NULL,
  PRIMARY KEY (`ItemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothes`
--

LOCK TABLES `clothes` WRITE;
/*!40000 ALTER TABLE `clothes` DISABLE KEYS */;
INSERT INTO `clothes` VALUES ('C01','Blouse','Women','Large',1500,50),('C02','Shirt','Men','Medium',1800,18),('C03','Trouser','Women','Medium',2000,40),('C04','Frock','Kids','Small',800,70),('C05','Trouser','Men','Large',2500,40);
/*!40000 ALTER TABLE `clothes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CID` int NOT NULL AUTO_INCREMENT,
  `cusName` varchar(50) DEFAULT NULL,
  `NIC` varchar(12) DEFAULT NULL,
  `cusAddress` varchar(45) DEFAULT NULL,
  `cusEmail` varchar(45) DEFAULT NULL,
  `contactNo` int DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Sudarshan','991234567v','Kandy','sudarshana@gmail.com',771234567,'CID101','sudarshana12'),(2,'Lahiru','991234568v','Matale','lahiru@gmail.com',771234568,'CID102','lahiru123'),(3,'Kavishka ','991234569v','Tangalle','kavishka@gmail.com',771234569,'CID103','kavishka123'),(4,'Chamodi','991234560v','Ambalatota','chamodi@gmail.com',771234577,'CID104','chamodi12');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fitness_equipments`
--

DROP TABLE IF EXISTS `fitness_equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fitness_equipments` (
  `eqID` varchar(10) NOT NULL,
  `eqName` varchar(45) DEFAULT NULL,
  `eqBrand` varchar(20) DEFAULT NULL,
  `eqSize` varchar(20) DEFAULT NULL,
  `eqPrice` double DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  PRIMARY KEY (`eqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fitness_equipments`
--

LOCK TABLES `fitness_equipments` WRITE;
/*!40000 ALTER TABLE `fitness_equipments` DISABLE KEYS */;
INSERT INTO `fitness_equipments` VALUES ('FT01','Medicine Ball','PUMA','Large',2500,50),('FT02','Jump Ropes','NIKE','Medium',1000,100),('FT03','Exercise Materials','Gaiam','Large',2000,50),('FT04','Weight Lifting Gloves','Mass','Medium',1000,150),('FT05','Home Gym','Esar','Large',100000,10);
/*!40000 ALTER TABLE `fitness_equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hair_care`
--

DROP TABLE IF EXISTS `hair_care`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hair_care` (
  `ProdID` varchar(10) NOT NULL,
  `ProdName` varchar(45) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `ProdPrice` double DEFAULT NULL,
  `avlQty` int DEFAULT NULL,
  PRIMARY KEY (`ProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hair_care`
--

LOCK TABLES `hair_care` WRITE;
/*!40000 ALTER TABLE `hair_care` DISABLE KEYS */;
INSERT INTO `hair_care` VALUES ('HC01','shampoo','2022-05-14',300,28),('HC02','Hair oil','2025-09-03',130,60),('HC03','conditioner','2027-09-09',250,12);
/*!40000 ALTER TABLE `hair_care` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeappliences`
--

DROP TABLE IF EXISTS `homeappliences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homeappliences` (
  `HAID` varchar(5) NOT NULL,
  `HAName` varchar(45) DEFAULT NULL,
  `HASpecs` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `otherInfo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`HAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeappliences`
--

LOCK TABLES `homeappliences` WRITE;
/*!40000 ALTER TABLE `homeappliences` DISABLE KEYS */;
/*!40000 ALTER TABLE `homeappliences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indoor_games`
--

DROP TABLE IF EXISTS `indoor_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indoor_games` (
  `equipID` varchar(10) NOT NULL,
  `equipName` varchar(45) DEFAULT NULL,
  `equipBrand` varchar(20) DEFAULT NULL,
  `equipSize` varchar(10) DEFAULT NULL,
  `equipPrice` double DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  PRIMARY KEY (`equipID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indoor_games`
--

LOCK TABLES `indoor_games` WRITE;
/*!40000 ALTER TABLE `indoor_games` DISABLE KEYS */;
INSERT INTO `indoor_games` VALUES ('IG01','Chess set','Lewis','Standard',5000,50),('IG02','Carrom Board','Champion','Standard',5000,40),('IG04','Ludo board','OEM','Large',500,200),('IG05','Dart board','Champion','Large',1000,150);
/*!40000 ALTER TABLE `indoor_games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `it21336218_course_k`
--

DROP TABLE IF EXISTS `it21336218_course_k`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `it21336218_course_k` (
  `cid` char(4) NOT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `credits` int DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cname` (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `it21336218_course_k`
--

LOCK TABLES `it21336218_course_k` WRITE;
/*!40000 ALTER TABLE `it21336218_course_k` DISABLE KEYS */;
INSERT INTO `it21336218_course_k` VALUES ('DBII','Database Management Systems II',4),('IPE','Introduction to Programming Environments',4),('ITP','Information Technology Project',12),('SEII','Software Engineering II',4);
/*!40000 ALTER TABLE `it21336218_course_k` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `it21336218_grades_k`
--

DROP TABLE IF EXISTS `it21336218_grades_k`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `it21336218_grades_k` (
  `sid` char(10) NOT NULL,
  `cid` char(4) NOT NULL,
  `grade` char(1) DEFAULT NULL,
  PRIMARY KEY (`sid`,`cid`),
  KEY `cid` (`cid`),
  CONSTRAINT `it21336218_grades_k_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `it21336218_student_k` (`sid`),
  CONSTRAINT `it21336218_grades_k_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `it21336218_course_k` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `it21336218_grades_k`
--

LOCK TABLES `it21336218_grades_k` WRITE;
/*!40000 ALTER TABLE `it21336218_grades_k` DISABLE KEYS */;
INSERT INTO `it21336218_grades_k` VALUES ('DIT/05/001','DBII','B'),('DIT/05/001','IPE','C'),('DIT/05/001','ITP','A'),('DIT/05/001','SEII','B'),('DIT/05/011','DBII','B'),('DIT/05/011','ITP','B'),('DIT/05/011','SEII','C'),('DIT/05/021','IPE','C'),('DIT/05/131','DBII','C'),('DIT/05/131','IPE','A'),('DIT/05/131','ITP','B'),('DIT/05/241','DBII','B');
/*!40000 ALTER TABLE `it21336218_grades_k` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `it21336218_student_k`
--

DROP TABLE IF EXISTS `it21336218_student_k`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `it21336218_student_k` (
  `sid` char(10) NOT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `gpa` float DEFAULT NULL,
  `batch` char(2) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `it21336218_student_k`
--

LOCK TABLES `it21336218_student_k` WRITE;
/*!40000 ALTER TABLE `it21336218_student_k` DISABLE KEYS */;
INSERT INTO `it21336218_student_k` VALUES ('DIT/05/001','Sampath Weerasinghe','101 Galle Rd., Col-3',3.2,'Y1'),('DIT/05/011','Dulani Wijekoon','101 Matara Rd., Matara',2.8,'Y1'),('DIT/05/021','Ajith Makumbura','Madpatha Watta, Madapatha',2.9,'Y2'),('DIT/05/131','Srinivas Sivalingam ','22/3B, Polhengoda Rd., Col-6',3.1,'Y2'),('DIT/05/241','Mohommed Ismail','121/4E Polhena Rd., Matara',3.2,'Y2'),('DIT/06/345','Indika Hettige',NULL,NULL,'Y1');
/*!40000 ALTER TABLE `it21336218_student_k` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jewellary_watches`
--

DROP TABLE IF EXISTS `jewellary_watches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jewellary_watches` (
  `ItemCode` varchar(10) NOT NULL,
  `ItemName` varchar(45) DEFAULT NULL,
  `ItemType` varchar(10) DEFAULT NULL,
  `ItemSize` double DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `QtyInStock` int DEFAULT NULL,
  PRIMARY KEY (`ItemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jewellary_watches`
--

LOCK TABLES `jewellary_watches` WRITE;
/*!40000 ALTER TABLE `jewellary_watches` DISABLE KEYS */;
INSERT INTO `jewellary_watches` VALUES ('j01','Women','Bangle',2.5,50,200),('j02','Men','Watch',7.5,20,2500),('j03','Kids','Bangle',1.2,50,100),('j04','Men','Ring',6,80,250),('j05','Women','Ring',5,80,200);
/*!40000 ALTER TABLE `jewellary_watches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptops`
--

DROP TABLE IF EXISTS `laptops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptops` (
  `lapID` varchar(10) NOT NULL,
  `lapName` varchar(45) DEFAULT NULL,
  `lapSpecs` varchar(100) DEFAULT NULL,
  `lapPrice` double DEFAULT NULL,
  `QtyInStock` int DEFAULT NULL,
  PRIMARY KEY (`lapID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptops`
--

LOCK TABLES `laptops` WRITE;
/*!40000 ALTER TABLE `laptops` DISABLE KEYS */;
INSERT INTO `laptops` VALUES ('LP001','Asus ExpertBook L1500','AMD Ryzen 303250U Mobile Processor 5.6-inch',184000,8),('LP002','Apple_Mackbook_Air','Apple_Mackbook_Air 2014 Core i5 4GB 128GB SSD',123750,5),('LP003','DELL INSPIRON 15 3511','15.6 inch FHD(1920 * 1080) Anti-Glare Display',278000,3);
/*!40000 ALTER TABLE `laptops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oral_care`
--

DROP TABLE IF EXISTS `oral_care`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oral_care` (
  `ProdID` varchar(10) NOT NULL,
  `ProdName` varchar(45) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `ProdPrice` double DEFAULT NULL,
  `avlQty` int DEFAULT NULL,
  PRIMARY KEY (`ProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oral_care`
--

LOCK TABLES `oral_care` WRITE;
/*!40000 ALTER TABLE `oral_care` DISABLE KEYS */;
INSERT INTO `oral_care` VALUES ('OC01','Tooth paste','2025-12-03',150,23),('OC02','Mouth Wash','2022-08-08',100,34),('OC03','Tooth brush','2026-09-12',75,45);
/*!40000 ALTER TABLE `oral_care` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phones` (
  `phoneID` varchar(10) NOT NULL,
  `phoneName` varchar(45) DEFAULT NULL,
  `phoneSpecs` varchar(100) DEFAULT NULL,
  `phonePrice` double DEFAULT NULL,
  `QtyInStock` int DEFAULT NULL,
  PRIMARY KEY (`phoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones`
--

LOCK TABLES `phones` WRITE;
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` VALUES ('SMA70','Samsung Galaxy A70','5.8inch Display, 5000mAh battery, Android 10.',54000,20),('SMJ7','Samsung Galaxy J7 Prime','5.5inch TFT Display, 3000mAh battery, Android ',32000,7);
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `SID` varchar(10) NOT NULL,
  `SName` varchar(50) DEFAULT NULL,
  `SNIC` varchar(12) DEFAULT NULL,
  `SAddress` varchar(45) DEFAULT NULL,
  `SEmail` varchar(45) DEFAULT NULL,
  `SContactNo` int DEFAULT NULL,
  `Items` varchar(100) DEFAULT NULL,
  `SUserName` varchar(20) DEFAULT NULL,
  `SPassword` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES ('SID001','Milinda','973409433v','Colombo','milinda@gmail.com',112456987,'mobiles,TV','SELUN001','Yuio@col987'),('SID002','Prabath','953409487v','Kadawatha','prabaCloth@outlook.com',112498787,'Clothes','SELUN002','PoiuOOO%'),('SID003','Asha','983409433v','Kandy','ashaJewel@gmail.com',812467123,'Jewellaries','SELUN003','1100#@kljh'),('SID004','Samith','973409903v','Galle','Sfashions@gmail.com',712876987,'Hair products, Skin products, Clothes, Shoes','SELUN004','Asdfgh(5)'),('SID005','Ranuka','923407564v','Colombo','ranuka123@gmail.com',112456900,'Fitness&Cycling equipments','SELUN005','ficyeqi98*p');
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoes_accesories`
--

DROP TABLE IF EXISTS `shoes_accesories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoes_accesories` (
  `ItemCode` varchar(10) NOT NULL,
  `ItemName` varchar(45) DEFAULT NULL,
  `ItemType` varchar(10) DEFAULT NULL,
  `ItemSize` double DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `QtyInStock` int DEFAULT NULL,
  PRIMARY KEY (`ItemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoes_accesories`
--

LOCK TABLES `shoes_accesories` WRITE;
/*!40000 ALTER TABLE `shoes_accesories` DISABLE KEYS */;
INSERT INTO `shoes_accesories` VALUES ('SA01','Shoe','Women',7,3500,50),('SA02','Shoe','Men',6,4000,80),('SA03','Shoe','Kids',2,800,100),('SA04','Slippers','Women',8,950,90),('SA05','Socks','Men',7,400,70);
/*!40000 ALTER TABLE `shoes_accesories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skin_care`
--

DROP TABLE IF EXISTS `skin_care`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skin_care` (
  `ProdID` varchar(10) NOT NULL,
  `ProdName` varchar(45) DEFAULT NULL,
  `skinType` varchar(15) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `avlQty` int DEFAULT NULL,
  PRIMARY KEY (`ProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skin_care`
--

LOCK TABLES `skin_care` WRITE;
/*!40000 ALTER TABLE `skin_care` DISABLE KEYS */;
INSERT INTO `skin_care` VALUES ('SK01','Serum','Dry','2024-05-01',500,12),('SK02','Sun Cream','Normal','2024-05-01',500,12),('SK03','Body lotion','combination','2022-03-02',350,80);
/*!40000 ALTER TABLE `skin_care` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_sports`
--

DROP TABLE IF EXISTS `team_sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_sports` (
  `eqID` varchar(10) NOT NULL,
  `eqName` varchar(45) DEFAULT NULL,
  `eqBrand` varchar(20) DEFAULT NULL,
  `eqSize` varchar(20) DEFAULT NULL,
  `eqPrice` double DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  PRIMARY KEY (`eqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_sports`
--

LOCK TABLES `team_sports` WRITE;
/*!40000 ALTER TABLE `team_sports` DISABLE KEYS */;
INSERT INTO `team_sports` VALUES ('TS01','Foot ball','Addidas','Standard',2000,50),('TS02','Cricket ball','Kookaburra','Standard',1500,50),('TS03','Volly ball','Champion','Standard',1500,50),('TS04','Tennis ball','Dunlop','Standard',1000,250),('TS05','Cricket ball','Gray Nicolls','Standard',10000,20);
/*!40000 ALTER TABLE `team_sports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `television`
--

DROP TABLE IF EXISTS `television`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `television` (
  `TVID` varchar(10) NOT NULL,
  `TVName` varchar(45) DEFAULT NULL,
  `TVSpecs` varchar(100) DEFAULT NULL,
  `TVPrice` double DEFAULT NULL,
  `QtyInStock` int DEFAULT NULL,
  PRIMARY KEY (`TVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `television`
--

LOCK TABLES `television` WRITE;
/*!40000 ALTER TABLE `television` DISABLE KEYS */;
INSERT INTO `television` VALUES ('TV001','Samsung 55 AU8 100','Superior audio production and an immersive entertainment experiance',311060,2),('TV002','TCL Android Smart 43','FHD 1080 43 inch screen, Sound moes, bluetooth',168400,3),('TV003','Samsung 75 QLED','QLED 4k TV,Boundless Design,3,840 * 2,160',540000,0);
/*!40000 ALTER TABLE `television` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-11 18:40:42
