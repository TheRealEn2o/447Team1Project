CREATE DATABASE  IF NOT EXISTS `ri_data` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ri_data`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: ri_data
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `counties`
--

DROP TABLE IF EXISTS `counties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counties` (
  `fips` int NOT NULL,
  `state_id` int NOT NULL,
  `county_name` varchar(20) NOT NULL,
  `geo_json_data` text NOT NULL,
  `total_cases` int NOT NULL,
  `case_rate_per_100k` int NOT NULL,
  `total_hospital` int NOT NULL,
  `hospital_rate_per_100k` int NOT NULL,
  `total_deaths` int NOT NULL,
  `death_rate_per_100k` int NOT NULL,
  `total_vaccinated` int NOT NULL,
  `vaccinated_rate_per_100k` int NOT NULL,
  PRIMARY KEY (`fips`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `counties_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counties`
--

LOCK TABLES `counties` WRITE;
/*!40000 ALTER TABLE `counties` DISABLE KEYS */;
INSERT INTO `counties` VALUES (44001,44,'Bristol County','{\'type\': \'Feature\', \'properties\': {\'GEO_ID\': \'0500000US44001\', \'STATE\': \'44\', \'COUNTY\': \'001\', \'NAME\': \'Bristol\', \'LSAD\': \'County\', \'CENSUSAREA\': 24.164}, \'geometry\': {\'type\': \'Polygon\', \'coordinates\': [[[-71.284402, 41.76201], [-71.261392, 41.752301], [-71.254743, 41.744719], [-71.245362, 41.73402], [-71.225791, 41.711701], [-71.224798, 41.710498], [-71.227875, 41.705498], [-71.240991, 41.697744], [-71.240611, 41.695921], [-71.239312, 41.689687], [-71.237769, 41.682279], [-71.237635, 41.681635], [-71.23889, 41.677009], [-71.24155, 41.667205], [-71.259474, 41.642713], [-71.25956, 41.642595], [-71.267055, 41.644945], [-71.270075, 41.652439], [-71.26918, 41.6549], [-71.276693, 41.66677], [-71.278678, 41.669907], [-71.280366, 41.672575], [-71.28257, 41.672541], [-71.287637, 41.672463], [-71.290546, 41.662395], [-71.299159, 41.649531], [-71.301396, 41.649978], [-71.303746, 41.654788], [-71.306095, 41.672575], [-71.302627, 41.681747], [-71.298935, 41.681524], [-71.293119, 41.688347], [-71.292662, 41.691784], [-71.291217, 41.702666], [-71.295344, 41.707206], [-71.2988, 41.711008], [-71.301446, 41.706441], [-71.308026, 41.710639], [-71.308634, 41.711026], [-71.308381, 41.711699], [-71.305759, 41.718662], [-71.310946, 41.721607], [-71.31482, 41.723808], [-71.342786, 41.728506], [-71.350057, 41.727835], [-71.353172, 41.725191], [-71.35508, 41.726962], [-71.35689, 41.728472], [-71.364561, 41.734928], [-71.365207, 41.735649], [-71.360197, 41.738901], [-71.356997, 41.741601], [-71.355818, 41.745308], [-71.353897, 41.751301], [-71.347183, 41.756034], [-71.342827, 41.758999], [-71.339821, 41.761047], [-71.339587, 41.763041], [-71.336962, 41.762998], [-71.332797, 41.765835], [-71.332115, 41.766299], [-71.324776, 41.771297], [-71.319978, 41.774575], [-71.31779, 41.776099], [-71.297686, 41.767616], [-71.294758, 41.76638], [-71.28613, 41.76274], [-71.284402, 41.76201]]]}}',5930,36769,319,2048,149,975,32870,203580),(44003,44,'Kent County','{\'type\': \'Feature\', \'properties\': {\'GEO_ID\': \'0500000US44003\', \'STATE\': \'44\', \'COUNTY\': \'003\', \'NAME\': \'Kent\', \'LSAD\': \'County\', \'CENSUSAREA\': 168.528}, \'geometry\': {\'type\': \'Polygon\', \'coordinates\': [[[-71.658744, 41.598745], [-71.740745, 41.598726], [-71.748705, 41.59852], [-71.74959, 41.598636], [-71.789359, 41.596852], [-71.789356, 41.59691], [-71.786994, 41.655992], [-71.786997, 41.656069], [-71.789672, 41.724569], [-71.7201, 41.726299], [-71.700584, 41.726731], [-71.667802, 41.727482], [-71.644155, 41.727721], [-71.586189, 41.729136], [-71.57653, 41.729401], [-71.562935, 41.729713], [-71.550016, 41.729968], [-71.545498, 41.730077], [-71.536736, 41.730208], [-71.53402, 41.730181], [-71.519663, 41.730619], [-71.519173, 41.730657], [-71.516853, 41.730733], [-71.486733, 41.731702], [-71.483858, 41.731779], [-71.477013, 41.731961], [-71.476952, 41.731963], [-71.467958, 41.732191], [-71.460602, 41.732296], [-71.455342, 41.732365], [-71.45285, 41.734335], [-71.453736, 41.737428], [-71.451748, 41.739456], [-71.446449, 41.739986], [-71.443945, 41.741196], [-71.444359, 41.744209], [-71.446606, 41.749664], [-71.445974, 41.750556], [-71.441748, 41.751342], [-71.440191, 41.752918], [-71.441165, 41.754712], [-71.439196, 41.756607], [-71.440574, 41.757912], [-71.438218, 41.758102], [-71.437561, 41.759827], [-71.434069, 41.760936], [-71.432968, 41.759335], [-71.42989, 41.760761], [-71.426224, 41.761025], [-71.420738, 41.764884], [-71.418715, 41.764076], [-71.419078, 41.761885], [-71.415806, 41.762902], [-71.414383, 41.762953], [-71.412183, 41.765058], [-71.410702, 41.766554], [-71.405203, 41.76761], [-71.401395, 41.766552], [-71.399805, 41.768333], [-71.396069, 41.767153], [-71.394121, 41.764038], [-71.390534, 41.764391], [-71.390416, 41.764427], [-71.389451, 41.764241], [-71.388517, 41.763775], [-71.384733, 41.757602], [-71.382971, 41.756174], [-71.378273, 41.755297], [-71.375354, 41.750368], [-71.374965, 41.749641], [-71.372508, 41.744727], [-71.368512, 41.739421], [-71.365207, 41.735649], [-71.364561, 41.734928], [-71.35689, 41.728472], [-71.35508, 41.726962], [-71.353172, 41.725191], [-71.353748, 41.724702], [-71.364613, 41.712822], [-71.365717, 41.711615], [-71.365717, 41.70872], [-71.365717, 41.708482], [-71.365717, 41.707255], [-71.365717, 41.707087], [-71.365717, 41.701666], [-71.365717, 41.694947], [-71.368677, 41.68584], [-71.372988, 41.672575], [-71.37791, 41.666646], [-71.382049, 41.667317], [-71.38988, 41.671903], [-71.390775, 41.680629], [-71.389791, 41.682677], [-71.389764, 41.682734], [-71.389528, 41.683225], [-71.389432, 41.683425], [-71.390551, 41.684096], [-71.391491, 41.6841], [-71.401567, 41.684141], [-71.418069, 41.684208], [-71.430117, 41.685367], [-71.441336, 41.686446], [-71.443082, 41.688303], [-71.441896, 41.690025], [-71.445174, 41.690936], [-71.445923, 41.691144], [-71.449318, 41.687401], [-71.444468, 41.664409], [-71.442324, 41.664874], [-71.430038, 41.667541], [-71.425452, 41.670785], [-71.409302, 41.662643], [-71.408636, 41.653819], [-71.412818, 41.654371], [-71.417581, 41.654952], [-71.42148, 41.654394], [-71.423884, 41.653888], [-71.428941, 41.650569], [-71.432796, 41.651323], [-71.435944, 41.649223], [-71.439984, 41.647596], [-71.442818, 41.645372], [-71.441986, 41.643275], [-71.442851, 41.642612], [-71.445084, 41.641373], [-71.446015, 41.638902], [-71.449102, 41.63694], [-71.448447, 41.633377], [-71.44932, 41.632195], [-71.449808, 41.630932], [-71.45234, 41.629433], [-71.45391, 41.630048], [-71.45423, 41.632953], [-71.45558, 41.635109], [-71.458324, 41.636366], [-71.459123, 41.637946], [-71.462354, 41.63838], [-71.463436, 41.636544], [-71.466246, 41.635488], [-71.467855, 41.634163], [-71.469727, 41.634499], [-71.472535, 41.632077], [-71.47132, 41.629076], [-71.479358, 41.6242], [-71.482482, 41.62358], [-71.483306, 41.621547], [-71.486073, 41.619833], [-71.486001, 41.616935], [-71.488039, 41.616048], [-71.487503, 41.613487], [-71.485451, 41.612974], [-71.484497, 41.60374], [-71.485405, 41.602762], [-71.495689, 41.60268], [-71.520447, 41.602619], [-71.522202, 41.602613], [-71.522441, 41.602599], [-71.544807, 41.601993], [-71.546147, 41.601891], [-71.618101, 41.600735], [-71.622795, 41.600861], [-71.627602, 41.600697], [-71.642821, 41.600718], [-71.653068, 41.598864], [-71.654251, 41.598761], [-71.658744, 41.598745]]]}}',22129,68623,1295,3589,391,970,111653,344394),(44005,44,'Newport County','{\'type\': \'Feature\', \'properties\': {\'GEO_ID\': \'0500000US44005\', \'STATE\': \'44\', \'COUNTY\': \'005\', \'NAME\': \'Newport\', \'LSAD\': \'County\', \'CENSUSAREA\': 102.386}, \'geometry\': {\'type\': \'MultiPolygon\', \'coordinates\': [[[[-71.281571, 41.648207], [-71.278171, 41.647309], [-71.274315, 41.638125], [-71.283791, 41.637797], [-71.286755, 41.642725], [-71.283005, 41.644434], [-71.281571, 41.648207]]], [[[-71.359819, 41.64786], [-71.362869, 41.651457], [-71.366165, 41.66098], [-71.357049, 41.662389], [-71.352257, 41.66313], [-71.348402, 41.663727], [-71.338696, 41.658782], [-71.336182, 41.647961], [-71.337048, 41.646146], [-71.342514, 41.644791], [-71.343666, 41.6399], [-71.330711, 41.632992], [-71.314889, 41.630398], [-71.30555, 41.622523], [-71.303352, 41.606591], [-71.307381, 41.597984], [-71.317474, 41.583187], [-71.326103, 41.578583], [-71.3312, 41.580318], [-71.335949, 41.585898], [-71.337048, 41.594688], [-71.333751, 41.605859], [-71.329559, 41.609097], [-71.326609, 41.616114], [-71.325877, 41.623988], [-71.333305, 41.629536], [-71.34657, 41.632229], [-71.355684, 41.642981], [-71.359819, 41.64786]]], [[[-71.379493, 41.505409], [-71.391005, 41.514578], [-71.392137, 41.524468], [-71.389176, 41.536941], [-71.388363, 41.540368], [-71.384478, 41.556736], [-71.379021, 41.567772], [-71.373618, 41.573214], [-71.371786, 41.573614], [-71.370194, 41.573963], [-71.36356, 41.57086], [-71.359868, 41.556308], [-71.360821, 41.54118], [-71.361042, 41.537682], [-71.362423, 41.515761], [-71.362575, 41.513342], [-71.363292, 41.501952], [-71.362279, 41.495349], [-71.362193, 41.494787], [-71.360403, 41.483121], [-71.354315, 41.478891], [-71.380947, 41.474561], [-71.383586, 41.464782], [-71.389284, 41.460605], [-71.390275, 41.455043], [-71.399568, 41.448596], [-71.40056, 41.46094], [-71.399567, 41.467646], [-71.399331, 41.469235], [-71.395927, 41.492215], [-71.386511, 41.493071], [-71.384628, 41.496016], [-71.378914, 41.504948], [-71.379493, 41.505409]]], [[[-71.332395, 41.486787], [-71.339496, 41.492691], [-71.343013, 41.495615], [-71.341122, 41.498598], [-71.336101, 41.49604], [-71.330882, 41.493382], [-71.326769, 41.491286], [-71.325365, 41.487601], [-71.327822, 41.482985], [-71.332395, 41.486787]]], [[[-71.134523, 41.640785], [-71.135676, 41.628532], [-71.135688, 41.628402], [-71.140468, 41.623893], [-71.141211, 41.618314], [-71.141345, 41.617307], [-71.141411, 41.616811], [-71.141509, 41.616076], [-71.14091, 41.607405], [-71.140868, 41.607104], [-71.140588, 41.605102], [-71.137492, 41.602561], [-71.131618, 41.593918], [-71.131312, 41.592308], [-71.127566, 41.562819], [-71.1224, 41.522156], [-71.12057, 41.497448], [-71.134542, 41.494442], [-71.136867, 41.493942], [-71.141093, 41.489937], [-71.140224, 41.485855], [-71.167345, 41.471405], [-71.170131, 41.463974], [-71.19302, 41.457931], [-71.194967, 41.459037], [-71.196857, 41.461116], [-71.196607, 41.464756], [-71.190016, 41.478275], [-71.190167, 41.484285], [-71.19939, 41.491769], [-71.199692, 41.495511], [-71.201075, 41.496276], [-71.206382, 41.499215], [-71.200788, 41.514371], [-71.20954, 41.535913], [-71.212844, 41.544047], [-71.213304, 41.545179], [-71.213563, 41.545818], [-71.20865, 41.571028], [-71.208036, 41.591943], [-71.207919, 41.595935], [-71.207856, 41.598097], [-71.20778, 41.60066], [-71.212656, 41.610072], [-71.212417, 41.61829], [-71.212277, 41.619882], [-71.212004, 41.62299], [-71.21616, 41.62549], [-71.216791, 41.625329], [-71.220099, 41.624485], [-71.228056, 41.622454], [-71.237385, 41.620073], [-71.240709, 41.619225], [-71.2436, 41.587508], [-71.241245, 41.583491], [-71.240992, 41.58306], [-71.240475, 41.582178], [-71.23613, 41.574767], [-71.236426, 41.552291], [-71.236642, 41.535852], [-71.234775, 41.532538], [-71.227989, 41.528297], [-71.229444, 41.521544], [-71.233056, 41.514757], [-71.233141, 41.514598], [-71.233435, 41.514045], [-71.240614, 41.500557], [-71.246047, 41.492983], [-71.247422, 41.490234], [-71.243641, 41.486453], [-71.237175, 41.486546], [-71.236751, 41.483369], [-71.237783, 41.481155], [-71.237902, 41.480899], [-71.239804, 41.476817], [-71.240047, 41.476296], [-71.24071, 41.474872], [-71.246703, 41.47196], [-71.246676, 41.472323], [-71.246174, 41.478917], [-71.245992, 41.481302], [-71.252692, 41.485902], [-71.264793, 41.488902], [-71.26831, 41.485794], [-71.275324, 41.479594], [-71.278444, 41.483367], [-71.278662, 41.48363], [-71.279556, 41.484712], [-71.28004, 41.485298], [-71.280203, 41.485495], [-71.280469, 41.485817], [-71.280544, 41.485907], [-71.2809, 41.486338], [-71.28117, 41.486665], [-71.281683, 41.487285], [-71.281923, 41.487576], [-71.282029, 41.487704], [-71.282139, 41.487836], [-71.282257, 41.487979], [-71.28226, 41.487983], [-71.282262, 41.487983], [-71.284699, 41.487854], [-71.285638, 41.487805], [-71.285639, 41.487805], [-71.285643, 41.487803], [-71.288227, 41.486861], [-71.288651, 41.486706], [-71.29262, 41.485259], [-71.295111, 41.48435], [-71.296516, 41.479831], [-71.296515, 41.479825], [-71.296508, 41.479702], [-71.296292, 41.47585], [-71.296179, 41.473824], [-71.295885, 41.46858], [-71.297338, 41.468146], [-71.300438, 41.46722], [-71.302582, 41.460325], [-71.30274, 41.459818], [-71.302895, 41.459322], [-71.302928, 41.459213], [-71.304247, 41.454976], [-71.304394, 41.454502], [-71.304604, 41.454391], [-71.305896, 41.453708], [-71.310357, 41.45135], [-71.310473, 41.451289], [-71.310798, 41.451117], [-71.311344, 41.450829], [-71.311394, 41.450802], [-71.311404, 41.450807], [-71.312694, 41.451402], [-71.312718, 41.454597], [-71.312857, 41.454613], [-71.314547, 41.454808], [-71.319495, 41.455379], [-71.32141, 41.4556], [-71.322413, 41.455187], [-71.329659, 41.452207], [-71.33033, 41.451931], [-71.331101, 41.451614], [-71.332633, 41.450984], [-71.337377, 41.449033], [-71.337539, 41.448966], [-71.337695, 41.448902], [-71.340085, 41.449241], [-71.346187, 41.450106], [-71.351096, 41.450802], [-71.351566, 41.450662], [-71.355678, 41.449438], [-71.356033, 41.449332], [-71.356278, 41.45005], [-71.356356, 41.450277], [-71.356745, 41.451417], [-71.357329, 41.453131], [-71.357438, 41.453451], [-71.35749, 41.453603], [-71.358656, 41.457019], [-71.358657, 41.457019], [-71.359015, 41.457314], [-71.359136, 41.457414], [-71.359292, 41.457542], [-71.361852, 41.459647], [-71.362201, 41.459934], [-71.362288, 41.460006], [-71.362699, 41.460343], [-71.362743, 41.460379], [-71.362736, 41.460405], [-71.362012, 41.463041], [-71.36176, 41.463955], [-71.361521, 41.464827], [-71.36152, 41.464831], [-71.361515, 41.464833], [-71.360892, 41.465109], [-71.355098, 41.467674], [-71.349092, 41.470334], [-71.347822, 41.470897], [-71.347819, 41.470898], [-71.347376, 41.47133], [-71.346615, 41.472071], [-71.345646, 41.473016], [-71.338779, 41.479708], [-71.336442, 41.481985], [-71.33438, 41.478204], [-71.335992, 41.469647], [-71.319437, 41.476375], [-71.316519, 41.47756], [-71.31691, 41.482464], [-71.317414, 41.488776], [-71.317683, 41.489452], [-71.319765, 41.49467], [-71.321722, 41.499573], [-71.321999, 41.500267], [-71.323125, 41.503088], [-71.327804, 41.504258], [-71.330694, 41.507699], [-71.330822, 41.51768], [-71.330831, 41.518364], [-71.322041, 41.526439], [-71.320655, 41.527712], [-71.313079, 41.534672], [-71.310533, 41.54692], [-71.30565, 41.556147], [-71.305539, 41.556358], [-71.303652, 41.559925], [-71.301457, 41.56264], [-71.294363, 41.571416], [-71.288483, 41.57324], [-71.288376, 41.573274], [-71.288009, 41.573711], [-71.28785, 41.573901], [-71.287177, 41.574702], [-71.287113, 41.574778], [-71.285142, 41.577127], [-71.289073, 41.582706], [-71.287413, 41.587021], [-71.286052, 41.59056], [-71.285635, 41.591642], [-71.280826, 41.592811], [-71.280474, 41.592896], [-71.278806, 41.593302], [-71.273445, 41.60699], [-71.272412, 41.615041], [-71.275234, 41.619444], [-71.271862, 41.623986], [-71.255371, 41.635726], [-71.251082, 41.63878], [-71.245081, 41.639267], [-71.233234, 41.64023], [-71.220331, 41.655572], [-71.217513, 41.641508], [-71.213564, 41.641829], [-71.212136, 41.641945], [-71.202765, 41.660775], [-71.19564, 41.67509], [-71.19439, 41.674802], [-71.191178, 41.674216], [-71.191175, 41.674292], [-71.184333, 41.673053], [-71.18129, 41.672502], [-71.17599, 41.671402], [-71.17609, 41.668502], [-71.17609, 41.668102], [-71.176055, 41.668096], [-71.153989, 41.664102], [-71.14587, 41.662795], [-71.135188, 41.660502], [-71.134688, 41.660502], [-71.132888, 41.660102], [-71.13267, 41.658744], [-71.134478, 41.641262], [-71.134484, 41.641198], [-71.134523, 41.640785]]]]}}',8560,56558,282,1595,56,277,49356,366697),(44007,44,'Providence County','{\'type\': \'Feature\', \'properties\': {\'GEO_ID\': \'0500000US44007\', \'STATE\': \'44\', \'COUNTY\': \'007\', \'NAME\': \'Providence\', \'LSAD\': \'County\', \'CENSUSAREA\': 409.502}, \'geometry\': {\'type\': \'Polygon\', \'coordinates\': [[[-71.381437, 42.000011], [-71.38147, 41.982714], [-71.381501, 41.966699], [-71.381401, 41.964799], [-71.381458, 41.952866], [-71.381481, 41.947883], [-71.3816, 41.922899], [-71.3817, 41.922699], [-71.3817, 41.915579], [-71.3817, 41.91466], [-71.3817, 41.905812], [-71.3817, 41.893199], [-71.3766, 41.893999], [-71.376596, 41.894], [-71.373799, 41.894399], [-71.371185, 41.894586], [-71.370999, 41.894599], [-71.368509, 41.89491], [-71.365402, 41.895299], [-71.365399, 41.895299], [-71.364699, 41.895399], [-71.362499, 41.895599], [-71.354699, 41.896499], [-71.354519, 41.896517], [-71.352699, 41.896699], [-71.349045, 41.897143], [-71.345881, 41.897527], [-71.338698, 41.898399], [-71.339298, 41.893599], [-71.339298, 41.893399], [-71.339717, 41.8901], [-71.340798, 41.8816], [-71.33878, 41.875872], [-71.333997, 41.8623], [-71.334371, 41.861503], [-71.334468, 41.861295], [-71.342198, 41.8448], [-71.341797, 41.8437], [-71.3408, 41.842461], [-71.335197, 41.8355], [-71.337597, 41.8337], [-71.339597, 41.832], [-71.344897, 41.828], [-71.34713, 41.823243], [-71.347197, 41.8231], [-71.339197, 41.809], [-71.339004, 41.808549], [-71.338897, 41.8083], [-71.339047, 41.807626], [-71.339297, 41.8065], [-71.339297, 41.8044], [-71.340797, 41.8002], [-71.340697, 41.7983], [-71.339297, 41.7963], [-71.335797, 41.7948], [-71.333896, 41.7945], [-71.332196, 41.7923], [-71.330116, 41.788355], [-71.329296, 41.7868], [-71.329396, 41.7826], [-71.327896, 41.780501], [-71.317795, 41.776101], [-71.31779, 41.776099], [-71.319978, 41.774575], [-71.324776, 41.771297], [-71.332115, 41.766299], [-71.332797, 41.765835], [-71.336962, 41.762998], [-71.339587, 41.763041], [-71.339821, 41.761047], [-71.342827, 41.758999], [-71.347183, 41.756034], [-71.353897, 41.751301], [-71.355818, 41.745308], [-71.356997, 41.741601], [-71.360197, 41.738901], [-71.365207, 41.735649], [-71.368512, 41.739421], [-71.372508, 41.744727], [-71.374965, 41.749641], [-71.375354, 41.750368], [-71.378273, 41.755297], [-71.382971, 41.756174], [-71.384733, 41.757602], [-71.388517, 41.763775], [-71.389451, 41.764241], [-71.390416, 41.764427], [-71.390534, 41.764391], [-71.394121, 41.764038], [-71.396069, 41.767153], [-71.399805, 41.768333], [-71.401395, 41.766552], [-71.405203, 41.76761], [-71.410702, 41.766554], [-71.412183, 41.765058], [-71.414383, 41.762953], [-71.415806, 41.762902], [-71.419078, 41.761885], [-71.418715, 41.764076], [-71.420738, 41.764884], [-71.426224, 41.761025], [-71.42989, 41.760761], [-71.432968, 41.759335], [-71.434069, 41.760936], [-71.437561, 41.759827], [-71.438218, 41.758102], [-71.440574, 41.757912], [-71.439196, 41.756607], [-71.441165, 41.754712], [-71.440191, 41.752918], [-71.441748, 41.751342], [-71.445974, 41.750556], [-71.446606, 41.749664], [-71.444359, 41.744209], [-71.443945, 41.741196], [-71.446449, 41.739986], [-71.451748, 41.739456], [-71.453736, 41.737428], [-71.45285, 41.734335], [-71.455342, 41.732365], [-71.460602, 41.732296], [-71.467958, 41.732191], [-71.476952, 41.731963], [-71.477013, 41.731961], [-71.483858, 41.731779], [-71.486733, 41.731702], [-71.516853, 41.730733], [-71.519173, 41.730657], [-71.519663, 41.730619], [-71.53402, 41.730181], [-71.536736, 41.730208], [-71.545498, 41.730077], [-71.550016, 41.729968], [-71.562935, 41.729713], [-71.57653, 41.729401], [-71.586189, 41.729136], [-71.644155, 41.727721], [-71.667802, 41.727482], [-71.700584, 41.726731], [-71.7201, 41.726299], [-71.789672, 41.724569], [-71.789678, 41.724734], [-71.791059, 41.770183], [-71.791062, 41.770273], [-71.792767, 41.807001], [-71.792786, 41.80867], [-71.794161, 41.840141], [-71.794161, 41.841101], [-71.794692, 41.854409], [-71.797649, 41.928556], [-71.797922, 41.935395], [-71.798379, 41.960579], [-71.799242, 42.008065], [-71.76601, 42.009745], [-71.755171, 42.009995], [-71.67803, 42.01177], [-71.661439, 42.012152], [-71.606256, 42.013422], [-71.594202, 42.0137], [-71.576908, 42.014098], [-71.559986, 42.014334], [-71.559439, 42.014342], [-71.553363, 42.014467], [-71.529116, 42.014967], [-71.527606, 42.014998], [-71.527306, 42.015098], [-71.524651, 42.015299], [-71.511703, 42.01628], [-71.502055, 42.017011], [-71.500905, 42.017098], [-71.499905, 42.017198], [-71.491367, 42.017313], [-71.483711, 42.017417], [-71.458117, 42.017762], [-71.414419, 42.018352], [-71.381401, 42.018798], [-71.381437, 42.000011]]]}}',112799,262728,7287,15690,2082,5316,385945,981445),(44009,44,'Washington County','{\'type\': \'Feature\', \'properties\': {\'GEO_ID\': \'0500000US44009\', \'STATE\': \'44\', \'COUNTY\': \'009\', \'NAME\': \'Washington\', \'LSAD\': \'County\', \'CENSUSAREA\': 329.235}, \'geometry\': {\'type\': \'MultiPolygon\', \'coordinates\': [[[[-71.566928, 41.226151], [-71.561093, 41.224207], [-71.555006, 41.216822], [-71.554067, 41.212957], [-71.557459, 41.204542], [-71.564119, 41.195372], [-71.565752, 41.184373], [-71.560969, 41.176186], [-71.556454, 41.172235], [-71.550226, 41.166787], [-71.544446, 41.164912], [-71.543872, 41.161321], [-71.547051, 41.153684], [-71.551953, 41.151718], [-71.5937, 41.146339], [-71.599993, 41.146932], [-71.611706, 41.153239], [-71.613133, 41.160281], [-71.605565, 41.182139], [-71.594994, 41.188392], [-71.58955, 41.196557], [-71.589283, 41.196794], [-71.580228, 41.204837], [-71.577301, 41.21471], [-71.576661, 41.224434], [-71.573785, 41.228436], [-71.572482, 41.228002], [-71.566928, 41.226151]]], [[[-71.832203, 41.370189], [-71.831613, 41.370899], [-71.832799, 41.379731], [-71.833443, 41.384524], [-71.842131, 41.395359], [-71.842188, 41.395802], [-71.843472, 41.40583], [-71.842563, 41.409855], [-71.839649, 41.412119], [-71.81839, 41.419599], [-71.797683, 41.416709], [-71.797674, 41.41691], [-71.797235, 41.426394], [-71.796739, 41.437128], [-71.796499, 41.442323], [-71.791719, 41.545772], [-71.789359, 41.596852], [-71.74959, 41.598636], [-71.748705, 41.59852], [-71.740745, 41.598726], [-71.658744, 41.598745], [-71.654251, 41.598761], [-71.653068, 41.598864], [-71.642821, 41.600718], [-71.627602, 41.600697], [-71.622795, 41.600861], [-71.618101, 41.600735], [-71.546147, 41.601891], [-71.544807, 41.601993], [-71.522441, 41.602599], [-71.522202, 41.602613], [-71.520447, 41.602619], [-71.495689, 41.60268], [-71.485405, 41.602762], [-71.484497, 41.60374], [-71.485451, 41.612974], [-71.487503, 41.613487], [-71.488039, 41.616048], [-71.486001, 41.616935], [-71.486073, 41.619833], [-71.483306, 41.621547], [-71.482482, 41.62358], [-71.479358, 41.6242], [-71.47132, 41.629076], [-71.472535, 41.632077], [-71.469727, 41.634499], [-71.467855, 41.634163], [-71.466246, 41.635488], [-71.463436, 41.636544], [-71.462354, 41.63838], [-71.459123, 41.637946], [-71.458324, 41.636366], [-71.45558, 41.635109], [-71.45423, 41.632953], [-71.45391, 41.630048], [-71.45234, 41.629433], [-71.449808, 41.630932], [-71.44932, 41.632195], [-71.448447, 41.633377], [-71.449102, 41.63694], [-71.446015, 41.638902], [-71.445084, 41.641373], [-71.442851, 41.642612], [-71.441986, 41.643275], [-71.442818, 41.645372], [-71.439984, 41.647596], [-71.435944, 41.649223], [-71.432796, 41.651323], [-71.428941, 41.650569], [-71.423884, 41.653888], [-71.42148, 41.654394], [-71.417581, 41.654952], [-71.412818, 41.654371], [-71.408636, 41.653819], [-71.40718, 41.634512], [-71.40717, 41.634383], [-71.405376, 41.610609], [-71.404844, 41.603557], [-71.40377, 41.589321], [-71.430815, 41.583831], [-71.447712, 41.5804], [-71.44667, 41.577295], [-71.444837, 41.571837], [-71.442567, 41.565075], [-71.438943, 41.560366], [-71.427561, 41.545576], [-71.421649, 41.537892], [-71.417398, 41.534536], [-71.416415, 41.530176], [-71.414825, 41.523126], [-71.414937, 41.516303], [-71.419425, 41.504077], [-71.421425, 41.498629], [-71.419971, 41.484758], [-71.417957, 41.482073], [-71.417621, 41.477934], [-71.418404, 41.472652], [-71.419443, 41.471609], [-71.421157, 41.469888], [-71.422991, 41.472682], [-71.425892, 41.471917], [-71.427618, 41.471461], [-71.430744, 41.470636], [-71.430926, 41.465655], [-71.427935, 41.459529], [-71.428652, 41.454158], [-71.433612, 41.444995], [-71.43767, 41.441302], [-71.440473, 41.44154], [-71.441199, 41.441602], [-71.448948, 41.438479], [-71.45463, 41.433954], [-71.454715, 41.433886], [-71.455845, 41.432986], [-71.455818, 41.431542], [-71.455732, 41.427038], [-71.455706, 41.425635], [-71.455583, 41.419153], [-71.455373, 41.408091], [-71.455371, 41.407962], [-71.456537, 41.406658], [-71.459675, 41.40315], [-71.469978, 41.391628], [-71.474918, 41.386104], [-71.483295, 41.371722], [-71.479867, 41.361125], [-71.480717, 41.361125], [-71.487772, 41.361125], [-71.502926, 41.373665], [-71.513401, 41.374702], [-71.52324, 41.37613], [-71.526724, 41.376636], [-71.533403, 41.375862], [-71.533623, 41.375837], [-71.536797, 41.375469], [-71.538328, 41.375292], [-71.545201, 41.374495], [-71.555381, 41.373316], [-71.573442, 41.370064], [-71.600034, 41.365276], [-71.624505, 41.36087], [-71.625851, 41.360488], [-71.636702, 41.357407], [-71.638942, 41.356771], [-71.68807, 41.342823], [-71.699238, 41.338001], [-71.701631, 41.336968], [-71.702705, 41.336664], [-71.71791, 41.332367], [-71.72074, 41.331567], [-71.729247, 41.33099], [-71.746729, 41.329805], [-71.747086, 41.329781], [-71.747321, 41.329765], [-71.747867, 41.329728], [-71.748261, 41.329702], [-71.751205, 41.329502], [-71.762771, 41.328718], [-71.763013, 41.328702], [-71.773702, 41.327977], [-71.785957, 41.325739], [-71.812638, 41.320097], [-71.819222, 41.318704], [-71.833755, 41.315631], [-71.856008, 41.306878], [-71.857432, 41.306318], [-71.857478, 41.306348], [-71.862772, 41.309791], [-71.862739, 41.310127], [-71.862668, 41.310864], [-71.862109, 41.316612], [-71.860513, 41.320248], [-71.839013, 41.334042], [-71.831689, 41.34221], [-71.829595, 41.344544], [-71.835951, 41.353935], [-71.837695, 41.363298], [-71.837738, 41.363529], [-71.832203, 41.370189]]]]}}',13648,84316,626,4017,182,761,81335,521294);
/*!40000 ALTER TABLE `counties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_cases`
--

DROP TABLE IF EXISTS `monthly_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthly_cases` (
  `fips` int NOT NULL,
  `infection_month` int NOT NULL,
  `infection_year` int NOT NULL,
  `num_cases` int NOT NULL,
  PRIMARY KEY (`fips`,`infection_month`,`infection_year`),
  CONSTRAINT `monthly_cases_ibfk_1` FOREIGN KEY (`fips`) REFERENCES `counties` (`fips`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_cases`
--

LOCK TABLES `monthly_cases` WRITE;
/*!40000 ALTER TABLE `monthly_cases` DISABLE KEYS */;
INSERT INTO `monthly_cases` VALUES (44001,1,2021,1083),(44001,2,2021,341),(44001,3,2020,19),(44001,3,2021,435),(44001,4,2020,85),(44001,4,2021,346),(44001,5,2020,77),(44001,5,2021,100),(44001,6,2020,23),(44001,6,2021,17),(44001,7,2020,55),(44001,7,2021,75),(44001,8,2020,41),(44001,8,2021,231),(44001,9,2020,56),(44001,9,2021,329),(44001,10,2020,216),(44001,11,2020,660),(44001,12,2020,1167),(44003,1,2021,3365),(44003,2,2021,1239),(44003,3,2020,47),(44003,3,2021,1403),(44003,4,2020,478),(44003,4,2021,1372),(44003,5,2020,303),(44003,5,2021,428),(44003,6,2020,110),(44003,6,2021,56),(44003,7,2020,231),(44003,7,2021,276),(44003,8,2020,214),(44003,8,2021,1155),(44003,9,2020,210),(44003,9,2021,1378),(44003,10,2020,950),(44003,11,2020,3412),(44003,12,2020,3984),(44005,1,2021,1619),(44005,2,2021,536),(44005,3,2020,35),(44005,3,2021,685),(44005,4,2020,121),(44005,4,2021,791),(44005,5,2020,94),(44005,5,2021,187),(44005,6,2020,62),(44005,6,2021,45),(44005,7,2020,83),(44005,7,2021,210),(44005,8,2020,60),(44005,8,2021,576),(44005,9,2020,71),(44005,9,2021,532),(44005,10,2020,268),(44005,11,2020,619),(44005,12,2020,1535),(44007,1,2021,14322),(44007,2,2021,6086),(44007,3,2020,311),(44007,3,2021,6685),(44007,4,2020,5432),(44007,4,2021,6506),(44007,5,2020,3904),(44007,5,2021,2185),(44007,6,2020,1282),(44007,6,2021,460),(44007,7,2020,1607),(44007,7,2021,1216),(44007,8,2020,2013),(44007,8,2021,4908),(44007,9,2020,1975),(44007,9,2021,5538),(44007,10,2020,5953),(44007,11,2020,15183),(44007,12,2020,19161),(44009,1,2021,2029),(44009,2,2021,1191),(44009,3,2020,41),(44009,3,2021,1374),(44009,4,2020,223),(44009,4,2021,704),(44009,5,2020,73),(44009,5,2021,174),(44009,6,2020,47),(44009,6,2021,48),(44009,7,2020,71),(44009,7,2021,215),(44009,8,2020,159),(44009,8,2021,868),(44009,9,2020,223),(44009,9,2021,934),(44009,10,2020,611),(44009,11,2020,1594),(44009,12,2020,2299);
/*!40000 ALTER TABLE `monthly_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_vax_nums`
--

DROP TABLE IF EXISTS `monthly_vax_nums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthly_vax_nums` (
  `fips` int NOT NULL,
  `vaxxed_month` int NOT NULL,
  `vaxxed_year` int NOT NULL,
  `num_vaxxed` int NOT NULL,
  PRIMARY KEY (`fips`,`vaxxed_month`,`vaxxed_year`),
  CONSTRAINT `monthly_vax_nums_ibfk_1` FOREIGN KEY (`fips`) REFERENCES `counties` (`fips`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_vax_nums`
--

LOCK TABLES `monthly_vax_nums` WRITE;
/*!40000 ALTER TABLE `monthly_vax_nums` DISABLE KEYS */;
INSERT INTO `monthly_vax_nums` VALUES (44001,1,2021,10590),(44001,2,2021,14589),(44001,3,2021,54704),(44001,4,2021,48326),(44001,5,2021,45589),(44001,6,2021,16532),(44001,7,2021,4201),(44001,8,2021,4005),(44001,9,2021,4414),(44001,10,2021,1335),(44001,12,2020,2),(44003,1,2021,16200),(44003,2,2021,25497),(44003,3,2021,85886),(44003,4,2021,76875),(44003,5,2021,78304),(44003,6,2021,29018),(44003,7,2021,9224),(44003,8,2021,10555),(44003,9,2021,10732),(44003,10,2021,3854),(44003,12,2020,0),(44005,1,2021,13636),(44005,2,2021,19843),(44005,3,2021,111857),(44005,4,2021,91025),(44005,5,2021,81213),(44005,6,2021,25315),(44005,7,2021,6300),(44005,8,2021,7743),(44005,9,2021,7485),(44005,10,2021,2492),(44005,12,2020,0),(44007,1,2021,41540),(44007,2,2021,85963),(44007,3,2021,231648),(44007,4,2021,214342),(44007,5,2021,207258),(44007,6,2021,87276),(44007,7,2021,32059),(44007,8,2021,36298),(44007,9,2021,37607),(44007,10,2021,13753),(44007,12,2020,17),(44009,1,2021,25360),(44009,2,2021,32644),(44009,3,2021,140125),(44009,4,2021,122489),(44009,5,2021,118584),(44009,6,2021,38519),(44009,7,2021,12236),(44009,8,2021,14575),(44009,9,2021,14064),(44009,10,2021,5028),(44009,12,2020,0);
/*!40000 ALTER TABLE `monthly_vax_nums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `state_id` int NOT NULL,
  `state_name` varchar(30) NOT NULL,
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_name` (`state_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (44,'Rhode Island');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-29 20:01:27
