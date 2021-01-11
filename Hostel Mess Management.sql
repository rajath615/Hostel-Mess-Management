/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.3.16-MariaDB : Database - hostelmess
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hostelmess` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hostelmess`;

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `usn` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `bf` int(3) DEFAULT NULL,
  `lunch` int(3) DEFAULT NULL,
  `snacks` int(3) DEFAULT NULL,
  `dinner` int(3) DEFAULT NULL,
  PRIMARY KEY (`usn`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`usn`,`date`,`bf`,`lunch`,`snacks`,`dinner`) values ('1vk16cs044','2019-11-21',0,1,1,1),('1vk16cs051','2019-12-10',0,0,1,0),('1vk16cs055','2019-11-20',0,0,0,1),('1vk16cs055','2019-11-21',0,1,0,0),('1vk16cs055','2019-12-06',0,0,0,1),('1vk16cs055','2019-12-10',0,1,1,1),('1vk16cs055','2020-02-12',0,1,0,1),('1vk16cs056','2019-12-06',0,0,1,1);

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `day` varchar(10) DEFAULT NULL,
  `bf` varchar(30) DEFAULT NULL,
  `lunch` varchar(30) DEFAULT NULL,
  `snacks` varchar(30) DEFAULT NULL,
  `dinner` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

insert  into `menu`(`day`,`bf`,`lunch`,`snacks`,`dinner`) values ('monday','mbf1','mlunch1','msnacks1','mdinner1'),('tuesday','tbf1','tlunch1','tsnacks1','tdinner1'),('wednesday','wbf1','wlunch1','wsnacks1','wdinner1'),('thursday','thbf1','thlunch1','thsnacks1','thdinner1'),('friday','fbf1','flunch1','fsnacks1','fdinner1'),('saturday','sbf1','slunch1','ssnacks1','sdinner1'),('sunday','subf1','sulunch1','susnacks1','sudinner1');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `usn` varchar(10) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` decimal(10,0) DEFAULT NULL,
  `room_no` decimal(5,0) DEFAULT NULL,
  `YEAR` decimal(5,0) DEFAULT NULL,
  `utype` varchar(10) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`usn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`usn`,`NAME`,`pass`,`email`,`phone`,`room_no`,`YEAR`,`utype`,`status`) values ('1vk16cs022','sad','r','r@g.c','9999999999','1','2','student','no'),('1vk16cs044','nithin ','nithin','nithin@gmail.com','9066366315','4','4','student','yes'),('1vk16cs055','rajath','raj','rajath@gmail.com','6898987879','4','4','student','yes'),('admin','admin','admin123','admin@123.com','0','0','0','admin','yes'),('superuser','superuser','123','superuser@123.com','0','0','0','superuser','yes');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
