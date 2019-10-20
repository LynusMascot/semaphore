CREATE DATABASE  IF NOT EXISTS `employee_directory`;
USE `employee_directory`;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `EmpId` int(11) NOT NULL AUTO_INCREMENT,
  `EmpName` varchar(45) DEFAULT NULL,
  `DOJ` varchar(45) DEFAULT NULL,
  `Designation` varchar(45) DEFAULT NULL,
  `RepMgr` varchar(45) DEFAULT NULL,
  `DeptId` int DEFAULT NULL,
  `LocId` int DEFAULT NULL,
  PRIMARY KEY (`EmpId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Data for table `employee`
--

INSERT INTO `employee` VALUES 
	(1, 'Rohit Goswami', '2019-07-18', 'ASE', 'Hari', 1001, 2001),	
	(2, 'Vishal Jyoti', '2019-08-15', 'ASE', 'Shri', 1002, 2002),
	(3, 'Abhishek Bansal', '2019-09-10', 'BA', 'Surender', 1003, 2003),
	(4, 'Ezhil', '2019-01-18', 'SD', 'Swathi', 1004, 2004),
    (5, 'Sushma', '2019-02-18', 'TE', 'Pankaj', 1002, 2004),
    (6, 'Thanushri', '2015-02-18', 'BU', 'Joffy', 1005, 2002),
    (7, 'Sravanthi', '2017-03-12', 'BU', 'Neeru', 1000, 2003);


