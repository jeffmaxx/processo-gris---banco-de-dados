CREATE DATABASE  IF NOT EXISTS `gris` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gris`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: gris
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `dre` int NOT NULL,
  `nome` varchar(20) NOT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `curso` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`dre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (112040875,'Nadia','F','matematica aplicada'),(117064356,'Diogo','M','filosofia'),(117093775,'Pamela','F','BCMT'),(118054337,'Daniel','M','engenharia da computacao'),(119040334,'Jefferson','M','ciencia da computacao'),(119866539,'Emerson','M','BCMT');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aulas`
--

DROP TABLE IF EXISTS `aulas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aulas` (
  `id_aulas` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `horario` varchar(5) DEFAULT NULL,
  `tag` text,
  `classificacao` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_aulas`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aulas`
--

LOCK TABLES `aulas` WRITE;
/*!40000 ALTER TABLE `aulas` DISABLE KEYS */;
INSERT INTO `aulas` VALUES (1,'Banco de dados','13hs','fazer um banco de dados MYSQL','I,II'),(2,'Criptografia','10hs','resolver exercicios do site criptopals','I'),(3,'Engenharia reversa','08hs','fazer engenharia reversa em um arquivo binario','I,II'),(4,'Etica','15hs','elaborar uma redacao sobre hactivism e etical hacking','I'),(5,'Rede','15hs','calcular qual mascara de rede deve ser usada em um exemplo de sistema','I,II,III,IV'),(6,'Seguranca ofensiva','08hs','realizar um ataque em rede ou criar um malware','I,II,III,IV'),(7,'Web','13hs','fazer um desafio do CTF','I,II');
/*!40000 ALTER TABLE `aulas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores`
--

DROP TABLE IF EXISTS `colaboradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaboradores` (
  `Dre` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) DEFAULT NULL,
  `curso` varchar(30) DEFAULT NULL,
  `assunto` varchar(50) DEFAULT NULL,
  `tag` text,
  PRIMARY KEY (`Dre`)
) ENGINE=InnoDB AUTO_INCREMENT=1680976259 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores`
--

LOCK TABLES `colaboradores` WRITE;
/*!40000 ALTER TABLE `colaboradores` DISABLE KEYS */;
INSERT INTO `colaboradores` VALUES (126090985,'Breno','Ciencia da computacao','Seguranca Web','fazer um desafio do CTF'),(127093775,'Esoj','Ciencia da computacao','Seguranca ofensiva','realizar um ataque em rede ou criar um malware'),(127094295,'Sid','Ciencia da computacao','Criptografia','resolver exercicios do site criptopals'),(128094255,'Ventura','Ciencia da computacao','Engenharia reversa','fazer engenharia reversa em um arquivo binario'),(128763295,'Arthur','Ciencia da computacao','Banco de dados','fazer um banco de dados MYSQL'),(129806255,'Luiz','Ciencia da computacao','Redes','calcular qual mascara de rede deve ser usada em um exemplo de sistema'),(156724398,'Franklin','Ciencia da computacao','Engenharia social','elaborar uma texto explicando um ataque social'),(1680976258,'Arthur','Ciencia da computacao','Etica hacking','elaborar uma redacao sobre hactivism e etical hacking');
/*!40000 ALTER TABLE `colaboradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processo_gris`
--

DROP TABLE IF EXISTS `processo_gris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `processo_gris` (
  `id` int NOT NULL AUTO_INCREMENT,
  `duracao` varchar(20) DEFAULT NULL,
  `base_curricular` varchar(30) DEFAULT NULL,
  `decisao_final` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processo_gris`
--

LOCK TABLES `processo_gris` WRITE;
/*!40000 ALTER TABLE `processo_gris` DISABLE KEYS */;
INSERT INTO `processo_gris` VALUES (1,'3 semanas','tema','bancada');
/*!40000 ALTER TABLE `processo_gris` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-29 16:10:21
