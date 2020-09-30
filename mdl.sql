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

-- Volcando datos para la tabla systimec_hector.Calendario: 13 rows
/*!40000 ALTER TABLE `Calendario` DISABLE KEYS */;
INSERT INTO `Calendario` (`idCalendario`, `ddmmaa`, `Hora`) VALUES
	(1, '2005-02-20', '13:45:00'),
	(2, '2007-03-20', '14:00:00'),
	(3, '2002-05-20', '17:00:00'),
	(4, '2001-06-21', '18:00:00'),
	(5, '2002-07-21', '09:00:00'),
	(6, '2001-08-21', '10:00:00'),
	(7, '2001-09-21', '12:00:00'),
	(8, '2002-10-21', '14:00:00'),
	(9, '2005-10-21', '13:00:00'),
	(10, '2007-11-21', '09:00:00'),
	(11, '2008-12-21', '10:00:00'),
	(12, '2009-12-21', '15:00:00'),
	(13, '2015-12-21', '17:00:00');
/*!40000 ALTER TABLE `Calendario` ENABLE KEYS */;

-- Volcando datos para la tabla systimec_hector.Camion: 7 rows
/*!40000 ALTER TABLE `Camion` DISABLE KEYS */;
INSERT INTO `Camion` (`idCamion`, `IdChofer`, `IdPeoneta`) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 1, 2),
	(4, 3, 2),
	(5, 3, 1),
	(6, 4, 3),
	(7, 1, 4);
/*!40000 ALTER TABLE `Camion` ENABLE KEYS */;

-- Volcando datos para la tabla systimec_hector.Chofer: 4 rows
/*!40000 ALTER TABLE `Chofer` DISABLE KEYS */;
INSERT INTO `Chofer` (`idChofer`, `Nombre`, `Apellido`) VALUES
	(1, 'Ruben', 'Rrrrr'),
	(2, 'Pedro', 'Ppppp'),
	(3, 'Francisco', 'Frrrrr'),
	(4, 'Jaime', 'Jjjjjjj');
/*!40000 ALTER TABLE `Chofer` ENABLE KEYS */;

-- Volcando datos para la tabla systimec_hector.Cliente: 4 rows
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` (`idCliente`, `Nombre`, `Apellido`, `Direccion`, `Telefono`, `Email`) VALUES
	(1, 'Jessica', 'Jjjjjj', 'Cadiz', '555555', 'jessica@gmail.com'),
	(2, 'Matias', 'Mmmmm', 'Cadiz', '666666', 'matias@gmail.com'),
	(3, 'Maite', 'Mmmmm', 'Cadiz', '777777', 'maite@gmail.com'),
	(4, 'Héctor', 'Hhhhhh', 'Cadiz', '888888', 'hector@gmail.com');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;

-- Volcando datos para la tabla systimec_hector.Peoneta: 4 rows
/*!40000 ALTER TABLE `Peoneta` DISABLE KEYS */;
INSERT INTO `Peoneta` (`idPeoneta`, `Nombre`, `Apellido`) VALUES
	(1, 'Juan', 'Jjjjjjj'),
	(2, 'Camilo', 'Cccccc'),
	(3, 'Ramon', 'Rrrrrr'),
	(4, 'Marcelo', 'Mmmmm');
/*!40000 ALTER TABLE `Peoneta` ENABLE KEYS */;

-- Volcando datos para la tabla systimec_hector.Ruta: 7 rows
/*!40000 ALTER TABLE `Ruta` DISABLE KEYS */;
INSERT INTO `Ruta` (`idRuta`, `IdCliente`, `IdSucursal`, `IdCamion`, `IdCalendario`, `Direccion`, `Ciudad`, `Descripcion_Retiro`, `Peso`) VALUES
	(1, 2, 1, 2, 2, 'Las Condes 1200', 'Santiago', 'Muebles madera', 100),
	(2, 1, 1, 1, 1, 'Lo Barnechea 200', 'Santiago', 'Fierros', 125),
	(3, 1, 2, 2, 2, 'Puente Alto 2345', 'Santiago', 'Ventanas aluminio', 50),
	(4, 3, 4, 5, 3, 'Viña del Mar 1200', 'Valparaiso', 'Botellas vidrio', 75),
	(5, 2, 3, 4, 4, 'Las Parcelas 12000', 'Santiago', 'Latas de bebidas', 15),
	(6, 4, 2, 3, 2, 'Cerrillos 4560', 'Santiago', 'Carton corrugado', 50),
	(7, 2, 3, 5, 4, 'Los Tasmanes 4145', 'Santiago', 'Embases Plasticos', 10);
/*!40000 ALTER TABLE `Ruta` ENABLE KEYS */;

-- Volcando datos para la tabla systimec_hector.Sucursal: 5 rows
/*!40000 ALTER TABLE `Sucursal` DISABLE KEYS */;
INSERT INTO `Sucursal` (`idSucursal`, `Nombre`, `Direccion`, `Ciudad`, `Telefono`, `Email`) VALUES
	(1, 'Quilic', 'Quilicura 4454', 'Santiago', '55555', 'quilic@gmail.com'),
	(2, 'Maipu', 'Las Acacias 664', 'Santiago', '22222', 'maipu@gmail.com'),
	(3, 'Cerri', 'Cerrillos 345', 'Santiago', '33333', 'cerri@gmail.com'),
	(4, 'Algarr', 'Maitenes 342', 'Algarrobo', '5555522', 'algarr@gmail.com'),
	(5, 'Gorb', 'Rogelio 223', 'Temuco', '252445', 'gorb@gmail.com');
/*!40000 ALTER TABLE `Sucursal` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
