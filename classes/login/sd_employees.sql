-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;


-- Dumping structure for table test.angajati
CREATE TABLE IF NOT EXISTS `angajati` (
  `Id` tinyint(100) unsigned NOT NULL AUTO_INCREMENT,
  `nume` char(150) DEFAULT NULL,
  `prenume` char(150) DEFAULT NULL,
  `id_departament` char(150) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table test.angajati: ~4 rows (approximately)
/*!40000 ALTER TABLE `angajati` DISABLE KEYS */;
INSERT IGNORE INTO `angajati` (`Id`, `nume`, `prenume`, `id_departament`) VALUES
	(1, 'Andrei', 'Ionescu', '2'),
	(2, 'Cristian', 'Avram', '4'),
	(3, 'Ionita', 'Marian', '1'),
	(4, 'Florescu', 'Adrian', '5');
/*!40000 ALTER TABLE `angajati` ENABLE KEYS */;


-- Dumping structure for table test.concediu
CREATE TABLE IF NOT EXISTS `concediu` (
  `id_angajat` tinyint(60) unsigned NOT NULL AUTO_INCREMENT,
  `Zile_concediu_ramase` tinyint(60) NOT NULL,
  `Concediu_medical` tinyint(60) NOT NULL,
  `Status` bit(1) NOT NULL,
  KEY `FK_concediu_angajati` (`id_angajat`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table test.concediu: ~41 rows (approximately)
/*!40000 ALTER TABLE `concediu` DISABLE KEYS */;
INSERT IGNORE INTO `concediu` (`id_angajat`, `Zile_concediu_ramase`, `Concediu_medical`, `Status`) VALUES
	(1, 20, 5, b'1'),
	(2, 16, 0, b'1'),
	(3, 8, 1, b'1'),
	(4, 10, 0, b'1'),
	(5, 12, 7, b'1'),
	(6, 15, 0, b'1'),
	(7, 17, 0, b'1'),
	(8, 5, 2, b'1'),
	(9, 19, 4, b'1'),
	(10, 4, 0, b'1'),
	(11, 7, 0, b'1'),
	(1, 20, 5, b'1'),
	(2, 16, 0, b'1'),
	(3, 8, 1, b'1'),
	(4, 10, 0, b'1'),
	(5, 12, 7, b'1'),
	(6, 15, 0, b'1'),
	(7, 17, 0, b'1'),
	(8, 5, 2, b'1'),
	(9, 19, 4, b'1'),
	(10, 4, 0, b'1'),
	(11, 7, 0, b'1'),
	(1, 20, 5, b'1'),
	(2, 16, 0, b'1'),
	(3, 8, 1, b'1'),
	(4, 10, 0, b'1'),
	(5, 12, 7, b'1'),
	(6, 15, 0, b'1'),
	(7, 17, 0, b'1'),
	(8, 5, 2, b'1'),
	(9, 19, 4, b'1'),
	(10, 4, 0, b'1'),
	(11, 7, 0, b'1'),
	(1, 20, 5, b'1'),
	(2, 16, 0, b'1'),
	(3, 8, 1, b'1'),
	(4, 10, 0, b'1'),
	(5, 12, 7, b'1'),
	(6, 15, 0, b'1'),
	(7, 17, 0, b'1'),
	(8, 5, 2, b'1'),
	(9, 19, 4, b'1'),
	(10, 4, 0, b'1'),
	(11, 7, 0, b'1');
/*!40000 ALTER TABLE `concediu` ENABLE KEYS */;


-- Dumping structure for table test.departament
CREATE TABLE IF NOT EXISTS `departament` (
  `id_departament` tinyint(40) unsigned NOT NULL AUTO_INCREMENT,
  `Nume` char(60) NOT NULL,
  PRIMARY KEY (`id_departament`),
  UNIQUE KEY `Index 2` (`Nume`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table test.departament: ~7 rows (approximately)
/*!40000 ALTER TABLE `departament` DISABLE KEYS */;
INSERT IGNORE INTO `departament` (`id_departament`, `Nume`) VALUES
	(1, 'Call Center'),
	(2, 'Documentare'),
	(4, 'Marketing'),
	(5, 'QC'),
	(6, 'Quality Assurance'),
	(3, 'Resurse Umane'),
	(7, 'SSM');
/*!40000 ALTER TABLE `departament` ENABLE KEYS */;


-- Dumping structure for table test.echipa
CREATE TABLE IF NOT EXISTS `echipa` (
  `id_echipa` tinyint(60) unsigned NOT NULL AUTO_INCREMENT,
  `Echipa` char(60) NOT NULL,
  `id_departament` tinyint(60) unsigned NOT NULL,
  `Numar_angajati` tinyint(60) unsigned NOT NULL,
  PRIMARY KEY (`id_echipa`),
  UNIQUE KEY `Index 2` (`Echipa`),
  KEY `FK_echipa_departament` (`id_departament`),
  CONSTRAINT `FK_echipa_departament` FOREIGN KEY (`id_departament`) REFERENCES `departament` (`id_departament`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table test.echipa: ~7 rows (approximately)
/*!40000 ALTER TABLE `echipa` DISABLE KEYS */;
INSERT IGNORE INTO `echipa` (`id_echipa`, `Echipa`, `id_departament`, `Numar_angajati`) VALUES
	(1, 'OM2', 6, 3),
	(2, 'Team Documentare', 2, 4),
	(3, 'HR', 3, 10),
	(4, 'OM1', 6, 8),
	(5, 'Team Marketing', 4, 2),
	(6, 'SSM', 7, 5),
	(7, 'Team eMAG Call Center', 1, 7);
/*!40000 ALTER TABLE `echipa` ENABLE KEYS */;


-- Dumping structure for table test.manager
CREATE TABLE IF NOT EXISTS `manager` (
  `id_manager` tinyint(60) unsigned NOT NULL AUTO_INCREMENT,
  `id_departament` tinyint(60) unsigned NOT NULL,
  `Rang` char(60) NOT NULL,
  `Numar_subalterni` tinyint(60) NOT NULL,
  PRIMARY KEY (`id_manager`),
  UNIQUE KEY `Index 2` (`Rang`),
  KEY `FK_manager_departament` (`id_departament`),
  CONSTRAINT `FK_manager_departament` FOREIGN KEY (`id_departament`) REFERENCES `departament` (`id_departament`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table test.manager: ~7 rows (approximately)
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT IGNORE INTO `manager` (`id_manager`, `id_departament`, `Rang`, `Numar_subalterni`) VALUES
	(1, 1, 'Team Leader Call Center', 2),
	(2, 6, 'Manager QA', 3),
	(3, 1, 'Manager Call Center', 4),
	(4, 2, 'Team Leader documentare', 5),
	(5, 7, 'Team Leader SSM', 8),
	(6, 6, 'Team Leader QA', 10),
	(7, 6, 'Team Leader QC', 10);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
