-- MySQL dump 10.13  Distrib 5.7.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: exam
-- ------------------------------------------------------
-- Server version	5.7.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminId` int(9) NOT NULL AUTO_INCREMENT COMMENT 'ID号',
  `adminName` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `sex` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `tel` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码',
  `email` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '电子邮箱',
  `pwd` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `cardId` varchar(18) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `role` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '角色(0管理员，1教师，2学生)',
  PRIMARY KEY (`adminId`) USING BTREE,
  KEY `sex` (`sex`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9528 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='管理员信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (9527,'超级管理员','男','13658377857','1253838283@qq.com','123456','3132','0');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_manage`
--

DROP TABLE IF EXISTS `exam_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_manage` (
  `examCode` int(9) NOT NULL AUTO_INCREMENT COMMENT '考试编号',
  `description` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '该次考试介绍',
  `source` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '课程名称',
  `paperId` int(10) DEFAULT NULL COMMENT '试卷编号',
  `examDate` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '考试日期',
  `totalTime` int(3) DEFAULT NULL COMMENT '持续时长',
  `grade` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '年级',
  `term` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '学期',
  `major` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '专业',
  `institute` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '学院',
  `totalScore` int(4) DEFAULT NULL COMMENT '总分',
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '考试类型',
  `tips` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '考生须知',
  PRIMARY KEY (`examCode`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20190005 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='考试管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_manage`
--

LOCK TABLES `exam_manage` WRITE;
/*!40000 ALTER TABLE `exam_manage` DISABLE KEYS */;
INSERT INTO `exam_manage` VALUES (20190002,'2021上期期末考试','初中生物',1002,'2021-04-18',90,'2017级',NULL,'生物','沈阳师范大学附属中学',100,'期末考试','快乐千万条，学习第一条，平时不努力，考试两行泪。'),(20190003,'2021上期期末考试','初中英语',1003,'2021-04-19',120,'2017级',NULL,'英语','沈阳师范大学附属中学',100,'期末考试','http://vpcs.cqvip.com/organ/lib/synu/'),(20190004,'测试编辑按钮是否有效','初中生物_测试',1004,'2021-04-20',120,'2017级',NULL,'语文','沈阳师范大学附属中学',100,'期末考试','测试！！！！\nTEST！！！！');
/*!40000 ALTER TABLE `exam_manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fill_question`
--

DROP TABLE IF EXISTS `fill_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fill_question` (
  `questionId` int(9) NOT NULL AUTO_INCREMENT COMMENT '试题编号',
  `subject` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '考试科目',
  `question` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '试题内容',
  `answer` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '正确答案',
  `analysis` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '题目解析',
  `score` int(2) DEFAULT '2' COMMENT '分数',
  `level` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '难度等级',
  `section` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '所属章节',
  PRIMARY KEY (`questionId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='填空题题库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fill_question`
--

LOCK TABLES `fill_question` WRITE;
/*!40000 ALTER TABLE `fill_question` DISABLE KEYS */;
INSERT INTO `fill_question` VALUES (1,'初中生物','呼吸作用的强弱主要受温度、水分、氧气、()浓度等条件的影响．','二氧化碳','呼吸作用是生物体的基本生命特征，呼吸作用的部位是线粒体，一般情况下，温度高，呼吸作用强；水分越大，代谢越旺盛，呼吸作用越强；呼吸作用的原料需要氧气，故氧浓度大，呼吸作用越强；呼吸作用的产物是二氧化碳，二氧化碳浓度大，反而会抑制呼吸作用，故呼吸作用的强弱主要受温度、水分、氧气、二氧化碳浓度等条件的影响．',2,'3','生物圈中的绿色植物'),(2,'初中生物','玉米开花时如遇到连阴雨，为提高产量，应采取的措施是()．','人工辅助授粉','异花传粉往往容易受到环境条件的限制，得不到传粉的机会，如风媒传粉没有风，虫媒传粉因风大或气温低，而缺少足够昆虫飞出活动传粉等，从而降低传粉和受精的机会，影响到果实和种子的产量．玉米花是风媒花，玉米开花如果遇到连绵阴雨，花粉被雨水冲落，影响风力传粉，玉米的果穗常常有缺粒．为了弥补自然状态下传粉不足，为提高产量，应采取的措施是：人工辅助授粉．',2,'2','生物的生殖、发育与遗传'),(3,'初中生物','我们做家具所用的“木材”是指茎中的()．','木质部','树皮靠近树皮的外侧，具有保护作用，内层为韧皮部里面有筛管可以运输有机物，形成层细胞具有分裂能力，向外分裂产生韧皮部，向内分裂产生木质部；木质部内有导管可以运输水分和无机盐，里面有木纤维，对茎有很强的支持作用；髓由薄壁细胞组成，具有储存营养的作用；所以做家具是常用茎中的木质部，里面有木纤维，使家具比较结实．',2,'3','生物圈中的绿色植物'),(4,'初中生物','把新鲜的水草放在鱼缸里的主要目的是鱼可以得到充足的()．','氧气',NULL,2,'1','生物与环境'),(5,'初中生物','菜豆种子和玉米种子的相同点是都有()和()．','种皮,胚',NULL,2,'2','生物圈中的绿色植物'),(6,'初中生物','生物体在生长发育中，细胞分化产生了不同的细胞群，每个细胞群都是由形态相似，结构和功能相同的细胞和细胞间质联合在一起形成()．','组织','细胞在不断分裂的过程中，分裂后的细胞不断的生长，再不断的分裂．而一部分生长后的细胞停止了分裂，在形态、结构、功能上发生了变化，即结构、功能、形态相似的聚集在一块形成细胞群．所以组织就是指形态相似、结构、功能相同的细胞群．',2,'2','生物体的结构层次'),(7,'初中生物','一棵树从小树苗长大成为参天的大树，是由于该树的()增多和细胞体积增大的结果．','细胞数目','细胞的分裂就是一个细胞分成两个细胞的过程，其结果是细胞的数目增多．细胞的生长是细胞从周围环境中吸收营养物质，并且转变成组成自身的物质，体积由小变大的过程，因此细胞生长的结果是细胞的体积增大．细胞分化是细胞的形态结构、功能发生变化的过程，细胞的分化形成不同的组织，由不同的是组织形成各种器官，再由六大器官构成植物体．所以一棵树从小树苗长大成为参天的大树，是由于该树的细胞数目增多和细胞体积增大的结果．\n故答案为：细胞数目',2,'3','生物体的结构层次'),(8,'初中生物','构成人体的结构层次依次是细胞-()-器官-系统-人体．','组织','细胞是人体结构和功能的基本单位，人体是由细胞分化形成组织，人体的主要组织有上皮组织、肌肉组织、结缔组织、神经组织等，再由这几种不同的组织按照一定的次序结合在一起形成具有一定功能的器官，再由能够共同完成一种或几种生理功能的多个器官按照一定的次序组合在一起形成系统，人体有消化系统、呼吸系统、循环系统、泌尿系统、运动系统、生殖系统、内分泌系统和神经系统．最后由八大系统构成完整的人体．因此人体的结构层次由小到大依次是细胞→组织→器官→系统→人体．',2,'3','生物圈中的人'),(9,'初中生物','麻雀具有而松树不具有的结构层次是()．','系统','与动物体的结构层次相比，植物体的结构层次不具有系统．麻雀是动物，有系统，松树上植物，无系统．',2,'3','生物体的结构层次'),(10,'初中生物','成语“藕断丝连”中的“丝”属于()组织．','输导','藕丝是藕的导管壁增厚部连续成螺旋形的导管，具有运输营养物质的作用，因此属于输导组织．',2,'3','生物圈中的绿色植物');
/*!40000 ALTER TABLE `fill_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_question`
--

DROP TABLE IF EXISTS `judge_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judge_question` (
  `questionId` int(9) NOT NULL AUTO_INCREMENT COMMENT '试题编号',
  `subject` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '考试科目',
  `question` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '试题内容',
  `answer` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '正确答案',
  `analysis` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '题目解析',
  `score` int(2) DEFAULT '2' COMMENT '分数',
  `level` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '难度等级',
  `section` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '所属章节',
  PRIMARY KEY (`questionId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='判断题题库表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_question`
--

LOCK TABLES `judge_question` WRITE;
/*!40000 ALTER TABLE `judge_question` DISABLE KEYS */;
INSERT INTO `judge_question` VALUES (1,'初中生物','生物技术的发展对人类都是有害的。','F','生物技术的发展为人类带来巨大利益的同时，也带来了一些明显的或潜在的威胁或一些社会伦理问题，有三方面的安全性问题：食物安全，生物安全和环境安全，伦理问题：克隆技术一旦用于人类自身，人类新成员就可以被人为地创造，成为实验室中的高科技产物，他们不是来自合乎法律与道德标准的传统的家庭，兄弟、姐妹、父母、子女之间的相互人伦关系必将发生混乱，人们很难想象和接受这种对人类社会基本组织--家庭的巨大冲击，这对人类社会现有法律、伦理、道德产生威胁，对人类的观念是严峻的挑战，可见题中的叙述是错误的。',2,'1','生物技术'),(2,'初中生物','植物没有神经，所以对外界刺激不会作出反应。 ','F','生物的特征有①生物的生活需要营养，②生物能进行呼吸，③生物能排出身体内产生的废物，④生物能对外界刺激作出反应，⑤生物能生长和繁殖，⑥除病毒以外，生物都是由细胞构成的，生物能够对来自环境中的各种刺激作出一定的反应，如含羞草受到碰触时，展开的叶片会合拢，因此，植物不具有对外界刺激作出反应的能力的说法是错误的。',2,'1','生物圈中的绿色植物'),(3,'初中生物','骡是马和驴杂交产生的后代。','T',NULL,2,'1','生物的生殖、发育与遗传'),(4,'初中生物','动植物细胞共有的能量转换器是叶绿体和线粒体   ','F','叶绿体和线粒体分别是绿色植物进行光合作用和呼吸作用的能量转换器，其中叶绿体是绿色植物所特有的，叶绿体中的叶绿素能够吸收光能．叶绿体可将光能转变成化学能，并将化学能储存在它所制造的有机物中．植物细胞和动物细胞都含有线粒体，线粒体将储存在有机物中的化学能释放出来供给生命活动的需要．植物细胞内的能量转换器有叶绿体和线粒体两种；动物细胞内只有线粒体一种．因此细胞中的能量转换器是叶绿体和线粒体的说法是错误的．',2,'3','生物圈中的绿色植物'),(5,'初中生物','核糖体是蛋白质合成的场所，是细胞不可缺少的基本结构，它存在于所有细胞中。','T','本题考查知识点为细胞结构。由于核糖体的功能是合成蛋白质，而任一细胞中都不能缺乏蛋白质作为其结构组成，因此无论是细菌细胞还是人体细胞中都存在核糖体。',2,'3','生物体的结构层次'),(6,'初中生物','除病毒外的绝大多数生物都是由细胞构成的。细胞是生命活动的基本单位。','T','1）一切有机体都由细胞构成，细胞是构成有机体的基本单位（病毒除外）．\n2）细胞是代谢与功能的基本单位．\n3）细胞是有机体生长与发育的基础．\n4）细胞是遗传的基本单位，具有遗传全能性．\n5）没有细胞就没有完整的生命\n6）病毒没有细胞结构但是能靠自身的遗传物质中的遗传信息，利用寄主细胞内的物质，制造出新病毒．这就是它的繁殖，所以病毒也是生物．\n答：病毒是生物，没有细胞结构．因此除病毒外的绝大多数生物都是由细胞构成的．细胞是生命活动的基本单位',2,'1','生物体的结构层次'),(7,'初中生物','水、无机盐和维生素都是能够为人体提供生命活动所需能量的营养物质。','F',NULL,2,'3','生物圈中的人'),(8,'初中生物','不同种生物的基因有较大差别，同种生物的个体之间，在基因组成上完全相同。','F',NULL,2,'2','生物的多样性'),(9,'初中生物','一条染色体上只有一个基因。','F',NULL,2,'2','生物的生殖、发育与遗传'),(10,'初中生物','细胞中的物质和能量变化需要统一的指挥和控制，细胞的控制中心是细胞核。','T','细胞遗传性和细胞代谢活动的控制中心，遗传物质能经复制后传给子代，同时遗传物质还必须将其控制的生物性状特征表现出来，这些遗传物质绝大部分都存在于细胞核中，所以，细胞核又是细胞遗传性和细胞代谢活动的控制中心，故题干的叙述是正确的。\n点评：此题为基础题，难度一般，熟记：细胞核内有染色体，染色体有DNA和蛋白质构成，DNA含有遗传物质，能控制细胞的生命活动。',2,'3','生物的生殖、发育与遗传'),(11,'初中生物','遗传信息的载体是蛋白质。','F','本题考查的是细胞核中的遗传信息载体-DNA。染色体存在于细胞核里，是细胞内具有遗传性质的物体，易被碱性染料染成深色，所以叫染色体；由蛋白质和DNA组成，是遗传物质基因的载体。DNA是主要的遗传物质，是遗传信息的载体。故错误',2,'3','生物的生殖、发育与遗传'),(12,'初中生物','以色列科学家利用胚胎干细胞成功培育出了心肌细胞，依据的原理主要是细胞分裂。','F','细胞分化的过程大致是：细胞分裂所产生的新细胞，起初在形态、结构方面都很相似，并且都具有分裂能力．后来除了一小部分细胞仍然保持着分裂能力以外，大部细胞失去了分裂能．在生长过程中，这些细胞各自具有了不同的功能，它们在形态、结构上也逐渐发生了变化，结果就逐渐形成了不同的组织．经过细胞分化，在多细胞生物体内就会形成各种不同的细胞和组织．例如，在动物胚胎发育过程中，红细胞和心肌细胞都是来自中胚层．但是，后来红细胞能够合成血红蛋白，而心肌细胞则能够合成肌动蛋白和肌球蛋白．这两种细胞的稳定性变异是不可逆转的．胚胎干细胞成功培育出了心肌细胞．是利用细胞分化形成不同的组织，使胚胎干细胞在特定的条件下分化出人类需要的心肌细胞．故此题说法错误。',2,'4','生物的生殖、发育与遗传'),(13,'初中生物','正常细胞分裂次数是有限的，癌细胞分裂次数也是有限的。','F','生物体细胞每分裂一次，端粒就会缺失一点，而端粒酶可以弥补这样的缺失，然而体细胞的端粒酶活性随着分裂次数而衰减，所以正常的体细胞分裂次数是有限的，癌细胞的端粒酶会被无限激活，所以它可以无限分裂，并且速度很快，因此，癌细胞分裂次数是有限的说法是错误的。\n点评：此题较新颖，难度中等，理解细胞分裂的过程和概念，进行解题。',2,'5','生物的生殖、发育与遗传'),(14,'初中生物','大多数天然RNA分子是一条单链，然而其许多区域自身发生回折，使可以配对的一些碱基相遇，形成如DNA那样的双螺旋结构。','T','根据RNA的某些理化性质和X射线衍射分析研究证明大多数天然RNA分子是一条单链，其许多区域自身发生回折，使可以配对的一些碱基相遇，而由A与U，G与C之间的氢键连接起来，构成如DNA那样的双螺旋；不能配对的碱基则形成环状突起。约有40％—70％的核苷酸参与了螺旋的形成。所以RNA分子是含短的不完全的螺旋区的多核苷酸链。',2,'3','生物的生殖、发育与遗传'),(15,'初中生物','细胞程序死亡是正常的生理过程，但某些细胞在病理条件下也可能发生程序性死亡，如某些病毒感染的细胞。','F','细胞程序死亡是正常的生理过程，但某些细胞在病理条件下也可能发生死亡，如某些病毒感染的细胞，但这属于细胞的坏死。',2,'4','生物体的结构层次'),(16,'初中生物','植物体的六大器官是：根、茎、叶、花、果实、种子。','T',NULL,2,'1','生物圈中的绿色植物'),(17,'初中生物','能使植物个体增多，延续后代的器官不一定就是生殖器官。','T',NULL,2,'2','生物圈中的绿色植物'),(18,'初中生物','植物的根、茎、叶内的导管是连接贯通的。','T',NULL,2,'1','生物圈中的绿色植物'),(19,'初中生物','单细胞生物的生命活动在细胞内完成，多细胞生物的生命活动在细胞外进行。','F',NULL,2,'1','生物体的结构层次'),(20,'初中生物','所有生物的性别都是由X 、Y 性染色体决定的。','F',NULL,2,'1','生物的生殖、发育与遗传');
/*!40000 ALTER TABLE `judge_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(9) NOT NULL AUTO_INCREMENT COMMENT '留言编号',
  `title` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '留言内容',
  `time` date DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='留言表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (2,'晚上加班,这感觉非常的nice','今天是星期一的晚上,下班后回到宿舍继续写我的毕业设计,看着项目功能日渐丰满好开心哦,你们也要元气满满哦！','2021-03-18'),(15,'咸鱼','我是一条咸鱼','2021-03-18'),(16,'今天中午吃什么','今天去吃莲藕排骨汤吧，虽然也不好吃，但这里真的没什么东西可以吃了','2021-03-18'),(20,'这个网站不错','博主大大好厉害，网页看着很清新呢，喜欢这样嘞风格。','2021-03-18'),(21,'男孩子','哇，这么可爱，那肯定是男孩子呀。','2021-03-18'),(22,'好人','你是个好人，可是我们不合适。','2021-03-18'),(25,'小乔','花会枯萎，爱永不凋零，小乔要努力变强。','2021-03-18'),(26,'妲己','妲己会一直爱主人，因为被设定成这样，来和妲己玩耍吧。','2021-03-18'),(27,'土味情话','妈妈从小对我讲，不要早恋，遇到你以后，我决定不听妈妈的话了。','2021-03-31'),(35,'贝塔','开坦克','2021-04-01'),(37,'今天天气真不错~~','适合出去玩耍','2021-04-19');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multi_question`
--

DROP TABLE IF EXISTS `multi_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multi_question` (
  `questionId` int(9) NOT NULL AUTO_INCREMENT COMMENT '试题编号',
  `subject` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '考试科目',
  `question` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '问题题目',
  `answerA` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '选项A',
  `answerB` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '选项B',
  `answerC` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '选项C',
  `answerD` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '选项D',
  `rightAnswer` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '正确答案',
  `analysis` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '题目解析',
  `score` int(2) DEFAULT '2' COMMENT '分数',
  `section` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '所属章节',
  `level` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '难度等级',
  PRIMARY KEY (`questionId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='选择题题库表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multi_question`
--

LOCK TABLES `multi_question` WRITE;
/*!40000 ALTER TABLE `multi_question` DISABLE KEYS */;
INSERT INTO `multi_question` VALUES (2,'初中生物','药物存放要注意','放在阳光可以直射的地方，以便紫外线消毒','放在干燥、阴凉、避光，幼儿拿不到的地方','放在于燥、阴凉、避光，幼儿拿得到的地方','多种药片可以混合储藏','B','',2,'生物体的结构层次','3'),(3,'初中生物','草履虫（一种单细胞的动物）的细胞结构与植物细胞不同的是没有','细胞壁','细胞质','细胞核','细胞膜','B','植物细胞的结构有：细胞壁、细胞膜、细胞质、细胞核、液泡、叶绿体和线粒体．动物（人）细胞有细胞膜、细胞质和细胞核，通过比较动物和植物细胞都有细胞膜、细胞质、细胞核和线粒体；动物细胞没有而植物细胞具有的结构是细胞壁、叶绿体和液泡．判断一个细胞是植物细胞还是动物细胞关键是看它是否具有细胞壁、液泡和叶绿体，只要有其中之一就是植物细胞，如果任何一个都没有就是动物细胞．细胞壁是植物细胞特有的结构而动物细胞没有；细胞质是动植物细胞都有的结构；细胞膜和细胞核是动植物细胞都有的结构；细胞膜是动植物细胞共有的结构．草履虫是一种单细胞生物，属原生动物，因此，草履虫（一种单细胞的动物）的细胞结构与植物细胞不同的是没有细胞壁。',2,'生物体的结构层次','1'),(8,'初中生物','下列各项中，除哪一项外，其余都是细菌、真菌的作用','利用部分细菌和真菌来加工食品，使食品甜酸嫩脆、风味可口','部分细菌和真菌能利用光能合成有机物，使土壤更加肥沃','部分细菌、真菌可作为生物杀虫剂，可服务于无公害农业','通过转基因工程，可利用细菌或真菌来生产各种特殊物质，如利用大肠杆菌可大量生产胰岛素','B','部分细菌和真菌能分解土壤中的有机物，使土壤更加肥沃。',2,'生物体的结构层次','1'),(11,'初中生物','生物圈中的消费者是：','绿色植物','细菌','动物','微生物','C','植物进行光合作用制造出的有机物除满足自身的需要，还为动物提供食物，而动物无法进行光合作用必须直接或间接的以植物为食，是消费者。',2,'生物与环境','1'),(12,'初中生物','移栽植物时，常常去掉几片叶片，这样做是为了','操作方便','减少水分蒸腾','减低光合作用','降低呼吸作用','B','蒸腾作用是指植物体内的水分通过叶片的气孔以水蒸气的形式散发到大气中去的一个过程，叶片的气孔是水蒸气外出的门户，可见叶片是蒸腾作用的主要部位，移栽植物的根系或多或少的会有一定的破坏，吸水的能力会降低，因此在移栽植物时，往往要剪掉大量的枝叶，以降低蒸腾作用，减少水分的散失，避免移栽植物出现萎蔫现象，提高移栽植物的成活率。',2,'生物与环境','3'),(14,'初中生物','自然界中每一种生物都受到周围很多其他生物的影响，例如：制作泡菜的发酵过程中，乳酸菌产生乳酸可以抑制各种微生物的生长，当乳酸积累达到一定浓度时，又会抑制同种个体的增殖，用生物学观点看上述例子，不合理的解释是','生物之间是相互联系的，同时也是相互制约的','生物和它周围的生物都存在你死我活的生存斗争','此过程中，开始是异种生物之间的斗争，以后是同种生物之间的斗争','地球上的每一种生物都有适合它生存的各自独特的本领，即生物的适应性','B','生物之间，生物和非生物之间是相互联系的，同时也是相互制约的。',2,'生物与环境','5'),(18,'初中生物','下列四种结构中，由同一种组织构成的是','肾、肌腱和骨胳肌','血液、淋巴和心肌','表皮、汗腺和真皮','胃腺、肠腺和表皮','D','上皮组织有单层上皮和复层上皮，腺上皮是由具有分泌功能的细胞组成的上皮组织，以腺上皮为主所组成的器官称腺体，胃腺、肠腺是由单层柱状上皮为主所构成的腺体。',2,'生物圈中的人','1'),(19,'初中生物','下列不是血浆的组成成分的一项是','水','蛋白质','无机盐','血细胞','D',NULL,2,'生物圈中的人','3'),(20,'初中生物','动物的先天性行为所具备的特点是','动物生来就具有的','不是动物生来就具有的行为','由身体里遗传物质所控制的行为','动物在成长过程中，通过生活经验和学习逐渐建立起来的新的行为','A','动物的先天性行为是动物生来就有的行为，这种行为方式是有体内的遗传物质决定的，学习行为是动物出生后通过学习得来的行为。',2,'动物的运动和行为','1'),(21,'初中生物','小脑在运动中的功能有\n①提高骨胳肌的收缩速度\n②维持身体平衡\n③使心跳和呼吸随之加快\n④调节肌肉紧张程度和协调随意运动','①②','②③','③④','②④','D',NULL,2,'动物的运动和行为','5'),(22,'初中生物','人与动物的本质区别之一是人类的大脑皮层中有','躯体运动中枢','躯体感觉中枢','视觉中枢','语言中枢','D',NULL,2,'动物的运动和行为','1'),(23,'初中生物','“中风”的病人四肢没有任何损伤，但出现了一侧肢体不能活动的症状，是因为哪个结构受伤？','骨头','血管','大脑','脊髓','C','骨的位置的变化产生运动，但是骨本身是不能运动，骨的运动要靠骨骼肌的牵拉，骨骼肌有受刺激而收缩的特性，当骨骼肌受神经传来的刺激收缩时，就会牵动骨绕关节活动，于是躯体就会产生运动．动物每一个动作的产生都是动物神经系统、感觉器官、运动器官等相互协调的结果，但起控制作用的还是神经系统．而“中风”是大脑的运动中枢受到破坏遭致的急性脑血管疾病又名脑卒中、中风，是脑部血管疾病的总称．',2,'动物的运动和行为','1'),(24,'初中生物','下列对于一块骨骼肌的叙述，错误的是','活动受神经支配','是一个器官','包括肌腱和肌腹的部分','两端的肌腱附着在同一块骨上','D','A、骨骼肌有受到刺激而收缩的特性，因此骨骼肌的活动受神经支配，不符合题意．\nB、骨骼肌属于肌肉组织，一块完整的骨骼肌主要有肌肉组织组成，但它除了含有骨骼肌外，它还含有肌腱（结缔组织），肌肉里还含有神经组织、血管（血管的内表面为上皮组织）等，因此一块完整的骨骼肌有人体的四大基本组织，因此，一块完整的骨骼肌属于一个器官．不符合题意．\nC、骨骼肌包括肌腱和肌腹两部分，不符合题意．\nD、骨骼肌一般要跨过一个或几个关节，由肌腱f附着在相邻的骨上，符合题意．',2,'动物的运动和行为','3'),(26,'初中生物','生物体能不断的由小长大，与细胞的生长和_______过程紧密相关。','分裂、分化','分化','繁殖','分裂','A','生物体由小长大，是与细胞的生长和分裂分不开的，分裂使得数量增多，生长使得体积增大。',2,'生物的生殖、发育与遗传','5'),(30,'初中生物','下列各项属于我国特产珍稀动物的是\n①白鳍豚  ②鸭嘴兽  ③中华鲟  ④大熊猫  ⑤袋鼠  ⑥扬子鳄','①②③④','②④⑤⑥','①③④⑥','②③④⑤','C','①白鳍豚为国家一级保护动物，白暨豚、白旗．白暨豚是鲸类家族中小个体成员，身体呈纺锤形，全身皮肤裸露无毛，具长吻，白鳍豚已存在有2500万年，喜欢群居，视听器官严退化，声纳系统特别灵敏，能在水中探测和识别物体．白鳍豚是恒温哺乳动物，用肺呼吸，被誉为“水中的大熊猫”．\n③中华鲟是一种大型的溯河洄游性鱼类，是我国特有的古老珍稀鱼类．世界现存鱼类中最原始的种类之一．远在公元前1千多年的周代，就把中华鲟称为王鲔鱼．中华鲟属硬骨鱼类鲟形目．鲟类最早出现于距今2亿3千万年前的早三叠世，一直延续至今，生活于我国长江流域，别处未见，真可谓“活化石”． \n④大熊猫，一般称作“熊猫”，是世界上最珍贵的动物之一，数量十分稀少，属于国家一级保护动物，体色为黑白相间，被誉为“中国国宝”．大熊猫是中国特有种，属熊科，现存的主要栖息地在中国四川、陕西等周边山区．适应以竹子为食的生活．大熊猫憨态可掬的可爱模样深受全球大众的喜爱，在1961年世界自然基金会成立时就以大熊猫为其标志，大熊猫俨然成为物种保育最重要的象征，也是中国作为外交活动中表示友好的重要代表．⑥扬子鳄是中国特有的一种鳄鱼，是世界上体型最细小的鳄鱼品种之一．它既是古老的，又是现在生存数量非常稀少、世界上濒临灭绝的爬行动物．在扬子鳄身上，至今还可以找到早先恐龙类爬行动物的许多特征．所以，人们称扬子鳄为中生代的“活化石”．\n②鸭嘴兽、⑤袋鼠是澳大利特有的珍稀动物．故选C．',2,'生物的多样性','3'),(32,'初中生物','地球上最初的生命是怎样来的，科学工作者历来都有争论，现在普遍认为生命的起源是','由上帝或神创造的','由外星人将生命带到地球上','由原始地球上的环境经过漫长岁月逐渐演变进化而来','通过陨石将外星球的生命带到地球上的','C',NULL,2,'生物的多样性','1'),(33,'初中生物','关于“克隆”技术的应用，下列说法错误的是','“克隆”技术的应用中，利用了细胞核移植、细胞体外融合培养及胚胎移植等现代生物技术','“克隆”技术的应用中，存在两性生殖细胞核融合形成一个受精卵的过程，但是这个受精卵是放在另一代理母亲的子宫中发育的','从理论上说，应用“克隆”技术能解决哪些既无精子又无卵细胞的父母想要后代的难题','应用“克隆”技术对拯救濒危动物，防止家禽和家畜良种的退化，以及医疗上器官移植都有十分重要的意义','B','“克隆”技术是一种无性生殖，没有两性生殖细胞的结合。',2,'生物技术','4'),(34,'初中生物','下列哪一种不属于仿生','萤火虫与冷光','太阳与白炽灯','乌龟的背甲与薄壳建筑','蝙蝠的回声定位与雷达','B','A、C、D、仿生是指科学家通过对生物的认真观察和研究，模仿生物的某些结构和功能来发明创造各种仪器设备，有的是模仿动物，有的是模仿植物，如冷光模仿的是萤火虫，薄壳建筑模仿的是乌龟的背甲等，雷达模仿的是蝙蝠的回声定位，不符合题意，\nB、太阳与白炽灯，不属于仿生，符合题意。',2,'生物技术','2'),(35,'初中生物','英国生理学家威廉·哈维曾做过这样一个实验：用丝带扎紧上臂时，发现丝带上方的血管变化情况是：有的血管\n①膨鼓起来，有的血管\n②变得扁。在丝带下方也发现有的血管\n③膨鼓起来，有的血管\n④变得扁。试判定血管\n①、②、③、④依次为','动脉 动脉 静脉 静脉','动脉 静脉 动脉 静脉','动脉 静脉 静脉 动脉','静脉 动脉 静脉 动脉','C','大静脉中有静脉瓣，起防止血液倒流的作用，动脉中不存在瓣膜；动脉中血液由心脏流向肢端，即从上方流向下方。当阻断后，血液则积在上方而肿胀（①为动脉），下方血液断流而变扁（④为动脉）。静脉中的血液由肢端流回心脏，即由下方流回上方。当阻断后，下方静脉膨胀（③为静脉），上方血管变扁（②为静脉）。',2,'健康的生活','3'),(37,'初中生物','在健康人的清洁的皮肤上涂上一种致病的杆菌，过一段时间观察大部分的杆菌都被消灭了，这说明了皮肤具有','非特异性免疫功能','特异性免疫功能','皮肤再生能力','分泌和排泄功能','A','皮肤是人体的第一道防线。能够阻挡病原体侵入人体，这种免疫作用范围广泛，对多种病原体都有一定的作用，是属于非特异性免疫。答案C和D是皮肤的功能，皮肤能分泌皮脂，排出汗液等，皮肤的表层脱落后，也会生长出新的细胞来补充。',2,'健康的生活','2'),(38,'初中英语','I find it boring ________ game shows．','watching','watch','to watch','watched','C','',2,'冠词','3'),(39,'初中英语','We can see__ old bike  __the tree.','a; under','the; at','a; on','an; under','D','根据句意“我们在树下看见一辆旧的自行车。”可知用under，又因 old是以元音音素开头，其前应用不定冠词an，故选D。',2,'冠词','5'),(40,'初中英语','It\"s ______ good idea to visit our old teachers on ______ Teachers\" Day.','a; the','a; /','/; /','/; the','B',NULL,2,'冠词','1'),(41,'初中生物_测试','测试','A选项','B选项','正确答案C选项','D选项','C','',2,'测试','3');
/*!40000 ALTER TABLE `multi_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper_manage`
--

DROP TABLE IF EXISTS `paper_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paper_manage` (
  `paperId` int(9) DEFAULT NULL COMMENT '试卷编号',
  `questionType` int(1) DEFAULT NULL COMMENT '题目类型',
  `questionId` int(9) DEFAULT NULL COMMENT '题目编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='试卷管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper_manage`
--

LOCK TABLES `paper_manage` WRITE;
/*!40000 ALTER TABLE `paper_manage` DISABLE KEYS */;
INSERT INTO `paper_manage` VALUES (1002,1,30),(1002,1,18),(1002,1,33),(1002,1,2),(1002,1,3),(1002,1,34),(1002,1,20),(1002,1,26),(1002,1,12),(1002,1,19),(1002,1,23),(1002,1,8),(1002,1,11),(1002,1,14),(1002,1,22),(1002,1,21),(1002,1,32),(1002,1,24),(1002,1,37),(1002,1,35),(1002,2,5),(1002,2,2),(1002,2,7),(1002,2,10),(1002,2,4),(1002,2,9),(1002,2,6),(1002,2,3),(1002,2,1),(1002,2,8),(1002,3,12),(1002,3,19),(1002,3,7),(1002,3,1),(1002,3,9),(1002,3,15),(1002,3,14),(1002,3,20),(1002,3,3),(1002,3,16),(1002,3,8),(1002,3,2),(1002,3,4),(1002,3,13),(1002,3,17),(1002,3,11),(1002,3,5),(1002,3,18),(1002,3,6),(1002,3,10),(1004,1,41),(1004,1,41);
/*!40000 ALTER TABLE `paper_manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay`
--

DROP TABLE IF EXISTS `replay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay` (
  `messageId` int(255) DEFAULT NULL COMMENT '留言编号',
  `replayId` int(9) NOT NULL AUTO_INCREMENT COMMENT '回复编号',
  `replay` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `replayTime` date DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`replayId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='回复表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay`
--

LOCK TABLES `replay` WRITE;
/*!40000 ALTER TABLE `replay` DISABLE KEYS */;
INSERT INTO `replay` VALUES (26,3,'好呀，我来了，你别跑！','2021-03-18'),(22,4,'心疼你2秒钟','2021-03-18'),(25,5,'我也要变强','2021-03-19'),(25,6,'俺也一样','2021-03-19'),(21,7,'既然这样，那就迎男而上吧','2021-03-19'),(16,8,'那条街确实没什么东西可以吃了。。。','2021-03-19'),(15,9,'咸鱼其实还可以吃，而你,emmmm','2021-03-19'),(21,11,'我不怕人多','2021-03-19'),(20,12,'是嘞，还行。','2021-03-19'),(26,13,'我也爱你ε=(´ο｀*)))唉','2021-03-19'),(27,14,'你这个坏孩子','2019-03-31'),(33,18,'是的，今天是周一。','2019-04-14');
/*!40000 ALTER TABLE `replay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `scoreId` int(9) NOT NULL AUTO_INCREMENT COMMENT '分数编号',
  `examCode` int(9) DEFAULT NULL COMMENT '考试编号',
  `studentId` int(9) DEFAULT NULL COMMENT '学号',
  `subject` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '课程名称',
  `ptScore` int(5) DEFAULT NULL COMMENT '平时成绩',
  `etScore` int(5) DEFAULT NULL COMMENT '期末成绩',
  `score` int(5) DEFAULT NULL COMMENT '总成绩',
  `answerDate` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '答题日期',
  PRIMARY KEY (`scoreId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='成绩管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (33,20190002,17008002,'初中生物',NULL,2,NULL,'2021-04-17'),(34,20190002,17008002,'初中生物',NULL,4,NULL,'2021-04-18'),(35,20190002,17008002,'初中生物',NULL,4,NULL,'2021-04-19'),(36,20190002,17008002,'初中生物',NULL,0,NULL,'2021-04-19'),(37,20190002,17008002,'初中生物',NULL,0,NULL,'2021-04-19'),(38,20190002,17008002,'初中生物',NULL,98,NULL,'2021-04-20'),(39,20190002,17008001,'初中生物',NULL,100,NULL,'2021-04-20'),(40,20190002,17008003,'初中生物',NULL,77,NULL,'2021-04-20'),(41,20190002,17008004,'初中生物',NULL,55,NULL,'2021-04-20'),(42,20190002,17008005,'初中生物',NULL,83,NULL,'2021-04-20');
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `studentId` int(9) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `studentName` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `grade` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '年级',
  `clazz` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '班级',
  `institute` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '学院',
  `tel` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码',
  `email` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '电子邮件',
  `pwd` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `cardId` varchar(18) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `sex` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `role` varchar(1) COLLATE utf8_bin DEFAULT '2' COMMENT '角色(0管理员，1教师，2学生)',
  `major` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '专业',
  PRIMARY KEY (`studentId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20155012 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='学生信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (17008001,'隔壁老王','2017','2','沈阳师范大学附属中学','13585439532','gblw@163.com','123456','3412312','男','2',NULL),(17008002,'大咸鱼','2017','2','沈阳师范大学附属中学','13658377857','13658377857@sina.cn','123456','124123124535','男','2',NULL),(17008003,'张大宝','2017','1','沈阳师范大学附属中学','15583829425','15583829425@163.com','123456','3242342','男','2',NULL),(17008004,'翠花','2017','1','沈阳师范大学附属中学','18734538457','18734538457@163.com','123456','2423423','女','2',NULL),(17008005,'小王','2017','2','沈阳师范大学附属中学','15523619564','15523619564@163.com','123456','500234199704022353','男','2',NULL),(20155011,'测试','1','1','1','测试编辑','1','1','1','男','2',NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `teacherId` int(9) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `teacherName` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `institute` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '学院',
  `sex` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `tel` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码',
  `email` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `pwd` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `cardId` varchar(18) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `type` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '职称',
  `role` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '角色（0管理员，1教师，2学生）',
  PRIMARY KEY (`teacherId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20081004 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='教师信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (20081001,'张','数学系','男','13598458442','13598458442@163.com','123456','423423283498','讲师','1'),(20081002,'王大志','英语系','男','1231221312','1231221312@163.com','123456','24241234','讲师','1'),(20081003,'测试','1','男','1',NULL,'123456','111','1','2');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-20 23:49:47
