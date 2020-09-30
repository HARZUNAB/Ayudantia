-- --------------------------------------------------------
-- Host:                         131.72.236.108
-- Versión del servidor:         5.7.31 - MySQL Community Server (GPL)
-- SO del servidor:              Linux
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para systimec_hector
CREATE DATABASE IF NOT EXISTS `systimec_hector` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `systimec_hector`;

-- Volcando estructura para tabla systimec_hector.Calendario
CREATE TABLE IF NOT EXISTS `Calendario` (
  `idCalendario` int(11) NOT NULL,
  `ddmmaa` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  PRIMARY KEY (`idCalendario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla systimec_hector.Camion
CREATE TABLE IF NOT EXISTS `Camion` (
  `idCamion` int(11) NOT NULL,
  `IdChofer` int(11) NOT NULL,
  `IdPeoneta` int(11) NOT NULL,
  PRIMARY KEY (`idCamion`,`IdChofer`,`IdPeoneta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla systimec_hector.Chofer
CREATE TABLE IF NOT EXISTS `Chofer` (
  `idChofer` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idChofer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla systimec_hector.Cliente
CREATE TABLE IF NOT EXISTS `Cliente` (
  `idCliente` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` varchar(9) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla systimec_hector.Peoneta
CREATE TABLE IF NOT EXISTS `Peoneta` (
  `idPeoneta` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPeoneta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla systimec_hector.Ruta
CREATE TABLE IF NOT EXISTS `Ruta` (
  `idRuta` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `IdSucursal` int(11) NOT NULL,
  `IdCamion` int(11) NOT NULL,
  `IdCalendario` int(11) NOT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `Descripcion_Retiro` varchar(45) DEFAULT NULL,
  `Peso` int(11) DEFAULT NULL,
  PRIMARY KEY (`idRuta`,`IdCliente`,`IdSucursal`,`IdCamion`,`IdCalendario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla systimec_hector.Sucursal
CREATE TABLE IF NOT EXISTS `Sucursal` (
  `idSucursal` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `Telefono` varchar(9) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSucursal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
