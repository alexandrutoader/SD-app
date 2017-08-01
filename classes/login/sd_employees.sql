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

-- Dumping structure for table test.angajati
CREATE TABLE IF NOT EXISTS `angajati` (
  `Id` tinyint(100) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `id_departament` char(150) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Index 2` (`name`,`surname`),
  CONSTRAINT `FK_angajati_users` FOREIGN KEY (`name`, `surname`) REFERENCES `users` (`name`, `surname`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_angajati_users_2` FOREIGN KEY (`Id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table test.angajati: ~1 rows (approximately)
/*!40000 ALTER TABLE `angajati` DISABLE KEYS */;
INSERT IGNORE INTO `angajati` (`Id`, `name`, `surname`, `id_departament`) VALUES
	(1, 'Daniel', 'Ionescu', '2');
/*!40000 ALTER TABLE `angajati` ENABLE KEYS */;


-- Dumping structure for table test.concediu
CREATE TABLE IF NOT EXISTS `concediu` (
  `id_angajat` tinyint(60) unsigned NOT NULL AUTO_INCREMENT,
  `Zile_concediu_ramase` tinyint(60) NOT NULL,
  `Concediu_medical` tinyint(60) NOT NULL,
  `Status` bit(1) NOT NULL,
  KEY `FK_concediu_angajati` (`id_angajat`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table test.concediu: ~88 rows (approximately)
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
  `nume` char(60) NOT NULL,
  `numar_angajati` tinyint(150) NOT NULL,
  PRIMARY KEY (`id_departament`),
  UNIQUE KEY `Index 2` (`nume`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table test.departament: ~7 rows (approximately)
/*!40000 ALTER TABLE `departament` DISABLE KEYS */;
INSERT IGNORE INTO `departament` (`id_departament`, `nume`, `numar_angajati`) VALUES
	(1, 'Call Center', 100),
	(2, 'Documentare', 70),
	(3, 'HR', 55),
	(4, 'Marketing', 40),
	(5, 'QC', 9),
	(6, 'OM', 35),
	(7, 'SCM', 32);
/*!40000 ALTER TABLE `departament` ENABLE KEYS */;


-- Dumping structure for table test.echipa
CREATE TABLE IF NOT EXISTS `echipa` (
  `id_echipa` tinyint(60) unsigned NOT NULL AUTO_INCREMENT,
  `echipa` char(60) NOT NULL,
  `id_departament` tinyint(60) unsigned NOT NULL,
  `numar_angajati` tinyint(60) DEFAULT NULL,
  PRIMARY KEY (`id_echipa`),
  UNIQUE KEY `Index 2` (`echipa`),
  KEY `FK_echipa_departament` (`id_departament`),
  KEY `Index 4` (`numar_angajati`),
  CONSTRAINT `FK_echipa_departament` FOREIGN KEY (`id_departament`) REFERENCES `departament` (`id_departament`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table test.echipa: ~8 rows (approximately)
/*!40000 ALTER TABLE `echipa` DISABLE KEYS */;
INSERT IGNORE INTO `echipa` (`id_echipa`, `echipa`, `id_departament`, `numar_angajati`) VALUES
	(1, 'OM2', 6, NULL),
	(2, 'Team Documentare', 2, NULL),
	(3, 'HR', 3, NULL),
	(4, 'OM1', 6, NULL),
	(5, 'Team Marketing', 4, NULL),
	(6, 'SCM', 7, NULL),
	(7, 'Team Call Center', 1, NULL),
	(8, 'QC', 5, NULL);
/*!40000 ALTER TABLE `echipa` ENABLE KEYS */;


-- Dumping structure for table test.manager
CREATE TABLE IF NOT EXISTS `manager` (
  `id_manager` tinyint(60) unsigned NOT NULL AUTO_INCREMENT,
  `id_departament` tinyint(60) unsigned NOT NULL,
  `rang` char(60) NOT NULL,
  `numar_subalterni` tinyint(60) NOT NULL,
  PRIMARY KEY (`id_manager`),
  UNIQUE KEY `Index 2` (`rang`),
  KEY `FK_manager_departament` (`id_departament`),
  CONSTRAINT `FK_manager_departament` FOREIGN KEY (`id_departament`) REFERENCES `departament` (`id_departament`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table test.manager: ~7 rows (approximately)
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT IGNORE INTO `manager` (`id_manager`, `id_departament`, `rang`, `numar_subalterni`) VALUES
	(1, 1, 'Team Leader Call Center', 2),
	(2, 6, 'Manager QA', 3),
	(3, 1, 'Manager Call Center', 4),
	(4, 2, 'Team Leader documentare', 5),
	(5, 7, 'Team Leader SSM', 8),
	(6, 6, 'Team Leader QA', 10),
	(7, 6, 'Team Leader QC', 10);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;


-- Dumping structure for table test.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` tinyint(100) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `surname` varchar(150) NOT NULL,
  `echipa` enum('OM2','Team Doc','HR','OM1','Team Marketing','SCM','Team CC','QC') NOT NULL,
  `user` char(150) NOT NULL,
  `email` char(150) DEFAULT NULL,
  `password` char(30) NOT NULL,
  `user_type` enum('ADMIN','USER') NOT NULL DEFAULT 'USER',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index 2` (`email`),
  KEY `FK_users_angajati` (`name`,`surname`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table test.users: ~19 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`id`, `name`, `surname`, `echipa`, `user`, `email`, `password`, `user_type`, `created`) VALUES
	(1, 'Alexandru', 'Dumitrescu', 'OM2', 'alexdumi', 'alexdumi@emg.ro', 'alexdumi123', 'USER', '2017-08-01 11:27:26'),
	(2, 'Daniel', 'Ionescu', 'Team Doc', 'danionescu', 'danionescu@emg.ro', 'test235', 'USER', '2017-08-01 11:27:31'),
	(3, 'Cristian', 'Preda', 'HR', 'cristipreda', NULL, 'dfhdfh', 'USER', '2017-08-01 11:27:33'),
	(4, 'David', 'Dumitru', 'OM1', 'daviddumitru', NULL, 'gfjsdza', 'USER', '2017-08-01 11:27:35'),
	(5, 'Alex', 'Matei', 'Team Marketing', 'alexmatei', 'alexmatei@emg.ro', 'jnlnas123', 'USER', '2017-08-01 11:27:39'),
	(6, 'Iulian', 'Herea', 'SCM', 'iulianherea', NULL, 'nounuinew131', 'USER', '2017-08-01 11:27:43'),
	(7, 'Maria', 'Ioana', 'Team CC', 'mariaioana', NULL, 'gjfgnfg546t', 'USER', '2017-08-01 11:27:47'),
	(8, 'Cristina', 'Popescu', 'QC', 'cristinapopescu', NULL, 'bnuqwd436', 'USER', '2017-08-01 11:27:52'),
	(9, 'dfhdfh', 'dfh', 'OM2', '', NULL, '', 'USER', '2017-08-01 11:32:21'),
	(10, 'alex', 'dan', 'OM2', 'dan', NULL, 'adsgsdfhdfs3453', 'USER', '2017-08-01 12:30:26'),
	(11, 'cristi', 'mihai', 'Team Doc', 'cristi123456', 'cristimihai@emag.ro', 'cristi12315', 'USER', '2017-08-01 12:33:12'),
	(12, 'dfhdfh', 'dfhdfh', '', 'alex', 'alex@hfdfhj', 'dhsdhs35', 'USER', '2017-08-01 12:33:53'),
	(15, 'mihai', 'ion', 'HR', 'mihai', 'ion@dgsdgh.ro', 'ionasgasg', 'USER', '2017-08-01 12:39:38'),
	(16, 'dan', 'mihai', 'Team Doc', 'dan', 'ion@emg.ro', 'miifdhdfh', 'USER', '2017-08-01 12:41:01'),
	(17, 'mihai', 'ionut', 'OM1', 'mihai', 'mihai@emag.ro', '12312512ggdfg', 'USER', '2017-08-01 12:45:41'),
	(18, 'fhjdfjdfj', 'hjlghjdfbdb', 'Team CC', 'marian', 'dfbdfbdfb@gbfbfb', 'fhdfgndgfb', 'USER', '2017-08-01 12:46:16'),
	(19, 'mircea', 'cristian', '', 'dan', 'cristian123455@emg.ro', 'dhsdhs35asf', 'USER', '2017-08-01 13:02:30'),
	(20, 'asfsf', 'afasfs', '', 'alex', 'asfasf@dsgdg', 'dhsdhs35', 'USER', '2017-08-01 13:08:18'),
	(21, '', '', 'OM2', 'alex', NULL, 'dhsdhs35', 'USER', '2017-08-01 14:47:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
