/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 10.0.17-MariaDB : Database - pizza
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pizza` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `pizza`;

/*Table structure for table `tb_account` */

DROP TABLE IF EXISTS `tb_account`;

CREATE TABLE `tb_account` (
  `col_username` varchar(20) COLLATE utf8_bin NOT NULL,
  `col_password` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`col_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tb_account` */

insert  into `tb_account`(`col_username`,`col_password`) values ('admin','21232f297a57a5a743894a0e4a801fc3');

/*Table structure for table `tb_order` */

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `col_ordername` varchar(20) COLLATE utf8_bin NOT NULL,
  `col_city` varchar(255) COLLATE utf8_bin NOT NULL,
  `col_province` varchar(255) COLLATE utf8_bin NOT NULL,
  `col_postal` varchar(20) COLLATE utf8_bin NOT NULL,
  `col_cell` varchar(20) COLLATE utf8_bin NOT NULL,
  `col_email` varchar(25) COLLATE utf8_bin NOT NULL,
  `col_orderdate` date DEFAULT NULL,
  `col_ordertime` time DEFAULT NULL,
  `col_price` float NOT NULL,
  `col_result` varchar(10) COLLATE utf8_bin DEFAULT 'pending',
  `col_treatdate` date DEFAULT NULL,
  `col_treatman` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  KEY `rs_treatman` (`col_treatman`),
  FULLTEXT KEY `index_ordername` (`col_ordername`),
  CONSTRAINT `rs_treatman` FOREIGN KEY (`col_treatman`) REFERENCES `tb_account` (`col_username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tb_order` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
