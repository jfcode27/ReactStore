-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: videogames_app
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `videogame`
--

DROP TABLE IF EXISTS `videogame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videogame` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `imageUrl` varchar(200) DEFAULT NULL,
  `coverUrl` varchar(200) DEFAULT NULL,
  `dsction` longtext,
  `publisher` varchar(45) DEFAULT NULL,
  `dateReleased` varchar(45) DEFAULT NULL,
  `platform` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videogame`
--

LOCK TABLES `videogame` WRITE;
/*!40000 ALTER TABLE `videogame` DISABLE KEYS */;
INSERT INTO `videogame` VALUES (1,'Assassin\'s Creed Valhalla','https://i1.wp.com/gamepass.shop/wp-content/uploads/2020/10/Assassins-Creed-Banner.jpg?fit=1920%2C1080&ssl=1','https://sm.ign.com/t/ign_es/gallery/a/assassins-/assassins-creed-valhalla-box-art-logos_ukn7.1080.jpg','Assassin\'s Creed Valhalla es un videojuego desarrollado por Ubisoft Montreal y publicado por Ubisoft. Es el decimosegundo en importancia y el vigesimosegundo lanzado dentro de la saga de Assassin Creed, y sucesor al juego del 2018 Assassin\'s Creed Odyssey.','Ubisoft','2020-11-10','PS4',1399),(2,'Spider-Man Miles Morales','https://i.blogs.es/cf129e/marvel-spiderman-miles-morales/1366_2000.jpeg','https://as01.epimg.net/meristation/imagenes/2020/09/17/game_cover/47571901600336548.jpg','Estar a la altura de Peter Parker y su Marvel\'s Spider-Man no es fácil. Por suerte, en Insomniac Games han estado inspirados. Spider-Man Miles Morales es mucho más que la excusa perfecta para regresar a esa Nueva York marvelita que nos encandiló en PS4','Insomniac','2020-11-12','PS4',1399),(3,'Demon\'s Souls','https://www.gameprotv.com/archivos/202010/demon-s-souls-remake-principal.jpg','https://as01.epimg.net/meristation/imagenes/2020/09/17/game_cover/831932761600337753.jpg','El retorno del rey. El padre del género Souls regresa en una puesta a punto espectacular para la llegada de la nueva generación de Sony. PS5 cuenta con el retorno de Demon\'s Souls de la mano de Bluepoint Games que nos llevará a un viaje por un reino decadente que nos costará sudor y sangre superar.','Bluepoint Games','2020-11-19','PS5',1399),(4,'Cyberpunk 2077','https://i0.wp.com/www.gameoverla.com/wp-content/uploads/2020/06/hipertextual-cyberpunk-2077-retrasa-su-lanzamiento-otra-vez-2020644476.jpg?fit=1920%2C1080&ssl=1','https://shelvid.com/assets/images/games/1877.jpg','Se le esperaba con ganas y finalmente llegó, pero lo hizo labrándose la peor reputación posible. Una mancha enorme y negruzca en un expediente por otro lado casi impoluto en lo jugable. Cyberpunk 2077 es uno de esos títulos a los que hay acercarse, sea ya en las mejores condiciones posibles o dentro de un año, cuando esas mismas condiciones se hayan democratizado.','CD Proyect RED','2020-09-17','PC',899),(5,'DOOM Eternal','https://i.blogs.es/39247b/doom-eternal-portada/1366_2000.jpeg','https://m.media-amazon.com/images/I/5123Y02GcOL.jpg','Porque entre artificios, revoluciones y el enésimo salto mortal de la compañía de turno con aires de grandeza, siempre nos quedará lo básico y terrenal. DOOM Eternal es de las pocas experiencias triple A de hoy en día que no tendrían cabida en otro medio. Es y respira videojuego en una industria que, en demasiadas ocasiones, quiere jugar a ser otra cosa.','id Software','2020-03-20','XBOX ONE',1399),(6,'The Legend of Zelda','https://www.masgamers.com/wp-content/uploads/2017/01/the_legend_of_zelda__breath_of_the_wild_wallpaper_by_de_monvarela-dav8gp2.jpg','https://upload.wikimedia.org/wikipedia/en/c/c6/The_Legend_of_Zelda_Breath_of_the_Wild.jpg','The Legend of Zelda: Breath of the Wild es un videojuego de acción-aventura de 2017 de la serie The Legend of Zelda, desarrollado por la filial Nintendo EPD en colaboración con Monolith Soft y publicado por Nintendo para las consolas Wii U y Nintendo Switch.','Nintendo','2017-03-03','SWITCH',1199),(7,'Red Dead Redemption 2','https://locosxlosjuegos.com/wp-content/uploads/2019/10/RDR2-1.jpg','https://assets.vg247.com/current//2018/05/red_dead_redemption_2_cover_art_1.jpg','Red Dead Redemption 2 es un videojuego de acción-aventura western, en un mundo abierto y en perspectiva de primera y tercera persona, ​ con componentes para un jugador y multijugador.​ Fue desarrollado por Rockstar Games. Es la precuela de Red Dead Redemption y el tercer juego de la saga Red Dead.','Rockstar','2018-10-28','PC',999);
/*!40000 ALTER TABLE `videogame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'videogames_app'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_videogames` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_videogames`()
BEGIN
select 
	id as "Id",
    title as "Title",
    imageUrl as "Image",
    coverUrl as "Cover",
    dsction as "Description",
    publisher as "Publisher",
    dateReleased as "Date",
    platform as "Platform",
    price as "Price"
from
	Videogame;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_videogamesByDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_videogamesByDate`()
BEGIN
SELECT 
	id as "Id",
    title as "Title",
    imageUrl as "Image",
    coverUrl as "Cover",
    dsction as "Description",
    publisher as "Publisher",
    dateReleased as "Date",
    platform as "Platform",
    price as "Price"
FROM videogame
ORDER BY dateReleased DESC
LIMIT 6;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-28 11:24:46
