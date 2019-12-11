SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `SejMdhSoTa` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `SejMdhSoTa`;

DROP TABLE IF EXISTS `Abstract`;
CREATE TABLE `Abstract` (
  `PhotoID` int(11) NOT NULL,
  `Comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `Customer`;
CREATE TABLE `Customer` (
  `LoginName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BillingAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Str1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Str2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `City` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `State` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `Influences`;
CREATE TABLE `Influences` (
  `EPName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EPBDate` date NOT NULL,
  `RPName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RPBDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `Landscape`;
CREATE TABLE `Landscape` (
  `PhotoID` int(11) NOT NULL,
  `Place` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'UNKNOWN',
  `Country` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'UNKNOWN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `Location`;
CREATE TABLE `Location` (
  `Place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `Model`;
CREATE TABLE `Model` (
  `MName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MBDate` datetime NOT NULL,
  `MBio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MSex` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `Models`;
CREATE TABLE `Models` (
  `PhotoID` int(11) NOT NULL,
  `MName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MBDate` datetime NOT NULL,
  `Agency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `Photo`;
CREATE TABLE `Photo` (
  `PhotoID` int(11) NOT NULL,
  `Speed` int(11) DEFAULT NULL,
  `Film` int(11) DEFAULT NULL,
  `FStop` float(2,1) DEFAULT NULL,
  `Color` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Resolution` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Price` float(6,2) DEFAULT '0.00',
  `Date` datetime DEFAULT NULL,
  `TransID` int(11) DEFAULT NULL,
  `PName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PBDate` date DEFAULT NULL,
  `Sold` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `Photographer`;
CREATE TABLE `Photographer` (
  `PName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PBDate` date NOT NULL,
  `PBio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PNationality` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `Portrait`;
CREATE TABLE `Portrait` (
  `PhotoID` int(11) NOT NULL,
  `Head` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `Transaction`;
CREATE TABLE `Transaction` (
  `TransID` int(11) NOT NULL,
  `TDate` datetime DEFAULT NULL,
  `CardNo` int(11) DEFAULT NULL,
  `CardType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CardExpDate` date DEFAULT NULL,
  `TotalAmount` float(6,2) DEFAULT NULL,
  `LoginName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


ALTER TABLE `Abstract`
  ADD PRIMARY KEY (`PhotoID`);

ALTER TABLE `Customer`
  ADD PRIMARY KEY (`LoginName`);

ALTER TABLE `Influences`
  ADD PRIMARY KEY (`EPName`,`EPBDate`,`RPName`,`RPBDate`),
  ADD KEY `RPName` (`RPName`,`RPBDate`);

ALTER TABLE `Landscape`
  ADD PRIMARY KEY (`PhotoID`),
  ADD KEY `Place` (`Place`,`Country`);

ALTER TABLE `Location`
  ADD PRIMARY KEY (`Place`,`Country`);

ALTER TABLE `Model`
  ADD PRIMARY KEY (`MName`,`MBDate`);

ALTER TABLE `Models`
  ADD PRIMARY KEY (`PhotoID`,`MName`,`MBDate`),
  ADD KEY `MName` (`MName`,`MBDate`);

ALTER TABLE `Photo`
  ADD PRIMARY KEY (`PhotoID`),
  ADD KEY `TransID` (`TransID`),
  ADD KEY `PName` (`PName`,`PBDate`);

ALTER TABLE `Photographer`
  ADD PRIMARY KEY (`PName`,`PBDate`);

ALTER TABLE `Portrait`
  ADD PRIMARY KEY (`PhotoID`);

ALTER TABLE `Transaction`
  ADD PRIMARY KEY (`TransID`),
  ADD KEY `LoginName` (`LoginName`);


ALTER TABLE `Transaction`
  MODIFY `TransID` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `Abstract`
  ADD CONSTRAINT `Abstract_ibfk_1` FOREIGN KEY (`PhotoID`) REFERENCES `Photo` (`photoid`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Influences`
  ADD CONSTRAINT `Influences_ibfk_1` FOREIGN KEY (`EPName`,`EPBDate`) REFERENCES `Photographer` (`pname`, `pbdate`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Influences_ibfk_2` FOREIGN KEY (`RPName`,`RPBDate`) REFERENCES `Photographer` (`pname`, `pbdate`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Landscape`
  ADD CONSTRAINT `Landscape_ibfk_1` FOREIGN KEY (`PhotoID`) REFERENCES `Photo` (`photoid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Landscape_ibfk_2` FOREIGN KEY (`Place`,`Country`) REFERENCES `Location` (`place`, `country`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `Models`
  ADD CONSTRAINT `Models_ibfk_1` FOREIGN KEY (`PhotoID`) REFERENCES `Portrait` (`photoid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Models_ibfk_2` FOREIGN KEY (`MName`,`MBDate`) REFERENCES `Model` (`mname`, `mbdate`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Photo`
  ADD CONSTRAINT `Photo_ibfk_1` FOREIGN KEY (`TransID`) REFERENCES `Transaction` (`transid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Photo_ibfk_2` FOREIGN KEY (`PName`,`PBDate`) REFERENCES `Photographer` (`pname`, `pbdate`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `Portrait`
  ADD CONSTRAINT `Portrait_ibfk_1` FOREIGN KEY (`PhotoID`) REFERENCES `Photo` (`photoid`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Transaction`
  ADD CONSTRAINT `Transaction_ibfk_1` FOREIGN KEY (`LoginName`) REFERENCES `Customer` (`loginname`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
