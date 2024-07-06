-- MySQL dump 10.13  Distrib 9.0.0, for Linux (x86_64)
--
-- Host: localhost    Database: ci4
-- ------------------------------------------------------
-- Server version	9.0.0

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
-- Table structure for table `daftar_status`
--

DROP TABLE IF EXISTS `daftar_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daftar_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftar_status`
--

LOCK TABLES `daftar_status` WRITE;
/*!40000 ALTER TABLE `daftar_status` DISABLE KEYS */;
INSERT INTO `daftar_status` VALUES (1,'menunggu'),(2,'diterima'),(3,'ditolak');
/*!40000 ALTER TABLE `daftar_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kamar`
--

DROP TABLE IF EXISTS `kamar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kamar` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `luas` varchar(100) NOT NULL,
  `harga` int NOT NULL,
  `stok` int DEFAULT '1',
  `deskripsi` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kamar`
--

LOCK TABLES `kamar` WRITE;
/*!40000 ALTER TABLE `kamar` DISABLE KEYS */;
INSERT INTO `kamar` VALUES (1,'Alpha','3 x 4 meter',500000,3,'Kamar kos tipe Alpha adalah kamar premium yang dirancang untuk kenyamanan dan kemewahan maksimal. Tipe kamar ini cocok untuk para profesional muda atau mahasiswa yang menginginkan lingkungan yang tenang dan fasilitas modern.','kamar1.jpg',NULL,NULL),(2,'Omega','3 x 4 meter',450000,2,'Kamar tipe Omega menawarkan suasana yang sederhana namun fungsional. Dekorasi interior menggunakan warna-warna cerah dan perabotan minimalis yang membuat ruangan terasa lapang meskipun berukuran kecil. Penataan ruang yang efisien memastikan semua kebutuhan dasar terpenuhi tanpa terasa sempit.','kamar2.jpg',NULL,NULL),(3,'Gamma','5 x 5 meter',750000,2,'Kamar tipe Gamma menawarkan suasana yang nyaman dan hangat dengan sentuhan klasik. Dekorasi interior menggunakan warna-warna pastel dan bahan-bahan alami seperti kayu dan kain. Perabotan yang nyaman dan dekorasi personalisasi memberikan rasa seperti berada di rumah sendiri.','kamar3.jpg',NULL,NULL),(4,'Beta','5 x 5 meter',650000,1,'Kamar Kos Beta menawarkan kenyamanan maksimal dengan desain modern dan minimalis. Dilengkapi dengan tempat tidur queen-size yang empuk, meja belajar ergonomis, dan lemari pakaian luas. Selain itu, Kamar Kos Beta juga memiliki jendela besar yang memberikan pencahayaan alami yang melimpah serta sirkulasi udara yang baik.','kamar4.jpg',NULL,NULL),(5,'Delta','6 x 5 meter',750000,1,'Kamar Kos Delta adalah pilihan sempurna bagi kamu yang mencari kenyamanan dan kemewahan dalam satu paket. Didesain dengan sentuhan elegan, kamar ini dilengkapi dengan tempat tidur king-size, sofa nyaman, dan meja kerja yang luas. Fasilitas tambahan seperti TV kabel, kulkas mini, dan kamar mandi pribadi dengan air panas membuat pengalaman tinggalmu semakin menyenangkan. ','kamar5.jpg',NULL,NULL);
/*!40000 ALTER TABLE `kamar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2024-06-15-143206','App\\Database\\Migrations\\UserModel','default','App',1718462022,1),(2,'2024-06-15-155601','App\\Database\\Migrations\\KamarModel','default','App',1718468190,2),(3,'2024-06-17-191040','App\\Database\\Migrations\\SewaModel','default','App',1718651550,3),(4,'2024-06-17-191938','App\\Database\\Migrations\\Daftarstatus','default','App',1718652053,4),(5,'2024-06-17-192211','App\\Database\\Migrations\\StatusPembelian','default','App',1718652167,5),(6,'2024-06-17-192416','App\\Database\\Migrations\\StatusPembelian','default','App',1718652347,6),(7,'2024-06-17-192645','App\\Database\\Migrations\\StatusPembelian','default','App',1718652493,7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sewa`
--

DROP TABLE IF EXISTS `sewa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sewa` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `kamar_id` int unsigned DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sewa_user_id_foreign` (`user_id`),
  KEY `sewa_kamar_id_foreign` (`kamar_id`),
  CONSTRAINT `sewa_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamar` (`id`),
  CONSTRAINT `sewa_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sewa`
--

LOCK TABLES `sewa` WRITE;
/*!40000 ALTER TABLE `sewa` DISABLE KEYS */;
/*!40000 ALTER TABLE `sewa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_pembelian`
--

DROP TABLE IF EXISTS `status_pembelian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_pembelian` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `kamar_id` int unsigned DEFAULT NULL,
  `status_id` int unsigned DEFAULT NULL,
  `jumlah` int NOT NULL,
  `transaksi` int NOT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `tanggal_pembelian` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `status_pembelian_user_id_foreign` (`user_id`),
  KEY `status_pembelian_kamar_id_foreign` (`kamar_id`),
  KEY `status_pembelian_status_id_foreign` (`status_id`),
  CONSTRAINT `status_pembelian_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamar` (`id`),
  CONSTRAINT `status_pembelian_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `daftar_status` (`id`),
  CONSTRAINT `status_pembelian_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_pembelian`
--

LOCK TABLES `status_pembelian` WRITE;
/*!40000 ALTER TABLE `status_pembelian` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_pembelian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` int NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@gmail.com',2147483647,'Nowhere','$2y$10$pmukVQmWOrMEBb8L1u5EhOT/hH.o5C439u/M57oQ1FaQAj0OD3iDe',1,NULL,NULL);
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

-- Dump completed on 2024-07-06  2:12:55
