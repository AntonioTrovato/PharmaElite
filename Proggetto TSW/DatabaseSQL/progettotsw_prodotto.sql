CREATE DATABASE  IF NOT EXISTS `progettotsw` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `progettotsw`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: progettotsw
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `prodotto`
--

DROP TABLE IF EXISTS `prodotto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodotto` (
  `ID` varchar(10) NOT NULL,
  `urlImmagine` varchar(256) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `prezzo` double(5,2) NOT NULL,
  `quantità` int NOT NULL,
  `descrizione` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotto`
--

LOCK TABLES `prodotto` WRITE;
/*!40000 ALTER TABLE `prodotto` DISABLE KEYS */;
INSERT INTO `prodotto` VALUES ('1','https://www.olympianstore.it/media/catalog/product/cache/1/small_image/400x400/9df78eab33525d08d6e5fb8d27136e95/e/g/eggpro-crema-2017.jpg','Integratori','Proteine',5.00,9,'  Nutrizione sportiva di qualità: l\'equilibrio perfetto tra qualità, innovazione e convenienza.\r\n				\r\n				'),('10','https://www.stockandgo.it/wp-content/uploads/2017/09/PASTA-DEL-CAPITANO-colluttorio-400ml.-antiplacca-verde-x-12.jpg','Igiene orale','Antiplacca',8.00,10,' Previene tartaro, placca dentale e problemi gengivali e protegge i denti sensibili.\r\n				'),('11','https://i.ebayimg.com/images/g/7gEAAOSwghtdd1CG/s-l300.jpg','Igiene Orale','Dentifricio',11.00,10,'Uno sbiancante dentale naturale al 100% a base di carbone di cocco vegano di alta qualità. Non contiene ingredienti chimici o pericolosi.'),('12','https://www.amicafarmacia.com/media/catalog/product/cache/280b3d7d41e665d7bc917bd6347ed38b/1/6/16500_1.jpg','Igiene Orale','Filo Interdentale',5.00,10,'Filo interdentale per gengive e denti sani. Filo interdentale - Efficace contro la placca, delicato sulle gengive.'),('13','https://www.syform.com/writable/product/preview/CORDYCEPS%20100%20VEGICAPS.png','Erboristeria','Cordiceps',8.00,10,' Il fungo Cordyceps Sinensis, considerato in Cina tesoro medicinale nazionale, è utilizzato in micoterapia per rigenerare e rinforzare reni e polmoni.\r\n				'),('15','https://www.naturplus.it/4867-tm_large_default/propoli.jpg','Erboristeria','Propoli ',20.00,10,'La propoli, prodotto strettamente legato alle api, è costituita soprattutto da sostanze resinose che gli animali raccolgono sugli alberi'),('16','https://www.farmaciabosciaclub.it/10458-large_default/reumadol-30-compresse.jpg','Erboristeria','Reumadol',22.00,10,'REUMADOL è un integratore alimentare complesso ad azione nutraceutica a base di estratti vegetali, acido ialuronico ad alto peso molecolare.'),('17','https://www.medicalbi.com/immagini_prodotti/810.jpg','Erboristeria','Lithothamnium',10.00,10,'Il Lithothamnium calcareum è un\'alga particolarmente ricca di calcio e magnesio in forma di carbonati'),('18','https://www.pharmasi.it/media/catalog/product/cache/1/image/600x600/9df78eab33525d08d6e5fb8d27136e95/0/4/041735010.jpg','Farmaci da banco','Dicloreum',5.00,10,' DICLOREUM DOLORE si usa per il trattamento di dolori di varia natura quali ad esempio mal di testa e di denti, dolori mestruali, artralgie.\r\n				'),('19','https://www.farmaciafornari.it/1285-large_default/fastum-antidolorifico-gel-50-gr-1.jpg','Farmaci da banco','Fastum',6.00,10,'Fastum Antidolorifico Gel è indicato per il trattamento locale di stati dolorosi delle articolazioni, dei muscoli, dei tendini e dei legamenti.'),('2','https://www.fitnessnutrizione.it/wp-content/uploads/2020/03/anderson-prolyze-400x400.jpg','Integratori','Prolyze',20.00,10,'Prolyze è la nuova formulazione prodotta dalla Anderson Reserch e con proteine in polvere derivate dal siero del latte'),('20','https://www.farmasubito.com/1259-1772-thickbox/momendol-antidolorifico-220-mg-compresse.jpg','Farmaci da banco','Momendol',7.00,10,'Compresse analgesiche ed antinfiammatorie per il trattamento sintomatico di dolori di tipo muscolare ed articolare.'),('21','https://media1.ipump.it/32733-thickbox_default/moment10cps-molli-200mg.jpg','Farmaci da banco','Moment',5.00,10,'Moment contiene il principio attivo ibuprofene che appartiene alla classe dei FANS, medicinali che combattono dolore e infiammazione.'),('22','https://www.farmacosmo.it/18945-medium_default/tachipirina-500-mg-analgesico-antipiretico-granulato-effervescente-20-bustine-046901.jpg','Farmaci da banco','Tachipirina',5.00,10,'Farmaco formulato con paracetamolo, utile come antipiretico in caso di febbre e come analgesico in caso dolori di diversa natura.'),('23','https://www.amicafarmacia.com/media/catalog/product/cache/280b3d7d41e665d7bc917bd6347ed38b/5/6/5634_1.jpg','Integratori','Multicentrum',11.00,10,' Multicentrum Energy è il nuovo multivitaminico potenziato con livelli più alti di Vitamine B, Ferro, Magnesio, Iodio e Rame.\r\n				'),('24','https://www.farmacosmo.it/25027-medium_default/plus-integratore-di-sali-minerali-36-buste-047403.jpg','Integratori','Polase',20.00,10,'Polase Plus è un integratore di Magnesio e Potassio senza zucchero che risulta utile per combattere stanchezza e fatica causate dal caldo.'),('25','https://images-na.ssl-images-amazon.com/images/I/61BqgIAax0L._AC_SX466_.jpg','Integratori','Sostenium',15.00,10,'Descrizione Integratore alimentare multivitaminico e multi minerale indicato in caso di carenze o di aumentati fabbisogni organici dei micronutrienti.'),('26','https://www.farmaciabosciaclub.it/64840/biolectra-ultra-direct-400-mg-arancia-20-buste.jpg','Integratori','Magnesio',12.00,10,' Biolectra ultra direct prodotto a base di Magnesio, senza zucchero, con edulcoranti.\r\n				'),('4','https://www.tigota.it/media/catalog/product/b/i/big_310107_842141_02_jduw6qvsk7d93pqp.jpg?quality=60&fit=bounds&height=700&width=700&canvas=700:700','Erboristeria','Ortica',20.00,10,'L\'ortica è una pianta erbacea perenne dioica, nativa dell\'Europa, dell\'Asia, del Nord Africa e del Nord America, ed è la più conosciuta e diffusa del genere Urtica.'),('5','https://www.farmaciaroggero.it/wp-content/uploads/sites/14/2018/04/neoborocillina-nasale-spray-15-ml_90557.jpg','Farmaci da banco','Borocillina',10.00,10,'Neo Borocillina Nasale Spray è un decongestionante della mucosa nasale (libera il naso chiuso), specie in caso di raffreddore.'),('6','https://file.cure-naturali.it/site/image/content/14985.jpg?format=jpg','Erboristeria','Achillea',10.00,10,'Achillea è un genere di piante dicotiledoni della famiglia delle Asteracee, notevole per il numero di specie e di diverse taglie.'),('7','https://dottorbianchi.it/media/catalog/product/cache/1/image/10bc69bf53cae290dd25bf8da3b0792f/b/r/braun_oral-b_pro_2_2000s_sensi_ultrathin_spazzolino_elettrico_ricaricabile.jpg','Igiene orale','Spazzolino Elettrico',70.00,10,' Lo spazzolino elettrico Oral-B PRO 600 offre una pulizia superiore clinicamente comprovata rispetto a uno spazzolino manuale tradizionale.\r\n				'),('8','https://www.sunstargum.com/content/dam/sunstar/sunstar-europe/oral-care/gum/images/pack-shots/toothbrush/technique-pro/P525-GUM-Technique-Pro-Compact-Soft-Blue-Angle.png/_jcr_content/renditions/cq5dam.thumbnail.360.600.png','Igiene Orale','Spazzolino',5.00,10,'Lo spazzolino da denti è uno strumento per l\'igiene orale il quale consente di rimuovere impurità, in particolare placca, da denti e gengive.'),('9','https://p9c9q9h8.stackpathcdn.com/1648458-large_default/dentifricio-colgate-anticarie-ultra-75-ml.jpg','Igiene orale','Dentifricio',7.00,10,' Il dentifricio è un prodotto finalizzato alla pulizia, alla manutenzione dell\'estetica ed alla salute dei denti.\r\n				');
/*!40000 ALTER TABLE `prodotto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-26 16:49:12
