# Host: localhost  (Version: 5.5.25a)
# Date: 2018-03-02 23:15:46
# Generator: MySQL-Front 5.3  (Build 4.187)

/*!40101 SET NAMES latin1 */;

#
# Structure for table "account"
#

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `level` varchar(5) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "account"
#

INSERT INTO `account` VALUES ('21232f297a57a5a743894a0e4a801fc3','21232f297a57a5a743894a0e4a801fc3','administrator','admin'),('ee11cbb19052e40b07aac0ca060c23ee','ee11cbb19052e40b07aac0ca060c23ee','User Account','user');

#
# Structure for table "barang"
#

DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `inc` int(9) NOT NULL AUTO_INCREMENT,
  `lokasi_id` int(11) NOT NULL,
  `barang_id` varchar(14) NOT NULL,
  `barang_nama` varchar(90) NOT NULL,
  `unit_id` tinyint(3) NOT NULL DEFAULT '0',
  `kategori_id` tinyint(3) DEFAULT NULL,
  `harga_beli` int(10) NOT NULL,
  `harga_jual` int(10) NOT NULL,
  `diskon` int(11) NOT NULL,
  `gambar` text,
  PRIMARY KEY (`inc`),
  KEY `barang_id` (`barang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

#
# Data for table "barang"
#

INSERT INTO `barang` VALUES (1,1,'BRG-1','Terminal',1,2,5000,5500,0,NULL),(2,1,'BRG-2','Saklar',2,3,2000,2500,0,NULL),(3,1,'BRG-3','Bondan',3,1,5000,6000,0,NULL),(4,1,'8997979020387','Buku Orang',1,2,10000,12000,0,NULL),(5,1,'8992221088252','Buku Siapa',1,3,12000,20000,0,NULL),(6,1,'','sadadsad',1,1,21321331,21321,10,'Lighthouse.jpg'),(7,1,'','Test',1,1,2000,2500,0,'Chrysanthemum.jpg'),(8,1,'BRG-8','boring',1,1,12000,15000,0,'Hydrangeas.jpg');

#
# Structure for table "beli"
#

DROP TABLE IF EXISTS `beli`;
CREATE TABLE `beli` (
  `inc` int(9) NOT NULL,
  `beli_id` varchar(9) NOT NULL,
  `tgl_trans` varchar(10) NOT NULL,
  `supplier_id` varchar(90) NOT NULL,
  `total` double(20,0) NOT NULL,
  PRIMARY KEY (`inc`),
  KEY `beli_id` (`beli_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "beli"
#

INSERT INTO `beli` VALUES (1,'BM-1','2018-02-01','SPL-1',50000),(2,'BM-2','2018-02-02','SPL-1',50000),(3,'BM-3','2018-02-03','SPL-1',100000),(4,'BM-4','2018-02-03','SPL-2',470000),(5,'BM-5','2018-02-05','SPL-2',100000),(6,'BM-6','2018-02-05','SPL-2',120000);

#
# Structure for table "beli_detail"
#

DROP TABLE IF EXISTS `beli_detail`;
CREATE TABLE `beli_detail` (
  `beli_id` varchar(9) NOT NULL,
  `barang_id` varchar(14) NOT NULL,
  `qty` smallint(5) NOT NULL,
  `harga_satuan` double(20,0) NOT NULL,
  `diskon` int(5) NOT NULL,
  `harga_total` double(20,0) NOT NULL,
  KEY `beli_id` (`beli_id`),
  CONSTRAINT `beli_detail_ibfk_1` FOREIGN KEY (`beli_id`) REFERENCES `beli` (`beli_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "beli_detail"
#

INSERT INTO `beli_detail` VALUES ('BM-1','BRG-1',10,5000,0,50000),('BM-2','BRG-1',10,5000,0,50000),('BM-3','BRG-1',20,5000,0,100000),('BM-4','BRG-2',10,2000,0,20000),('BM-4','BRG-3',90,5000,0,450000),('BM-5','8997979020387',10,10000,0,100000),('BM-6','8992221088252',10,12000,0,120000);

#
# Structure for table "eceran"
#

DROP TABLE IF EXISTS `eceran`;
CREATE TABLE `eceran` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `barang_id` varchar(14) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "eceran"
#


#
# Structure for table "identitas"
#

DROP TABLE IF EXISTS `identitas`;
CREATE TABLE `identitas` (
  `id_identitas` int(3) NOT NULL AUTO_INCREMENT,
  `nama_identitas` varchar(100) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telp` varchar(12) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_identitas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Data for table "identitas"
#

INSERT INTO `identitas` VALUES (1,'Elektronik Utama Solution','Jl New Merdeka No.17 Tahun 194','085773518857','NPWP 01.302.384.1-092');

#
# Structure for table "jual"
#

DROP TABLE IF EXISTS `jual`;
CREATE TABLE `jual` (
  `inc` int(9) NOT NULL,
  `jual_id` varchar(14) NOT NULL,
  `tgl_jual` varchar(10) NOT NULL,
  `pelanggan_id` varchar(90) NOT NULL,
  `total` double(20,0) NOT NULL,
  `biaya_kirim` double(20,0) NOT NULL,
  PRIMARY KEY (`inc`),
  KEY `jual_id` (`jual_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "jual"
#

INSERT INTO `jual` VALUES (1,'JL-1','2018-02-01','',5500,0),(2,'JL-2','2018-02-01','',49500,0),(3,'JL-3','2018-02-03','',110000,0),(4,'JL-4','2018-02-05','',32000,0),(5,'JL-5','2018-02-05','',52000,0),(6,'JL-6','2018-02-08','',14390,0),(7,'JL-7','2018-02-23','',10000,10000);

#
# Structure for table "jual_detail"
#

DROP TABLE IF EXISTS `jual_detail`;
CREATE TABLE `jual_detail` (
  `jual_id` varchar(9) NOT NULL,
  `barang_id` varchar(14) NOT NULL,
  `qty` smallint(5) NOT NULL,
  `harga_satuan` double(20,0) NOT NULL,
  `diskon` int(5) NOT NULL,
  `harga_total` double(20,0) NOT NULL,
  KEY `jual_id` (`jual_id`),
  CONSTRAINT `jual_detail_ibfk_1` FOREIGN KEY (`jual_id`) REFERENCES `jual` (`jual_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "jual_detail"
#

INSERT INTO `jual_detail` VALUES ('JL-1','BRG-1',1,5500,0,5500),('JL-2','BRG-1',9,5500,0,49500),('JL-3','BRG-1',20,5500,0,110000),('JL-4','8992221088252',1,20000,0,20000),('JL-4','8997979020387',1,12000,0,12000),('JL-5','8997979020387',1,12000,0,12000),('JL-5','8992221088252',2,20000,0,40000),('JL-6','BRG-2',4,2500,10,9000),('JL-6','BRG-1',1,5500,2,5390),('JL-7','BRG-2',4,2500,0,10000);

#
# Structure for table "kategori"
#

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `kategori_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "kategori"
#

INSERT INTO `kategori` VALUES (1,'Listrik'),(2,'Bangunan'),(3,'Ular');

#
# Structure for table "lokasi"
#

DROP TABLE IF EXISTS `lokasi`;
CREATE TABLE `lokasi` (
  `lokasi_id` int(11) NOT NULL AUTO_INCREMENT,
  `lokasi` varchar(35) NOT NULL,
  PRIMARY KEY (`lokasi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

#
# Data for table "lokasi"
#

INSERT INTO `lokasi` VALUES (1,'Rak1'),(4,'tester');

#
# Structure for table "pelanggan"
#

DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `inc` int(9) NOT NULL,
  `pelanggan_id` varchar(9) NOT NULL,
  `pelanggan_nama` varchar(90) NOT NULL,
  `pelanggan_alamat` varchar(90) NOT NULL,
  `pelanggan_kota` varchar(50) NOT NULL,
  `pelanggan_email` varchar(90) NOT NULL,
  `pelanggan_kontak` varchar(20) NOT NULL,
  PRIMARY KEY (`inc`),
  KEY `pelanggan_id` (`pelanggan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "pelanggan"
#


#
# Structure for table "stok"
#

DROP TABLE IF EXISTS `stok`;
CREATE TABLE `stok` (
  `barang_id` varchar(14) NOT NULL,
  `barang_nama` varchar(90) NOT NULL,
  `qty` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "stok"
#

INSERT INTO `stok` VALUES ('BRG-1','Terminal',20),('BRG-2','Saklar',2),('BRG-3','Bondan',90),('8997979020387','Buku Orang',8),('8992221088252','Buku Siapa',7);

#
# Structure for table "supplier"
#

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `inc` int(9) NOT NULL,
  `supplier_id` varchar(9) NOT NULL,
  `supplier_nama` varchar(90) NOT NULL,
  `supplier_alamat` varchar(90) NOT NULL,
  `supplier_kota` varchar(50) NOT NULL,
  `supplier_email` varchar(90) NOT NULL,
  `supplier_kontak` varchar(20) NOT NULL,
  PRIMARY KEY (`inc`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "supplier"
#

INSERT INTO `supplier` VALUES (1,'SPL-1','Umum','-','-','-','-'),(2,'SPL-2','ABC','jl.c','d','d','3');

#
# Structure for table "temp_beli_detail"
#

DROP TABLE IF EXISTS `temp_beli_detail`;
CREATE TABLE `temp_beli_detail` (
  `beli_id` varchar(9) NOT NULL,
  `barang_id` varchar(14) NOT NULL,
  `qty` smallint(7) NOT NULL,
  `harga_satuan` double(20,0) NOT NULL,
  `harga_total` double(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "temp_beli_detail"
#

INSERT INTO `temp_beli_detail` VALUES ('BM-7','BRG-2',1,2000,2000);

#
# Structure for table "temp_jual_detail"
#

DROP TABLE IF EXISTS `temp_jual_detail`;
CREATE TABLE `temp_jual_detail` (
  `jual_id` varchar(9) NOT NULL,
  `barang_id` varchar(14) NOT NULL,
  `qty` smallint(7) NOT NULL,
  `harga_satuan` double(20,0) NOT NULL,
  `diskon` int(5) NOT NULL,
  `harga_total` double(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "temp_jual_detail"
#


#
# Structure for table "unit"
#

DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `unit_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nama_unit` varchar(25) DEFAULT NULL,
  `eceran` int(11) DEFAULT NULL,
  `keterangan` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

#
# Data for table "unit"
#

INSERT INTO `unit` VALUES (1,'Kardus',48,'Gelas'),(2,'Box',40,'Bungkus'),(3,'Roll',0,NULL),(4,'Tie',300,'Dasi');
