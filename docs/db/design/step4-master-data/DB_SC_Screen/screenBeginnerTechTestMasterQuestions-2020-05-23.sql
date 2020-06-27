use DB_SC_Screen
-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SC_Screen
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1-log

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
-- Table structure for table `screenBeginnerTechTestMasterQuestions`
--

DROP TABLE IF EXISTS `screenBeginnerTechTestMasterQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `screenBeginnerTechTestMasterQuestions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupID` smallint(6) DEFAULT NULL,
  `isItLocked` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageFile` blob,
  `imageFileName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isThisRequiredToAnswer` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `answerInputType` enum('Select box','Text box','Text area') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Select box',
  `option1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pointsForOption1` smallint(6) DEFAULT NULL,
  `pointsForOption2` smallint(6) DEFAULT NULL,
  `pointsForOption3` smallint(6) DEFAULT NULL,
  `pointsForOption4` smallint(6) DEFAULT NULL,
  `pointsForOption5` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenBeginnerTechTestMasterQuestions`
--

LOCK TABLES `screenBeginnerTechTestMasterQuestions` WRITE;
/*!40000 ALTER TABLE `screenBeginnerTechTestMasterQuestions` DISABLE KEYS */;
INSERT INTO `screenBeginnerTechTestMasterQuestions` VALUES (1,NULL,'No','1.  If nothing is showing up on my calendar, what should I do?',NULL,NULL,'Yes','Select box','Reload the page','Click on the Spanner and make sure the appropriate boxes are selected','Quit out of Chrome completely and open it again.','Try clearing the cache','All of the above.',NULL,0,NULL,NULL,1),(2,NULL,'No','2.  What do I type into SC Brain to see the intake summary?',NULL,NULL,'Yes','Select box','\"intake\" or \"i\"','\"show intake\" of \"si\"','\"see intake\" of \"si\"','\"intake summary\" or \"is\"',NULL,NULL,NULL,NULL,1,NULL),(3,NULL,'No','3.  What 3 things do I have to do to lock a note?',NULL,NULL,'Yes','Select box','Review the MSE, Review the ROS and fill out SAP in note','Activate appointment, Start note, Save note','Make sure the appointment is locked, Fill out purpose of visit, Review MSE','I can lock the note at any time',NULL,1,NULL,NULL,NULL,NULL),(4,NULL,'No','4.  Where is the button to open the SAP of the note?',NULL,NULL,'Yes','Select box','In the patient tab under the Notes panel','At the top of the page next to the patient\'s name','In the patient tab, in the appointments panel all the way on the right','I can only open the note using SC Brain',NULL,NULL,NULL,1,NULL,NULL),(5,NULL,'No','5.  How do I add a diagnosis  of Generalized Anxiety Disorder to the patients file using SC Brain with a start date of today?',NULL,NULL,'Yes','Select box','\"dx ocd\"','\"diagnosis ocd\"','dx SPACE generalized anxiety disorder TAB today',NULL,NULL,NULL,NULL,1,NULL,NULL),(6,NULL,'No','6.  What does step 5B mean on the calendar?',NULL,NULL,'Yes','Select box','Appointment is confirmed','Appointment was cancelled','Appointment has not been approved','Appointment request is incomplete',NULL,NULL,1,NULL,NULL,NULL),(7,NULL,'No','7.  On the Knowledge Base for \"contact information\" to find Robert\'s cell phone number.',NULL,NULL,'Yes','Select box','1 650-586-1193','1 650-347-8673','1 650-323-2233','1 650-346-2239',NULL,NULL,NULL,NULL,1,NULL),(8,NULL,'No','8.  To have the patient sign the policies using the ipad I...',NULL,NULL,'Yes','Select box','I use the \"Sign to EMR\" application','Type \"show on ipad\" into SC Brain','type \"show on ipad\" as if it were a patient name','Type \"Sign to EMR\" into SC Brain',NULL,1,NULL,1,NULL,NULL),(9,NULL,'No','9.  I can set up SC email and SC chat on my smart phone!',NULL,NULL,'Yes','Select box','True','False',NULL,NULL,NULL,1,0,NULL,NULL,NULL),(10,NULL,'No','',NULL,NULL,'Yes','Select box','California','Texas','Indiana','New York',NULL,NULL,NULL,1,NULL,NULL),(11,NULL,'No','11.  I can add a task of \"make me a sandwich\" in SC Chat by using \"a t make me a sandwich\"',NULL,NULL,'Yes','Select box','True','False',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(12,NULL,'No','12.  Which of these icons do you click to go to the event panel?',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0B\0\0\0iW[\�\0\0\riCCPICC Profile\0\08��U]hU>�sg#$\�Sl4�t�?\r%\r�V4���\�\�6n�I6\�\"\�d�\�Θ\�\�83���OEP|1\�Ŀ�� (�\�>�/�\n%\�\� (>���P苦\�;3�i��\�e\�|�\�{\�g\�蹪X����-2\�s���=+�����WQ+]�L6Ow�[\�C\�{_\�\�\�����F qb�\����U\�vz��?\�Z�b\�1@\�/z�\�c\�\�s>~�if\�,\�ӈUSj���\�\��F�1�\�_�Mj\�\�\�b�uݠ�p\�a��m�h��mçϙ�>�\�a\\�+5%\�\�Q\�K���F�\�km}�\�ۖ��?�\�ޚ��\�D\\�\��������!~\�6�,\�-�\�7\�\�S�ث��Ŝ�vķ5Z��;���[��\�r�mS��\�\�\�5�\�{yD���yH�}r�9\�\�|\��-�����ă��FA�\�\���\�Jj\Z\�I.��[/\�]m�\�\�K7\�K\���R��D��r��Y�Q��O\�-�\�\��Q\�\�|�|�6���\r�	(�0��\nMXd(@\�\�h��2��_�f\��<�:��\����\�\�_���δ*d�>��\Z���\�e�\\c?~,7?& ك\�^2I��q2\"y�<M���d\��\�JlE^<7\����3R��E\�9���`�3*L\\S׬,��#\�)�]��\�_�\\\�,7Q�\���W\��_�\��2�+�j�\�\�W�r\�Z̻�L\�\�lXswU\Zm\��љŉ\��q�\�WF~�ə\��]<Yo.F���j�VN�D���,�\'}(�ƽ\�}\�}\�}\�}�]�;˝\�\�.ps_\��j�\ZZ\�{y�g\�k�J!#lr\�6\�Qa2�\'cBQ؁��\���/�=c\��\\�.V����M�UUT\�p�)VoM8�A�$Cd��6T��W�\"�O\�RiS;S��\�A���v�m��թn�R\�\�c\�}Y\�:n\�\r\�wKғb\Z�6*��\�舨�\�L�hS�\�mZ\�\����2�[.G����?�\��.⎴\0���\�#n\�\�\�8�ڲ\���H|\�\��\����2x~�\�\�\�\�s�\�-��7;��\�\�t\�>@��\0g���|UP`�o\0\0\0	pHYs\0\0%\0\0%IR$�\0\0�iTXtXML:com.adobe.xmp\0\0\0\0\0<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"XMP Core 5.4.0\">\n   <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n      <rdf:Description rdf:about=\"\"\n            xmlns:exif=\"http://ns.adobe.com/exif/1.0/\">\n         <exif:PixelXDimension>240</exif:PixelXDimension>\n         <exif:PixelYDimension>66</exif:PixelYDimension>\n      </rdf:Description>\n   </rdf:RDF>\n</x:xmpmeta>\n���\0\0\0iDOT\0\0\0\0\0\0\0\0\0\0!\0\0\0(\0\0\0!\0\0\0!\0\0\n�@\0\0	\�IDATx\�PT\�\��,�\�K���F|�\�#\�+����c�M4�\�+�R�6�5M�utll\��V\�\�L�J��Z��&ъ���1Aqy\�B\�wɽ,�\�\�ݽwYϙY�\�\�9\��s{����`hmii��[�uw\�\�U�W�+\�3p\�\0���\�^r,)���\nO\�\n�8�=����\\K\np�-�\�Ӹ=Dpi(\�&W��f\0\�`Ɏ�q�\�Pp7l\�W@�f\0[6Fn^n\�\�\n�X���W\�P�\0X�z</W�\�\np�]\�\0�z��8�J\�\�y�.V�\�\�\�\�s�(�V�\�\�p�`7\0��+�D��x^���\�\0��x�\\%\n\�pEEjjj,\�\�\�\���p���Y�\��\�;�q\�V5�\rD�a�S�N���aju���{�#į�M;��̰������~\�Z�z�\'|k6���^؏\� \"\�KH-�ҁ%c`?Oxyh\���@�\�\�\�ؼy3����j\�\�\�U�V!11Qu�����u(b�J�\�M-��{cklz�魵\�+/>\�5a��\����nL1\�\��B�zwHW�\�\�}\�A\�\n3Gb\�\�2�}���rd_�gf?.K�\r5K��K>�!����h\�z\�\�+\�5� ��76\�F����Y�\'=�&����X�v�]:�^�\Z\�\�\�v\�\�̸�}g\�W\�\�s_���㷹q�\��Ųia\�\�\��F�\�8��\�f�@�/���c��ߎj�\�p��\�fy\"���\Zc�5�E((dV�#\0S!j@\�\�\"�\�ո;�ے4���ΟS\�P��U�����G�\�\�Z�\�\�\�EPP�53�\�*ط�o\�\�\�z��d@ó7~�I��Ȳw��%x_�6����0\��zgBl/������L\�/�\�HDm�\��\�h~�A-\\t\�p�\�ݛ�\�+\�Z�̡<V�z�*\�\�\�*855111\�L�\�<\�\�E\�\�$�a�\��\0ODy���\�l�U\�\rl�eO�\�1N\��xg�=w�\�˧9_\�ßK~\�{\�|A�[JT!b/�_�\�acv)\�\��bg\0Lr(�\����`������7�㳨BZ-\�*�999HII�\n\�h4HKK\�رc�4�#..:�NJ߰a�\��Dh��<\�&n\�4J\�&G�as�p���Y\���V]�ā/��L�L\�m	ä\�c���ۂW��⑃��~w��Z��\�+i�b{�t�\�\��ښ�0�M�\r�\�C*AL�\�zI���^��\0F^^�Eݨ��[J\0\��\�\n\�o_0�a�\�)�V,\�\�*F\�c�\�\�S���#q��[עO]�.^\�S�\�%=�\�)�\�e\�\�L+��;L�F/:�E�%e_�\��\\\0/\�G��V�W(���\�\�@,���:J\�?\�=İ0z\0\'�?:��\�q#��w\\��9�8l\�\�c�gE\�z�2�VP0�\�(ĝܛmy\�\\M�a�o\�s`���=�;n�\�\�\��R	\�iZ���c��s�X8��\�\����Mn�l\�3\�\�\���UؓW!\�k�>���	jt�\�Se8s�m�z\�@_�7DnV\�vo\�9�3��R9r\�%\�[����\�(�\�\�\�G෋c�2�F�L�;qg\0+�\�\�(���a\�>d/m\�\0��a;!�\�\�\"#x��u\�\�\�\�\�h{\�N\r�3������t<x�\0uuu(++�\�\�j�����>G���:́CCC\0̞=��������,C\�\�6\0g=��\�Wc3�ei\�;\�\��x�\�p�(�y\�08_xK���2��\�z���N\�T��\�\�*\�dk6�ji���^�<L��4b/��MT<0\0	\��A�e�\�]��\��\�6�!f�\�X��:\n�w\�=^}���%x\��\���l�\�U\07Ք�<m�\�F�\�p�����<ɟ\�D\���l��pLa}\�kZ\�=6\�\��>Űo\�`=��ßO^Ǝ��j,��\�\�\�(��CoO���)A��\�u\�e��FƯ\�\�神����N\�`�GK\�ggڀ�\��c��\'�\�K\�\�\�Cw1��P=$%%aݺu6˝��\�*4�\�\�Ũ0�yL\r^de��>6͎��\�:琄q�۳\�cߩ\�V\�\�3�Ld�i�܂[��\�3h��X�)Ŀڟ����bf�|\�\�;\Z�0��\�î�\�`\�n8\np/�\�-,kah�}̏cZ\�C\�hM=�,A<\�-�\\�\��\�\�\�h�+��b�.�\�?�\�p)C�E\�w\�R��i[aYZ!\�\�mێz�\����\�\�\� îy�l\�X�\�O\�g\��?�k�\�\n\�<=ܱ��u��\�\�v=G�\�\�\�9[8��k\�\�,�|\��\�\�r�s�\'V>-\�L�q`:�,��]�LCS�)�%��\�3��\�\��\�5^�2��\�{\��=;yu��}\���@؟sE�\��\"P ѳ~6tB\�Ɂ |i\�a�LUɁxRT�\�\�:ӵ�p\�\�;\�h�4�c�a}\�$\��`	`*�V��V�7�#�q\�ն����\�z,�n6�ոa�4�\�ZJ=�\0g]�5:\Z�\�zP{�Q���h;�°olO&ĝ�\��C�0\�}�\�\�ዂ�Ja!���\0\�@����\�\�\�y#���\�A�-�C0:\�\�ᦴ�\�V�3E\�\�Iڦmb\�Ԅ�0��}��6o���\�\�\Z\�ٯ\�\0qW�\0\0\0��Ty`x\0\0�IDAT\�lE\���\�ʣ-���P�Uy\�\�BBh������T�\�\0\Z�1�=��Ml�!bhAE�\�F��\Z	�(BE�\�Q�\�Aߴwug�\�\�^o��\�w�;�\\vv\�|��\�\�ά\�b�tY�V\�):�K�K\��\��F\�\�Ά\�d\�UtuC;V\�@���o�:~�3F�ڏ4(?Y�²j�m���\Z?D��d��ӊ�M_\�Tu��=	y%�\�����\�\�\�\�a\�\�سa!��\r�\�Vv��<\�\��z.�\�G�u�\�,\��\�;<\"v\�\�>\�Y��\n\�k�\����\�\�P�^.c4萝4��~��/�vXŦ\�.�\�\�;l~+���\�\�\�b\��](�Qa\�\�zp�^�\�1\�=	ay�w\�t 2R\�\n�DPY��\�\�)�\�m�)�\�\�\�\�\0&z��rE�}\�(<6u8�:�Xf�9z�o\�?�\�8Q��5\'�i{�\�\��[J��]�Z;\�e!!6���B���$<5\��\����ˋJQ\�\�ʷ\�[�(FFreh�\���\�̈��\�H�t�&��\���%\0�\�tؗہ\�X�T\�\rX���gZ�N��?#uR���C�]]X�\�TԶP\�ᮨ\�\�\Z��\�2��\�\�\�\�^�w]��@\�I�!s����v\�\\\�u~L\�L� �\�9\'m\"-�=�##°�`�X\�\�\�U:\��{�Z� �\�^*Mb��\����\�R��]g`\�\0��\� \�\" $P��\�\�p�Q~�\�-��\��>9\�#�A�2!ﭘ-U\�a\�^�� \�\�\�qQ\�{��l�$x\�.c�e3�y)���b{xiG/�Ĉ��\��\'i_O]�r	M�#�\��jp\�0\�\�rW�ނ8c}	�\�7�KtSN*\�M\'��=�dɽaq\n��\�\���T�R\0\�]8z��[{\��7�W��\�^M˦G\�\�pnz��\�G�`h��\��z��O�\�@t{\�u/D ^2łsӪL��� ��H��#\�t�X�_L�<Pр��.�Nf3fP��\'G -a\���|��7�\�\r�M;a\�\���d6��ؗ�\�0\���S\r\�Tv\�\�Ҭ��x1}\�\�НD6���\�L{�]\�\�߶�\0�\ZI\0��\�\��\Z\�,�\�6�b���z�\�\�ze\�Y�C|���\�؍�f\�=�@��3179��\�\��vμT	%Lt\�\��/��� V�\�Y�]�A�\�c@�4<�N_j@\�\�R���\�9��z6\�\�D��g^j��\0~�;F�Sr�\�\�.�3��^\�k_@�J��C�A���hfl\�|w��/\�c9��\�v^�xU\�\�<pB<*�\�\�K\���eܙ��_k\���%\�F`\�ᘍ\�\�\�\�b\�\�n\r��ڥۍ=6��\�\�jݚT+\�\�j?w\�w��\�j�*pW�\�~���\�\�\�t\�\�ӕ� ~zF4&\n\nxj�Jb2S��r\�\�z�\��e\�J:.\��\n`:~�R��;��G\�\�\r`�\��\�\�())�\�l��ޡ��\�\�\�B~~>l_�xDx�H!��T�.l\�y�O\�\�\"\�F��\��T\�7B,�ݙ\�Wm\�\�%~\�6�$�\���p�/��Xu֦ź�a\�\��\n\�\�ཫ&)D���\�\�ml��\�ⵏ:���Y�\�r��DL����Ie�<�4���y@\�`\0+=�LM{��\��3\�\��\�#\��״��?3^\�\��wk��nӟy@3`\0k&\�\�P5z��ƨ2�4\��fB\�U��j�*�I3`\0k&\�\�P5z��ƨ2�4\��fB\�U��j�*�I3`\0k&\�\�P5z��ƨ2�4\��fB\�U��j�*�I3`\0k&\�\�P5z��ƨ2�4\��fB\�U��\�:�\�\0\0\0\0IEND�B`�','Screen Shot 2017-03-30 at 12.01.34 PM.png','Yes','Select box','The magnifying glass','The piece of paper','The chain look-ing thing','I can\'t get to the event page from here.',NULL,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `screenBeginnerTechTestMasterQuestions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
