-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_simm
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_admin` (
  `ID_ADMIN` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_ADMIN` varchar(150) NOT NULL,
  `EMAIL_ADMIN` varchar(150) NOT NULL,
  `USERNAME` varchar(150) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_ADMIN`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_admin`
--

LOCK TABLES `tb_admin` WRITE;
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` VALUES (1,'Admin','admin@email.com','Admin','admin');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_kehadiran`
--

DROP TABLE IF EXISTS `tb_kehadiran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_kehadiran` (
  `ID_KEHADIRAN` int(11) NOT NULL AUTO_INCREMENT,
  `ID_MAHASISWA` int(11) NOT NULL,
  `TANGGAL` date NOT NULL,
  `ID_KODE_KEHADIRAN` int(11) NOT NULL,
  PRIMARY KEY (`ID_KEHADIRAN`),
  KEY `ID_KODE_KEHADIRAN` (`ID_KODE_KEHADIRAN`),
  KEY `ID_MAHASISWA` (`ID_MAHASISWA`),
  CONSTRAINT `tb_kehadiran_ibfk_2` FOREIGN KEY (`ID_KODE_KEHADIRAN`) REFERENCES `tb_kode_kehadiran` (`ID_KODE_KEHADIRAN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_kehadiran_ibfk_3` FOREIGN KEY (`ID_MAHASISWA`) REFERENCES `tb_mahasiswa` (`ID_MAHASISWA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_kehadiran`
--

LOCK TABLES `tb_kehadiran` WRITE;
/*!40000 ALTER TABLE `tb_kehadiran` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_kehadiran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_kode_kehadiran`
--

DROP TABLE IF EXISTS `tb_kode_kehadiran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_kode_kehadiran` (
  `ID_KODE_KEHADIRAN` int(11) NOT NULL AUTO_INCREMENT,
  `KODE_KEHADIRAN` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_KODE_KEHADIRAN`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_kode_kehadiran`
--

LOCK TABLES `tb_kode_kehadiran` WRITE;
/*!40000 ALTER TABLE `tb_kode_kehadiran` DISABLE KEYS */;
INSERT INTO `tb_kode_kehadiran` VALUES (1,'Hadir'),(2,'Izin'),(3,'Tanpa Keterangan');
/*!40000 ALTER TABLE `tb_kode_kehadiran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_logbook`
--

DROP TABLE IF EXISTS `tb_logbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_logbook` (
  `ID_LOGBOOK` int(11) NOT NULL AUTO_INCREMENT,
  `ID_MAHASISWA` int(11) NOT NULL,
  `TANGGAL` date NOT NULL,
  `KEGIATAN` longtext NOT NULL,
  PRIMARY KEY (`ID_LOGBOOK`),
  KEY `ID_MAHASISWA` (`ID_MAHASISWA`),
  CONSTRAINT `tb_logbook_ibfk_1` FOREIGN KEY (`ID_MAHASISWA`) REFERENCES `tb_mahasiswa` (`ID_MAHASISWA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_logbook`
--

LOCK TABLES `tb_logbook` WRITE;
/*!40000 ALTER TABLE `tb_logbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_logbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_lokasi_penempatan`
--

DROP TABLE IF EXISTS `tb_lokasi_penempatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_lokasi_penempatan` (
  `ID_LOKASI` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_LOKASI` varchar(250) NOT NULL,
  `ALAMAT_LOKASI` varchar(350) NOT NULL,
  `KUOTA` int(11) NOT NULL,
  `KUOTA_TERISI` int(11) NOT NULL,
  PRIMARY KEY (`ID_LOKASI`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_lokasi_penempatan`
--

LOCK TABLES `tb_lokasi_penempatan` WRITE;
/*!40000 ALTER TABLE `tb_lokasi_penempatan` DISABLE KEYS */;
INSERT INTO `tb_lokasi_penempatan` VALUES (1,'KEMENAG : Kepegawaian','Jl. Masjid Al-AkbarTimur No.4',6,0),(2,'KEMENAG : PTSP ','Jl. Masjid Al-AkbarTimur No.4',10,0),(3,'KEMENAG : Umum ','Jl. Masjid Al-AkbarTimur No.4',6,0),(4,'KEMENAG : Perencana','Jl. Masjid Al-AkbarTimur No.4',5,0),(5,'KEMENAG : PHU','Jl. Masjid Al-AkbarTimur No.4',0,0),(6,'KEMENAG : Arsiparis','Jl. Masjid Al-AkbarTimur No.4',1,0),(7,'KEMENAG : Keuangan','Jl. Masjid Al-AkbarTimur No.4',0,0),(8,'KEMENAG : BIMAS Islam','Jl. Masjid Al-AkbarTimur No.4',0,0),(9,'KEMENAG : Zakat Wakaf','Jl. Masjid Al-AkbarTimur No.4',0,0),(10,'KEMENAG : PAIS','Jl. Masjid Al-AkbarTimur No.4',0,0),(11,'KEMENAG : Pendma','Jl. Masjid Al-AkbarTimur No.4',0,0),(12,'KEMENAG : PD. Pontren','Jl. Masjid Al-AkbarTimur No.4',1,0),(13,'KUA SEMAMPIR','Jl. Wonokusumo Tengah No. 53',0,-5),(14,'KUA PABEAN CANTIAN','Jl. Teluk Sampit No. 2',0,0),(15,'KUA KREMBANGAN','Jl. Ikan Lumba-lumba No. 66',0,0),(16,'KUA BUBUTAN','Jl. Demak Barat I/03',0,0),(17,'KUA TANDES','Bibis Tama No. 1',0,0),(18,'KUA WONOKROMO','Jl. Gajah Mada Trem No. 1',0,0),(19,'KUA WONOCOLO','Jl. Margorejo Indah No. 30',4,-2),(20,'KUA KARANG PILANG','Jl. Mastrip No. 50',0,0),(21,'KUA TEGALSARI','Jl. Kupang Segunting 3/09',0,0),(22,'KUA SAWAHAN','Jl. Dukuh Kupang Timur X/08',0,-5),(23,'KUA GENTENG','Jl. Genteng Kali No.59',0,0),(24,'KUA GUBENG','Jl. Pasar Burung No.01',0,0),(25,'KUA TAMBAKSARI','Jl. Mendut No.07',0,0),(26,'KUA SIMOKERTO','Jl. Taman Tambak Segaran No.02',0,0),(27,'KUA SUKOLILO','Jl. Gebang Putih No.08',0,0),(28,'KUA RUNGKUT','Jl. Rungkut Asri Utara I/04',2,0),(29,'KUA KENJERAN','Jl. Bulak Banteng Lor Masjid No.07',0,-5),(30,'KUA BENOWO','Jl. Tengger No.17',0,0),(31,'KUA LAKARSANTRI','Jl. Lontar Lidah Kulon No.19',0,0),(32,'KUA TENGGILIS MEJOYO','Jl. Prapen Indah No.02',0,0),(33,'KUA GUNUNG ANYAR','Jl. Rungkut Menanggal Harapan T/31',4,0),(34,'KUA MULYOREJO','Jl. Wisma Permai I/98',0,-5),(35,'KUA ASEMROWO','Jl. Tambak Dalam Baru 1',0,0),(36,'KUA SUKOMANUNGGAL','Jl. Simo Mulyo I/59',0,0),(37,'KUA DUKUH PAKIS','Jl. Dukuh Kupang Barat No.284',0,0),(38,'KUA WIYUNG',' Jl. Gogor Kali No.18',0,0),(39,'KUA JAMBANGAN','Jl. KebonSari Elveka IV/54',0,0),(40,'KUA GAYUNGAN','Jl. Cipta  Menanggal III.A/01',0,0),(41,'KUA BULAK','Jl. Memet Sastrowiryo No.85',0,0),(45,'KUA SAMBIKEREP','Jl. Raya Made Utara No.16',1,0),(46,'KUA PAKAL','Jl. RayaRaci Benowo No.24',0,0),(47,'KEMENAG (Not Specific)','Jl. Masjid Al-AkbarTimur No.4',150,-14);
/*!40000 ALTER TABLE `tb_lokasi_penempatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mahasiswa`
--

DROP TABLE IF EXISTS `tb_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_mahasiswa` (
  `ID_MAHASISWA` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(30) DEFAULT NULL,
  `ID_LOKASI` int(11) NOT NULL,
  `NAMA_MAHASISWA` varchar(150) NOT NULL,
  `NIS` varchar(30) NOT NULL,
  `ALAMAT_MAHASISWA` varchar(200) NOT NULL,
  `NO_TELP` varchar(15) NOT NULL,
  `ID_SEKOLAH_PT` int(150) NOT NULL,
  `JURUSAN` varchar(150) NOT NULL,
  `DOSEN_GURU_PEMBIMBING` varchar(100) DEFAULT NULL,
  `KONTAK_PEMBIMBING` varchar(17) DEFAULT NULL,
  `MULAI_MAGANG` date DEFAULT NULL,
  `SELESAI_MAGANG` date DEFAULT NULL,
  `ID_STATUS` int(200) NOT NULL,
  `ID_NILAI` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_MAHASISWA`),
  KEY `ID_LOKASI` (`ID_LOKASI`),
  KEY `ID_STATUS` (`ID_STATUS`),
  KEY `NILAI` (`ID_NILAI`),
  KEY `ID_NILAI` (`ID_NILAI`),
  KEY `ID_SEKOLAH_PT` (`ID_SEKOLAH_PT`),
  CONSTRAINT `tb_mahasiswa_ibfk_1` FOREIGN KEY (`ID_LOKASI`) REFERENCES `tb_lokasi_penempatan` (`ID_LOKASI`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_mahasiswa_ibfk_2` FOREIGN KEY (`ID_STATUS`) REFERENCES `tb_status` (`ID_STATUS`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_mahasiswa_ibfk_4` FOREIGN KEY (`ID_NILAI`) REFERENCES `tb_nilai` (`ID_NILAI`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_mahasiswa_ibfk_5` FOREIGN KEY (`ID_SEKOLAH_PT`) REFERENCES `tb_sekolah_pt` (`ID_SEKOLAH_PT`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mahasiswa`
--

LOCK TABLES `tb_mahasiswa` WRITE;
/*!40000 ALTER TABLE `tb_mahasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tambah_kuota_Terisi` AFTER INSERT ON `tb_mahasiswa` FOR EACH ROW UPDATE `tb_lokasi_penempatan` 
SET `KUOTA_TERISI` = `KUOTA_TERISI` + 1 
WHERE `ID_LOKASI` = NEW.`ID_LOKASI` */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `kurangi_kuota_terisi` AFTER UPDATE ON `tb_mahasiswa` FOR EACH ROW IF OLD.`ID_STATUS` <> NEW.`ID_STATUS` THEN
	IF NEW.`ID_STATUS` != 1 THEN
        UPDATE `tb_lokasi_penempatan`
        SET `KUOTA_TERISI` = `KUOTA_TERISI` - 1
		WHERE `ID_LOKASI` = NEW.`ID_LOKASI`;
	END IF;
END IF */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_delete_mahasiswa` AFTER DELETE ON `tb_mahasiswa` FOR EACH ROW BEGIN
	UPDATE tb_lokasi_penempatan
    SET KUOTA_TERISI = KUOTA_TERISI - 1
    WHERE ID_LOKASI = OLD.ID_LOKASI;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_nilai`
--

DROP TABLE IF EXISTS `tb_nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_nilai` (
  `ID_NILAI` int(11) NOT NULL AUTO_INCREMENT,
  `NILAI` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_NILAI`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_nilai`
--

LOCK TABLES `tb_nilai` WRITE;
/*!40000 ALTER TABLE `tb_nilai` DISABLE KEYS */;
INSERT INTO `tb_nilai` VALUES (1,'Belum Dinilai'),(2,'Sangat Baik'),(3,'Baik'),(4,'Cukup'),(6,'Kurang');
/*!40000 ALTER TABLE `tb_nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pendidikan`
--

DROP TABLE IF EXISTS `tb_pendidikan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pendidikan` (
  `ID_PENDIDIKAN` int(11) NOT NULL AUTO_INCREMENT,
  `TINGKAT_PENDIDIKAN` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_PENDIDIKAN`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pendidikan`
--

LOCK TABLES `tb_pendidikan` WRITE;
/*!40000 ALTER TABLE `tb_pendidikan` DISABLE KEYS */;
INSERT INTO `tb_pendidikan` VALUES (1,'Sekolah Kejuruan'),(2,'Perguruan Tinggi');
/*!40000 ALTER TABLE `tb_pendidikan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sekolah_pt`
--

DROP TABLE IF EXISTS `tb_sekolah_pt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sekolah_pt` (
  `ID_SEKOLAH_PT` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_SEKOLAH_PT` varchar(225) NOT NULL,
  `ID_PENDIDIKAN` int(11) NOT NULL,
  PRIMARY KEY (`ID_SEKOLAH_PT`),
  KEY `ID_PENDIDIKAN` (`ID_PENDIDIKAN`),
  CONSTRAINT `tb_sekolah_pt_ibfk_1` FOREIGN KEY (`ID_PENDIDIKAN`) REFERENCES `tb_pendidikan` (`ID_PENDIDIKAN`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sekolah_pt`
--

LOCK TABLES `tb_sekolah_pt` WRITE;
/*!40000 ALTER TABLE `tb_sekolah_pt` DISABLE KEYS */;
INSERT INTO `tb_sekolah_pt` VALUES (1,'UPNVJT',2),(2,'SMK KARTIKA 1 SURABAYA',1),(3,'SMK YPM 3 TAMAN',1),(4,'STAI \"TARUNA\" SURABAYA',2),(5,'UINSA',2),(6,'SMK KETINTANG SURABAYA',1),(7,'UM Surabaya',2),(8,'UBHARA Surabaya',2),(9,'UNAIR',2),(10,'UNESA',2),(11,'KEMENTERIAN KESEHATAN RI',2);
/*!40000 ALTER TABLE `tb_sekolah_pt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_status`
--

DROP TABLE IF EXISTS `tb_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_status` (
  `ID_STATUS` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(25) NOT NULL,
  PRIMARY KEY (`ID_STATUS`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status`
--

LOCK TABLES `tb_status` WRITE;
/*!40000 ALTER TABLE `tb_status` DISABLE KEYS */;
INSERT INTO `tb_status` VALUES (1,'Aktif'),(2,'Selesai'),(3,'Batal');
/*!40000 ALTER TABLE `tb_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_simm'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-19 21:28:29
