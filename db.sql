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

-- Dumping database structure for sd_app
CREATE DATABASE IF NOT EXISTS `sd_app` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sd_app`;


-- Dumping structure for table sd_app.angajati
CREATE TABLE IF NOT EXISTS `angajati` (
  `id` tinyint(100) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `nume_echipa` enum('OM2','Team Doc','HR','OM1','Team Marketing','SCM','Team CC','QC') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Index 3` (`nume_echipa`),
  KEY `Index 2` (`name`,`surname`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table sd_app.angajati: ~18 rows (approximately)
/*!40000 ALTER TABLE `angajati` DISABLE KEYS */;
INSERT IGNORE INTO `angajati` (`id`, `name`, `surname`, `nume_echipa`) VALUES
	(1, 'Ciprian', 'Damian', 'OM2'),
	(2, 'Dan', 'Alibec', 'OM2'),
	(3, 'Ionut', 'Cristescu', 'OM1'),
	(4, 'Ana', 'Costea', 'HR'),
	(5, 'Daniel', 'Dumitru', 'SCM'),
	(6, 'Adrian', 'Ionescu', 'OM2'),
	(7, 'Maria', 'Ionescu', 'OM2'),
	(8, 'Alex', 'Florescu', 'Team Marketing'),
	(9, 'Ciprian', 'Teodor', 'Team CC'),
	(10, 'Ioana', 'Dobre', 'QC'),
	(11, 'Dorel', 'mihai', 'HR'),
	(12, 'Dan', 'Stoica', 'OM2'),
	(13, 'Dorel', 'Dobrescu', 'SCM'),
	(14, 'Ciprian', 'Tudose', 'SCM'),
	(15, 'Bogdan', 'Tudorel', 'QC'),
	(16, 'Bogdan', 'Tud', ''),
	(17, 'Dorel', 'Dobrescu', ''),
	(18, 'Dorel', 'Dobrescu', 'OM2');
/*!40000 ALTER TABLE `angajati` ENABLE KEYS */;


-- Dumping structure for table sd_app.departament
CREATE TABLE IF NOT EXISTS `departament` (
  `id_departament` tinyint(40) unsigned NOT NULL AUTO_INCREMENT,
  `nume` char(60) NOT NULL,
  `numar_angajati` tinyint(150) NOT NULL,
  PRIMARY KEY (`id_departament`),
  UNIQUE KEY `Index 2` (`nume`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table sd_app.departament: ~7 rows (approximately)
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


-- Dumping structure for table sd_app.echipa
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

-- Dumping data for table sd_app.echipa: ~8 rows (approximately)
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


-- Dumping structure for table sd_app.manager
CREATE TABLE IF NOT EXISTS `manager` (
  `id_manager` tinyint(60) unsigned NOT NULL AUTO_INCREMENT,
  `id_departament` tinyint(60) unsigned NOT NULL,
  `rang` char(60) NOT NULL,
  `nume_manager` char(60) NOT NULL,
  `numar_subalterni` tinyint(60) NOT NULL,
  PRIMARY KEY (`id_manager`),
  UNIQUE KEY `Index 2` (`rang`),
  KEY `FK_manager_departament` (`id_departament`,`nume_manager`),
  CONSTRAINT `FK_manager_departament` FOREIGN KEY (`id_departament`) REFERENCES `departament` (`id_departament`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table sd_app.manager: ~4 rows (approximately)
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT IGNORE INTO `manager` (`id_manager`, `id_departament`, `rang`, `nume_manager`, `numar_subalterni`) VALUES
	(3, 1, 'Manager OM', 'Ciprian Iosif', 4),
	(6, 6, 'Team Leader QA', 'Dumitru Andreescu', 10),
	(7, 6, 'Team Leader QC', 'Ana Gabriela', 10),
	(11, 7, 'Team Leader SCM', 'Andrei Dobre', 10);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;


-- Dumping structure for table sd_app.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` tinyint(100) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `surname` varchar(150) NOT NULL,
  `echipa` enum('OM2','Team Doc','HR','OM1','Team Marketing','SCM','Team CC','QC') NOT NULL,
  `user` char(150) NOT NULL,
  `email` char(150) DEFAULT NULL,
  `password` char(32) NOT NULL,
  `user_type` enum('ADMIN','USER') NOT NULL DEFAULT 'USER',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index 2` (`email`,`user`),
  KEY `FK_users_angajati` (`name`,`surname`),
  KEY `Index 4` (`echipa`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Dumping data for table sd_app.users: ~13 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`id`, `name`, `surname`, `echipa`, `user`, `email`, `password`, `user_type`, `created`) VALUES
	(3, 'Ionut', 'Cristescu', 'OM1', 'ionut.cristescu', 'ionut.cristescu@emag.ro', '2f7e6fcc8598ebefd291892090027042', 'USER', '2017-08-29 12:37:11'),
	(4, 'Ana', 'Costea', 'HR', 'ana.costea', 'ana.costea@emag.ro', '43177dfb9750fe9007716a35f3512325', 'USER', '2017-08-29 12:37:31'),
	(5, 'Daniel', 'Dumitru', 'SCM', 'daniel.dumitru', 'daniel.dumitru@emag.ro', '66f3c0ba74813dab8080eed1c871d26e', 'USER', '2017-08-29 12:37:48'),
	(6, 'Adrian', 'Ionescu', 'OM2', 'adrian.ionescu', 'adrian.ionescu@emag.ro', '8519ae1aeb8670a63402749d4f3683e5', 'ADMIN', '2017-08-29 17:53:24'),
	(7, 'Ciprian', 'Andrei', 'Team Doc', 'ciprian.andrei', 'ciprian.andrei@emag.ro', '66f3c0ba74813dab8080eed1c871d26e', 'USER', '2017-08-29 12:37:48'),
	(8, 'Maria', 'Ionescu', 'OM2', 'maria.ionescu', 'maria.ionescu@emag.ro', '53f8db2e4934c145e168c6c74b34fc2c', 'USER', '2017-08-30 09:30:55'),
	(9, 'Alex', 'Florescu', 'Team Marketing', 'alex.florescu', 'alex.florescu@emag.ro', 'cfd26e86648d719b8f6409f8a3b46396', 'USER', '2017-08-30 09:34:30'),
	(10, 'Ciprian', 'Teodor', 'Team CC', 'ciprian.teodor', '', '4006fdb0d5628e361883829825749474', 'USER', '2017-08-30 09:35:57'),
	(11, 'Ioana', 'Dobre', 'QC', 'ioana.dobre', 'ioana.dobre@emag.ro', 'eafe30125b40e3ef117178c8ddc9739f', 'USER', '2017-08-30 09:36:33'),
	(12, 'Dorel', 'Mihai', 'HR', 'dore.mihai', 'alex@dgsdg.ro', '7b01af214719660fb85ec69a412ebd26', 'USER', '2017-08-30 09:39:19'),
	(13, 'Dan', 'Stoica', 'OM2', 'dan.stoica', 'dan.stoica@emag.ro', 'ec1171fa6457ea2d022bc93505a1305b', 'USER', '2017-08-30 09:39:42'),
	(14, 'Dorel', 'Dobrescu', 'SCM', 'dorel.dobrescu', 'dorel.dobrescu@emag.ro', 'a1788285e331b8ec67f255c32d3efff0', 'USER', '2017-08-30 10:33:59'),
	(27, 'Ciprian', 'Tudose', 'SCM', 'ciprian.tudose', 'ciprian.tudose@emag.ro', 'e146390a2f2f38ff198bc130fe1013cf', 'USER', '2017-08-30 10:41:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
