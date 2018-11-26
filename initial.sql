-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ewha
-- ------------------------------------------------------
-- Server version	5.6.34-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `author` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'“도끼 엄마 돈 안 갚았다” 주장에 도끼 형 고르도 “법적으로 이미 끝난 일” ','국내 유명 래퍼 ‘도끼’의 어머니가 20년 전 중학교 동창생에게 1000여만원을 빌려 간 뒤 아직 갚지 않고 있다는 주장이 나왔다. \r\n도끼 어머니인 김모(61)씨의 중학교 동창이라는 A씨는 영남일보에 “IMF 외환위기 이후 부산 해운대 인근에서 대형 레스토랑을 운영하던 김씨에게 1000여만원을 빌려줬는데 돈을 빌려 간 후 지금까지 얼굴 한 번 본 적 없고 연락이 닿지 않은 채 잠적했다”고 주장했다.','이신혜'),(2,'왜 암보다 무서운 병일까? “20대부터 진행된다” ','송년 모임이 잦아지고 날씨가 추워지면서 바짝 긴장해야 할 사람들이 있다. 혼자서 등산을 즐기거나 흥분을 잘 하는 사람도 조심해야 하는 질환이다. 바로 협심증이다. 병이 심해지면 심근경색증으로 진행해 돌연사의 원인이 되기도 한다.\r\n\r\n협심증은 심장에 혈액을 공급하는 혈관인 관상동맥이 동맥경화증으로 좁아져서 생기는 병이다. 관상동맥 내부의 동맥경화성 변화는 사실상 20대 초반부터 진행된다. 간간이 나타나는 가슴 통증이 생명을 위협할 수 있는 것이다.\r\n','김용'),(3,'\"우리에겐 박항서 있다\"…스즈키컵 4강진출에 베트남 \'들썩\' ','하노이 시내 축구팬들 자축 열기…\"반드시 우승할 것\"\r\n\r\n(하노이=연합뉴스) 민영규 특파원 = 박항서 감독이 이끄는 베트남 축구대표팀이 24일 아세안축구연맹(AFF) 스즈키컵 2018 조별리그 최종전에서 캄보디아를 3-0으로 완파하고 조 1위로 4강에 진출하자 베트남 전역이 들썩였다.\r\n\r\n종료 휘슬이 울리자 경기가 펼쳐진 베트남 하노이 항더이 경기장과 하노이 시내 주요 관광지 호안끼엠 등지에서 단체응원을 하던 팬들은 양팔을 번쩍 들어 올리며 환호했다.\r\n','민영규');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-26 17:29:44
