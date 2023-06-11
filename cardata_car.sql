-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cardata
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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mark` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `fuel` varchar(45) DEFAULT NULL,
  `engine` varchar(45) DEFAULT NULL,
  `mileage` varchar(45) DEFAULT NULL,
  `power` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (10,'BMW','Seria 1 116i','https://d-pt.ppstatic.pl/k/r/1/bf/35/6242c2f66a7a3_p.jpg?1648542454',2009,19900,'Benzyna','1599 cm3','175 140 km','122 KM'),(11,'Ford','Focus','https://autoatelier.pl/wp-content/uploads/2022/05/9b543c0e38637a02.jpg',2008,18900,'Benzyna','1596 cm3','154 000 km','100 KM'),(12,'Volkswagen','Touran','https://img.carteam.pl/thumbs/784x502/62/62574/223.jpg.webp',2006,11900,'Diesel','1896 cm3','292 022 km','105 KM'),(13,'Seat','Altea','https://images.ctfassets.net/uaddx06iwzdz/3djvAlfhtwLfCGpDkIrJBU/4d94ae17fc3b6636f65f81ce45916ec7/seat-altea-xl-front.jpeg',2009,19900,'Diesel','1968 cm3','269 000 km','170 KM'),(14,'Opel','Corsa','https://d-art.ppstatic.pl/kadry/k/r/1/b6/ac/624ba67b52dd8_o_full.jpg',2010,16900,'Benzyna','1398 cm3','162 874 km','87 KM'),(15,'Skoda','Fabia','https://images.drive.com.au/driveau/image/upload/c_fill,f_auto,g_auto,h_674,q_auto:eco,w_1200/v1/cms/uploads/Krnu5ifrRQWle2tjQTTv',2013,23850,'Benzyna+LPG','1198 cm3','121 108 km','70 KM'),(16,'Renault','Captur','https://webp-konwerter.infor.pl/eyJmIjoiaHR0cHM6Ly9nMT/AuaW5mb3IucGwvcC9fZmls/ZXMvMjU0MDAwLzZfZHNjMD/M3NzcuanBnIiwidyI6NjYwfQ.png',2013,14500,'Benzyna','898 cm3','80 000 km','90 KM'),(17,'Fiat','Punto','https://www.autocentrum.pl/ac-file/gallery-photo/5dd31252583a0f0f2c5124ff/fiat-punto-punto-evo.jpg',2010,19900,'Benzyna','1368 cm3','173 000 km','77 KM'),(18,'Toyota','Avensis','https://cdn.car-recalls.eu/wp-content/uploads/2020/04/toyota-avensis-2013-recall-768x512.jpg',2013,45500,'Benzyna','1798 cm3','190 000 km','147 KM'),(19,'BMW','X3','https://www.autocentrum.pl/ac-file/article/5ec2cb7bff0c3273b6376274/uzywane-bmw-x3-e83-2003-2010-poradnik-kupujacego.jpg',2010,49900,'Diesel','1995 cm3','265 000 km','184 KM'),(20,'Audi','A3','https://bi.im-g.pl/im/59/ed/19/z27188057Q,Audi-A3-III.jpg',2012,39900,'Diesel','1598 cm3','199 091 km','105 KM'),(21,'SEAT','Ibiza','https://www.papis.pl/media/uploads/2023/03/DSC_6789_00001.jpg',2019,45349,'Benzyna','999 cm3','101 509 km','80 KM'),(22,'Hyundai','i20','https://www.fleetmarket.pl/wp-content/uploads/2019/10/Hyundai-i20-1024x683.jpg',2019,45500,'Benzyna','1248 cm3','79 900 km','75 KM'),(23,'Toyota','RAV4','https://d-art.ppstatic.pl/kadry/k/r/1/05/03/624baee275b6d_o_medium.jpg',2006,28000,'Diesel','2231 cm3','241 833 km','136 KM'),(24,'Kia','Ceed','https://www.autocentrum.pl/ac-file/gallery-photo/5dd339cf583a0f0f2c54e964.jpg',2010,28500,'Benzyna','1591 cm3','88 600 km','122 KM'),(25,'Volvo','XC 90','https://i.wpimg.pl/c/646x/m.autokult.pl/volvo-xc90-ebf05a6fc779dfb6cc323.jpg',2004,27900,'Diesel','2401 cm3','242 338 km','163 KM'),(26,'AUDI','S4','https://www.supercars.net/blog/wp-content/uploads/2016/04/2005_Audi_S45.jpg',2005,53000,'Benzyna','4163 cm3','170 491 km','344 KM'),(27,'Opel','Astra','https://d-art.ppstatic.pl/kadry/k/r/1/17/6c/63ab43eebf051_o_original.jpg',2018,54700,'Diesel','1598 cm3','160 600 km','136 KM'),(28,'Mitsubishi','Outlander','https://motofilm.pl/wp-content/uploads/2015/04/mitsubishi-outlander-2016_glo1.jpg',2016,94000,'Benzyna','1998 cm3','99 000 km','150 KM'),(29,'Toyota','Yaris','https://bi.im-g.pl/im/67/cb/11/z18658407V,Toyota-Yaris-2016.jpg',2016,51700,'Benzyna','1329 cm3','101 016 km','99 KM'),(30,'KIA','Sportage','https://images.hgmsites.net/hug/kia_100317108_h.jpg',2011,52900,'Diesel','1685 cm3','195 226 km','116 KM'),(31,'Dodge','Journey','https://www.autocentrum.pl/ac-file/gallery-photo/5dd36120583a0f0f2c586c83/dodge-journey-3-6-v6-287km-211kw-2008-2019.jpg',2019,82410,'Benzyna','3604 cm3','42 000 km','287 KM'),(32,'Dacia','Duster','https://cdn.group.renault.com/dac/master/dacia-vn/vehicules/duster/hjd-duster/hjd-duster-ph2/hero-zone/dacia-duster-hjd-ph2-hero-zone-001.jpg.ximg.small.jpg/90949ccc37.jpg',2019,62900,'Diesel','1500 cm3','97 000 km','115 KM'),(33,'BMW','I3','https://www.digitaltrends.com/wp-content/uploads/2019/09/2019-bmw-i3s-review-04501.jpg?p=1',2017,89000,'Benzyna','1500 cm3','22 000 km','150 KM'),(34,'Porsche','911 Carrera','https://www.carscoops.com/wp-content/uploads/2022/10/2023-Porsche-911-Carrera-T-19-1024x740.jpg',2023,827000,'Benzyna','2981 cm3','5 km','385 KM'),(35,'AUDI','RS4','https://www.motortrend.com/uploads/2022/10/2023-Audi-RS-4-Avant-Competition-Plus-in-motion-4.jpg',2022,486900,'Benzyna','2894 cm3','12 km','450 KM'),(36,'Volkswagen','Arteon','https://i.ytimg.com/vi/2yBu2ReWni8/maxresdefault.jpg',2021,234900,'Benzyna','1999 cm3','50 km','250 KM'),(40,'Volkswagen','Golf','https://ae01.alicdn.com/kf/H4ed3a166211248058f5d120d2493a72b7/Dla-Volkswagen-Golf-7-7-5-zwyk-a-wersja-r-line-GTI-MK7-mk7-5-ogon.jpg',2017,63000,'Benzyna','1399','63000','125'),(59,'Dodge ','challenger','https://autazusa.pl/wp-content/uploads/2021/07/Challenger2.jpg',2020,120000,'Benzyna','4999','13829','500');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-09 20:37:07
