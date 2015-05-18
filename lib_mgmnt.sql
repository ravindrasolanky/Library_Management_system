/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - lib_mgmt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`lib_mgmt` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `lib_mgmt`;

/*Table structure for table `author` */

DROP TABLE IF EXISTS `author`;

CREATE TABLE `author` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `author` */

insert  into `author`(`id`,`name`) values (1,'E.BalaGuruSwami'),(2,'james Gosling'),(5,'yashwant'),(6,'ads'),(7,'sv singh'),(8,'ankur jain'),(9,'nita roy'),(10,'sameer'),(11,'nilesh shah'),(12,'ramanurja'),(13,'gaurav'),(14,'trindad pal yadav'),(15,'halward rock'),(16,'Aman sharma'),(17,'yagenvalkar');

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bookid` int(10) NOT NULL,
  `name` varchar(100) default NULL,
  `subject` varchar(100) default NULL,
  `category` varchar(100) default NULL,
  `isbn` varchar(20) default NULL,
  `publication` varchar(100) default NULL,
  `price` int(10) default NULL,
  `quantity` int(10) default NULL,
  `author` varchar(100) default NULL,
  `edition` varchar(10) default NULL,
  PRIMARY KEY  (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book` */

insert  into `book`(`bookid`,`name`,`subject`,`category`,`isbn`,`publication`,`price`,`quantity`,`author`,`edition`) values (1002,'html coding withcss','coding','CS','290','Apress',360,5,'E.BalaGuruSwami','2014'),(217131,'micro 80885','microprocessor','CS','22223','bh',300,4,'sv singh','2012'),(2461347,'indian geography','android','arts','89758','sanjiv',500,20,'gaurav','2014'),(3417419,'android programing','android','cs','4567','asdfads',670,8,'E.BalaGuruSwami','2011'),(4671692,'project in c','c','CS','4019','Apress',390,10,'james Gosling','2013'),(4819582,'programing in assembali','microprocessor','cs','6789','BPB',860,45,'ankur jain','2014'),(5188616,'c programing projects','c','CS','34567','ashirvad',450,12,'ankur jain','2014'),(5211641,'os concepts','os','cs','25686','PearsonVue',590,78,'nita roy','2012'),(6598837,'web design in html','HTML','CS','4989','PearsonVue',290,20,'E.BalaGuruSwami','2013'),(8984995,'uml  designing','uml','CS','58974','Apress',580,50,'ads','2009'),(9433392,'digital logic','android','ec','897','asdfads',350,89,'sv singh','2014'),(9478232,'principal of operating system','os','cs','89789','bh',450,28,'nilesh shah','2014'),(9684313,'jdbc connectivity','java','CS','69875','BPB',560,45,'ads','2012'),(9852795,'uml book','microprocessor','CS','40','Apress',200,60,'ads','2014');

/*Table structure for table `book_issue` */

DROP TABLE IF EXISTS `book_issue`;

CREATE TABLE `book_issue` (
  `userid` int(10) NOT NULL,
  `bookid` int(10) NOT NULL,
  `book name` varchar(30) NOT NULL,
  `author name` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `publication` varchar(30) NOT NULL,
  `Student name` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `sem` varchar(30) NOT NULL,
  PRIMARY KEY  (`userid`,`bookid`),
  KEY `userid` (`userid`),
  CONSTRAINT `book_issue_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `book_issue` */

insert  into `book_issue`(`userid`,`bookid`,`book name`,`author name`,`category`,`publication`,`Student name`,`branch`,`sem`) values (6,1002,'html coding','E.BalaGuruSwami','CS','Apress','Chhoga Ram Balot','EE','5'),(12,1002,'html coding','E.BalaGuruSwami','CS','Apress','rohan','EC','3');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`id`,`name`) values (1,'sports'),(2,'technicial'),(3,'GK'),(4,'Others'),(9,'CS'),(10,'me'),(11,'oracle'),(12,NULL),(13,'cs'),(14,'ec'),(15,'civil'),(16,'magzine'),(17,'arts');

/*Table structure for table `fine` */

DROP TABLE IF EXISTS `fine`;

CREATE TABLE `fine` (
  `userid` int(11) NOT NULL,
  `fine` int(11) default '0',
  PRIMARY KEY  (`userid`),
  KEY `fine` (`fine`),
  CONSTRAINT `fine_ibfk_1` FOREIGN KEY (`fine`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fine` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `userid` int(10) NOT NULL auto_increment,
  `username` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `usertype` varchar(30) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`userid`,`username`,`password`,`usertype`) values (1,'rks2827','rks2827','admin'),(2,'kab89','kab456','user'),(3,'ravi','ravi','admin'),(4,'ravi123','ravi123','user'),(6,'crb','crb123','user'),(7,'raj12','r234','admin'),(8,'rocky123','r1234','user'),(9,'samir123','s1231','admin'),(11,'raj','2345','admin'),(12,'parbat123','pk123','user'),(13,'ravi900','tjki','admin'),(15,'r123','r1234','user'),(16,'123','asdj','admin'),(17,'dinesh12','dinesh12','user');

/*Table structure for table `publication` */

DROP TABLE IF EXISTS `publication`;

CREATE TABLE `publication` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `publication` */

insert  into `publication`(`id`,`name`) values (1,'BPB'),(2,'PearsonVue'),(4,'Wrox'),(5,'Apress'),(6,'asdfads'),(8,'TMH'),(9,'ashirvad'),(10,'bh'),(11,'genius'),(12,'cbh'),(13,'phi'),(14,'jp house'),(15,'sanjiv');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `subject` */

insert  into `subject`(`id`,`name`) values (1,'java'),(2,'c'),(3,'cpp'),(4,'android'),(5,'php'),(6,'HTML'),(8,'TOC'),(9,'thermodynamics'),(10,'microprocessor'),(11,'os'),(12,'dsa'),(13,'uml'),(14,'geography');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` int(10) NOT NULL default '0',
  `name` varchar(30) default NULL,
  `branch` varchar(30) default NULL,
  `sem` varchar(30) default NULL,
  `email` varchar(30) default NULL,
  `mobile` varchar(30) default NULL,
  PRIMARY KEY  (`userid`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`userid`,`name`,`branch`,`sem`,`email`,`mobile`) values (1,'raj23','cs','3','rks2827@gmail.com','941414555'),(6,'Chhoga Ram Balot','EE','5','crb9694@gmail.com','9694332129'),(11,'gauri','CS','5','rks2827@gmail.com','895878885'),(12,'rohan','EC','3','hjik@gmail.com','98888272'),(15,'rakesh solanki','ME','1','raj123@gmail.com','9983080075');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
