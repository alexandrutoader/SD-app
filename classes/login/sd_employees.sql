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
  `id` tinyint(100) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `nume_echipa` enum('OM2','Team Doc','HR','OM1','Team Marketing','SCM','Team CC','QC') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Index 2` (`name`,`surname`,`id`),
  KEY `Index 3` (`nume_echipa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table test.angajati: ~2 rows (approximately)
/*!40000 ALTER TABLE `angajati` DISABLE KEYS */;
INSERT IGNORE INTO `angajati` (`id`, `name`, `surname`, `nume_echipa`) VALUES
	(1, 'Andrei', 'Ionescu', 'SCM'),
	(2, 'Marian', 'Dumitru', 'OM2'),
	(3, 'Ionut', 'Dumitru', 'OM2');
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
	(5, 7, 'Team Leader SCM', 8),
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
  `recovery` char(30) NOT NULL,
  `user_type` enum('ADMIN','USER') NOT NULL DEFAULT 'USER',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index 2` (`email`),
  KEY `FK_users_angajati` (`name`,`surname`),
  KEY `Index 4` (`echipa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table test.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`id`, `name`, `surname`, `echipa`, `user`, `email`, `password`, `recovery`, `user_type`, `created`) VALUES
	(1, 'Andrei', 'Ionescu', 'SCM', 'ionescu123', 'ionescu@emg.ro', 'fdasdvsdv2234', '', 'USER', '2017-08-02 12:30:57'),
	(2, 'Marian', 'Dumitru', 'OM2', 'marian123', 'mariandumitru@emg.ro', '', '', 'USER', '2017-08-02 15:53:45'),
	(3, 'Ionut', 'Dumitru', 'OM2', 'ionut', 'ionut@emg.ro', '', 'acasa1234', 'USER', '2017-08-02 16:54:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
