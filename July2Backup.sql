/*
SQLyog Trial v13.1.8 (64 bit)
MySQL - 8.0.23 : Database - ksms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ksms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ksms`;

/*Table structure for table `activity_logs` */

DROP TABLE IF EXISTS `activity_logs`;

CREATE TABLE `activity_logs` (
  `id` varchar(30) DEFAULT NULL,
  `login_date` date DEFAULT NULL,
  `login_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `a_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `a_email` varchar(45) NOT NULL,
  `a_phone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`a_id`,`name`,`password`,`a_email`,`a_phone`) values 
(1,'Himanshu','saini','himu2751@gmail.com','7073742326');
/*Table structure for table `class_schedule` */

DROP TABLE IF EXISTS `class_schedule`;

CREATE TABLE `class_schedule` (
  `class` varchar(20) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `class_schedule` */

/*Table structure for table `create_hw` */

DROP TABLE IF EXISTS `create_hw`;

CREATE TABLE `create_hw` (
  `s_class` varchar(10) NOT NULL,
  `s_subject` varchar(15) NOT NULL,
  `homework` varchar(150) NOT NULL,
  `hw_date` varchar(50) DEFAULT NULL,
  `submit_hw_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `e_title` varchar(100) NOT NULL,
  `start_date` varchar(50) DEFAULT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  `end_at` varchar(45) DEFAULT NULL,
  `start_at` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `event` */

insert  into `event`(`e_title`,`start_date`,`end_date`,`end_at`,`start_at`) values 
('Dandiya night','23-06-2021','27-06-2021','5:00 pm','8:00 am'),
('adfffs','asdfsdf','sdfsadf','asdfsadf','ffasdf'),
('Dandiya Night','02-06-2021','06-062001','dfsdfsaf','12:00 am'),
('asdfsadf','dfasdfasdfss','asdfasdf','sadfasdf','fdsadfasdfadfas'),
('Dandiya mifsdf','23-06+-','28-69-2001','5.00','12.00 ');

/*Table structure for table `fee_paid` */

DROP TABLE IF EXISTS `fee_paid`;

CREATE TABLE `fee_paid` (
  `s_id` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `total_fee` varchar(20) DEFAULT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `P_type` varchar(20) DEFAULT NULL,
  `Fine` varchar(20) DEFAULT NULL,
  `Due_fees` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `fee_paid` */

/*Table structure for table `fee_payment` */

DROP TABLE IF EXISTS `fee_payment`;

CREATE TABLE `fee_payment` (
  `s_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `s_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `receipt_num` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `payment_date` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `due_fee` varchar(20) DEFAULT NULL,
  `pay_type` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `total` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fine` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fee_payment` */

insert  into `fee_payment`(`s_id`,`s_name`,`receipt_num`,`payment_date`,`due_fee`,`pay_type`,`total`,`remark`,`fine`) values 
('10001','dev','MIMT2328',NULL,'18000','Cash','18000','bc','nope'),
('2001','Yami Goutam','2392392893',NULL,'233','UPI','600','Himanshu','90'),
('4001','Ankit','782372937293',NULL,'445','UPI','600','Himanshu','343');

/*Table structure for table `holiday` */

DROP TABLE IF EXISTS `holiday`;

CREATE TABLE `holiday` (
  `h_title` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `holiday` */

/*Table structure for table `notice_board` */

DROP TABLE IF EXISTS `notice_board`;

CREATE TABLE `notice_board` (
  `s_class` varchar(10) NOT NULL,
  `notice_type` varchar(50) DEFAULT NULL,
  `notice` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notice_board` */

insert  into `notice_board`(`s_class`,`notice_type`,`notice`) values 
('second',NULL,NULL),
('second',NULL,NULL),
('4th',NULL,NULL),
('4th','Hello','Hello this is notice'),
('2nd','Fee Duw ','aasdadfadf'),
('V','Bring in your Articles and Sketches','29 July, 2O21\nStudents of all classes are hereby invited to submit their articles and sketches for the school magazine to the undersigned Latest by the 6th of August in Room No. 102 during the V period. Please ensure that your articles are neat and legible and your sketches are clearly drawn.\n'),
('III','Fee jma lr','Fee time ');

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `s_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `english` varchar(50) DEFAULT NULL,
  `hindi` varchar(50) DEFAULT NULL,
  `maths` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `science` varchar(50) DEFAULT NULL,
  `social_studies` varchar(50) DEFAULT NULL,
  `computer_sc` varchar(50) DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `result` */

insert  into `result`(`s_id`,`total`,`english`,`hindi`,`maths`,`science`,`social_studies`,`computer_sc`,`grade`) values 
('1002','12','12','12','12','12','12','12','D'),
('5001','344','34','34','34','34','34','56','A'),
('1001','44','55','33','44','33','22','22','A');

/*Table structure for table `s_attendance` */

DROP TABLE IF EXISTS `s_attendance`;

CREATE TABLE `s_attendance` (
  `s_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `s_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `attendance_sheet` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `s_attendance` */

insert  into `s_attendance`(`s_id`,`s_name`,`attendance_sheet`,`date`) values 
(' 4001',' Ritik','Present','2021-07-02'),
(' 4002',' Rohit','Absent','2021-07-02'),
(' 4001',' Ritik','Present','2021-07-02'),
(' 4002',' Rohit','Present','2021-07-02'),
(' 4001',' Ritik','Absent','2021-07-02');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `s_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `s_class` varchar(20) DEFAULT NULL,
  `s_gender` varchar(20) DEFAULT NULL,
  `s_f_name` varchar(100) DEFAULT NULL,
  `s_m_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `s_mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `s_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `student` */

insert  into `student`(`s_id`,`name`,`password`,`s_class`,`s_gender`,`s_f_name`,`s_m_name`,`s_mobile`,`s_email`) values 
('1001','Mayank','soni','V','Male','Mr. Soni',' Mrs. Soni','+91 7015669693',' mayankmotu420@gmail.com');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `t_mobile` varchar(45) DEFAULT NULL,
  `t_possition` varchar(45) DEFAULT NULL,
  `t_email` varchar(45) DEFAULT NULL,
  `t_gender` varchar(10) DEFAULT NULL,
  `t_date_join` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `teacher` */

insert  into `teacher`(`t_id`,`name`,`password`,`t_mobile`,`t_possition`,`t_email`,`t_gender`,`t_date_join`) values 
(101,'Rashmi','verma','+91 8965235696','Junior','rashmi60@gmail.com','Female','23/06/2011'),
(103,'Savita','sharma','+91 897878787','Junior','savita@gmail.com','Female','23-06-2011'),
(123,'Sumit Sir','root','','sr. teacher','sumitsir@gmail.com','male','23-06-2021');

/*Table structure for table `try` */

DROP TABLE IF EXISTS `try`;

CREATE TABLE `try` (
  `hello` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `try` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
