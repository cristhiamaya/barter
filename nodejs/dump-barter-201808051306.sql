-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: barter
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `productId` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(350) DEFAULT NULL,
  KEY `comments_id_IDX` (`commentId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'1','Mauris consequat','Nunc a magna nec magna pretium rutrum. Quisque sodales tortor lacus, vitae ullamcorper mi varius at. Proin sodales maximus consequat. Morbi ac lacus fermentum, sollicitudin metus sit amet, pellentesque odio. Cras dictum orci a accumsan aliquet. Integer consequat ultrices erat. Nullam ac libero mi.'),(2,'1','Vivamus at ante dapibus','Nunc a magna nec magna pretium rutrum. Quisque sodales tortor lacus, vitae ullamcorper mi varius at. Proin sodales maximus consequat. Morbi ac lacus fermentum, sollicitudin metus sit amet, pellentesque odio. Cras dictum orci a accumsan aliquet. Integer consequat ultrices erat. Nullam ac libero mi.'),(3,'1','Vivamus at ante dapibus','Nunc a magna nec magna pretium rutrum. Quisque sodales tortor lacus, vitae ullamcorper mi varius at. Proin sodales maximus consequat. Morbi ac lacus fermentum, sollicitudin metus sit amet, pellentesque odio. Cras dictum orci a accumsan aliquet. Integer consequat ultrices erat. Nullam ac libero mi.');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owners` (
  `ownerId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  KEY `owners_id_IDX` (`ownerId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (2,'Cristhian Amaya','4'),(3,'Kevin Amaya','4');
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `ownerId` int(11) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `imageURL` varchar(250) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `peopleInterested` varchar(100) DEFAULT NULL,
  `favourite` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shortDescription` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `feature1` varchar(100) DEFAULT NULL,
  `feature2` varchar(100) DEFAULT NULL,
  `feature3` varchar(100) DEFAULT NULL,
  KEY `products_id_IDX` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'A veeeery loooong description','https://images.penguinrandomhouse.com/cover/9780679602866','Don Quixote','used','5','0',4,'A short but sweet description','latest','','',''),(2,'Nam dolor neque, pretium dapibus dolor sed, tristique bibendum augue. Morbi auctor pellentesque mauris, ac aliquam justo faucibus in.','https://target.scene7.com/is/image/Target/14521077?wid=488&hei=488&fmt=pjpeg','A comfy office chair','used','5','0',1,'A short but sweet description','latest','Contemporary Task Chair','Mid-Back Design','Tilt Lock Mechanism'),(2,'A veeeery loooong description','https://christianaudio.com/media/catalog/product/cache/1/image/1050x1050/170ec19af00183b5e0368529fc2daa2f/C/r/CrimePunishment_BS_large.jpg','Crime and punishment','used','5','0',5,'A short but sweet description','latest',NULL,NULL,NULL),(2,'A veeeery loooong description','https://target.scene7.com/is/image/Target/15587335','A table','used','5','0',6,'A short but sweet description','latest',NULL,NULL,NULL),(2,'A veeeery loooong description','https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5793/5793129_sa.jpg;maxHeight=640;maxWidth=550','Another intel','used','5','0',7,'A short but sweet description','computing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://blog.macsales.com/wp-content/uploads/2016/08/RAM.png','RAM memory','used','5','0',8,'A short but sweet description','computing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://ae01.alicdn.com/kf/HTB1AFV2XnwKL1JjSZFgq6z6aVXa2/Brand-memory-ram-ddr2-4gb-800Mhz-pc2-6400-so-dimm-laptop-ram-ddr2-4gb-667-pc2.jpg_640x640.jpg','RAM DDR5','used','5','0',9,'A short but sweet description','latest',NULL,NULL,NULL),(2,'A veeeery loooong description','https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5793/5793129_sa.jpg;maxHeight=640;maxWidth=550','Processor','used','5','0',10,'A short but sweet description','computing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://cdn8.bigcommerce.com/s-j602wc6a/images/stencil/1024x1024/products/6526/23532/bluebell-crew-socks-recycled-cotton-w__92655.1502809282.jpg?c=2','Socks','used','5','0',11,'A short but sweet description','clothing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://ae01.alicdn.com/kf/HTB1KKMQMVXXXXaiXVXXq6xXFXXXZ/Flower-Baby-Girl-Baptism-Dress-For-Wedding-Toddler-Fancy-Clothes-Newborn-Baby-1-Year-Birthday-Dress.jpg_640x640.jpg','fancy clotes','used','5','0',12,'A short but sweet description','latest',NULL,NULL,NULL),(2,'A veeeery loooong description','https://simages.ericdress.com/Upload/Image/2017/22/watermark/74ea1cfb-056e-4dd7-8e19-e732dfba56eb.jpg','Rack Sneakers','used','5','0',13,'A short but sweet description','clothing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://assets.academy.com/mgen/61/20057861.jpg','modern clothes','used','5','0',14,'A short but sweet description','clothing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://comps.canstockphoto.fr/plomberie-vecteur-service-vecteur-eps_csp18647482.jpg','Plumbing','used','5','0',15,'A short but sweet description','services',NULL,NULL,NULL),(2,'A veeeery loooong description','https://s3-media4.fl.yelpcdn.com/bphoto/TWXIjElb7h2x5IbmRi2ORw/ls.jpg','Chimney sweep','used','5','0',16,'A short but sweet description','services',NULL,NULL,NULL),(2,'A veeeery loooong description','https://media.brstatic.com/2016/12/21171501/most-drivers-dont-trust-auto-repair-shops-mst.jpg','Car repair','used','5','x|',17,'A short but sweet description','services',NULL,NULL,NULL),(2,'A veeeery loooong description','http://www.car-repairs.ae/garLogo/14252957914608714.jpg','Another car repair','used','5','0',18,'A short but sweet description','services',NULL,NULL,NULL),(2,'A veeeery loooong description','https://ae01.alicdn.com/kf/HTB1AFV2XnwKL1JjSZFgq6z6aVXa2/Brand-memory-ram-ddr2-4gb-800Mhz-pc2-6400-so-dimm-laptop-ram-ddr2-4gb-667-pc2.jpg_640x640.jpg','RAM DDR5','used','5','0',9,'A short but sweet description','latest',NULL,NULL,NULL),(2,'A veeeery loooong description','https://ii.worldmarket.com/fcgi-bin/iipsrv.fcgi?FIF=/images/worldmarket/source/29365_XXX_v1.tif&wid=650&cvt=jpeg	A service chair	used	5	0	1	A short but sweet description	latest','Another car repair','used','5','0',18,'A short but sweet description','latest',NULL,NULL,NULL),(2,'A veeeery loooong description','https://i.ebayimg.com/images/g/QjQAAOSwIzNXPNNF/s-l300.jpg','Collectibles','used','5','0',19,'A short but sweet description','collectibles',NULL,NULL,NULL),(3,'A veeeery loooong description','https://images-na.ssl-images-amazon.com/images/I/61gL5CGpEDL._SL500_AC_SS350_.jpg','Yugioh Timoteus','used','5','0',20,'A short but sweet description','collectibles',NULL,NULL,NULL),(2,'A veeeery loooong description','https://prod.media.larepublica.pe/970x647/larepublica/imagen/2018/03/26/noticia-album-panini-figuritas-dificiles-5.png','Panini','used','5','0',21,'A short but sweet description','collectibles',NULL,NULL,NULL),(2,'A veeeery loooong description','https://imgc.allpostersimages.com/img/print/posters/action-comics-superman-no-1-cover-tin-sign_a-G-10611468-0.jpg','Superman no.1','used','5','0',22,'A short but sweet description','collectibles',NULL,NULL,NULL),(2,'A veeeery loooong description','https://images.penguinrandomhouse.com/cover/9780679602866','Don Quixote','used','5','0',23,'A short but sweet description','books',NULL,NULL,NULL),(2,'A veeeery loooong description','https://christianaudio.com/media/catalog/product/cache/1/image/1050x1050/170ec19af00183b5e0368529fc2daa2f/C/r/CrimePunishment_BS_large.jpg','Crime and punishment','used','7','0',24,'A short but sweet description','books',NULL,NULL,NULL),(2,'A veeeery loooong description','http://www.loyalbooks.com/image/detail/Idiot-1-2-Fyodor-Dostoyevsky.jpg','The Idiot','used','4','4',25,'A short but sweet description','books',NULL,NULL,NULL),(2,'A veeeery loooong description','http://sktorrent.eu/torrent/obrazky/da005cdbb91fe776556e1aae9e532d60fdc8add7.jpg','The jungle book','used','4','0',26,'A short but sweet description','books',NULL,NULL,NULL),(2,'A veeeery loooong description','https://images.penguinrandomhouse.com/cover/9780679602866','Crime and punishment','used','8','4',27,'A short but sweet description','latest',NULL,NULL,NULL),(2,'A veeeery loooong description','https://imgc.allpostersimages.com/img/print/posters/action-comics-superman-no-1-cover-tin-sign_a-G-10611468-0.jpg','Superman no.1','used','5','0',28,'A short but sweet description','latest',NULL,NULL,NULL),(2,'A veeeery loooong description','https://pictures.abebooks.com/isbn/9780893757083-uk-300.jpg','Mysterious Island','used','4','4',29,'A short but sweet description','books',NULL,NULL,NULL),(2,'A veeeery loooong description','https://images-na.ssl-images-amazon.com/images/I/8117HB7WbvL.jpg','The Brothers Karamazov','used','4','4',30,'A short but sweet description','books',NULL,NULL,NULL),(2,'A veeeery loooong description','https://images-na.ssl-images-amazon.com/images/I/418up8W2-CL._SY344_BO1,204,203,200_.jpg','Ana Karenina','used','4','4',31,'A short but sweet description','books',NULL,NULL,NULL),(2,'A veeeery loooong description','https://images-na.ssl-images-amazon.com/images/I/51YNPg-gCjL._SX322_BO1,204,203,200_.jpg','Fifty Shades of Grey','used','4','4',32,'A short but sweet description','books',NULL,NULL,NULL),(2,'A veeeery loooong description','https://images-na.ssl-images-amazon.com/images/I/61huUhmI2YL._SX329_BO1,204,203,200_.jpg','Seven Novels','used','4','4',33,'A short but sweet description','books',NULL,NULL,NULL),(2,'A veeeery loooong description','https://wendyvancamp.files.wordpress.com/2016/04/journey-to-the-center-of-the-earth-book-cover.jpg?w=350&h=517','Journey to the Center of the Earth','used','4','4',34,'A short but sweet description','books',NULL,NULL,NULL),(2,'A veeeery loooong description','https://s.ecrater.com/stores/155082/4bf40647819ad_155082n.jpg','Round the Moon','used','4','4',35,'A short but sweet description','books',NULL,NULL,NULL),(2,'A veeeery loooong description','https://www.travellingbookjunkie.com/wp-content/uploads/2015/11/80-days-around-the-world-book-632x1024.jpg','Around the World in 80 Days','used','4','4',36,'A short but sweet description','books',NULL,NULL,NULL),(2,'A veeeery loooong description','https://cdn-images.farfetch-contents.com/12/23/39/37/12233937_10524864_322.jpg','Gucci Kids Bear','used','5','0',37,'A short but sweet description','clothing',NULL,NULL,NULL),(2,'A veeeery loooong description','http://www.tiendanaranjeros.com/357/jersey-blanco-2016.jpg','Naranjeros Jersey','used','5','0',38,'A short but sweet description','clothing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://5.imimg.com/data5/WP/EW/MY-42286563/sports-jersey-500x500.jpg','Sport Jersey','used','5','0',39,'A short but sweet description','clothing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://4.imimg.com/data4/OH/KM/MY-15903055/cricket-jersey-500x500.jpg','Badminton Jersey','used','5','0',40,'A short but sweet description','clothing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://asda.scene7.com/is/image/Asda/5053425332725?hei=560&qlt=85&fmt=pjpg&resmode=sharp&op_usm=1.1,0.5,0,0&defaultimage=default_details_George_rd','Girl skirt','used','5','0',41,'A short but sweet description','clothing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://cdn.supadupa.me/shop/8252/images/2540229/Ha_Camello_angle_Front_2048x2048_TO_SEND_large.jpg?1486992913','Fur Felt Hat','used','5','0',42,'A short but sweet description','clothing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://cdn.shopify.com/s/files/1/0636/4053/products/4_grande_bbbf9d3d-103e-4f0c-bdf4-48d51c209c7e_1800x.jpg?v=1495471940','Yelly Hat','used','5','0',43,'A short but sweet description','clothing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://images-na.ssl-images-amazon.com/images/I/816gzin2D6L._SX425_.jpg','Faberge egg','used','5','0',44,'A short but sweet description','collectibles',NULL,NULL,NULL),(2,'A veeeery loooong description','https://i.pinimg.com/originals/bc/e2/0e/bce20ebfb13ac2f21cd1b3963ac549ad.jpg','Violin','used','5','0',45,'A short but sweet description','collectibles',NULL,NULL,NULL),(2,'A veeeery loooong description','https://imgc.allpostersimages.com/img/print/posters/action-comics-superman-no-1-cover-tin-sign_a-G-10611468-0.jpg','Superman no.1','used','5','0',46,'A short but sweet description','collectibles',NULL,NULL,NULL),(2,'A veeeery loooong description','https://imgc.allpostersimages.com/img/print/posters/action-comics-superman-no-1-cover-tin-sign_a-G-10611468-0.jpg','Superman no.1','used','5','0',47,'A short but sweet description','collectibles',NULL,NULL,NULL),(2,'A veeeery loooong description','https://imgc.allpostersimages.com/img/print/posters/action-comics-superman-no-1-cover-tin-sign_a-G-10611468-0.jpg','Superman no.1','used','5','0',48,'A short but sweet description','collectibles',NULL,NULL,NULL),(2,'A veeeery loooong description','https://imgc.allpostersimages.com/img/print/posters/action-comics-superman-no-1-cover-tin-sign_a-G-10611468-0.jpg','Superman no.1','used','5','0',49,'A short but sweet description','collectibles',NULL,NULL,NULL),(2,'A veeeery loooong description','https://imgc.allpostersimages.com/img/print/posters/action-comics-superman-no-1-cover-tin-sign_a-G-10611468-0.jpg','Superman no.1','used','5','0',50,'A short but sweet description','collectibles',NULL,NULL,NULL),(2,'A veeeery loooong description','https://imgc.allpostersimages.com/img/print/posters/action-comics-superman-no-1-cover-tin-sign_a-G-10611468-0.jpg','Superman no.1','used','5','0',51,'A short but sweet description','collectibles',NULL,NULL,NULL),(2,'A veeeery loooong description','https://imgc.allpostersimages.com/img/print/posters/action-comics-superman-no-1-cover-tin-sign_a-G-10611468-0.jpg','Superman no.1','used','5','0',52,'A short but sweet description','collectibles',NULL,NULL,NULL),(2,'A veeeery loooong description','https://imgc.allpostersimages.com/img/print/posters/action-comics-superman-no-1-cover-tin-sign_a-G-10611468-0.jpg','Superman no.1','used','5','0',53,'A short but sweet description','collectibles',NULL,NULL,NULL),(2,'A veeeery loooong description','https://blog.macsales.com/wp-content/uploads/2016/08/RAM.png','RAM memory','used','5','0',54,'A short but sweet description','computing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://s.hswstatic.com/gif/adding-a-hard-disk-1-1.jpg','HDD','used','5','0',55,'A short but sweet description','computing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://d500.epimg.net/cincodias/imagenes/2016/09/27/lifestyle/1474968276_618127_1474968383_noticia_normal.jpg','SDD','used','5','0',56,'A short but sweet description','computing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://blog.macsales.com/wp-content/uploads/2016/08/RAM.png','RAM memory','used','5','0',57,'A short but sweet description','computing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://images-na.ssl-images-amazon.com/images/I/41P0JwP7c5L._SL500_AC_SS350_.jpg','DIskette','used','5','0',58,'A short but sweet description','computing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://media.aws.alkosto.com/media/catalog/product/cache/6/image/69ace863370f34bdf190e4e164b6e123/k/i/kingston_dt101g2_8gb_02.png','USB','used','5','0',59,'A short but sweet description','computing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://blog.macsales.com/wp-content/uploads/2016/08/RAM.png','RAM memory','used','5','0',60,'A short but sweet description','computing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://blog.macsales.com/wp-content/uploads/2016/08/RAM.png','RAM memory','used','5','0',61,'A short but sweet description','computing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://blog.macsales.com/wp-content/uploads/2016/08/RAM.png','RAM memory','used','5','0',62,'A short but sweet description','computing',NULL,NULL,NULL),(2,'A veeeery loooong description','https://media.brstatic.com/2016/12/21171501/most-drivers-dont-trust-auto-repair-shops-mst.jpg','Car repair','used','5','x|',63,'A short but sweet description','services',NULL,NULL,NULL),(2,'A veeeery loooong description','https://cdn.website.thryv.com/0a293ac9918c4baf96ffcdd9aafa2ae3/MOBILE/jpg/121.jpg','Another Plumbing','used','5','x|',64,'A short but sweet description','services',NULL,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'barter'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-05 13:06:53
