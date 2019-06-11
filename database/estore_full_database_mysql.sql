-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: estore
-- ------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;

DROP SCHEMA IF EXISTS `estore` ;
CREATE SCHEMA `estore` ;

USE `estore`;

--
-- Table structure for table `Customer`
--
DROP TABLE IF EXISTS `Customer`;
CREATE TABLE `Customer` (
  `CustomerId` INT(11) NOT NULL AUTO_INCREMENT,
  `CustomerKey` VARCHAR(50) NOT NULL,
  `CustomerName` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Email` VARCHAR(50) DEFAULT NULL,  
  `Tel` VARCHAR(50) DEFAULT NULL,
  `Fax` VARCHAR(50) DEFAULT NULL,  
  `Address` VARCHAR(250) DEFAULT NULL,
  `Representative` VARCHAR(50) DEFAULT NULL,
  `Title` VARCHAR(50) DEFAULT NULL,
  `Mobile` VARCHAR(50) DEFAULT NULL,
  `ImageKey` VARCHAR(250) DEFAULT NULL,
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`CustomerId`),
  UNIQUE KEY `CustomerId_UNIQUE` (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;	

--
-- Sample data for table `Customer`
--
INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'The Bank of Tokyo and Mitsuibishi','37 Ton Duc Thang street, district 1','customer@customer.com','029876543210','SYSTEM','SYSTEM');

INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'REE Corporation Group','458 Hung Vuong street, district 1','customer@customer.com','029876543210','SYSTEM','SYSTEM');

INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'FPT Information System','37 Ton Duc Thang street, district 1','customer@customer.com','029876543210','SYSTEM','SYSTEM');

INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'HAG Corporation Group','37 Ton Duc Thang street, district 1','customer@customer.com','029876543210','SYSTEM','SYSTEM');

INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'SMC Steel Company','37 Ton Duc Thang street, district 1','customer@customer.com','029876543210','SYSTEM','SYSTEM');

INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'Marubeni Itochu Steel Vietnam Co. Ltd.','37 Ton Duc Thang street, district 1','customer@customer.com','029876543210','SYSTEM','SYSTEM');

INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'Northrop Grumman','157 Hong Ha street, district 1','customer@customer.com','029876543210','SYSTEM','SYSTEM');

INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'Adnotrium','45 Nguyen Thi Minh Khai street, district 1','customer@customer.com','029876543210','SYSTEM','SYSTEM');

INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'SMC Steel Company','25 Ton That Tung street, district 1','customer@customer.com','029876543210','SYSTEM','SYSTEM');

INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'Marubeni Super Fast Food.','99 Ban Co street, district 3','customer@customer.com','08 801109934','SYSTEM','SYSTEM');

INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'North Carolina','142 Ton Duc Thang street, district 1','customer@customer.com','02 3664916215','SYSTEM','SYSTEM');

INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'Taobao Group','45 Nguyen Thi Minh Khai street, district 1','customer@customer.com','029876543210','SYSTEM','SYSTEM');

INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'Kawasaki Corporation Group','145 Ho Tung Mau street, district 1','customer@customer.com','029888883210','SYSTEM','SYSTEM');

INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Address`,`Email`,`Tel`,`Author`,`Editor`) 
VALUES (uuid(),'Emirates Corporation Group','145 Ton That Tung street, district 1','customer@customer.com','029888883210','SYSTEM','SYSTEM');


--
-- Table structure for table `Truck`
--
DROP TABLE IF EXISTS `Truck`;
CREATE TABLE `Truck` (
  `TruckId` INT(11) NOT NULL AUTO_INCREMENT,
  `TruckKey` VARCHAR(50) NOT NULL,
  `TruckName` VARCHAR(50) NOT NULL,
  `TruckNumber` VARCHAR(50) NOT NULL,
  `ImageKey` VARCHAR(250) NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`TruckId`),
  UNIQUE KEY `TruckId_UNIQUE` (`TruckId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - Land Cruiser', 'T-LAND-123456789', 'Land Cruiser 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - Mercedez', 'T-MERC-123456789', 'Mercedez 2017', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - BMW', 'T-BMW-852741963', 'BMW 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - MAX', 'T-MAX-852741963', 'Kawasaki 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - EVEREST', 'T-EVEREST-852741963', 'Everest 2018', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - HONGKONG', 'T-EVEREST-852741963', 'Everest 2018', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - Land Cruiser', 'T-LAND-123456789', 'Land Cruiser 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - Mercedez', 'T-MERC-123456789', 'Mercedez 2017', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - BMW', 'T-BMW-852741963', 'BMW 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - MAX', 'T-MAX-852741963', 'Kawasaki 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - EVEREST', 'T-EVEREST-852741963', 'Everest 2018', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - HONGKONG', 'T-EVEREST-852741963', 'Everest 2018', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - Land Cruiser', 'T-LAND-123456789', 'Land Cruiser 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - Mercedez', 'T-MERC-123456789', 'Mercedez 2017', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - BMW', 'T-BMW-852741963', 'BMW 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - MAX', 'T-MAX-852741963', 'Kawasaki 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - ESCAPE', 'T-ESCAPE-852741963', 'ESCAPE 2018', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - FORD', 'T-FORD-852251963', 'FORD 2018', 'SYSTEM', 'SYSTEM');

--
-- Table structure for table `Account`
--
DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account` (
  `AccountId` INT(11) NOT NULL AUTO_INCREMENT,
  `AccountKey` VARCHAR(50) NOT NULL,
  `AccountNo` VARCHAR(20) NOT NULL,
  `AccountName` VARCHAR(100) NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `DebitOrCredit` VARCHAR(2) DEFAULT NULL,
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`AccountId`),
  UNIQUE KEY `AccountId_UNIQUE` (`AccountId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `Account`
--
INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`DebitOrCredit`,`Author`,`Editor`) 
VALUES (uuid(),'111','Cash','DR','SYSTEM','SYSTEM');

INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`DebitOrCredit`,`Author`,`Editor`) 
VALUES (uuid(),'112','Cash in bank','DR','SYSTEM','SYSTEM');

INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`DebitOrCredit`,`Author`,`Editor`) 
VALUES (uuid(),'113','Cash transfer','DR','SYSTEM','SYSTEM');

INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`DebitOrCredit`,`Author`,`Editor`) 
VALUES (uuid(),'156','Goods','DR','SYSTEM','SYSTEM');

INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`DebitOrCredit`,`Author`,`Editor`) 
VALUES (uuid(),'131','Account Receivable','CR','SYSTEM','SYSTEM');

INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`DebitOrCredit`,`Author`,`Editor`) 
VALUES (uuid(),'211','Fixed Asset','DR','SYSTEM','SYSTEM');

INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`DebitOrCredit`,`Author`,`Editor`) 
VALUES (uuid(),'331','Account Payment','CR','SYSTEM','SYSTEM');

INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`DebitOrCredit`,`Author`,`Editor`) 
VALUES (uuid(),'511','Revenue','CR','SYSTEM','SYSTEM');

INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`DebitOrCredit`,`Author`,`Editor`) 
VALUES (uuid(),'632','Cost of Goods Sold','CR','SYSTEM','SYSTEM');

INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`DebitOrCredit`,`Author`,`Editor`) 
VALUES (uuid(),'642','Selling Cost','CR','SYSTEM','SYSTEM');

INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`DebitOrCredit`,`Author`,`Editor`) 
VALUES (uuid(),'711','711','CR','SYSTEM','SYSTEM');

INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`DebitOrCredit`,`Author`,`Editor`) 
VALUES (uuid(),'811','811','CR','SYSTEM','SYSTEM');

INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`DebitOrCredit`,`Author`,`Editor`) 
VALUES (uuid(),'911','911','CR','SYSTEM','SYSTEM');

--
-- Table structure for table `Transaction`
--
DROP TABLE IF EXISTS `Transaction`;
CREATE TABLE `Transaction` (
  `TransactionId` INT(11) NOT NULL AUTO_INCREMENT,  
  `TransactionKey` VARCHAR(50) NOT NULL,
  `TransactionNo` VARCHAR(50) DEFAULT NULL,
  `TransactionDate` DATETIME DEFAULT NULL,
  `TransactionType` VARCHAR(20) NOT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `DebitAcctNo` VARCHAR(20) NOT NULL,
  `CreditAcctNo` VARCHAR(20) NOT NULL,
  `Currency` VARCHAR(3) NOT NULL,
  `TotalAmount` DECIMAL(12,4) NOT NULL DEFAULT 0,
  `CustomerId` INT(11) DEFAULT 0,
  `CustomerName` VARCHAR(50) DEFAULT NULL,
  `InvoiceNo` VARCHAR(20) DEFAULT NULL,
  `InvoiceDate` DATETIME DEFAULT NULL,
  `InvoiceDesc` VARCHAR(250) DEFAULT NULL,  
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`TransactionId`),
  UNIQUE KEY `TransactionId_UNIQUE` (`TransactionId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `Transaction`
--
INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHIN-000001','2016-11-07','CASHIN','Cash In ', '111', '642', 'VND', 5000000, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHIN-000002','2016-11-07','CASHIN','Cash In ', '111', '642', 'VND', 6000000, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHIN-000003','2016-11-07','CASHIN','Cash In ', '111', '531', 'USD', 800, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHIN-000004','2017-07-07','CASHIN','Cash In ', '111', '531', 'USD', 18000, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHIN-000005','2017-08-07','CASHIN','Cash In ', '111', '531', 'USD', 1250, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHIN-000006','2017-09-07','CASHIN','Cash In ', '111', '531', 'USD', 1250, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHIN-000007','2017-09-17','CASHIN','Cash In ', '111', '531', 'USD', 500, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHIN-000008','2017-09-17','CASHIN','Cash In ', '111', '531', 'USD', 500, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHIN-000009','2017-09-18','CASHIN','Cash In ', '111', '532', 'USD', 250, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHIN-000010','2017-10-08','CASHIN','Cash In ', '111', '531', 'USD', 55, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHIN-000011','2017-10-08','CASHIN','Cash In ', '111', '532', 'USD', 25, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHIN-000012','2017-10-10','CASHIN','Cash In ', '111', '531', 'USD', 650, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHIN-000013','2017-10-12','CASHIN','Cash In ', '111', '532', 'USD', 1150, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000001','2016-05-07','CASHOUT','Cash Out', '111', '642', 'VND', 1000000, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000002','2016-05-17','CASHOUT','Cash Out', '111', '642', 'VND', 2000000, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000003','2016-06-07','CASHOUT','Cash Out', '111', '532', 'USD', 500, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000004','2016-06-17','CASHOUT','Cash Out', '111', '631', 'USD', 1500, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000005','2016-07-23','CASHOUT','Cash Out', '111', '632', 'USD', 600, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000006','2016-07-27','CASHOUT','Cash Out', '111', '632', 'USD', 600, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000007','2016-08-07','CASHOUT','Cash Out', '111', '632', 'USD', 600, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000008','2016-08-07','CASHOUT','Cash Out', '111', '642', 'USD', 600, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000009','2016-09-07','CASHOUT','Cash Out', '111', '641', 'USD', 600, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000010','2016-09-07','CASHOUT','Cash Out', '111', '632', 'USD', 600, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000011','2016-10-18','CASHOUT','Cash Out', '111', '631', 'USD', 800, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000012','2016-10-17','CASHOUT','Cash Out', '111', '632', 'USD', 600, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000013','2016-10-27','CASHOUT','Cash Out', '111', '632', 'USD', 600, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000014','2016-11-03','CASHOUT','Cash Out', '111', '632', 'USD', 600, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000015','2016-11-04','CASHOUT','Cash Out', '111', '632', 'USD', 600, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000016','2016-11-05','CASHOUT','Cash Out', '111', '642', 'USD', 600, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionNo, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'CASHOUT-000017','2016-11-07','CASHOUT','Cash Out', '111', '632', 'USD', 600, 'SYSTEM', 'SYSTEM');


--
-- Table structure for table `Inventory`
--
DROP TABLE IF EXISTS `Inventory`;
CREATE TABLE `Inventory` (
  `InventoryId` INT(11) NOT NULL AUTO_INCREMENT,    
  `InventoryKey` VARCHAR(50) DEFAULT NULL,
  `InventoryName` VARCHAR(50) DEFAULT NULL,
  `Location` VARCHAR(50) DEFAULT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,  
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`InventoryId`),
  UNIQUE KEY `InventoryId_UNIQUE` (`InventoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


--
-- Sample data for table `Inventory`
--
INSERT INTO `Inventory`(InventoryKey, InventoryName, Location, Description, Author, Editor)
VALUES (uuid(),'Front Store','327 Nam Ky Khoi Nghia','Sai Gon store','SYSTEM','SYSTEM');

INSERT INTO `Inventory`(InventoryKey, InventoryName, Location, Description, Author, Editor)
VALUES (uuid(),'Back Store','45A Song Than Industrial Group','Binh Duong store', 'SYSTEM', 'SYSTEM');

INSERT INTO `Inventory`(InventoryKey, InventoryName, Location, Description, Author, Editor)
VALUES (uuid(),'Shop Store','450 A Ngu Hanh Son street','Da Nang city', 'SYSTEM', 'SYSTEM');


--
-- Table structure for table `InventoryBalance`
--
DROP TABLE IF EXISTS `InventoryBalance`;
CREATE TABLE `InventoryBalance` (
  `InventoryBalanceId` INT(11) NOT NULL AUTO_INCREMENT,
  `InventoryId` INT(11) DEFAULT NULL,
  `ProductId` INT(11) DEFAULT NULL,
  `IsPerpetual` TINYINT(1) DEFAULT 0,
  `QtyInput` INT(11) NOT NULL DEFAULT 0,
  `QtyOutput` INT(11) NOT NULL DEFAULT 0,
  `Currency` VARCHAR(3) DEFAULT NULL,
  `Price` DECIMAL(12,4) NOT NULL DEFAULT 0,
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,  
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`InventoryBalanceId`),
  UNIQUE KEY `InventoryBalanceId_UNIQUE` (`InventoryBalanceId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `InventoryBalance`
--
INSERT INTO `InventoryBalance`(InventoryId, ProductId, QtyInput, QtyOutput, Price, Author, Editor)
VALUES (1, 1, 10, 5, 50, 'SYSTEM', 'SYSTEM');

INSERT INTO `InventoryBalance`(InventoryId, ProductId, QtyInput, QtyOutput, Price, Author, Editor)
VALUES (1, 2, 12, 6, 50, 'SYSTEM', 'SYSTEM');

INSERT INTO `InventoryBalance`(InventoryId, ProductId, QtyInput, QtyOutput, Price, Author, Editor)
VALUES (1, 3, 15, 10, 50, 'SYSTEM', 'SYSTEM');

INSERT INTO `InventoryBalance`(InventoryId, ProductId, QtyInput, QtyOutput, Price, Author, Editor)
VALUES (2, 1, 2, 1, 50, 'SYSTEM', 'SYSTEM');

INSERT INTO `InventoryBalance`(InventoryId, ProductId, QtyInput, QtyOutput, Price, Author, Editor)
VALUES (2, 2, 2, 1, 50, 'SYSTEM', 'SYSTEM');

INSERT INTO `InventoryBalance`(InventoryId, ProductId, QtyInput, QtyOutput, Price, Author, Editor)
VALUES (2, 3, 2, 1, 50, 'SYSTEM', 'SYSTEM');


--
-- Table structure for table `Stock`
--
DROP TABLE IF EXISTS `Stock`;
CREATE TABLE `Stock` (
  `StockId` INT(11) NOT NULL AUTO_INCREMENT,
  `StockKey` VARCHAR(50) NOT NULL,
  `StockNo` VARCHAR(50) DEFAULT NULL,
  `StockDate` DATETIME DEFAULT NULL,
  `StockType` VARCHAR(20) DEFAULT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Currency` VARCHAR(3) DEFAULT NULL,
  `TotalAmount` DECIMAL(12,4) DEFAULT 0,
  `CustomerId` INT(11) DEFAULT 0,
  `CustomerName` VARCHAR(50) DEFAULT NULL,
  `InvoiceNo` VARCHAR(20) DEFAULT NULL,
  `InvoiceDate` DATETIME DEFAULT NULL,
  `InvoiceDesc` VARCHAR(250) DEFAULT NULL,  
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`StockId`),
  UNIQUE KEY `StockId_UNIQUE` (`StockId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `Stock`
--
INSERT INTO `Stock`(StockKey, StockNo, StockDate, StockType, Description, Currency, TotalAmount, CustomerId, CustomerName, Author, Editor) 
VALUES (uuid(), 'STOCKIN-000001', '2017-02-01', 'STOCKIN', 'Input Goods', 'VND', '60000', '1', 'Vina Sun', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock`(StockKey, StockNo, StockDate, StockType, Description, Currency, TotalAmount, CustomerId, CustomerName, Author, Editor) 
VALUES (uuid(), 'STOCKIN-000002', '2017-04-02', 'STOCKIN', 'Input Goods', 'VND', '60000', '2', 'Vina Capital', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock`(StockKey, StockNo, StockDate, StockType, Description, Currency, TotalAmount, CustomerId, CustomerName, Author, Editor) 
VALUES (uuid(), 'STOCKIN-000003', '2017-05-03', 'STOCKIN', 'Input Goods', 'VND', '60000', '3', 'Vina Kyoei', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock`(StockKey, StockNo, StockDate, StockType, Description, Currency, TotalAmount, CustomerId, CustomerName, Author, Editor) 
VALUES (uuid(), 'STOCKIN-000004', '2017-06-03', 'STOCKIN', 'Input Goods', 'VND', '60000', '3', 'Vina Kyoei', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock`(StockKey, StockNo, StockDate, StockType, Description, Currency, TotalAmount, CustomerId, CustomerName, Author, Editor) 
VALUES (uuid(), 'STOCKIN-000005', '2017-07-03', 'STOCKIN', 'Input Goods', 'VND', '60000', '3', 'Vina Kyoei', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock`(StockKey, StockNo, StockDate, StockType, Description, Currency, TotalAmount, CustomerId, CustomerName, Author, Editor) 
VALUES (uuid(), 'STOCKIN-000006', '2017-08-03', 'STOCKIN', 'Input Goods', 'VND', '60000', '3', 'Vina Kyoei', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock`(StockKey, StockNo, StockDate, StockType, Description, Currency, TotalAmount, CustomerId, CustomerName, Author, Editor) 
VALUES (uuid(), 'STOCKOUT-000001', '2017-07-21', 'STOCKOUT', 'Output Goods', 'VND', '30000', '1', 'Mitsuibishi', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock`(StockKey, StockNo, StockDate, StockType, Description, Currency, TotalAmount, CustomerId, CustomerName, Author, Editor) 
VALUES (uuid(), 'STOCKOUT-000002', '2017-07-22', 'STOCKOUT', 'Output Goods', 'VND', '30000', '2', 'FPT Information System', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock`(StockKey, StockNo, StockDate, StockType, Description, Currency, TotalAmount, CustomerId, CustomerName, Author, Editor) 
VALUES (uuid(), 'STOCKOUT-000003', '2017-07-12', 'STOCKOUT', 'Output Goods', 'USD', '150', '2', 'FPT Software', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock`(StockKey, StockNo, StockDate, StockType, Description, Currency, TotalAmount, CustomerId, CustomerName, Author, Editor) 
VALUES (uuid(), 'STOCKOUT-000004', '2017-08-21', 'STOCKOUT', 'Output Goods', 'VND', '30000', '1', 'Mitsuibishi', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock`(StockKey, StockNo, StockDate, StockType, Description, Currency, TotalAmount, CustomerId, CustomerName, Author, Editor) 
VALUES (uuid(), 'STOCKOUT-000005', '2017-10-22', 'STOCKOUT', 'Output Goods', 'VND', '30000', '2', 'FPT Information System', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock`(StockKey, StockNo, StockDate, StockType, Description, Currency, TotalAmount, CustomerId, CustomerName, Author, Editor) 
VALUES (uuid(), 'STOCKOUT-000006', '2017-10-12', 'STOCKOUT', 'Output Goods', 'USD', '150', '2', 'FPT Software', 'SYSTEM', 'SYSTEM');

--
-- Table structure for table `StockDetail`
--
DROP TABLE IF EXISTS `StockDetail`;
CREATE TABLE `StockDetail` (
  `StockDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `StockId` INT(11) DEFAULT 0,
  `ProductId` INT(11) DEFAULT 0,
  `ProductName` VARCHAR(50) DEFAULT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Quantity` INT(11) DEFAULT 0,
  `Price` DECIMAL(12,4) DEFAULT 0,
  `Amount` DECIMAL(12,4) DEFAULT 0,
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`StockDetailId`),
  UNIQUE KEY `StockDetailId_UNIQUE` (`StockDetailId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `StockDetail`
--
INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (1, 1, 'Product 1', ' Desc 1', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (1, 2, 'Product 2', ' Desc 2', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (1, 3, 'Product 3', ' Desc 3', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (2, 1, 'Product 1', ' Desc 1', 10, 200, 2000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (2, 2, 'Product 2', ' Desc 2', 5, 200, 1000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (2, 3, 'Product 3', ' Desc 3', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (3, 1, 'Product 1', ' Desc 1', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (3, 2, 'Product 2', ' Desc 2', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (3, 3, 'Product 3', ' Desc 3', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (4, 1, 'Product 1', ' Desc 1', 10, 200, 2000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (4, 2, 'Product 2', ' Desc 2', 5, 200, 1000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (4, 3, 'Product 3', ' Desc 3', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (5, 1, 'Product 1', ' Desc 1', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (5, 2, 'Product 2', ' Desc 2', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (5, 3, 'Product 3', ' Desc 3', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (6, 1, 'Product 1', ' Desc 1', 10, 200, 2000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (6, 2, 'Product 2', ' Desc 2', 5, 200, 1000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (6, 3, 'Product 3', ' Desc 3', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (7, 1, 'Product 1', ' Desc 1', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (7, 2, 'Product 2', ' Desc 2', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (7, 3, 'Product 3', ' Desc 3', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (8, 1, 'Product 1', ' Desc 1', 10, 200, 2000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (8, 2, 'Product 2', ' Desc 2', 5, 200, 1000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail`(StockId, ProductId, ProductName, Description, Quantity, Price, Amount, Author, Editor) 
VALUES (8, 3, 'Product 3', ' Desc 3', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

--
-- Table structure for table `Journal`
--
DROP TABLE IF EXISTS `Journal`;
CREATE TABLE `Journal` (
  `JournalId` INT(11) NOT NULL AUTO_INCREMENT,
  `JournalKey` VARCHAR(50) NOT NULL,
  `JournalType` VARCHAR(20) NOT NULL,
  `JournalDate` DATETIME DEFAULT NULL,
  `DebitAcctNo` VARCHAR(20) NOT NULL,
  `CreditAcctNo` VARCHAR(20) NOT NULL,
  `Currency` VARCHAR(3) DEFAULT NULL,
  `Amount` DECIMAL(12,4) NOT NULL DEFAULT 0,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`JournalId`),
  UNIQUE KEY `JournalId_UNIQUE` (`JournalId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


--
-- Table structure for table `Journal`
--
INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'CASH', '2017-08-01', '111', '641', 'VND', 6500, ' Cash Journal', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'CASH', '2017-08-08', '112', '642', 'VND', 5000, ' Cash Journal', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'STOCK', '2017-08-09', '156', '632', 'VND', 8000, 'Import Product', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'STOCK', '2017-08-09', '156', '632', 'VND', 600, ' Import Product', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'STOCK', '2017-09-09', '156', '632', 'VND', 150, ' Import Product', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'CASH', '2017-09-01', '111', '641', 'VND', 6500, ' Cash Journal', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'CASH', '2017-09-08', '112', '642', 'VND', 5000, ' Cash Journal', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'STOCK', '2017-09-09', '156', '632', 'VND', 8000, 'Import Product', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'STOCK', '2017-09-09', '156', '632', 'VND', 600, ' Import Product', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'STOCK', '2017-09-21', '156', '632', 'VND', 150, ' Import Product', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'CASH', '2017-10-01', '111', '641', 'VND', 6500, ' Cash Journal', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'CASH', '2017-10-08', '112', '642', 'VND', 5000, ' Cash Journal', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'STOCK', '2017-10-09', '156', '632', 'VND', 8000, 'Import Product', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'STOCK', '2017-10-19', '156', '632', 'VND', 600, ' Import Product', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal`(JournalKey,JournalType,JournalDate,DebitAcctNo,CreditAcctNo,Currency,Amount,Description,Author,Editor) 
VALUES (uuid(), 'STOCK', '2017-10-22', '156', '632', 'VND', 150, ' Import Product', 'SYSTEM', 'SYSTEM');


--
-- Table structure for table `Brand`
--
DROP TABLE IF EXISTS `Brand`;
CREATE TABLE `Brand` (
  `BrandId` INT(11) NOT NULL AUTO_INCREMENT,
  `BrandKey` VARCHAR(50) NOT NULL,
  `BrandName` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`BrandId`),
  UNIQUE KEY `BrandId_UNIQUE` (`BrandId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `Brand`
--
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Gucci','Gucci','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Nike','Nike','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Adidas','Adidas','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'John Henry','John Henry','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Romano','Romano','SYSTEM','SYSTEM'); -- 5
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Hermes','Hermes','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Christian Dior','Christian Dior','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Brook Brothers','X-Men','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Burberry','Burberry','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Louis Vuiton','Louis Vuiton','SYSTEM','SYSTEM');

INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'IBM','IBM','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Microsoft','Microsoft Corporation','SYSTEM','SYSTEM'); -- 12
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Facebook','Facebook Corporation','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Apple','Apple Corporation','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Sony','Sony Corporation','SYSTEM','SYSTEM');  -- 15
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Samsung','Samsung Corporation','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Alibaba Group','Alibaba Group','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Amazon','Amazon AWS','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'HP Enterprise','HP Enterprise','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Dell Corporation','Dell Corporation','SYSTEM','SYSTEM');

INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Snapchat','Snapchat','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Coca Cola','Coca Cola','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Pepsi','Pepsi','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Chivas','Chivas','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Scotch','Scotch 19th century','SYSTEM','SYSTEM'); -- 25
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Johny Walker','Johny Walker','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Hennessy','Hennessy','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'LG','LG','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Nokia','Nokia','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Xiaomi','Xiaomi Corp','SYSTEM','SYSTEM'); -- 30

INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Brodard','Brodard cake','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Conditori La Glace','Conditori La Glace Copenhagen','SYSTEM','SYSTEM');


--
-- Table structure for table `Category`
--
DROP TABLE IF EXISTS `Category`;
CREATE TABLE `Category` (
  `CategoryId` INT(11) NOT NULL AUTO_INCREMENT,
  `CategoryKey` VARCHAR(50) NOT NULL,
  `CategoryName` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`CategoryId`),
  UNIQUE KEY `CategoryId_UNIQUE` (`CategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `Category`
--
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Laptop','Laptop','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Mobile Phone','Mobile Phone','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Smart Glasses','Smart Glasses','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Smart Watch','Smart Watch','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Robocon','Robocon','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Wearable','Wearable','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Desktop','Desktop','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Men Shoes','Men Shoes','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Women Shoes','Women Shoes','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Traditional Watch','Traditional Watch','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Balo','Balo','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Handbadge','Handbadge','SYSTEM','SYSTEM');

INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Microsoft Laptop','Microsoft Laptop','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Microsoft Phone','Microsoft Phone','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Apple Laptop','Apple Laptop','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Apple Phone','Apple Phone','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'LG Phone','LG Phone','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Nokia Phone','Nokia Phone','SYSTEM','SYSTEM');
INSERT INTO `Category` (`CategoryKey`,`CategoryName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Xiaomi Smart Phone','Xiaomi Smart Phone','SYSTEM','SYSTEM');




--
-- Table structure for table `Product`
--
DROP TABLE IF EXISTS `Product`;
CREATE TABLE `Product` (
  `ProductId` INT(11) NOT NULL AUTO_INCREMENT,
  `ProductKey` VARCHAR(50) NOT NULL,
  `ProductCode` VARCHAR(20) DEFAULT NULL,
  `ProductName` VARCHAR(50) DEFAULT NULL,
  `ProductImage` VARCHAR(50) DEFAULT NULL,
  `SizeList` VARCHAR(250) DEFAULT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `BrandId` INT(11) NOT NULL DEFAULT 0,
  `CategoryId` INT(11) NOT NULL DEFAULT 0,
  `Price` DECIMAL(12, 4) DEFAULT 0,
  `ColorCode` VARCHAR(10) DEFAULT NULL,
  `Status` VARCHAR(10) DEFAULT NULL,
  `LatestReviewInfo` VARCHAR(250) DEFAULT NULL,
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`ProductId`),
  UNIQUE KEY `ProductId_UNIQUE` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='	';

--
-- Sample data for table `Product`
--
INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Sony Vaio','8/8.5/9.5/10/11','Sony Vaio',1,100,'White','NEW','Cool','product02.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Apple MacBook Pro 13-inch','8/8.5/9.5/10/11','A groundbreaking Retina. A new force-sensing trackpad. All-flash architecture. Powerful dual-core and quad-core Intel processors. Together, these features take the notebook to a new level of performance.',2,2000,'White','NEW','Cool','product02.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'HP Note','8/8.5/9.5/10/11','HP Note',2,100,'Yellow','NEW','Cool','product02.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Asus','8/8.5/9.5/10/11','Asus',4,800,'White','NEW','Cool','product03.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Lenovo Thinkpad X1','8/8.5/9.5/10/11','Lenovo Thinkpad X1 Carbon Touch Intel Core i7 14 Ultrabook',4,1100,'White','NEW','Cool','product03.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Sony Xperia','8/8.5/9.5/10/11','Sony Xperia',6,1200,'White','NEW','Cool','product03.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'IBM T42','8/8.5/9.5/10/11','IBM T42',20,100,'Red','NEW','Cool','product04.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'IBM T60','8/8.5/9.5/10/11','IBM T60',20,100,'Red','NEW','Cool','product04.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'IBM T400','8/8.5/9.5/10/11','IBM T400',20,100,'Red','NEW','Cool','product04.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Ipad 5','8/8.5/9.5/10/11','Ipad 5',22,3000,'Green','NEW','Cool','product05.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'IBM T42','8/8.5/9.5/10/11','IBM T42',20,100,'Red','NEW','Cool','product05.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'IBM T60','8/8.5/9.5/10/11','IBM T60',20,100,'Red','NEW','Cool','product04.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'IBM T400','8/8.5/9.5/10/11','IBM T400',20,100,'Red','NEW','Cool','product00.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Ipad 6','8/8.5/9.5/10/11','Ipad 6',22,3000,'Green','NEW','Cool','product03.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'IBM T4200','8/8.5/9.5/10/11','IBM T4200',5,100,'Red','NEW','Cool','product02.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'IBM T44','8/8.5/9.5/10/11','IBM T44',5,100,'Red','NEW','Cool','product05.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'IBM T45','8/8.5/9.5/10/11','IBM T45',5,100,'Red','NEW','Cool','product06.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Ipad 7','8/8.5/9.5/10/11','Ipad 7',22,3000,'Green','NEW','Cool','product07.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'IBM T46','8/8.5/9.5/10/11','IBM T46',5,100,'Red','NEW','Cool','product08.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Adidas Shoes','8/8.5/9.5/10/11','Adidas Shoes',1,100,'Red','NEW','Cool','product01.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Brook Brothers','8/8.5/9.5/10/11','Adidas Shoes',1,100,'Red','NEW','Cool','product05.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Adidas Shoes','8/8.5/9.5/10/11','Adidas Shoes',1,75,'Green','NEW','Cool','product04.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Nike Shoes','8/8.5/9.5/10/11','Nike Shoes',2,50,'White','NEW','Cool','product06.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Nike Shoes','8/8.5/9.5/10/11','Nike Shoes',2,50,'White','NEW','Cool','product07.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Gucci Shoes','8/8.5/9.5/10/11','Nike Shoes',2,50,'Black','NEW','Cool','product08.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Nike Shoes','8/8.5/9.5/10/11','Nike Shoes',2,50,'Pink','NEW','Cool','product09.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Buma Shoes','8/8.5/9.5/10/11','Nike Shoes',2,50,'Pink','NEW','Cool','product09.jpg','SYSTEM','SYSTEM');

-- update images later
INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Microsoft Surface','8/8.5/9.5/10/11','Microsoft Surface',12,50,'Silver','NEW','Cool','product09.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Microsoft Surface','8/8.5/9.5/10/11','Microsoft Surface',14,50,'Silver','NEW','Cool','product09.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Microsoft Surface','8/8.5/9.5/10/11','Microsoft Surface',15,50,'Silver','NEW','Cool','product09.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Microsoft Surface','8/8.5/9.5/10/11','Microsoft Surface',28,50,'Silver','NEW','Cool','product09.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Microsoft Surface','8/8.5/9.5/10/11','Microsoft Surface',29,50,'Silver','NEW','Cool','product09.jpg','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`SizeList`,`Description`,`BrandId`,`Price`,`ColorCode`,`Status`,`LatestReviewInfo`,`ProductImage`,`Author`,`Editor`)
VALUES (uuid(),'Microsoft Surface','8/8.5/9.5/10/11','Microsoft Surface',30,50,'Silver','NEW','Cool','product09.jpg','SYSTEM','SYSTEM');

--
-- Table structure for table `Review`
--
DROP TABLE IF EXISTS `Review`;
CREATE TABLE `Review` (
  `ReviewId` INT(11) NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) DEFAULT NULL,
  `Rating` INT(2) DEFAULT 0,
  `Comment` VARCHAR(250) DEFAULT NULL,
  `ProductId` INT(11) DEFAULT 0,
  `Email` VARCHAR(50) DEFAULT NULL,
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`ReviewId`),
  UNIQUE KEY `ReviewId_UNIQUE` (`ReviewId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `Review`
--
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',1,'Not bad','2013-08-25 17:00:00',1,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',5,'Normal','2013-08-25 17:00:00',2,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',6,'Good','2013-08-22 17:00:00',3,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',3,'Good','2013-08-22 17:00:00',3,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',3,'Bad','2013-08-22 17:00:00',5,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',3,'Comment','2016-07-10 16:43:40',7,'hvn@hvn.net','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',3,'Comment','2016-07-10 16:43:41',7,'hvn@hvn.net','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',3,'Comment','2016-07-10 16:43:41',7,'hvn@hvn.net','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',2,'2222','2016-07-10 16:59:04',15,'hvn@hvn.net','SYSTEM','SYSTEM');

--
-- Table structure for table `User`
--
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `UserId` INT(11) NOT NULL AUTO_INCREMENT,
  `UserKey` VARCHAR(50) DEFAULT NULL,
  `UserType` VARCHAR(20) DEFAULT NULL,
  `UserName` VARCHAR(50) DEFAULT NULL,
  `Hash` VARCHAR(250) DEFAULT NULL,
  `DisplayName` VARCHAR(50) DEFAULT NULL,
  `ImageKey` VARCHAR(250) DEFAULT NULL,  
  `Email` VARCHAR(50) DEFAULT NULL,
  `Mobile` VARCHAR(50) DEFAULT NULL,  
  `Title` VARCHAR(50) DEFAULT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `DateOfBirth` DATETIME DEFAULT NULL,
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `UserName_UNIQUE` (`UserName`),
  UNIQUE KEY `UserId_UNIQUE` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `User`
--
INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `Mobile`, `DateOfBirth`, `Author`, `Editor`) 
VALUES (uuid(), 'ADMIN','admin', 'QGRtaW4=', 'Administrator','admin@estore.com','001 852741963','2012-12-12','SYSTEM','SYSTEM');

INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `Mobile`, `DateOfBirth`, `Author`, `Editor`) 
VALUES (uuid(), 'USER','beckham', 'QGRtaW4=', 'David Beckham','beckham@ibm.com','001 852741963','1990-03-03','SYSTEM','SYSTEM');

INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `Mobile`, `DateOfBirth`, `Author`, `Editor`) 
VALUES (uuid(), 'USER','huetran', 'QGRtaW4=', 'Nguyen Hue Tran','huetran@marui.com','001 852741963','1990-04-04','SYSTEM','SYSTEM');

INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `Mobile`, `DateOfBirth`, `Author`, `Editor`) 
VALUES (uuid(), 'USER','avo4', 'QGRtaW4=', 'Anh Vo','avo4@node.org','001 852741963','1984-12-22','SYSTEM','SYSTEM');

INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `Mobile`, `DateOfBirth`, `Author`, `Editor`) 
VALUES (uuid(), 'USER','anhvod', 'QGRtaW4=', 'Vo Duy Anh','anhvod@sharepoint.org','084 852741963','1984-12-24','SYSTEM','SYSTEM');

INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `Mobile`, `DateOfBirth`, `Author`, `Editor`) 
VALUES (uuid(), 'USER','romney', 'QGRtaW4=', 'Mitt Romney','romney@president.com','001 852741963','1980-06-06','SYSTEM','SYSTEM');

INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `Mobile`, `DateOfBirth`, `Author`, `Editor`) 
VALUES (uuid(), 'USER','obama', 'QGRtaW4=', 'obama','obama@president.com','001 852741963','1980-06-06','SYSTEM','SYSTEM');

INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `Mobile`, `DateOfBirth`, `Author`, `Editor`) 
VALUES (uuid(), 'USER','thanglt', 'QGRtaW4=', 'Le Tat Thang','thanglt@fpt.com.vn','001 852741963','1980-08-08','SYSTEM','SYSTEM');

INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `Mobile`, `DateOfBirth`, `Author`, `Editor`) 
VALUES (uuid(), 'USER','leung', 'QGRtaW4=', 'Leung Benchmark','leung@samsung.com','001 852741963','1980-02-02','SYSTEM','SYSTEM');

INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `Mobile`, `DateOfBirth`, `Author`, `Editor`) 
VALUES (uuid(), 'USER','supervisor', 'QGRtaW4=', 'Super Visor','super@super.org','003 852741963','1980-02-02','SYSTEM','SYSTEM');

INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `Mobile`, `DateOfBirth`, `Author`, `Editor`) 
VALUES (uuid(), 'USER','messi', 'QGRtaW4=', 'Lionel Messi','messi@barca.com','001 852741963','1980-02-02','SYSTEM','SYSTEM');

INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `Mobile`, `DateOfBirth`, `Author`, `Editor`) 
VALUES (uuid(), 'USER','rice', 'QGRtaW4=', 'Coldoleeza Rice','rice@secretary.com','001 852741963','1980-02-02','SYSTEM','SYSTEM');

INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `Mobile`, `DateOfBirth`, `Author`, `Editor`) 
VALUES (uuid(), 'USER','ronaldo', 'QGRtaW4=', 'Cris Ronaldo','ronaldo@mu.com','001 852741963','1980-02-02','SYSTEM','SYSTEM');


--
-- Table structure for table `Group`
--
DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group` (
  `GroupId` INT(11) NOT NULL AUTO_INCREMENT,
  `GroupKey` VARCHAR(50) DEFAULT NULL,
  `GroupName` VARCHAR(50) DEFAULT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,  
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`GroupId`),
  UNIQUE KEY `GroupId_UNIQUE` (`GroupId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


--
-- Sample data for table `Group`
--
INSERT INTO `Group` (`GroupKey`,`GroupName`,`Description`,`Author`,`Editor`) 
VALUES (uuid(),'Administrators', 'Administrators Group','SYSTEM','SYSTEM');

INSERT INTO `Group` (`GroupKey`,`GroupName`,`Description`,`Author`,`Editor`) 
VALUES (uuid(),'Sales', 'Sales Group','SYSTEM','SYSTEM');

INSERT INTO `Group` (`GroupKey`,`GroupName`,`Description`,`Author`,`Editor`) 
VALUES (uuid(),'Accountances','Accountances Group','SYSTEM','SYSTEM');

INSERT INTO `Group` (`GroupKey`,`GroupName`,`Description`,`Author`,`Editor`) 
VALUES (uuid(),'Human Resources', 'Human Resources Group','SYSTEM','SYSTEM');

INSERT INTO `Group` (`GroupKey`,`GroupName`,`Description`,`Author`,`Editor`)
VALUES (uuid(),'Logictics', 'Logictics Group','SYSTEM','SYSTEM');


--
-- Table structure for table `UserGroup`
--
DROP TABLE IF EXISTS `UserGroup`;
CREATE TABLE `UserGroup` (
  `UserGroupId` INT(11) NOT NULL AUTO_INCREMENT,
  `UserId` INT(11) NOT NULL,  
  `GroupId` INT(11) NOT NULL,
  `ModuleId` INT(11) NOT NULL,
  `IsCreate` INT(11) DEFAULT 0,
  `IsUpdate` INT(11) DEFAULT 0,
  `IsDelete` INT(11) DEFAULT 0,
  `IsDisplay` INT(11) DEFAULT 1,
  `Created` DATETIME DEFAULT NULL,
  `Updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) DEFAULT NULL,
  `Editor` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`UserGroupId`),
  UNIQUE KEY `UserGroupId_UNIQUE` (`UserGroupId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


--  GroupId = ModuleId
INSERT INTO `UserGroup` (`UserId`, `GroupId`, `ModuleId`, `Author`, `Editor`) VALUES (1,1,1,'SYSTEM','SYSTEM');
INSERT INTO `UserGroup` (`UserId`, `GroupId`, `ModuleId`, `Author`, `Editor`) VALUES (1,2,2,'SYSTEM','SYSTEM');
INSERT INTO `UserGroup` (`UserId`, `GroupId`, `ModuleId`, `Author`, `Editor`) VALUES (1,3,3,'SYSTEM','SYSTEM');
INSERT INTO `UserGroup` (`UserId`, `GroupId`, `ModuleId`, `Author`, `Editor`) VALUES (1,4,4,'SYSTEM','SYSTEM');
INSERT INTO `UserGroup` (`UserId`, `GroupId`, `ModuleId`, `Author`, `Editor`) VALUES (1,5,5,'SYSTEM','SYSTEM');
INSERT INTO `UserGroup` (`UserId`, `GroupId`, `ModuleId`, `Author`, `Editor`) VALUES (2,1,1,'SYSTEM','SYSTEM');
INSERT INTO `UserGroup` (`UserId`, `GroupId`, `ModuleId`, `Author`, `Editor`) VALUES (2,2,2,'SYSTEM','SYSTEM');
INSERT INTO `UserGroup` (`UserId`, `GroupId`, `ModuleId`, `Author`, `Editor`) VALUES (2,3,3,'SYSTEM','SYSTEM');
INSERT INTO `UserGroup` (`UserId`, `GroupId`, `ModuleId`, `Author`, `Editor`) VALUES (2,4,4,'SYSTEM','SYSTEM');
INSERT INTO `UserGroup` (`UserId`, `GroupId`, `ModuleId`, `Author`, `Editor`) VALUES (2,5,5,'SYSTEM','SYSTEM');


--
-- Table structure for table `UserGroupSecurity`
-- this table may be NEED or NO NEED
--