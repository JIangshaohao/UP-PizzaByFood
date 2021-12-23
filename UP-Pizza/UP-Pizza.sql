/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.6.17 : Database - pizza
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pizza` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `pizza`;

/*Table structure for table `also` */

DROP TABLE IF EXISTS `also`;

CREATE TABLE `also` (
  `goid` varchar(11) NOT NULL,
  `soid` varchar(11) NOT NULL,
  `qub` int(11) DEFAULT NULL,
  `altime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `info` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `also` */

/*Table structure for table `breakfast` */

DROP TABLE IF EXISTS `breakfast`;

CREATE TABLE `breakfast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `yprice` double NOT NULL,
  `xprice` double NOT NULL,
  `imageName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `typeId` int(11) NOT NULL,
  `info` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `saleNum` int(11) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `breakfast` */

insert  into `breakfast`(`id`,`name`,`yprice`,`xprice`,`imageName`,`typeId`,`info`,`saleNum`,`time`,`tid`) values (1,'鸡蛋与豆浆',12,5,'1.jpg',1,'欢迎送钱，难吃还贵',100,'2020-01-03 00:00:00',1),(2,'油条与豆浆',12,5,'2.jpg',1,'营养早餐，快来尝鲜',110,'2020-02-03 00:00:00',1),(3,'芝士奶酪面包',12,5,'3.jpg',1,'高热量高脂肪，欢迎去世',210,'2020-02-03 00:00:00',1),(4,'香辣鸡腿堡与豆浆',12,5,'4.jpg',1,'开胃充饥，直击味蕾',30,'2020-01-03 00:00:00',1),(5,'中国红袍与法式罗丝',12,5,'5.jpg',1,'清香与热量之间的碰撞！',110,'2020-02-03 00:00:00',1),(6,'奶香三明治',12,5,'6.jpg',1,'快速补充，随时享用',210,'2020-02-03 00:00:00',1);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `userName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tid` int(11) NOT NULL,
  `cvid` int(11) NOT NULL,
  `birthday` datetime DEFAULT CURRENT_TIMESTAMP,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `tel` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'null',
  PRIMARY KEY (`id`),
  KEY `cvid` (`cvid`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`cvid`) REFERENCES `vip` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `customer` */

insert  into `customer`(`id`,`name`,`pwd`,`userName`,`sex`,`tid`,`cvid`,`birthday`,`time`,`tel`,`address`,`email`,`images`) values (1,'999','999','罗志祥','男',1,1,'2021-09-04 22:06:00','2021-09-04 22:06:00','12345678998','北大青鸟麓谷校区','221321@qq.com','cus1.png'),(2,'888','888','薛之谦','男',2,1,'2021-09-04 22:06:00','2021-09-04 22:06:00','12345678974','美国加州','221321@qq.com','cus1.png'),(3,'123','456','叶奈法','女',1,1,'2021-09-04 22:06:00','2021-09-04 22:06:00','74125896325','史里戈瑞','221321@qq.com','cus1.png'),(4,'987','789','华晨宇','男',1,1,'2021-09-04 22:06:00','2021-09-04 22:06:00','78965236987','美国加州','221321@qq.com','cus1.png'),(5,'456','654','韦瑟米尔','男',1,1,'2021-09-04 22:06:00','2021-09-04 22:06:00','42369851477','白果园','221321@qq.com','cus1.png'),(6,'741','147','杰洛特','男',1,1,'2021-09-04 22:06:00','2021-09-04 22:06:00','32569842596','利维亚','221321@qq.com','cus1.png'),(7,'666','555','欧迪姆-刚特','男',1,1,'2021-09-04 22:06:00','2021-09-04 22:06:00','14265896357','诺维格瑞','221321@qq.com','cus2.png'),(8,'444','333','欧吉尔德','男',1,1,'2021-09-04 22:06:00','2021-09-04 22:06:00','7458963259','陶森特','221321@qq.com','cus3.png'),(9,'222','111','特里斯','男',1,1,'2021-09-04 22:06:00','2021-09-04 22:06:00','75639852147','夏威夷群岛','221321@qq.com','cus4.png');

/*Table structure for table `dingdan` */

DROP TABLE IF EXISTS `dingdan`;

CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `jytime` datetime DEFAULT CURRENT_TIMESTAMP,
  `price` double NOT NULL,
  `typeid` int(11) DEFAULT NULL,
  `expid` int(11) NOT NULL,
  `tid` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `expid` (`expid`),
  KEY `typeid` (`typeid`),
  KEY `fid` (`fid`),
  CONSTRAINT `dingdan_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `customer` (`id`),
  CONSTRAINT `dingdan_ibfk_3` FOREIGN KEY (`expid`) REFERENCES `express` (`id`),
  CONSTRAINT `dingdan_ibfk_4` FOREIGN KEY (`typeid`) REFERENCES `type` (`id`),
  CONSTRAINT `dingdan_ibfk_5` FOREIGN KEY (`fid`) REFERENCES `food` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `dingdan` */

insert  into `dingdan`(`id`,`did`,`uid`,`fid`,`qty`,`jytime`,`price`,`typeid`,`expid`,`tid`) values (114,'BAAJCHFHD',1,14,1,'2021-12-07 23:07:14',15,3,1,1),(115,'BAAJCHFHD',1,15,1,'2021-12-07 23:07:14',10,3,1,1),(116,'BAAJCHFHD',1,16,1,'2021-12-07 23:07:14',19,3,1,1),(117,'BAAJCHFHD',1,17,1,'2021-12-07 23:07:14',13,3,1,1),(118,'BAAJCHFHD',1,18,1,'2021-12-07 23:07:14',9,3,1,1),(119,'BAAJCHFHD',1,53,1,'2021-12-07 23:07:14',12,3,1,1),(120,'BAAJCHFHD',1,1,1,'2021-12-07 23:07:14',20,1,1,1);

/*Table structure for table `drink` */

DROP TABLE IF EXISTS `drink`;

CREATE TABLE `drink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `yprice` double NOT NULL,
  `xprice` double NOT NULL,
  `imageName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `typeId` int(11) NOT NULL,
  `info` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `saleNum` int(11) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `drink` */

insert  into `drink`(`id`,`name`,`yprice`,`xprice`,`imageName`,`typeId`,`info`,`saleNum`,`time`,`tid`) values (1,'果粒橙',12,6,'htshape12.png',2,'欢迎送钱，难吃还贵',40,'2020-01-03 00:00:00',1),(2,'冰爽雪碧',15,4,'htshape13.png',2,'解腻神仙水',610,'2020-02-03 00:00:00',1),(3,'可乐',16,4,'htshape14.png',2,'高热量高脂肪，欢迎去世',250,'2020-02-03 00:00:00',1),(4,'元气森林',13,5,'htshape15.png',2,'高糖高热量，谢谢',80,'2020-01-03 00:00:00',1),(5,'中国红茶',8,2,'htshape23.png',2,'清香与热量之间的碰撞！',510,'2020-02-03 00:00:00',1),(6,'鲜榨椰汁',9,3,'htshape28.png',2,'清香闲暇',40,'2020-02-03 00:00:00',1);

/*Table structure for table `express` */

DROP TABLE IF EXISTS `express`;

CREATE TABLE `express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expres` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `express` */

insert  into `express`(`id`,`expres`) values (1,'美团'),(2,'饿了么'),(3,'百度');

/*Table structure for table `food` */

DROP TABLE IF EXISTS `food`;

CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `yprice` double NOT NULL,
  `xprice` double NOT NULL,
  `imageName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `typeId` int(11) NOT NULL,
  `info` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `saleNum` int(11) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`),
  CONSTRAINT `food_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `food` */

insert  into `food`(`id`,`name`,`yprice`,`xprice`,`imageName`,`typeId`,`info`,`saleNum`,`time`,`tid`) values (1,'干酪土司',30,20,'g-9.jpg',1,'开胃冲击，你值得拥有',201,'2021-12-07 23:06:27',1),(2,'油条与豆浆',12,5,'pexels-burst-373941.jpg',1,'营养早餐，快来尝鲜',110,'2020-02-03 00:00:00',1),(4,'香辣鸡腿堡与豆浆',12,5,'pexels-daniela-constantini-5591718.jpg',1,'开胃充饥，直击味蕾',30,'2020-01-03 00:00:00',1),(5,'中国红袍与法式罗丝',12,56,'pexels-daria-shevtsova-3597065.jpg',1,'清香与热量之间的碰撞！',110,'2020-02-03 00:00:00',1),(6,'奶香三明治',12,5,'pexels-polina-tankilevitch-4109381.jpg',1,'快速补充，随时享用',210,'2020-02-03 00:00:00',1),(7,'果粒橙',12,6,'pexels-nikolay-osmachko-229493.jpg',2,'欢迎送钱，难吃还贵',40,'2020-01-03 00:00:00',1),(8,'冰爽雪碧',15,4,'pexels-daria-shevtsova-3597065.jpg',2,'解腻神仙水',610,'2020-02-03 00:00:00',1),(9,'可乐',16,4,'pexels-abby-kihano-230131.jpg',2,'高热量高脂肪，欢迎去世',250,'2020-02-03 00:00:00',1),(14,'刺激鬼椒羊肉堡',17,15,'hb1 (12).jpg',3,'需要签生死状',20,'2020-02-03 00:00:00',1),(15,'鲜香鸡肉堡',11,10,'hb1 (10).jpg',3,'高热量高脂肪，欢迎去世',10,'2020-02-03 00:00:00',1),(16,'无敌巨无霸',23,19,'hb1 (10).jpg',3,'高糖高热量，谢谢',50,'2020-01-03 00:00:00',1),(17,'芝士牛肉堡',61,13,'hb1 (13).jpg',3,'你可能需要一杯元气森林',110,'2020-02-03 00:00:00',1),(18,'一个汉堡',97,9,'hb1 (8).jpg',3,'单人快餐必备',80,'2020-02-03 00:00:00',1),(19,'哈根达斯冰淇淋',16,12,'bql (1).jpg',4,'“广蛋”蛋筒冰淇淋和“花心王子”脆筒冰淇淋',70,'2021-09-04 22:00:59',1),(22,'八喜冰淇淋 ',15,3,'bql (4).jpg',4,'香醇丝滑，流连忘返',70,'2021-09-04 22:00:59',1),(23,'冰雪皇后冰淇淋 ',17,7,'bql (6).jpg',4,'在酷暑体验严冬的冰凉',70,'2021-09-04 22:00:59',1),(24,'巴顿冰淇淋',20,9,'bql (3).jpg',4,'怕被冰冻勿扰',70,'2021-09-04 22:00:59',1),(25,'BERTHILLON Ice cream',20,15,'bql (8).jpg',4,'让人有罪恶感的香浓冰激凌和果汁冰块',70,'2021-09-04 22:00:59',1),(26,'玛格丽特披萨',23,22,'pexels-ana-madeleine-uribe-2762942(1).jpg',5,'高蛋白质、高筋度',40,'2021-09-04 22:00:59',1),(27,'至尊披萨',66,52,'pexels-arthur-brognoli-3343626(1).jpg',5,'口感细腻、果味鲜纯、营养丰富',50,'2021-09-04 22:00:59',1),(28,'鸡蛋香肠比萨',42,13,'pexels-cats-coming-367915(1).jpg',5,'营养中式餐必备',30,'2021-09-04 22:00:59',1),(29,'红烧鸡块披萨',36,24,'pexels-engin-akyurt-1435903(1).jpg',5,'食肉爱好者',20,'2021-09-04 22:00:59',1),(30,'夏威夷披萨',12,26,'pexels-horizon-content-3761671(1).jpg',5,'来感受夏威夷的独特风味吧',10,'2021-09-04 22:00:59',1),(31,'食肉兽披萨',36,30,'pexels-jonathan-petersson-1166120(1).jpg',5,'不要吃我啊~~',80,'2021-09-04 22:00:59',1),(32,'马卡龙',24,500,'g-8.jpg',6,'口感细腻、果味鲜纯、营养丰富',40,'2021-09-04 22:00:59',1),(36,'西梅合桃蛋糕11',19,122,'pexels-dmitriy-ganin-7694044.jpg',6,'“广蛋”蛋筒冰淇淋和“花心王子”脆筒冰淇淋',30,'2021-09-04 22:00:59',1),(37,'芒果白雪黑糯米甜甜',8,7,'pexels-element-digital-669735.jpg',6,'来感受挪威的独特风味吧',44,'2021-09-04 22:00:59',2),(39,'辣鸡',400,200,'bql (9).jpg',4,'对方是否',3,'2021-09-06 15:42:03',1),(40,'美味蛋糕',400,200,'pexels-monstera-7144388.jpg',6,'来感受挪威的独特风味吧',32,'2021-09-06 15:43:06',1),(41,'鸡蛋与豆浆',12,5,'g-3.jpg',1,'欢迎送钱，难吃还贵',100,'2020-01-03 00:00:00',1),(42,'油条与豆浆',12,5,'g-7.jpg',1,'营养早餐，快来尝鲜',110,'2020-02-03 00:00:00',1),(43,'芝士奶酪面包',12,5,'g-9.jpg',1,'高热量高脂肪，欢迎去世',210,'2020-02-03 00:00:00',1),(44,'香辣鸡腿堡与豆浆',12,5,'pexels-ash-376464.jpg',1,'开胃充饥，直击味蕾',30,'2020-01-03 00:00:00',1),(45,'中国红袍与法式罗丝',12,5,'pexels-burst-373941.jpg',1,'清香与热量之间的碰撞！',110,'2020-02-03 00:00:00',1),(46,'奶香三明治',12,5,'pexels-daniela-constantini-5591716.jpg',1,'快速补充，随时享用',210,'2020-02-03 00:00:00',1),(47,'果粒橙',12,6,'pexels-saliha-9088948.jpg',2,'欢迎送钱，难吃还贵',40,'2020-01-03 00:00:00',1),(48,'冰爽雪碧',15,4,'pexels-leah-kelley-341514.jpg',2,'解腻神仙水',610,'2020-02-03 00:00:00',1),(49,'可乐',16,4,'pexels-lisa-1292862 (1).jpg',2,'高热量高脂肪，欢迎去世',250,'2020-02-03 00:00:00',1),(50,'元气森林',13,5,'pexels-breakingpic-3018 (1).jpg',2,'高糖高热量，谢谢',80,'2020-01-03 00:00:00',1),(51,'中国红茶',8,2,'pexels-anna-tarazevich-5093841.jpg',2,'清香与热量之间的碰撞！',510,'2020-02-03 00:00:00',1),(52,'鲜榨椰汁',9,3,'pexels-abby-kihano-230131.jpg',2,'清香闲暇',40,'2020-02-03 00:00:00',1),(53,'香辣牛肉堡',16,12,'hb1 (10).jpg',3,'欢迎送钱，难吃还贵',70,'2020-01-03 00:00:00',1),(54,'刺激鬼椒羊肉堡',17,15,'hb1 (14).jpg',3,'需要签生死状',20,'2020-02-03 00:00:00',1),(55,'鲜香鸡肉堡',11,10,'hb1 (9).jpg',3,'高热量高脂肪，欢迎去世',10,'2020-02-03 00:00:00',1),(56,'无敌巨无霸',23,19,'hb1 (5).jpg',3,'高糖高热量，谢谢',50,'2020-01-03 00:00:00',1),(57,'芝士牛肉堡',61,13,'hb1 (14).jpg',3,'你可能需要一杯元气森林',110,'2020-02-03 00:00:00',1),(58,'一个汉堡',97,9,'hb1 (13).jpg',3,'单人快餐必备',80,'2020-02-03 00:00:00',1),(59,'哈根达斯冰淇淋',16,12,'bql (12).jpg',4,'“广蛋”蛋筒冰淇淋和“花心王子”脆筒冰淇淋',70,'2021-09-04 22:00:59',1),(60,'美怡乐冰淇淋 ',12,4,'bql (8).jpg',4,'口感细腻、果味鲜纯、营养丰富',70,'2021-09-04 22:00:59',1),(61,'雪觅冰淇淋 ',13,8,'bql (11).jpg',4,'香浓、顺滑的口感，是关心与爱的体现',70,'2021-09-04 22:00:59',1),(62,'八喜冰淇淋 ',15,3,'bql (13).jpg',4,'香醇丝滑，流连忘返',70,'2021-09-04 22:00:59',1),(63,'冰雪皇后冰淇淋 ',17,7,'bql (4).jpg',4,'在酷暑体验严冬的冰凉',70,'2021-09-04 22:00:59',1),(64,'巴顿冰淇淋',20,9,'bql (12).jpg',4,'怕被冰冻勿扰',70,'2021-09-04 22:00:59',1),(65,'BERTHILLON Ice cream',20,15,'bql (2).jpg',4,'让人有罪恶感的香浓冰激凌和果汁冰块',70,'2021-09-04 22:00:59',1),(66,'玛格丽特披萨',23,22,'pexels-engin-akyurt-1435903(1).jpg',5,'高蛋白质、高筋度',40,'2021-09-04 22:00:59',1),(67,'至尊披萨',66,52,'pexels-cats-coming-367915(1).jpg',5,'口感细腻、果味鲜纯、营养丰富',50,'2021-09-04 22:00:59',1),(68,'鸡蛋香肠比萨',42,13,'pexels-arthur-brognoli-3343626(1).jpg',5,'营养中式餐必备',30,'2021-09-04 22:00:59',1),(69,'红烧鸡块披萨',36,24,'pexels-ana-madeleine-uribe-2762942(1).jpg',5,'食肉爱好者',20,'2021-09-04 22:00:59',1),(70,'夏威夷披萨',12,26,'pexels-pixabay-208537(1).jpg',5,'来感受夏威夷的独特风味吧',10,'2021-09-04 22:00:59',1),(71,'食肉兽披萨',36,30,'pexels-arthur-brognoli-3343626(1).jpg',5,'不要吃我啊~~',80,'2021-09-04 22:00:59',1),(72,'马卡龙',24,4,'pexels-cottonbro-5491336.jpg',6,'口感细腻、果味鲜纯、营养丰富',40,'2021-09-04 22:00:59',1),(73,'巧克力歌剧院',23,8,'pexels-solodsha-9008662.jpg',6,'香醇丝滑，流连忘返',70,'2021-09-04 22:00:59',1),(74,'蓝莓子乳酪松饼',14,7,'pexels-rodnae-productions-8963411.jpg',6,'清香闲暇',50,'2021-09-04 22:00:59',1),(75,'日式芝士蛋糕',16,10,'pexels-monstera-7144389.jpg',6,'香醇丝滑，流连忘返',10,'2021-09-04 22:00:59',1),(76,'西梅合桃蛋糕',19,12,'pexels-element-digital-669735.jpg',6,'“广蛋”蛋筒冰淇淋和“花心王子”脆筒冰淇淋',30,'2021-09-04 22:00:59',1),(77,'芒果白雪黑糯米甜甜',8,7,'g-8.jpg',6,'来感受挪威的独特风味吧',44,'2021-09-04 22:00:59',1),(78,'起司蛋糕',36,13,'g-2.jpg',6,'日式甜点',20,'2021-09-04 22:00:59',1),(79,'鸡蛋与豆浆',12,5,'pexels-polina-tankilevitch-4109381.jpg',1,'欢迎送钱，难吃还贵',100,'2020-01-03 00:00:00',1),(80,'油条与豆浆',12,5,'pexels-marta-dzedyshko-2067470.jpg',1,'营养早餐，快来尝鲜',110,'2020-02-03 00:00:00',1),(81,'芝士奶酪面包',12,5,'pexels-hana-brannigan-4592667.jpg',1,'高热量高脂肪，欢迎去世',210,'2020-02-03 00:00:00',1),(82,'香辣鸡腿堡与豆浆',12,5,'pexels-regina-ferraz-6133453.jpg',1,'开胃充饥，直击味蕾',30,'2020-01-03 00:00:00',1),(83,'中国红袍与法式罗丝',12,5,'pexels-daria-shevtsova-1831244.jpg',1,'清香与热量之间的碰撞！',110,'2020-02-03 00:00:00',1),(84,'奶香三明治',12,5,'pexels-daria-shevtsova-1831244.jpg',1,'快速补充，随时享用',210,'2020-02-03 00:00:00',1),(85,'果粒橙',12,6,'pexels-mathilde-langevin-8147856.jpg',2,'欢迎送钱，难吃还贵',40,'2020-01-03 00:00:00',1),(86,'冰爽雪碧',15,4,'pexels-maria-tyutina-814264.jpg',2,'解腻神仙水',610,'2020-02-03 00:00:00',1),(87,'可乐',16,4,'pexels-nikolay-osmachko-229493.jpg',2,'高热量高脂肪，欢迎去世',250,'2020-02-03 00:00:00',1),(88,'元气森林',13,5,'pexels-leah-kelley-341514.jpg',2,'高糖高热量，谢谢',80,'2020-01-03 00:00:00',1),(89,'中国红茶',8,2,'pexels-saliha-9088948.jpg',2,'清香与热量之间的碰撞！',510,'2020-02-03 00:00:00',1),(90,'鲜榨椰汁',9,3,'pexels-nicole-michalou-5775055.jpg',2,'清香闲暇',40,'2020-02-03 00:00:00',1),(91,'香辣牛肉堡',16,12,'hb1 (11).jpg',3,'欢迎送钱，难吃还贵',70,'2020-01-03 00:00:00',1),(92,'刺激鬼椒羊肉堡',17,15,'hb1 (7).jpg',3,'需要签生死状',20,'2020-02-03 00:00:00',1),(93,'鲜香鸡肉堡',11,10,'hb1 (15).jpg',3,'高热量高脂肪，欢迎去世',10,'2020-02-03 00:00:00',1),(94,'无敌巨无霸',23,19,'hb1 (13).jpg',3,'高糖高热量，谢谢',50,'2020-01-03 00:00:00',1),(95,'芝士牛肉堡',61,13,'hb1 (9).jpg',3,'你可能需要一杯元气森林',110,'2020-02-03 00:00:00',1),(96,'一个汉堡',97,9,'hb1 (9).jpg',3,'单人快餐必备',80,'2020-02-03 00:00:00',1),(97,'哈根达斯冰淇淋',16,12,'bql (5).jpg',4,'“广蛋”蛋筒冰淇淋和“花心王子”脆筒冰淇淋',70,'2021-09-04 22:00:59',1),(98,'美怡乐冰淇淋 ',12,4,'bql (3).jpg',4,'口感细腻、果味鲜纯、营养丰富',70,'2021-09-04 22:00:59',1),(99,'雪觅冰淇淋 ',13,8,'bql (13).jpg',4,'香浓、顺滑的口感，是关心与爱的体现',70,'2021-09-04 22:00:59',1),(100,'八喜冰淇淋 ',15,3,'bql (11).jpg',4,'香醇丝滑，流连忘返',70,'2021-09-04 22:00:59',1),(101,'冰雪皇后冰淇淋 ',17,7,'bql (10).jpg',4,'在酷暑体验严冬的冰凉',70,'2021-09-04 22:00:59',1),(102,'巴顿冰淇淋',20,9,'bql (7).jpg',4,'怕被冰冻勿扰',70,'2021-09-04 22:00:59',1),(103,'BERTHILLON Ice cream',20,15,'bql (5).jpg',4,'让人有罪恶感的香浓冰激凌和果汁冰块',70,'2021-09-04 22:00:59',1),(104,'玛格丽特披萨',23,22,'pexels-engin-akyurt-1435903(1).jpg',5,'高蛋白质、高筋度',40,'2021-09-04 22:00:59',1),(105,'至尊披萨',66,52,'pexels-ponyo-sakana-5088745(1).jpg',5,'口感细腻、果味鲜纯、营养丰富',50,'2021-09-04 22:00:59',1),(106,'鸡蛋香肠比萨',42,13,'pexels-esrageziyor-7912401(1).jpg',5,'营养中式餐必备',30,'2021-09-04 22:00:59',1),(107,'红烧鸡块披萨',36,24,'pexels-horizon-content-3761671(1).jpg',5,'食肉爱好者',20,'2021-09-04 22:00:59',1),(108,'夏威夷披萨',12,26,'pexels-jonathan-petersson-1166120(1).jpg',5,'来感受夏威夷的独特风味吧',10,'2021-09-04 22:00:59',1),(109,'食肉兽披萨',36,30,'pexels-pixabay-315755(1).jpg',5,'不要吃我啊~~',80,'2021-09-04 22:00:59',1),(110,'马卡龙',24,4,'g-4.jpg',6,'口感细腻、果味鲜纯、营养丰富',40,'2021-09-04 22:00:59',1),(111,'巧克力歌剧院',23,8,'p-4.jpg',6,'香醇丝滑，流连忘返',70,'2021-09-04 22:00:59',1),(112,'蓝莓子乳酪松饼',14,7,'g-8.jpg',6,'清香闲暇',50,'2021-09-04 22:00:59',1),(113,'日式芝士蛋糕',16,10,'pexels-alesia-kozik-6065175.jpg',6,'香醇丝滑，流连忘返',10,'2021-09-04 22:00:59',1),(114,'西梅合桃蛋糕',19,12,'pexels-cottonbro-5491336.jpg',6,'“广蛋”蛋筒冰淇淋和“花心王子”脆筒冰淇淋',30,'2021-09-04 22:00:59',1),(115,'芒果白雪黑糯米甜甜',8,7,'pexels-pixabay-248469.jpg',6,'来感受挪威的独特风味吧',44,'2021-09-04 22:00:59',1),(116,'起司蛋糕',36,13,'pexels-rodnae-productions-8963411.jpg',6,'日式甜点',20,'2021-09-04 22:00:59',1),(117,'鸡蛋与豆浆',12,5,'pexels-daniela-constantini-5591718.jpg',1,'欢迎送钱，难吃还贵',100,'2020-01-03 00:00:00',1),(118,'油条与豆浆',12,5,'pexels-daniela-constantini-5591716.jpg',1,'营养早餐，快来尝鲜',110,'2020-02-03 00:00:00',1),(119,'芝士奶酪面包',12,5,'pexels-ash-376464.jpg',1,'高热量高脂肪，欢迎去世',210,'2020-02-03 00:00:00',1),(120,'香辣鸡腿堡与豆浆',12,5,'pexels-marta-dzedyshko-2067470.jpg',1,'开胃充饥，直击味蕾',30,'2020-01-03 00:00:00',1),(121,'中国红袍与法式罗丝',12,5,'pexels-hana-brannigan-4592667.jpg',1,'清香与热量之间的碰撞！',110,'2020-02-03 00:00:00',1),(122,'奶香三明治',12,5,'pexels-hana-brannigan-4592667.jpg',1,'快速补充，随时享用',210,'2020-02-03 00:00:00',1),(123,'果粒橙',12,6,'pexels-maria-tyutina-814264.jpg',2,'欢迎送钱，难吃还贵',40,'2020-01-03 00:00:00',1),(124,'冰爽雪碧',15,4,'pexels-nikolay-osmachko-229493.jpg',2,'解腻神仙水',610,'2020-02-03 00:00:00',1),(125,'可乐',16,4,'pexels-pixabay-259955.jpg',2,'高热量高脂肪，欢迎去世',250,'2020-02-03 00:00:00',1),(126,'元气森林',13,5,'pexels-mathilde-langevin-8147856.jpg',2,'高糖高热量，谢谢',80,'2020-01-03 00:00:00',1),(127,'中国红茶',8,2,'pexels-anna-tarazevich-5093841.jpg',2,'清香与热量之间的碰撞！',510,'2020-02-03 00:00:00',1),(128,'鲜榨椰汁',9,3,'pexels-maria-tyutina-814264.jpg',2,'清香闲暇',40,'2020-02-03 00:00:00',1),(129,'香辣牛肉堡',16,12,'hb1 (11).jpg',3,'欢迎送钱，难吃还贵',70,'2020-01-03 00:00:00',1),(130,'刺激鬼椒羊肉堡',17,15,'hb1 (8).jpg',3,'需要签生死状',20,'2020-02-03 00:00:00',1),(131,'鲜香鸡肉堡',11,10,'hb1 (17).jpg',3,'高热量高脂肪，欢迎去世',10,'2020-02-03 00:00:00',1),(132,'无敌巨无霸',23,19,'hb1 (1).jpg',3,'高糖高热量，谢谢',50,'2020-01-03 00:00:00',1),(133,'芝士牛肉堡',61,13,'hb1 (2).jpg',3,'你可能需要一杯元气森林',110,'2020-02-03 00:00:00',1),(134,'一个汉堡',97,9,'hb1 (3).jpg',3,'单人快餐必备',80,'2020-02-03 00:00:00',1),(135,'哈根达斯冰淇淋',16,12,'bql (1).jpg',4,'“广蛋”蛋筒冰淇淋和“花心王子”脆筒冰淇淋',70,'2021-09-04 22:00:59',1),(136,'美怡乐冰淇淋 ',12,4,'bql (3).jpg',4,'口感细腻、果味鲜纯、营养丰富',70,'2021-09-04 22:00:59',1),(137,'雪觅冰淇淋 ',13,8,'bql (5).jpg',4,'香浓、顺滑的口感，是关心与爱的体现',70,'2021-09-04 22:00:59',1),(138,'八喜冰淇淋 ',15,3,'bql (4).jpg',4,'香醇丝滑，流连忘返',70,'2021-09-04 22:00:59',1),(139,'冰雪皇后冰淇淋 ',17,7,'bql (8).jpg',4,'在酷暑体验严冬的冰凉',70,'2021-09-04 22:00:59',1),(140,'巴顿冰淇淋',20,9,'bql (7).jpg',4,'怕被冰冻勿扰',70,'2021-09-04 22:00:59',1),(141,'BERTHILLON Ice cream',20,15,'bql (9).jpg',4,'让人有罪恶感的香浓冰激凌和果汁冰块',70,'2021-09-04 22:00:59',1),(142,'玛格丽特披萨',23,22,'pexels-ponyo-sakana-5088745(1).jpg',5,'高蛋白质、高筋度',40,'2021-09-04 22:00:59',1),(143,'至尊披萨',66,52,'pexels-roman-odintsov-5903384(1).jpg',5,'口感细腻、果味鲜纯、营养丰富',50,'2021-09-04 22:00:59',1),(144,'鸡蛋香肠比萨',42,13,'pexels-cats-coming-367915(1).jpg',5,'营养中式餐必备',30,'2021-09-04 22:00:59',1),(145,'红烧鸡块披萨',36,24,'pexels-ponyo-sakana-5088745(1).jpg',5,'食肉爱好者',20,'2021-09-04 22:00:59',1),(146,'夏威夷披萨',12,26,'pexels-engin-akyurt-1435903(1).jpg',5,'来感受夏威夷的独特风味吧',10,'2021-09-04 22:00:59',1),(147,'食肉兽披萨',36,30,'pexels-ponyo-sakana-5088745(1).jpg',5,'不要吃我啊~~',80,'2021-09-04 22:00:59',1),(148,'马卡龙',24,4,'pexels-faizan-8753745.jpg',6,'口感细腻、果味鲜纯、营养丰富',40,'2021-09-04 22:00:59',1),(149,'巧克力歌剧院',23,8,'pexels-monstera-7144388.jpg',6,'香醇丝滑，流连忘返',70,'2021-09-04 22:00:59',1),(150,'蓝莓子乳酪松饼',14,7,'pexels-pixabay-248469.jpg',6,'清香闲暇',50,'2021-09-04 22:00:59',1),(151,'日式芝士蛋糕',16,10,'pexels-element-digital-669734.jpg',6,'香醇丝滑，流连忘返',10,'2021-09-04 22:00:59',1),(152,'西梅合桃蛋糕',19,12,'pexels-monstera-7144389.jpg',6,'“广蛋”蛋筒冰淇淋和“花心王子”脆筒冰淇淋',30,'2021-09-04 22:00:59',1),(153,'芒果白雪黑糯米甜甜',8,7,'pexels-hilal-bülbül-7552590.jpg',6,'来感受挪威的独特风味吧',44,'2021-09-04 22:00:59',1),(154,'起司蛋糕',36,13,'pexels-faizan-8753745.jpg',6,'日式甜点',20,'2021-09-04 22:00:59',1),(155,'鸡蛋与豆浆',12,5,'pexels-nadi-lindsay-3141808.jpg',1,'欢迎送钱，难吃还贵',100,'2020-01-03 00:00:00',1),(156,'油条与豆浆',12,5,'pexels-polina-tankilevitch-4109381.jpg',1,'营养早餐，快来尝鲜',110,'2020-02-03 00:00:00',1),(157,'芝士奶酪面包',12,5,'pexels-regina-ferraz-6133453.jpg',1,'高热量高脂肪，欢迎去世',210,'2020-02-03 00:00:00',1),(158,'香辣鸡腿堡与豆浆',12,5,'pexels-rodnae-productions-6529925.jpg',1,'开胃充饥，直击味蕾',30,'2020-01-03 00:00:00',1),(159,'中国红袍与法式罗丝',12,5,'pexels-taryn-elliott-4099178.jpg',1,'清香与热量之间的碰撞！',110,'2020-02-03 00:00:00',1),(161,'果粒橙',12,6,'pexels-lisa-1292862 (1).jpg',2,'欢迎送钱，难吃还贵',40,'2020-01-03 00:00:00',1),(162,'冰爽雪碧',15,4,'pexels-breakingpic-3018 (2).jpg',2,'解腻神仙水',610,'2020-02-03 00:00:00',1),(163,'可乐',16,4,'pexels-leah-kelley-341514.jpg',2,'高热量高脂肪，欢迎去世',250,'2020-02-03 00:00:00',1),(164,'元气森林',13,5,'pexels-nikolay-osmachko-229493.jpg',2,'高糖高热量，谢谢',80,'2020-01-03 00:00:00',1),(165,'中国红茶',8,2,'pexels-pixabay-259955.jpg',2,'清香与热量之间的碰撞！',510,'2020-02-03 00:00:00',1),(166,'鲜榨椰汁',9,3,'pexels-saliha-9088948.jpg',2,'清香闲暇',40,'2020-02-03 00:00:00',1),(167,'香辣牛肉堡',16,12,'hb1 (5).jpg',3,'欢迎送钱，难吃还贵',70,'2020-01-03 00:00:00',1),(168,'刺激鬼椒羊肉堡',17,15,'hb1 (9).jpg',3,'需要签生死状',20,'2020-02-03 00:00:00',1),(169,'鲜香鸡肉堡',11,10,'hb1 (17).jpg',3,'高热量高脂肪，欢迎去世',10,'2020-02-03 00:00:00',1),(170,'无敌巨无霸',23,19,'hb1 (15).jpg',3,'高糖高热量，谢谢',50,'2020-01-03 00:00:00',1),(171,'芝士',61,13,'p-3.jpg',3,'你可能需要一杯元气森林',110,'2020-02-03 00:00:00',1),(172,'一个汉堡',97,9,'hb1 (10).jpg',3,'单人快餐必备',80,'2020-02-03 00:00:00',1),(173,'哈根达斯冰淇淋',16,12,'bql (11).jpg',4,'“广蛋”蛋筒冰淇淋和“花心王子”脆筒冰淇淋',70,'2021-09-04 22:00:59',1),(174,'美怡乐冰淇淋 ',12,4,'bql (12).jpg',4,'口感细腻、果味鲜纯、营养丰富',70,'2021-09-04 22:00:59',1),(175,'雪觅冰淇淋 ',13,8,'bql (13).jpg',4,'香浓、顺滑的口感，是关心与爱的体现',70,'2021-09-04 22:00:59',1),(176,'八喜冰淇淋 ',15,3,'bql (1).jpg',4,'香醇丝滑，流连忘返',70,'2021-09-04 22:00:59',1),(177,'冰雪皇后冰淇淋 ',17,7,'bql (10).jpg',4,'在酷暑体验严冬的冰凉',70,'2021-09-04 22:00:59',1),(178,'巴顿冰淇淋',20,9,'bql (9).jpg',4,'怕被冰冻勿扰',70,'2021-09-04 22:00:59',1),(179,'BERTHILLON Ice cream',20,15,'bql (4).jpg',4,'让人有罪恶感的香浓冰激凌和果汁冰块',70,'2021-09-04 22:00:59',1),(180,'玛格丽特披萨',23,22,'pexels-arthur-brognoli-3343626(1).jpg',5,'高蛋白质、高筋度',40,'2021-09-04 22:00:59',1),(181,'至尊披萨',66,52,'pexels-horizon-content-3761671(1).jpg',5,'口感细腻、果味鲜纯、营养丰富',50,'2021-09-04 22:00:59',1),(182,'鸡蛋香肠比萨',42,13,'pexels-ponyo-sakana-5088745(1).jpg',5,'营养中式餐必备',30,'2021-09-04 22:00:59',1),(183,'红烧鸡块披萨',36,24,'pexels-pixabay-208537(1).jpg',5,'食肉爱好者',20,'2021-09-04 22:00:59',1),(184,'夏威夷披萨',12,26,'pexels-engin-akyurt-1435903(1).jpg',5,'来感受夏威夷的独特风味吧',10,'2021-09-04 22:00:59',1),(185,'食肉兽披萨',36,30,'pexels-jonathan-petersson-1166120(1).jpg',5,'不要吃我啊~~',80,'2021-09-04 22:00:59',1),(187,'巧克力歌剧院',23,8,'pexels-dmitriy-ganin-7694044.jpg',6,'香醇丝滑，流连忘返',70,'2021-09-04 22:00:59',1),(188,'蓝莓子乳酪松饼',14,7,'pexels-karolina-grabowska-5706427.jpg',6,'清香闲暇',50,'2021-09-04 22:00:59',1),(189,'日式芝士蛋糕',16,10,'pexels-pixabay-248469.jpg',6,'香醇丝滑，流连忘返',10,'2021-09-04 22:00:59',1),(190,'西梅合桃蛋糕',19,12,'pexels-solodsha-9008662.jpg',6,'“广蛋”蛋筒冰淇淋和“花心王子”脆筒冰淇淋',30,'2021-09-04 22:00:59',1),(191,'芒果白雪黑糯米甜甜',8,7,'pexels-anna-nekrashevich-7552317.jpg',6,'来感受挪威的独特风味吧',44,'2021-09-04 22:00:59',1),(203,'香蕉',20,10,'p-2.jpg',6,'非常黄',20,'2021-12-07 23:14:54',1);

/*Table structure for table `hanbao` */

DROP TABLE IF EXISTS `hanbao`;

CREATE TABLE `hanbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `yprice` double NOT NULL,
  `xprice` double NOT NULL,
  `imageName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `typeId` int(11) NOT NULL,
  `info` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `saleNum` int(11) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `hanbao` */

insert  into `hanbao`(`id`,`name`,`yprice`,`xprice`,`imageName`,`typeId`,`info`,`saleNum`,`time`,`tid`) values (1,'香辣牛肉堡',16,12,'br2.png',3,'欢迎送钱，难吃还贵',70,'2020-01-03 00:00:00',1),(2,'刺激鬼椒羊肉堡',17,15,'br3.png',3,'需要签生死状',20,'2020-02-03 00:00:00',1),(3,'鲜香鸡肉堡',11,10,'br4.png',3,'高热量高脂肪，欢迎去世',10,'2020-02-03 00:00:00',1),(4,'无敌巨无霸',23,19,'br5.png',3,'高糖高热量，谢谢',50,'2020-01-03 00:00:00',1),(5,'芝士牛肉堡',61,13,'br6.png',3,'你可能需要一杯元气森林',110,'2020-02-03 00:00:00',1),(6,'一个汉堡',97,9,'burger.png',3,'单人快餐必备',80,'2020-02-03 00:00:00',1);

/*Table structure for table `ice` */

DROP TABLE IF EXISTS `ice`;

CREATE TABLE `ice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `yprice` double NOT NULL,
  `xprice` double NOT NULL,
  `imageName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `typeId` int(11) NOT NULL,
  `info` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `saleNum` int(11) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ice` */

insert  into `ice`(`id`,`name`,`yprice`,`xprice`,`imageName`,`typeId`,`info`,`saleNum`,`time`,`tid`) values (1,'哈根达斯冰淇淋',16,12,'1.jpg',4,'“广蛋”蛋筒冰淇淋和“花心王子”脆筒冰淇淋',70,'2021-09-04 22:06:01',1),(2,'美怡乐冰淇淋 ',12,4,'2.jpg',4,'口感细腻、果味鲜纯、营养丰富',70,'2021-09-04 22:06:01',1),(3,'雪觅冰淇淋 ',13,8,'3.jpg',4,'香浓、顺滑的口感，是关心与爱的体现',70,'2021-09-04 22:06:01',1),(4,'八喜冰淇淋 ',15,3,'4.jpg',4,'香醇丝滑，流连忘返',70,'2021-09-04 22:06:01',1),(5,'冰雪皇后冰淇淋 ',17,7,'5.jpg',4,'在酷暑体验严冬的冰凉',70,'2021-09-04 22:06:01',1),(6,'巴顿冰淇淋',20,9,'6.jpg',4,'怕被冰冻勿扰',70,'2021-09-04 22:06:01',1),(7,'BERTHILLON Ice cream',20,15,'7.jpg',4,'让人有罪恶感的香浓冰激凌和果汁冰块',70,'2021-09-04 22:06:01',1);

/*Table structure for table `info` */

DROP TABLE IF EXISTS `info`;

CREATE TABLE `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `info` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `tid` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `info` */

/*Table structure for table `infotable` */

DROP TABLE IF EXISTS `infotable`;

CREATE TABLE `infotable` (
  `useid` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `infotable` */

/*Table structure for table `music` */

DROP TABLE IF EXISTS `music`;

CREATE TABLE `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `music` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `music` */

insert  into `music`(`id`,`name`,`music`,`info`) values (1,'Driving Home for Christmas','Campsite Dream - Driving Home For Christmas.mp3','Driving Home for Christmas'),(2,'Such a Whore','刘鹅 - Such a Whore (Remix).mp3','Such a Whore'),(3,'You can never tell','Chuck Berry - You Never Can Tell.mp3','You can never tell'),(4,'最好','薛之谦 - 最好.mp3','最好');

/*Table structure for table `outinfo` */

DROP TABLE IF EXISTS `outinfo`;

CREATE TABLE `outinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `tktime` datetime DEFAULT CURRENT_TIMESTAMP,
  `price` double NOT NULL,
  `info` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `tktid` int(11) NOT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `did` (`did`),
  CONSTRAINT `outinfo_ibfk_1` FOREIGN KEY (`did`) REFERENCES `dingdan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `outinfo` */

insert  into `outinfo`(`id`,`did`,`qty`,`tktime`,`price`,`info`,`tktid`,`typeid`) values (50,118,1,'2021-12-07 23:07:55',9,'',2,NULL),(51,119,1,'2021-12-07 23:09:56',12,'',1,NULL);

/*Table structure for table `picture` */

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `face` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `picture` */

insert  into `picture`(`id`,`picture`,`title`,`info`,`face`) values (1,'hb1 (6).jpg','美味汉堡啊','用心做好每一口哦~','s-1.png'),(2,'s-img-2.jpg','美味披萨','用心做好每一口哦~','s-3.png'),(3,'s-img-3.jpg','可口冰淇淋','用心做好每一口哦~','s-3.png'),(4,'s-img-4.jpg','可口饮料','感受冰雪世界','s-4.png'),(5,'s-img-5.jpg','回味甜点','用心做好每一口哦~','s-5.png'),(6,'s-img-6.jpg','健康早餐','健康早餐,胃自己','s-6.png');

/*Table structure for table `pizza` */

DROP TABLE IF EXISTS `pizza`;

CREATE TABLE `pizza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `yprice` double NOT NULL,
  `xprice` double NOT NULL,
  `imageName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `typeId` int(11) NOT NULL,
  `info` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `saleNum` int(11) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pizza` */

insert  into `pizza`(`id`,`name`,`yprice`,`xprice`,`imageName`,`typeId`,`info`,`saleNum`,`time`,`tid`) values (1,'玛格丽特披萨',23,22,'1.png',5,'高蛋白质、高筋度',40,'2021-09-04 22:06:01',1),(2,'至尊披萨',66,52,'2.jpg',5,'口感细腻、果味鲜纯、营养丰富',50,'2021-09-04 22:06:01',1),(3,'鸡蛋香肠比萨',42,13,'3.jpg',5,'营养中式餐必备',30,'2021-09-04 22:06:01',1),(4,'红烧鸡块披萨',36,24,'4.jpg',5,'食肉爱好者',20,'2021-09-04 22:06:01',1),(5,'夏威夷披萨',12,26,'5.png',5,'来感受夏威夷的独特风味吧',10,'2021-09-04 22:06:01',1),(6,'食肉兽披萨',36,30,'6.png',5,'不要吃我啊~~',80,'2021-09-04 22:06:01',1);

/*Table structure for table `recentlyremove` */

DROP TABLE IF EXISTS `recentlyremove`;

CREATE TABLE `recentlyremove` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double NOT NULL,
  `imagename` varchar(50) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

/*Data for the table `recentlyremove` */

insert  into `recentlyremove`(`rid`,`fid`,`name`,`qty`,`price`,`imagename`,`uid`) values (44,55,'鲜香鸡肉堡',1,10,'hb1 (9).jpg',1),(45,56,'无敌巨无霸',1,19,'hb1 (5).jpg',1);

/*Table structure for table `scart` */

DROP TABLE IF EXISTS `scart`;

CREATE TABLE `scart` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `CarItem_User_Id` (`uid`),
  CONSTRAINT `CarItem_User_Id` FOREIGN KEY (`uid`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `scart` */

insert  into `scart`(`cid`,`uid`,`fid`,`qty`) values (123,1,14,1),(124,1,15,1),(125,1,16,1),(126,1,17,1),(127,1,18,1),(128,1,53,1),(131,1,1,1);

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `userName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` datetime DEFAULT CURRENT_TIMESTAMP,
  `zhucetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `staff` */

insert  into `staff`(`id`,`name`,`pwd`,`sex`,`userName`,`email`,`tel`,`birthday`,`zhucetime`,`address`,`images`) values (1,'111','111','保密','修罗斯','26234@qq.com','12345678998','2021-09-04 22:06:01','2021-09-04 22:06:01','陶森','sta1.png'),(2,'222','222','女','Faker','26234@qq.com','1234567897','2021-09-04 22:06:01','2021-09-04 22:06:01','白果','sta2.png'),(3,'333','444','保密','曹孟德','26234@qq.com','74125896325','2021-09-04 22:06:01','2021-09-04 22:06:01','诺维格瑞','sta3.png'),(4,'987','789','男','Boss','26234@qq.com','78965236987','2021-09-04 22:06:01','2021-09-04 22:06:01','史利凯格','sta4.png'),(5,'456','996','男','贾斯汀','26234@qq.com','42369851477','2021-09-04 22:06:01','2021-09-04 22:06:01','皇家园','sta5.png'),(6,'741','147','男','霉霉','26234@qq.com','32569842596','2021-09-04 22:06:01','2021-09-04 22:06:01','威伦','sta6.png'),(7,'666','555','男','欧迪姆-刚特','26234@qq.com','14265896357','2021-09-04 22:06:01','2021-09-04 22:06:01','诺维格瑞','sta7.png'),(8,'444','333','男','古力娜扎','26234@qq.com','7458963259','2021-09-04 22:06:01','2021-09-04 22:06:01','陶森特','sta8.png'),(9,'222','111','男','杨幂','26234@qq.com','75639852147','2021-09-04 22:06:01','2021-09-04 22:06:01','夏威夷群岛','sta9.png');

/*Table structure for table `sweets` */

DROP TABLE IF EXISTS `sweets`;

CREATE TABLE `sweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `yprice` double NOT NULL,
  `xprice` double NOT NULL,
  `imageName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `typeId` int(11) NOT NULL,
  `info` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `saleNum` int(11) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sweets` */

insert  into `sweets`(`id`,`name`,`yprice`,`xprice`,`imageName`,`typeId`,`info`,`saleNum`,`time`,`tid`) values (1,'马卡龙',24,4,'1.jpg',6,'口感细腻、果味鲜纯、营养丰富',40,'2021-09-04 22:06:01',1),(2,'巧克力歌剧院',23,8,'2.jpg',6,'香醇丝滑，流连忘返',70,'2021-09-04 22:06:01',1),(3,'蓝莓子乳酪松饼',14,7,'3.jpg',6,'清香闲暇',50,'2021-09-04 22:06:01',1),(4,'日式芝士蛋糕',16,10,'4.jpg',6,'香醇丝滑，流连忘返',10,'2021-09-04 22:06:01',1),(5,'西梅合桃蛋糕',19,12,'5.jpg',6,'“广蛋”蛋筒冰淇淋和“花心王子”脆筒冰淇淋',30,'2021-09-04 22:06:01',1),(6,'芒果白雪黑糯米甜甜',8,7,'6.jpg',6,'来感受挪威的独特风味吧',44,'2021-09-04 22:06:01',1),(7,'起司蛋糕',36,13,'7.jpg',6,'日式甜点',20,'2021-09-04 22:06:01',1);

/*Table structure for table `type` */

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `type` */

insert  into `type`(`id`,`type`,`name`) values (1,1,'早餐'),(2,2,'饮料'),(3,3,'汉堡'),(4,4,'冰淇淋'),(5,5,'披萨'),(6,6,'甜点');

/*Table structure for table `userordr` */

DROP TABLE IF EXISTS `userordr`;

CREATE TABLE `userordr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kid` int(11) DEFAULT NULL,
  `useid` int(11) DEFAULT '0',
  `info` varchar(200) DEFAULT NULL,
  `yd` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `userordr` */

insert  into `userordr`(`id`,`kid`,`useid`,`info`,`yd`) values (5,0,3,'hhh',1),(6,0,3,'阿达',1),(7,0,3,'违规可',1),(8,0,3,'违规',1),(9,0,3,'123',1),(10,0,3,'违规',1),(11,0,3,'违规',1),(12,0,1,'你好',1);

/*Table structure for table `vip` */

DROP TABLE IF EXISTS `vip`;

CREATE TABLE `vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cvid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `vip` */

insert  into `vip`(`id`,`cvid`) values (1,2),(2,2);

/*Table structure for table `working` */

DROP TABLE IF EXISTS `working`;

CREATE TABLE `working` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `type` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `working` */

insert  into `working`(`id`,`title`,`content`,`createDate`,`type`) values (1,'标题1','好好学习','2021-09-12 13:04:05',1),(2,'标题2','好好学习','2021-09-12 13:04:05',2),(3,'标题4','好好学习','2021-09-12 13:04:05',3),(4,'标题3','好好学习','2021-09-12 13:04:05',2),(5,'标题6','好好学习','2021-09-12 13:04:05',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
