## Redaxo Database Dump Version 4
## Prefix rex_
## charset utf-8

DROP TABLE IF EXISTS `rex_62_params`;
CREATE TABLE `rex_62_params` (
  `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `prior` int(10) unsigned NOT NULL,
  `attributes` text NOT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  `default` varchar(255) NOT NULL,
  `params` text,
  `validate` text,
  `restrictions` text NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` int(11) NOT NULL,
  PRIMARY KEY (`field_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_62_params` WRITE;
/*!40000 ALTER TABLE `rex_62_params` DISABLE KEYS */;
INSERT INTO `rex_62_params` VALUES 
  (1,'translate:pool_file_description','med_description',1,'',2,'','','','','%USER%',1441563982,'%USER%',1441563982),
  (2,'translate:pool_file_copyright','med_copyright',2,'',1,'','','','','%USER%',1441563982,'%USER%',1441563982),
  (3,'translate:online_from','art_online_from',1,'',10,'','','','','%USER%',1441563982,'%USER%',1441563982),
  (4,'translate:online_to','art_online_to',2,'',10,'','','','','%USER%',1441563982,'%USER%',1441563982),
  (5,'translate:description','art_description',3,'',2,'','','','','%USER%',1441563982,'%USER%',1441563982),
  (6,'translate:keywords','art_keywords',4,'',2,'','','','','%USER%',1441563982,'%USER%',1441563982),
  (7,'translate:metadata_image','art_file',5,'',6,'','','','','%USER%',1441563982,'%USER%',1441563982),
  (8,'translate:teaser','art_teaser',6,'',5,'','','','','%USER%',1441563982,'%USER%',1441563982),
  (9,'translate:header_article_type','art_type_id',7,'size=1',3,'','Standard|Zugriff fuer alle','','','%USER%',1441563982,'%USER%',1441563982),
  (10,'translate:com_permtype','art_com_permtype',8,'',3,'','0:translate:com_perm_extends|1:translate:com_perm_only_logged_in|2:translate:com_perm_only_not_logged_in|3:translate:com_perm_all','','','h2cro4_alex',1441698895,'',0),
  (11,'translate:com_group_perm','art_com_grouptype',9,'',3,'','0:translate:com_group_forallgroups|1:translate:com_group_inallgroups|2:translate:com_group_inonegroup|3:translate:com_group_nogroups','','','h2cro4_alex',1441698895,'',0),
  (12,'translate:com_group_name','art_com_groups',10,'multiple=multiple',3,'','select name as label,id from rex_com_group order by label','','','h2cro4_alex',1441698895,'',0);
/*!40000 ALTER TABLE `rex_62_params` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_62_type`;
CREATE TABLE `rex_62_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `dbtype` varchar(255) NOT NULL,
  `dblength` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_62_type` WRITE;
/*!40000 ALTER TABLE `rex_62_type` DISABLE KEYS */;
INSERT INTO `rex_62_type` VALUES 
  (1,'text','text',0),
  (2,'textarea','text',0),
  (3,'select','varchar',255),
  (4,'radio','varchar',255),
  (5,'checkbox','varchar',255),
  (10,'date','text',0),
  (13,'time','text',0),
  (11,'datetime','text',0),
  (12,'legend','text',0),
  (6,'REX_MEDIA_BUTTON','varchar',255),
  (7,'REX_MEDIALIST_BUTTON','text',0),
  (8,'REX_LINK_BUTTON','varchar',255),
  (9,'REX_LINKLIST_BUTTON','text',0);
/*!40000 ALTER TABLE `rex_62_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_679_type_effects`;
CREATE TABLE `rex_679_type_effects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `effect` varchar(255) NOT NULL,
  `parameters` text NOT NULL,
  `prior` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_679_type_effects` WRITE;
/*!40000 ALTER TABLE `rex_679_type_effects` DISABLE KEYS */;
INSERT INTO `rex_679_type_effects` VALUES 
  (1,1,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:3:\"200\";s:24:\"rex_effect_resize_height\";s:3:\"200\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1441563983,'%USER%',1441563983,'%USER%'),
  (2,2,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:3:\"600\";s:24:\"rex_effect_resize_height\";s:3:\"600\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1441563983,'%USER%',1441563983,'%USER%'),
  (3,3,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:2:\"80\";s:24:\"rex_effect_resize_height\";s:2:\"80\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1441563983,'%USER%',1441563983,'%USER%'),
  (4,4,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:3:\"246\";s:24:\"rex_effect_resize_height\";s:3:\"246\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1441563983,'%USER%',1441563983,'%USER%'),
  (5,5,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:3:\"246\";s:24:\"rex_effect_resize_height\";s:3:\"246\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1441563983,'%USER%',1441563983,'%USER%');
/*!40000 ALTER TABLE `rex_679_type_effects` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_679_types`;
CREATE TABLE `rex_679_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_679_types` WRITE;
/*!40000 ALTER TABLE `rex_679_types` DISABLE KEYS */;
INSERT INTO `rex_679_types` VALUES 
  (1,1,'rex_mediapool_detail','Zur Darstellung von Bildern in der Detailansicht im Medienpool'),
  (2,1,'rex_mediapool_maximized','Zur Darstellung von Bildern im Medienpool wenn maximiert'),
  (3,1,'rex_mediapool_preview','Zur Darstellung der Vorschaubilder im Medienpool'),
  (4,1,'rex_mediabutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIA_BUTTON[]s'),
  (5,1,'rex_medialistbutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIALIST_BUTTON[]s');
/*!40000 ALTER TABLE `rex_679_types` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_action`;
CREATE TABLE `rex_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `preview` text,
  `presave` text,
  `postsave` text,
  `previewmode` tinyint(4) DEFAULT NULL,
  `presavemode` tinyint(4) DEFAULT NULL,
  `postsavemode` tinyint(4) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_article`;
CREATE TABLE `rex_article` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `re_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catprior` int(11) NOT NULL,
  `attributes` text NOT NULL,
  `startpage` tinyint(1) NOT NULL,
  `prior` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `clang` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  `art_online_from` text,
  `art_online_to` text,
  `art_description` text,
  `art_keywords` text,
  `art_file` varchar(255) DEFAULT '',
  `art_teaser` varchar(255) DEFAULT '',
  `art_type_id` varchar(255) DEFAULT '',
  `art_com_permtype` varchar(255) NOT NULL,
  `art_com_grouptype` varchar(255) NOT NULL,
  `art_com_groups` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `find_articles` (`id`,`clang`),
  KEY `id` (`id`),
  KEY `clang` (`clang`),
  KEY `re_id` (`re_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_article` WRITE;
/*!40000 ALTER TABLE `rex_article` DISABLE KEYS */;
INSERT INTO `rex_article` VALUES 
  (1,1,0,'main','',0,'',0,1,'|',1,1441564414,1441650332,1,0,'h2cro4_alex','h2cro4_alex',0,'','','','','','','','','',''),
  (2,2,0,'neuer Eintrag','',0,'',0,2,'|',1,1441650283,1441650322,1,0,'h2cro4_alex','h2cro4_alex',0,'','','','','','','','','',''),
  (3,3,0,'Einträge','Einträge',2,'',1,1,'|',1,1441695577,1441725798,1,0,'h2cro4_alex','h2cro4_alex',0,'','','','','','','','','',''),
  (4,4,0,'Startseite','Startseite',1,'',1,1,'|',1,1441697574,1441698969,1,0,'h2cro4_alex','h2cro4_alex',0,'','','','','','','','','',''),
  (6,6,3,'Neuer Eintrag','Neuer Eintrag',1,'',1,1,'|3|',1,1441725703,1441987507,1,0,'h2cro4_alex','h2cro4_alex',0,'','','','','','','','','',''),
  (7,7,3,'IHK Version','IHK Version',2,'',1,1,'|3|',0,1442583392,1442584331,1,0,'h2cro4_alex','h2cro4_alex',0,'','','','','','','','','','');
/*!40000 ALTER TABLE `rex_article` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_article_slice`;
CREATE TABLE `rex_article_slice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clang` int(11) NOT NULL,
  `ctype` int(11) NOT NULL,
  `re_article_slice_id` int(11) NOT NULL,
  `value1` text,
  `value2` text,
  `value3` text,
  `value4` text,
  `value5` text,
  `value6` text,
  `value7` text,
  `value8` text,
  `value9` text,
  `value10` text,
  `value11` text,
  `value12` text,
  `value13` text,
  `value14` text,
  `value15` text,
  `value16` text,
  `value17` text,
  `value18` text,
  `value19` text,
  `value20` text,
  `file1` varchar(255) DEFAULT NULL,
  `file2` varchar(255) DEFAULT NULL,
  `file3` varchar(255) DEFAULT NULL,
  `file4` varchar(255) DEFAULT NULL,
  `file5` varchar(255) DEFAULT NULL,
  `file6` varchar(255) DEFAULT NULL,
  `file7` varchar(255) DEFAULT NULL,
  `file8` varchar(255) DEFAULT NULL,
  `file9` varchar(255) DEFAULT NULL,
  `file10` varchar(255) DEFAULT NULL,
  `filelist1` text,
  `filelist2` text,
  `filelist3` text,
  `filelist4` text,
  `filelist5` text,
  `filelist6` text,
  `filelist7` text,
  `filelist8` text,
  `filelist9` text,
  `filelist10` text,
  `link1` varchar(10) DEFAULT NULL,
  `link2` varchar(10) DEFAULT NULL,
  `link3` varchar(10) DEFAULT NULL,
  `link4` varchar(10) DEFAULT NULL,
  `link5` varchar(10) DEFAULT NULL,
  `link6` varchar(10) DEFAULT NULL,
  `link7` varchar(10) DEFAULT NULL,
  `link8` varchar(10) DEFAULT NULL,
  `link9` varchar(10) DEFAULT NULL,
  `link10` varchar(10) DEFAULT NULL,
  `linklist1` text,
  `linklist2` text,
  `linklist3` text,
  `linklist4` text,
  `linklist5` text,
  `linklist6` text,
  `linklist7` text,
  `linklist8` text,
  `linklist9` text,
  `linklist10` text,
  `php` text,
  `html` text,
  `article_id` int(11) NOT NULL,
  `modultyp_id` int(11) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `next_article_slice_id` int(11) DEFAULT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`,`re_article_slice_id`,`article_id`,`modultyp_id`),
  KEY `id` (`id`),
  KEY `clang` (`clang`),
  KEY `re_article_slice_id` (`re_article_slice_id`),
  KEY `article_id` (`article_id`),
  KEY `find_slices` (`clang`,`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_article_slice` WRITE;
/*!40000 ALTER TABLE `rex_article_slice` DISABLE KEYS */;
INSERT INTO `rex_article_slice` VALUES 
  (5,0,1,0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',4,2,1441698960,1441698960,'h2cro4_alex','h2cro4_alex',0,0),
  (2,0,1,0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,2,1441649425,1441649903,'h2cro4_alex','h2cro4_alex',0,0),
  (3,0,1,0,'0','','time|einstempeln|Einstempeln|\r\ntime|ausstempeln|Ausstempeln|\r\ndate|datum|Datum|2015|2025|\r\ntextarea|aufgaben|Aufgaben|','','','Danke für die Eingabe','0','rex_berichtsheft','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,1,1441650322,1441650322,'h2cro4_alex','h2cro4_alex',0,0),
  (7,0,1,0,'0','','time|einstempeln|Einstempeln|\r\ntime|ausstempeln|Ausstempeln|\r\ndate|datum|Datum|2015|2025|\r\ntextarea|aufgaben|Aufgaben|form-control','','','Danke für die Eingabe','0','rex_berichtsheft','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',6,1,1441725760,1441987507,'h2cro4_alex','h2cro4_alex',0,0),
  (8,0,1,0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',3,2,1441725794,1441725794,'h2cro4_alex','h2cro4_alex',0,0),
  (9,0,1,0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',7,4,1442584281,1442584281,'h2cro4_alex','h2cro4_alex',0,0);
/*!40000 ALTER TABLE `rex_article_slice` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_berichtsheft`;
CREATE TABLE `rex_berichtsheft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datum` datetime NOT NULL,
  `aufgaben` text NOT NULL,
  `einstempeln` time NOT NULL,
  `ausstempeln` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_berichtsheft` WRITE;
/*!40000 ALTER TABLE `rex_berichtsheft` DISABLE KEYS */;
INSERT INTO `rex_berichtsheft` VALUES 
  (5,'2015-09-07 00:00:00','Viele verschiedene Banner Varianten von Haitian. Ich habe die Bilder von der Rosina Seite in meinem Testsystem eingefügt, die, während Anne-Sophie im Urlaub ist, gezeigt werden. Ich habe auch die PSD-Bank und Drinkstar Seiten umgebaut. Im Endeffekt wird die Drinkstar Seite eine Mobileversion haben, und die PSD-Bank seite wird bloß eine Seite. ','08:00:00','17:00:00'),
  (8,'2015-09-08 00:00:00','Ein Problem mit der Bestätigungsmail war behoben. Jetzt muss ich das alte Template finden, um das Layout zu vergleichen. Die Drinkstar Seite Mobileversion wird langsam besser. Das Menü ist momentan das Hauptproblem, weil es viel zu breit ist. Ich habe die Bilder auf der Rosina Seite eingefügt. ','08:00:00','17:00:00'),
  (9,'2015-09-09 00:00:00','Drinkstar Seite Mobile Version hat jetzt ein Menü, das funktioniert und sieht gut aus. Oder besser. Ich muss noch das \"Submenü\" weiter unten schieben. Laut Sven haben die verschiedene Menüpunkten unterschiedliche Schriftgröße. Das muss ich morgen anpassen.','08:00:00','16:30:00'),
  (10,'2015-09-10 00:00:00','PSD-Fangiro Seite wird immer besser. Das Hauptmenü funktioniert (endlich) und ich habe das Video Javascript fast total raus geschmissen. Es ist nicht nötig, weil alles auf eine Seite legt. Die Drinkstar Seite ist fast fertig. Wir müssen entscheiden was auf der Englische Startseite kommt. ','08:00:00','16:30:00'),
  (11,'2015-09-11 00:00:00','Die PSD Seite braucht noch kleine Sachen. Das Video auf der Mobileversion ist zu groß. Es wird aber langsam besser. Ich habe 3 Schriften gefunden, die dem Bildtext ähneln.Ich habe auch noch mehr an die Drinkstar Seite gearbeitet. Die Englische Startseite ist besser aber wenn das Fenster größer als 480px ist, sieht die Seite ziemlich leer aus. ','08:00:00','16:00:00'),
  (12,'2015-09-14 00:00:00','Heute habe ich an die Röckenhofen Seite gearbeitet. Jetzt hat die Seite vier Behälter, wo Bilder sich austauschen. Ich kann alles schöner machen, aber ich bin mir noch nicht sicher, ob es ist, was Thomas will. Morgen gehe ich in die Schule. ','08:00:00','16:30:00'),
  (13,'2015-09-15 00:00:00','Erster Schultag! Wir haben unsere Zeitliste bekommen. Der Lehrer hat uns auch gesagt, wohin wir gehen müssen. Sonst haben wir nicht so viel gemacht.','08:00:00','13:00:00'),
  (14,'2015-09-16 00:00:00','Heute habe ich Thomas und Sven getroffen. Wir sagten was die derzeitige Projekte sind, und was die höchste Priorität hat. Danach waren Thomas und Ich bei Longo in Lauf, um auszufinden, was wir noch mit Haitian machen müssen.','09:00:00','16:00:00'),
  (15,'2015-09-17 00:00:00','Heute habe ich ein Modul in der Rosina Seite installiert. Ich habe auch gelernt, wie man Oxid Module selbst basteln kann. Irgendwann muss ich ein neues bauen. Ich habe auch an die Röckenhofen Seite gearbeitet. Die Bilderaustausch-Funktion ist viel besser. ','08:00:00','16:30:00');
/*!40000 ALTER TABLE `rex_berichtsheft` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_clang`;
CREATE TABLE `rex_clang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `rex_clang` WRITE;
/*!40000 ALTER TABLE `rex_clang` DISABLE KEYS */;
INSERT INTO `rex_clang` VALUES 
  (0,'deutsch',0);
/*!40000 ALTER TABLE `rex_clang` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_com_comment`;
CREATE TABLE `rex_com_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `email` text NOT NULL,
  `name` text NOT NULL,
  `user_id` text NOT NULL,
  `www` text NOT NULL,
  `create_datetime` varchar(255) NOT NULL,
  `update_datetime` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `ckey` text NOT NULL,
  `info_email` varchar(255) NOT NULL,
  `reply_to` text NOT NULL,
  `ukey` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_com_group`;
CREATE TABLE `rex_com_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_com_user`;
CREATE TABLE `rex_com_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `status` text NOT NULL,
  `firstname` text NOT NULL,
  `name` text NOT NULL,
  `activation_key` text NOT NULL,
  `session_key` text NOT NULL,
  `last_action_time` varchar(255) NOT NULL,
  `password_hash` text NOT NULL,
  `rex_com_group` text NOT NULL,
  `newsletter_last_id` text NOT NULL,
  `newsletter` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_file`;
CREATE TABLE `rex_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `re_file_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `attributes` text,
  `filetype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  `med_description` text,
  `med_copyright` text,
  PRIMARY KEY (`file_id`),
  KEY `re_file_id` (`re_file_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_file_category`;
CREATE TABLE `rex_file_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `re_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `re_id` (`re_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_module`;
CREATE TABLE `rex_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `ausgabe` text NOT NULL,
  `eingabe` text NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_module` WRITE;
/*!40000 ALTER TABLE `rex_module` DISABLE KEYS */;
INSERT INTO `rex_module` VALUES 
  (1,'XForm Formbuilder',0,'<?php\n\n/**\n * XForm\n * @author jan.kristinus[at]redaxo[dot]org Jan Kristinus\n * @author <a href=\"http://www.yakamara.de\">www.yakamara.de</a>\n */\n\n// module:xform_basic_out\n// v0.2.2\n//--------------------------------------------------------------------------------\n\n$xform = new rex_xform;\nif (\"REX_VALUE[7]\" == 1) { $xform->setDebug(TRUE); }\n$form_data = \'REX_VALUE[3]\';\n$form_data = trim(str_replace(\"<br />\",\"\",rex_xform::unhtmlentities($form_data)));\n$xform->setFormData($form_data);\n$xform->setRedaxoVars(REX_ARTICLE_ID,REX_CLANG_ID); \n\n?>REX_PHP_VALUE[9]<?php\n\n// action - showtext\nif(\"REX_IS_VALUE[6]\" == \"true\")\n{\n  $html = \"0\"; // plaintext\n  if(\'REX_VALUE[11]\' == 1) $html = \"1\"; // html\n  if(\'REX_VALUE[11]\' == 2) $html = \"2\"; // textile\n  \n  $e3 = \'\'; $e4 = \'\';\n  if ($html == \"0\") {\n    $e3 = \'<div class=\"rex-message\"><div class=\"rex-info\"><p>\';\n    $e4 = \'</p></div></div>\';\n  }\n  \n  $t = str_replace(\"<br />\",\"\",rex_xform::unhtmlentities(\'REX_VALUE[6]\'));\n  $xform->setActionField(\"showtext\",array(\n      $t,\n      $e3,\n      $e4,\n      $html // als HTML interpretieren\n    )\n  );\n}\n\n$form_type = \"REX_VALUE[1]\";\n\n// action - email\nif ($form_type == \"1\" || $form_type == \"2\" || $form_type == \"3\")\n{\n  $mail_from = $REX[\'ERROR_EMAIL\'];\n  if(\"REX_VALUE[2]\" != \"\") $mail_from = \"REX_VALUE[2]\";\n  $mail_to = $REX[\'ERROR_EMAIL\'];\n  if(\"REX_VALUE[12]\" != \"\") $mail_to = \"REX_VALUE[12]\";\n  $mail_subject = \"REX_VALUE[4]\";\n  $mail_body = str_replace(\"<br />\",\"\",rex_xform::unhtmlentities(\'REX_VALUE[5]\'));\n  $xform->setActionField(\"email\", array(\n      $mail_from,\n      $mail_to,\n      $mail_subject,\n      $mail_body\n    )\n  );\n}\n\n// action - db\nif ($form_type == \"0\" || $form_type == \"2\" || $form_type == \"3\")\n{\n  $xform->setObjectparams(\'main_table\', \'REX_VALUE[8]\');\n  \n  //getdata\n  if (\"REX_VALUE[10]\" != \"\")\n    $xform->setObjectparams(\"getdata\",TRUE);\n  \n  $xform->setActionField(\"db\", array(\n      \"REX_VALUE[8]\", // table\n      $xform->objparams[\"main_where\"], // where\n      )\n    );\n}\n\necho $xform->getForm();\n\n?>\n','<?php\n\n/**\n * XForm\n * @author jan.kristinus[at]redaxo[dot]org Jan Kristinus\n * @author <a href=\"http://www.yakamara.de\">www.yakamara.de</a>\n */\n\n// module:xform_basic_in\n// v0.2.2\n// --------------------------------------------------------------------------------\n\n// DEBUG SELECT\n////////////////////////////////////////////////////////////////////////////////\n$dbg_sel = new rex_select();\n$dbg_sel->setName(\'VALUE[7]\');\n$dbg_sel->setSize(1);\n$dbg_sel->addOption(\'inaktiv\',\'0\');\n$dbg_sel->addOption(\'aktiv\',\'1\');\n$dbg_sel->setSelected(\'REX_VALUE[7]\');\n$dbg_sel = $dbg_sel->get();\n\n\n// TABLE SELECT\n////////////////////////////////////////////////////////////////////////////////\n$gc = rex_sql::factory();\n$gc->setQuery(\'SHOW TABLES\');\n$tables = $gc->getArray();\n$tbl_sel = new rex_select;\n$tbl_sel->setName(\'VALUE[8]\');\n$tbl_sel->setSize(1);\n$tbl_sel->addOption(\'Keine Tabelle ausgewählt\', \'\');\nforeach ($tables as $key => $value)\n{\n  $tbl_sel->addOption(current($value), current($value));\n}\n$tbl_sel->setSelected(\'REX_VALUE[8]\');\n$tbl_sel = $tbl_sel->get();\n\n\n// PLACEHOLDERS\n////////////////////////////////////////////////////////////////////////////////\n$xform = new rex_xform;\n$form_data = \'REX_VALUE[3]\';\n$form_data = trim(str_replace(\'<br />\',\'\',rex_xform::unhtmlentities($form_data)));\n$xform->setFormData($form_data);\n$xform->setRedaxoVars(REX_ARTICLE_ID,REX_CLANG_ID);\n$placeholders = \'\';\nif(\'REX_VALUE[3]\'!=\'\')\n{\n$ignores = array(\'html\',\'validate\',\'action\');\n  $placeholders .= \'  <strong class=\"hint\">Platzhalter: <span>[<a href=\"#\" id=\"xform-placeholders-help-toggler\">?</a>]</span></strong>\n  <p id=\"xform-placeholders\">\'.PHP_EOL;\nforeach($xform->objparams[\'form_elements\'] as $e)\n{\n  if(!in_array($e[0],$ignores) && isset($e[1]))\n  {\n      $placeholders .= \'<span>###\'.$e[1].\'###</span> \'.PHP_EOL;\n  }\n}\n  $placeholders .= \'  </p>\'.PHP_EOL;\n}\n\n\n// OTHERS\n////////////////////////////////////////////////////////////////////////////////\n$row_pad = 1;\n\n$sel = \'REX_VALUE[1]\';\n$db_display   = ($sel==\'\' || $sel==1) ?\'style=\"display:none\"\':\'\';\n$mail_display = ($sel==\'\' || $sel==0) ?\'style=\"display:none\"\':\'\';\n\n?>\n\n<style type=\"text/css\" media=\"screen\">\n  /*BAISC MODUL STYLE*/\n  #xform-modul                       {margin:0;padding:0;line-height:25px;}\n  #xform-modul fieldset              {background:#E4E1D1;margin:-20px 0 0 0;padding: 4px 10px 10px 10px;-moz-border-radius:6px;-webkit-border-radius:6px;border-radius:6px;}\n  #xform-modul fieldset legend       {display:block !important;position:relative !important;height:auto !important;top:0 !important;left:0 !important;width:100% !important;margin:0 0 0 0 !important;padding:30px 0 0 0px !important;background:transparent !important;border-bottom:1px solid #B1B1B1 !important;color:gray;font-size:14px;font-weight:bold;}\n  #xform-modul fieldset legend em    {font-size:10px;font-weight:normal;font-style:normal;}\n  #xform-modul fieldset strong.label,\n  #xform-modul fieldset label        {display:inline-block !important;width:150px !important;font-weight:bold;}\n  #xform-modul fieldset label span   {font-weight:normal;}\n  #xform-modul input,\n  #xform-modul select                {width:460px;border:auto;margin:0 !important;padding:0 !important;}\n  #xform-modul input[type=\"checkbox\"]{width:auto;}\n  #xform-modul hr                    {border:0;height:0;margin:4px 0 4px 0;padding:0;border-top:1px solid #B1B1B1 !important;clear:left;}\n  #xform-modul a.blank               {background:url(\"../files/addons/be_style/plugins/agk_skin/popup.gif\") no-repeat 100% 0;padding-right:17px;}\n  #xform-modul #modulinfo            {font-size:10px;text-align:right;}\n  /*XFORM MODUL*/\n  #xform-modul textarea              {min-height:50px;font-family:monospace;font-size:12px;}\n  #xform-modul pre                   {clear:left;}\n  #xform-modul strong span           {font-weight:normal;}\n  #xform-modul .help                 {display:none;color:#2C8EC0;line-height:12px;}\n  #xform-modul .area-wrapper         {background:white;border:1px solid #737373;margin-bottom:10px;width:100%;}\n  #xform-modul .fullwidth            {width:100% !important;}\n  #xform-modul #thx-markup           {width:auto !important;}\n  #xform-modul #thx-markup input     {width:auto !important;}\n  #xform-modul #xform-placeholders-help,\n  #xform-modul #xform-where-help     {display:none;}\n  #xform-modul #xform-placeholders,\n  #xform-modul #xform-classes-showhelp {background:white;border:1px solid #737373;margin-bottom:10px;width:100%;}\n  #xform-modul #xform-placeholders {padding:4px 10px;float:none;width:auto;}\n  #xform-modul #xform-placeholders span:hover {color:red;cursor:pointer;}\n  #xform-modul em.hint               {color:silver;margin:0;padding:0 0 0 10px;}\n  /*SHOWHELP OVERRIDES*/\n  #xform-modul ul.xform.root         {border:0;outline:0;margin:4px 0;padding:0;width:100%;background:transparent;}\n  #xform-modul ul.xform              {font-size:1.1em;line-height:1.4em;}\n</style>\n\n\n<div id=\"xform-modul\">\n<fieldset>\n  <legend>Formular</legend>\n\n  <label>DebugModus:</label>\n  <?php echo $dbg_sel;?>\n\n  <hr />\n\n  <label class=\"fullwidth\">Felddefinitionen:</label>\n  <textarea name=\"VALUE[3]\" id=\"xform-form-definition\" class=\"fullwidth\" rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[3]\'))+$row_pad);?>\">REX_VALUE[3]</textarea>\n\n  <strong class=\"label\">Verfügbare Feld-Klassen:</strong>\n  <div id=\"xform-classes-showhelp\">\n    <?php echo rex_xform::showHelp(true,true); ?>\n  </div><!-- #xform-classes-showhelp -->\n\n  <div id=\"thx-markup\"><strong>Meldung bei erfolgreichen Versand:</strong> (\n    <input type=\"radio\" name=\"VALUE[11]\" value=\"0\" <?php if(\"REX_VALUE[11]\" == \"0\") echo \'checked=\"checked\"\'; ?>> Plaintext\n    <input type=\"radio\" name=\"VALUE[11]\" value=\"1\" <?php if(\"REX_VALUE[11]\" == \"1\") echo \'checked=\"checked\"\'; ?>> HTML\n    <input type=\"radio\" name=\"VALUE[11]\" value=\"2\" <?php if(\"REX_VALUE[11]\" == \"2\") echo \'checked=\"checked\"\'; ?>> Textile)\n  </div><!-- #thx-markup -->\n  <textarea name=\"VALUE[6]\" id=\"xform-thx-message\" class=\"fullwidth\" rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[6]\'))+$row_pad);?>\">REX_VALUE[6]</textarea>\n\n</fieldset>\n\n\n<fieldset>\n  <legend>Vordefinierte Aktionen</legend>\n\n  <label>Bei Submit:</label>\n  <select name=\"VALUE[1]\" id=\"xform-action-select\" style=\"width:auto;\">\n    <option value=\"\"  <?php if(\"REX_VALUE[1]\" == \"\")  echo \" selected \"; ?>>Nichts machen (actions im Formular definieren)</option>\n    <option value=\"0\" <?php if(\"REX_VALUE[1]\" == \"0\") echo \" selected \"; ?>>Nur in Datenbank speichern oder aktualisieren wenn \"main_where\" gesetzt ist</option>\n    <option value=\"1\" <?php if(\"REX_VALUE[1]\" == \"1\") echo \" selected \"; ?>>Nur E-Mail versenden</option>\n    <option value=\"2\" <?php if(\"REX_VALUE[1]\" == \"2\") echo \" selected \"; ?>>E-Mail versenden und in Datenbank speichern</option>\n    <!--  <option value=\"3\" <?php if(\"REX_VALUE[1]\" == \"3\") echo \" selected \"; ?>>E-Mail versenden und Datenbank abfragen</option> -->\n  </select>\n\n</fieldset>\n\n\n<fieldset id=\"xform-mail-fieldset\" <?php echo $mail_display;?> >\n  <legend>Emailversand:</legend>\n\n  <label>Absender:</label>\n  <input type=\"text\" name=\"VALUE[2]\" value=\"REX_VALUE[2]\" />\n\n  <label>Empfänger:</label>\n  <input type=\"text\" name=\"VALUE[12]\" value=\"REX_VALUE[12]\" />\n\n  <label>Subject:</label>\n  <input type=\"text\" name=\"VALUE[4]\" value=\"REX_VALUE[4]\" />\n  <label class=\"fullwidth\">Mailbody:</label>\n  <textarea id=\"xform-mail-body\" class=\"fullwidth\" name=\"VALUE[5]\" rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[5]\'))+$row_pad);?>\">REX_VALUE[5]</textarea>\n\n    <?php echo $placeholders;?>\n\n  <ul class=\"help\" id=\"xform-placeholders-help\">\n    <li>Die Platzhalter ergeben sich aus den obenstehenden Felddefinitionen.</li>\n    <li>Per click können einzelne Platzhalter in den Mail-Body kopiert werden.</li>\n    <li>Aktualisierung der Platzhalter erfolgt über die Aktualisierung des Moduls.</li>\n  </ul>\n\n\n</fieldset>\n\n\n<fieldset id=\"xform-db-fieldset\" <?php echo $db_display;?> >\n  <legend>Datenbank Einstellungen</legend>\n\n  <label>Tabelle wählen <span>[<a href=\"#\" id=\"xform-db-help-toggler\">?</a>]</span></label>\n  <?php echo $tbl_sel;?>\n  <ul class=\"help\" id=\"xform-db-select-help\">\n    <li>Diese Tabelle gilt auch bei Uniqueabfragen (Pflichtfeld=2) siehe oben</li>\n  </ul>\n\n  <hr />\n\n  <label for=\"getdatapre\">Daten initial aus DB holen</label>\n  <input id=\"getdatapre\" type=\"checkbox\" value=\"1\" name=\"VALUE[10]\" <?php if(\"REX_VALUE[10]\" != \"\") echo \'checked=\"checked\"\'; ?> />\n\n  <div id=\"db_data\">\n    <hr />\n    <label>Where Klausel: <span>[<a href=\"#\" id=\"xform-xform-where-help-toggler\">?</a>]</span></label>\n    <textarea name=\"VALUE[9]\" cols=\"30\" id=\"xform-db-where\" class=\"fullwidth\"rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[9]\'))+$row_pad);?>\">REX_VALUE[9]</textarea>\n    <ul class=\"help\" id=\"xform-where-help\">\n      <li>PHP erlaubt. Beispiel: <em>$xform-&gt;setObjectparams(\"main_where\",$where);</em></li>\n      <li>Die Benutzereingaben aus dem Formular können mittels Platzhaltern (Schema: ###<em>FELDNAME</em>###) in der WHERE Klausel verwendet werden - Beispiel: text|myname|Name|1 -> Platzhalter: ###myname###</li>\n    </ul>\n  </div><!-- #db_data -->\n\n  </fieldset>\n\n  <p id=\"modulinfo\">XForm Formbuilder v0.2.2</p>\n\n</div><!-- #xform-modul -->\n\n<script type=\"text/javascript\">\n<!--\n(function($){\n\n  // FIX WEBKIT CSS QUIRKS\n  if ($.browser.webkit) {\n    $(\'#xform-modul textarea\').css(\'min-height\',\'70px\');\n    $(\'#xform-modul textarea\').css(\'width\',\'701px\');\n    $(\'#xform-modul fieldset\').css(\'width\',\'705px\');\n  }\n\n  // AUTOGROW BY ROWS\n  $(\'#xform-modul textarea\').keyup(function(){\n    var rows = $(this).val().split(/\\r?\\n|\\r/).length + <?php echo $row_pad;?>;\n    $(this).attr(\'rows\',rows);\n  });\n\n  // TOGGLERS\n  $(\'#xform-placeholders-help-toggler\').click(function(){\n    $(\'#xform-placeholders-help\').toggle(50);return false;\n  });\n  $(\'#xform-xform-where-help-toggler\').click(function(){\n    $(\'#xform-where-help\').toggle(50);return false;\n  });\n  $(\'#xform-db-help-toggler\').click(function(){\n    $(\'#xform-db-select-help\').toggle(50);return false;\n  });\n\n\n  // INSERT PLACEHOLDERS\n  $(\'#xform-placeholders span\').click(function(){\n    newval = $(\'#xform-mail-body\').val()+\' \'+$(this).html();\n    $(\'#xform-mail-body\').val(newval);\n  });\n\n  // TOGGLE MAIL/DB PANELS\n  $(\'#xform-action-select\').change(function(){\n    switch($(this).val()){\n      case \'\':\n        $(\'#xform-db-fieldset\').hide(0);\n        $(\'#xform-mail-fieldset\').hide(0);\n        break;\n      case \'1\':\n        $(\'#xform-db-fieldset\').hide(0);\n        $(\'#xform-mail-fieldset\').show(0);\n        break;\n      case \'0\':\n        $(\'#xform-db-fieldset\').show(0);\n        $(\'#xform-mail-fieldset\').hide(0);\n        break;\n      case \'2\':\n      case \'3\':\n        $(\'#xform-db-fieldset\').show(0);\n        $(\'#xform-mail-fieldset\').show(0);\n        break;\n    }\n  });\n\n})(jQuery)\n//-->\n</script>','','',0,0,'',0),
  (2,'db access',0,'<?php\r\n$db_table = \"rex_berichtsheft\";\r\n\r\n$sql = rex_sql::factory();\r\n//$sql->debugsql = 1; //Ausgabe Query\r\n$sql->setQuery(\"SELECT * FROM $db_table\");\r\n\r\n$ausgabe = \'<div class = \"row\">\';\r\nfor($i=0; $i<$sql->getRows(); $i++)\r\n{\r\n$datum = $sql->getValue(\'datum\');\r\n$datumFormatted = date(\'d-M-y\', strtotime($datum));\r\n$aufgaben = $sql->getValue(\'aufgaben\');\r\n$ausgabe .= \'<div class = \"col-md-8\">\'; \r\n$ausgabe .= \'<h2>\' . $datumFormatted . \'</h2>\';\r\n$ausgabe .= \'<p>\' . $aufgaben . \'</p>\';\r\n$ausgabe .= \'</div>\'; \r\n\r\n$sql->next();\r\n}	\r\n$ausgabe .= \'</div>\';\r\n\r\nprint $ausgabe;\r\n\r\n?>','','h2cro4_alex','h2cro4_alex',1441649389,1441989414,'',0),
  (3,'Community',0,'<?php\r\n\r\n/**\r\n * XForm\r\n * @author jan.kristinus[at]redaxo[dot]org Jan Kristinus\r\n * @author <a href=\"http://www.yakamara.de\">www.yakamara.de</a>\r\n */\r\n\r\n// module:xform_basic_out\r\n// v0.2.2\r\n//--------------------------------------------------------------------------------\r\n\r\n$xform = new rex_xform;\r\nif (\"REX_VALUE[7]\" == 1) { $xform->setDebug(TRUE); }\r\n$form_data = \'REX_VALUE[3]\';\r\n$form_data = trim(str_replace(\"<br />\",\"\",rex_xform::unhtmlentities($form_data)));\r\n$xform->setFormData($form_data);\r\n$xform->setRedaxoVars(REX_ARTICLE_ID,REX_CLANG_ID); \r\n\r\n?>REX_PHP_VALUE[9]<?php\r\n\r\n// action - showtext\r\nif(\"REX_IS_VALUE[6]\" == \"true\")\r\n{\r\n  $html = \"0\"; // plaintext\r\n  if(\'REX_VALUE[11]\' == 1) $html = \"1\"; // html\r\n  if(\'REX_VALUE[11]\' == 2) $html = \"2\"; // textile\r\n  \r\n  $e3 = \'\'; $e4 = \'\';\r\n  if ($html == \"0\") {\r\n    $e3 = \'<div class=\"rex-message\"><div class=\"rex-info\"><p>\';\r\n    $e4 = \'</p></div></div>\';\r\n  }\r\n  \r\n  $t = str_replace(\"<br />\",\"\",rex_xform::unhtmlentities(\'REX_VALUE[6]\'));\r\n  $xform->setActionField(\"showtext\",array(\r\n      $t,\r\n      $e3,\r\n      $e4,\r\n      $html // als HTML interpretieren\r\n    )\r\n  );\r\n}\r\n\r\n$form_type = \"REX_VALUE[1]\";\r\n\r\n// action - email\r\nif ($form_type == \"1\" || $form_type == \"2\" || $form_type == \"3\")\r\n{\r\n  $mail_from = $REX[\'ERROR_EMAIL\'];\r\n  if(\"REX_VALUE[2]\" != \"\") $mail_from = \"REX_VALUE[2]\";\r\n  $mail_to = $REX[\'ERROR_EMAIL\'];\r\n  if(\"REX_VALUE[12]\" != \"\") $mail_to = \"REX_VALUE[12]\";\r\n  $mail_subject = \"REX_VALUE[4]\";\r\n  $mail_body = str_replace(\"<br />\",\"\",rex_xform::unhtmlentities(\'REX_VALUE[5]\'));\r\n  $xform->setActionField(\"email\", array(\r\n      $mail_from,\r\n      $mail_to,\r\n      $mail_subject,\r\n      $mail_body\r\n    )\r\n  );\r\n}\r\n\r\n// action - db\r\nif ($form_type == \"0\" || $form_type == \"2\" || $form_type == \"3\")\r\n{\r\n  $xform->setObjectparams(\'main_table\', \'REX_VALUE[8]\');\r\n  \r\n  //getdata\r\n  if (\"REX_VALUE[10]\" != \"\")\r\n    $xform->setObjectparams(\"getdata\",TRUE);\r\n  \r\n  $xform->setActionField(\"db\", array(\r\n      \"REX_VALUE[8]\", // table\r\n      $xform->objparams[\"main_where\"], // where\r\n      )\r\n    );\r\n}\r\n\r\necho $xform->getForm();\r\n\r\n?>\r\n','<?php\r\n\r\n/**\r\n * XForm\r\n * @author jan.kristinus[at]redaxo[dot]org Jan Kristinus\r\n * @author <a href=\"http://www.yakamara.de\">www.yakamara.de</a>\r\n */\r\n\r\n// module:xform_basic_in\r\n// v0.2.2\r\n// --------------------------------------------------------------------------------\r\n\r\n// DEBUG SELECT\r\n////////////////////////////////////////////////////////////////////////////////\r\n$dbg_sel = new rex_select();\r\n$dbg_sel->setName(\'VALUE[7]\');\r\n$dbg_sel->setSize(1);\r\n$dbg_sel->addOption(\'inaktiv\',\'0\');\r\n$dbg_sel->addOption(\'aktiv\',\'1\');\r\n$dbg_sel->setSelected(\'REX_VALUE[7]\');\r\n$dbg_sel = $dbg_sel->get();\r\n\r\n\r\n// TABLE SELECT\r\n////////////////////////////////////////////////////////////////////////////////\r\n$gc = rex_sql::factory();\r\n$gc->setQuery(\'SHOW TABLES\');\r\n$tables = $gc->getArray();\r\n$tbl_sel = new rex_select;\r\n$tbl_sel->setName(\'VALUE[8]\');\r\n$tbl_sel->setSize(1);\r\n$tbl_sel->addOption(\'Keine Tabelle ausgewählt\', \'\');\r\nforeach ($tables as $key => $value)\r\n{\r\n  $tbl_sel->addOption(current($value), current($value));\r\n}\r\n$tbl_sel->setSelected(\'REX_VALUE[8]\');\r\n$tbl_sel = $tbl_sel->get();\r\n\r\n\r\n// PLACEHOLDERS\r\n////////////////////////////////////////////////////////////////////////////////\r\n$xform = new rex_xform;\r\n$form_data = \'REX_VALUE[3]\';\r\n$form_data = trim(str_replace(\'<br />\',\'\',rex_xform::unhtmlentities($form_data)));\r\n$xform->setFormData($form_data);\r\n$xform->setRedaxoVars(REX_ARTICLE_ID,REX_CLANG_ID);\r\n$placeholders = \'\';\r\nif(\'REX_VALUE[3]\'!=\'\')\r\n{\r\n$ignores = array(\'html\',\'validate\',\'action\');\r\n  $placeholders .= \'  <strong class=\"hint\">Platzhalter: <span>[<a href=\"#\" id=\"xform-placeholders-help-toggler\">?</a>]</span></strong>\r\n  <p id=\"xform-placeholders\">\'.PHP_EOL;\r\nforeach($xform->objparams[\'form_elements\'] as $e)\r\n{\r\n  if(!in_array($e[0],$ignores) && isset($e[1]))\r\n  {\r\n      $placeholders .= \'<span>###\'.$e[1].\'###</span> \'.PHP_EOL;\r\n  }\r\n}\r\n  $placeholders .= \'  </p>\'.PHP_EOL;\r\n}\r\n\r\n\r\n// OTHERS\r\n////////////////////////////////////////////////////////////////////////////////\r\n$row_pad = 1;\r\n\r\n$sel = \'REX_VALUE[1]\';\r\n$db_display   = ($sel==\'\' || $sel==1) ?\'style=\"display:none\"\':\'\';\r\n$mail_display = ($sel==\'\' || $sel==0) ?\'style=\"display:none\"\':\'\';\r\n\r\n?>\r\n\r\n<style type=\"text/css\" media=\"screen\">\r\n  /*BAISC MODUL STYLE*/\r\n  #xform-modul                       {margin:0;padding:0;line-height:25px;}\r\n  #xform-modul fieldset              {background:#E4E1D1;margin:-20px 0 0 0;padding: 4px 10px 10px 10px;-moz-border-radius:6px;-webkit-border-radius:6px;border-radius:6px;}\r\n  #xform-modul fieldset legend       {display:block !important;position:relative !important;height:auto !important;top:0 !important;left:0 !important;width:100% !important;margin:0 0 0 0 !important;padding:30px 0 0 0px !important;background:transparent !important;border-bottom:1px solid #B1B1B1 !important;color:gray;font-size:14px;font-weight:bold;}\r\n  #xform-modul fieldset legend em    {font-size:10px;font-weight:normal;font-style:normal;}\r\n  #xform-modul fieldset strong.label,\r\n  #xform-modul fieldset label        {display:inline-block !important;width:150px !important;font-weight:bold;}\r\n  #xform-modul fieldset label span   {font-weight:normal;}\r\n  #xform-modul input,\r\n  #xform-modul select                {width:460px;border:auto;margin:0 !important;padding:0 !important;}\r\n  #xform-modul input[type=\"checkbox\"]{width:auto;}\r\n  #xform-modul hr                    {border:0;height:0;margin:4px 0 4px 0;padding:0;border-top:1px solid #B1B1B1 !important;clear:left;}\r\n  #xform-modul a.blank               {background:url(\"../files/addons/be_style/plugins/agk_skin/popup.gif\") no-repeat 100% 0;padding-right:17px;}\r\n  #xform-modul #modulinfo            {font-size:10px;text-align:right;}\r\n  /*XFORM MODUL*/\r\n  #xform-modul textarea              {min-height:50px;font-family:monospace;font-size:12px;}\r\n  #xform-modul pre                   {clear:left;}\r\n  #xform-modul strong span           {font-weight:normal;}\r\n  #xform-modul .help                 {display:none;color:#2C8EC0;line-height:12px;}\r\n  #xform-modul .area-wrapper         {background:white;border:1px solid #737373;margin-bottom:10px;width:100%;}\r\n  #xform-modul .fullwidth            {width:100% !important;}\r\n  #xform-modul #thx-markup           {width:auto !important;}\r\n  #xform-modul #thx-markup input     {width:auto !important;}\r\n  #xform-modul #xform-placeholders-help,\r\n  #xform-modul #xform-where-help     {display:none;}\r\n  #xform-modul #xform-placeholders,\r\n  #xform-modul #xform-classes-showhelp {background:white;border:1px solid #737373;margin-bottom:10px;width:100%;}\r\n  #xform-modul #xform-placeholders {padding:4px 10px;float:none;width:auto;}\r\n  #xform-modul #xform-placeholders span:hover {color:red;cursor:pointer;}\r\n  #xform-modul em.hint               {color:silver;margin:0;padding:0 0 0 10px;}\r\n  /*SHOWHELP OVERRIDES*/\r\n  #xform-modul ul.xform.root         {border:0;outline:0;margin:4px 0;padding:0;width:100%;background:transparent;}\r\n  #xform-modul ul.xform              {font-size:1.1em;line-height:1.4em;}\r\n</style>\r\n\r\n\r\n<div id=\"xform-modul\">\r\n<fieldset>\r\n  <legend>Formular</legend>\r\n\r\n  <label>DebugModus:</label>\r\n  <?php echo $dbg_sel;?>\r\n\r\n  <hr />\r\n\r\n  <label class=\"fullwidth\">Felddefinitionen:</label>\r\n  <textarea name=\"VALUE[3]\" id=\"xform-form-definition\" class=\"fullwidth\" rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[3]\'))+$row_pad);?>\">REX_VALUE[3]</textarea>\r\n\r\n  <strong class=\"label\">Verfügbare Feld-Klassen:</strong>\r\n  <div id=\"xform-classes-showhelp\">\r\n    <?php echo rex_xform::showHelp(true,true); ?>\r\n  </div><!-- #xform-classes-showhelp -->\r\n\r\n  <div id=\"thx-markup\"><strong>Meldung bei erfolgreichen Versand:</strong> (\r\n    <input type=\"radio\" name=\"VALUE[11]\" value=\"0\" <?php if(\"REX_VALUE[11]\" == \"0\") echo \'checked=\"checked\"\'; ?>> Plaintext\r\n    <input type=\"radio\" name=\"VALUE[11]\" value=\"1\" <?php if(\"REX_VALUE[11]\" == \"1\") echo \'checked=\"checked\"\'; ?>> HTML\r\n    <input type=\"radio\" name=\"VALUE[11]\" value=\"2\" <?php if(\"REX_VALUE[11]\" == \"2\") echo \'checked=\"checked\"\'; ?>> Textile)\r\n  </div><!-- #thx-markup -->\r\n  <textarea name=\"VALUE[6]\" id=\"xform-thx-message\" class=\"fullwidth\" rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[6]\'))+$row_pad);?>\">REX_VALUE[6]</textarea>\r\n\r\n</fieldset>\r\n\r\n\r\n<fieldset>\r\n  <legend>Vordefinierte Aktionen</legend>\r\n\r\n  <label>Bei Submit:</label>\r\n  <select name=\"VALUE[1]\" id=\"xform-action-select\" style=\"width:auto;\">\r\n    <option value=\"\"  <?php if(\"REX_VALUE[1]\" == \"\")  echo \" selected \"; ?>>Nichts machen (actions im Formular definieren)</option>\r\n    <option value=\"0\" <?php if(\"REX_VALUE[1]\" == \"0\") echo \" selected \"; ?>>Nur in Datenbank speichern oder aktualisieren wenn \"main_where\" gesetzt ist</option>\r\n    <option value=\"1\" <?php if(\"REX_VALUE[1]\" == \"1\") echo \" selected \"; ?>>Nur E-Mail versenden</option>\r\n    <option value=\"2\" <?php if(\"REX_VALUE[1]\" == \"2\") echo \" selected \"; ?>>E-Mail versenden und in Datenbank speichern</option>\r\n    <!--  <option value=\"3\" <?php if(\"REX_VALUE[1]\" == \"3\") echo \" selected \"; ?>>E-Mail versenden und Datenbank abfragen</option> -->\r\n  </select>\r\n\r\n</fieldset>\r\n\r\n\r\n<fieldset id=\"xform-mail-fieldset\" <?php echo $mail_display;?> >\r\n  <legend>Emailversand:</legend>\r\n\r\n  <label>Absender:</label>\r\n  <input type=\"text\" name=\"VALUE[2]\" value=\"REX_VALUE[2]\" />\r\n\r\n  <label>Empfänger:</label>\r\n  <input type=\"text\" name=\"VALUE[12]\" value=\"REX_VALUE[12]\" />\r\n\r\n  <label>Subject:</label>\r\n  <input type=\"text\" name=\"VALUE[4]\" value=\"REX_VALUE[4]\" />\r\n  <label class=\"fullwidth\">Mailbody:</label>\r\n  <textarea id=\"xform-mail-body\" class=\"fullwidth\" name=\"VALUE[5]\" rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[5]\'))+$row_pad);?>\">REX_VALUE[5]</textarea>\r\n\r\n    <?php echo $placeholders;?>\r\n\r\n  <ul class=\"help\" id=\"xform-placeholders-help\">\r\n    <li>Die Platzhalter ergeben sich aus den obenstehenden Felddefinitionen.</li>\r\n    <li>Per click können einzelne Platzhalter in den Mail-Body kopiert werden.</li>\r\n    <li>Aktualisierung der Platzhalter erfolgt über die Aktualisierung des Moduls.</li>\r\n  </ul>\r\n\r\n\r\n</fieldset>\r\n\r\n\r\n<fieldset id=\"xform-db-fieldset\" <?php echo $db_display;?> >\r\n  <legend>Datenbank Einstellungen</legend>\r\n\r\n  <label>Tabelle wählen <span>[<a href=\"#\" id=\"xform-db-help-toggler\">?</a>]</span></label>\r\n  <?php echo $tbl_sel;?>\r\n  <ul class=\"help\" id=\"xform-db-select-help\">\r\n    <li>Diese Tabelle gilt auch bei Uniqueabfragen (Pflichtfeld=2) siehe oben</li>\r\n  </ul>\r\n\r\n  <hr />\r\n\r\n  <label for=\"getdatapre\">Daten initial aus DB holen</label>\r\n  <input id=\"getdatapre\" type=\"checkbox\" value=\"1\" name=\"VALUE[10]\" <?php if(\"REX_VALUE[10]\" != \"\") echo \'checked=\"checked\"\'; ?> />\r\n\r\n  <div id=\"db_data\">\r\n    <hr />\r\n    <label>Where Klausel: <span>[<a href=\"#\" id=\"xform-xform-where-help-toggler\">?</a>]</span></label>\r\n    <textarea name=\"VALUE[9]\" cols=\"30\" id=\"xform-db-where\" class=\"fullwidth\"rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[9]\'))+$row_pad);?>\">REX_VALUE[9]</textarea>\r\n    <ul class=\"help\" id=\"xform-where-help\">\r\n      <li>PHP erlaubt. Beispiel: <em>$xform-&gt;setObjectparams(\"main_where\",$where);</em></li>\r\n      <li>Die Benutzereingaben aus dem Formular können mittels Platzhaltern (Schema: ###<em>FELDNAME</em>###) in der WHERE Klausel verwendet werden - Beispiel: text|myname|Name|1 -> Platzhalter: ###myname###</li>\r\n    </ul>\r\n  </div><!-- #db_data -->\r\n\r\n  </fieldset>\r\n\r\n  <p id=\"modulinfo\">XForm Formbuilder v0.2.2</p>\r\n\r\n</div><!-- #xform-modul -->\r\n\r\n<script type=\"text/javascript\">\r\n<!--\r\n(function($){\r\n\r\n  // FIX WEBKIT CSS QUIRKS\r\n  if ($.browser.webkit) {\r\n    $(\'#xform-modul textarea\').css(\'min-height\',\'70px\');\r\n    $(\'#xform-modul textarea\').css(\'width\',\'701px\');\r\n    $(\'#xform-modul fieldset\').css(\'width\',\'705px\');\r\n  }\r\n\r\n  // AUTOGROW BY ROWS\r\n  $(\'#xform-modul textarea\').keyup(function(){\r\n    var rows = $(this).val().split(/\\r?\\n|\\r/).length + <?php echo $row_pad;?>;\r\n    $(this).attr(\'rows\',rows);\r\n  });\r\n\r\n  // TOGGLERS\r\n  $(\'#xform-placeholders-help-toggler\').click(function(){\r\n    $(\'#xform-placeholders-help\').toggle(50);return false;\r\n  });\r\n  $(\'#xform-xform-where-help-toggler\').click(function(){\r\n    $(\'#xform-where-help\').toggle(50);return false;\r\n  });\r\n  $(\'#xform-db-help-toggler\').click(function(){\r\n    $(\'#xform-db-select-help\').toggle(50);return false;\r\n  });\r\n\r\n\r\n  // INSERT PLACEHOLDERS\r\n  $(\'#xform-placeholders span\').click(function(){\r\n    newval = $(\'#xform-mail-body\').val()+\' \'+$(this).html();\r\n    $(\'#xform-mail-body\').val(newval);\r\n  });\r\n\r\n  // TOGGLE MAIL/DB PANELS\r\n  $(\'#xform-action-select\').change(function(){\r\n    switch($(this).val()){\r\n      case \'\':\r\n        $(\'#xform-db-fieldset\').hide(0);\r\n        $(\'#xform-mail-fieldset\').hide(0);\r\n        break;\r\n      case \'1\':\r\n        $(\'#xform-db-fieldset\').hide(0);\r\n        $(\'#xform-mail-fieldset\').show(0);\r\n        break;\r\n      case \'0\':\r\n        $(\'#xform-db-fieldset\').show(0);\r\n        $(\'#xform-mail-fieldset\').hide(0);\r\n        break;\r\n      case \'2\':\r\n      case \'3\':\r\n        $(\'#xform-db-fieldset\').show(0);\r\n        $(\'#xform-mail-fieldset\').show(0);\r\n        break;\r\n    }\r\n  });\r\n\r\n})(jQuery)\r\n//-->\r\n</script>','','h2cro4_alex',0,1441699047,'',0),
  (4,'IHK Output',0,'<div class = \"row\">\r\n	<div class = \"col-md-4\">\r\n		<h2>Name: Alexander Barnhill</h2>\r\n	</div>\r\n</div>\r\n<?php\r\n\r\n?>\r\n<div class = \"row\">\r\n	<div class = \"col-md-12\">\r\n		<h4>Ausbildungsabteilung: Mediengestalgung -- Print und Digital</h4>\r\n	</div>\r\n</div>\r\n<?php\r\n$db_table = \"rex_berichtsheft\";\r\n\r\n$sql = rex_sql::factory();\r\n//$sql->debugsql = 1; //Ausgabe Query\r\n$sql->setQuery(\"SELECT * FROM $db_table\");\r\n$ausgabe = \"<div class = \'col-md-10\'>\";\r\n$ausgabe .= \"<h3>Betriebliche Tätigkeiten, Unterricht, usw.</h3>\";\r\n$ausgabe .= \"</div><div class = \'col-md-2\'>\";\r\n$ausgabe .= \"<h3>Stunden</h3></div>\";\r\n\r\nfor($i=0; $i<$sql->getRows(); $i++)\r\n{\r\n$date = $sql->getValue(\'datum\');\r\n$in = strtotime($sql->getValue(\'einstempeln\'));\r\n$out = strtotime($sql->getValue(\'ausstempeln\'));\r\n$aufgaben = $sql->getValue(\'aufgaben\');\r\n$total = ($out - $in)/3600;\r\n$dateFormatted = strtotime($date);\r\n$weekDay = getdate($dateFormatted);\r\n$weekDayFormatted = $weekDay[wday];\r\nswitch($weekDayFormatted) {\r\n	case 0:\r\n		$day = \"Sonntag\"; \r\n		break;\r\n	case 1:\r\n		$day = \"Montag\";\r\n		break;\r\n	case 2:\r\n		$day = \"Dienstag\";\r\n		break;\r\n	case 3:\r\n		$day = \"Mittwoch\";\r\n		break;\r\n	case 4:\r\n		$day = \"Donnerstag\";\r\n		break;\r\n	case 5:\r\n		$day = \"Freitag\";\r\n		break;\r\n	case 6:\r\n		$day = \"Samstag\";\r\n		break;\r\n	case 7:\r\n		$day = \"Sonntag\"; \r\n		break;\r\n}\r\n$ausgabe .= \"<div class = \'col-md-10\'>\";\r\n$ausgabe .= \"<h4>\" . $day . \"</h4>\"; \r\n$ausgabe .= \"<p>\" . $aufgaben . \"</p>\";\r\n$ausgabe .= \"</div><div class = \'col-md-2\'>\";\r\n$ausgabe .= \"<h4>\" . $total . \"</h4>\";\r\n$ausgabe .= \"</div>\";\r\n$sql->next();\r\n}\r\necho $ausgabe;\r\n?>','','h2cro4_alex','h2cro4_alex',1442584266,1442589548,'',0);
/*!40000 ALTER TABLE `rex_module` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_module_action`;
CREATE TABLE `rex_module_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_template`;
CREATE TABLE `rex_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `active` tinyint(1) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_template` WRITE;
/*!40000 ALTER TABLE `rex_template` DISABLE KEYS */;
INSERT INTO `rex_template` VALUES 
  (1,'','main','<!DOCTYPE html>\r\n<html lang=\"en\">\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\r\n    <title></title>\r\n\r\n    <!-- Bootstrap -->\r\n<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\r\n    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n\r\n    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn\'t work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\r\n      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\nREX_TEMPLATE[2]\r\n<div class = \"container\">\r\nREX_ARTICLE[]\r\n</div>\r\n\r\n    <!-- jQuery (necessary for Bootstrap\'s JavaScript plugins) -->\r\n    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\r\n    <!-- Include all compiled plugins (below), or include individual files as needed -->\r\n    <script src=\"js/bootstrap.min.js\"></script>\r\n  </body>\r\n</html>',1,'h2cro4_alex','h2cro4_alex',1441986504,1441986504,'a:3:{s:10:\"categories\";a:1:{s:3:\"all\";s:1:\"1\";}s:5:\"ctype\";a:0:{}s:7:\"modules\";a:1:{i:1;a:1:{s:3:\"all\";s:1:\"1\";}}}',0),
  (2,'','header','<?php\r\n\r\n$list = \"<nav class = \'navbar navbar-inverse\'><div class = \'container-fluid\'>\";\r\n$list .= \"<div class = \'collapse navbar-collapse\'><ul class = \'nav navbar-nav\'>\";\r\nforeach (OOCategory::getRootCategories() as $lev1) {\r\n	$children = $lev1->getChildren();\r\n    $name = $lev1->getName();\r\n    $link = $lev1->getUrl();\r\n    $priority = $lev1->getPriority();\r\n    if (sizeof($children) > 0) {\r\n    #creating the top menu items\r\n    $list .= \"<li class = \'dropdown\'>\";\r\n    $list .= \'<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">\'.$name.\' <span class=\"caret\"></span></a>\';\r\n    #if a top menu item has children, create a dropdown for them\r\n    \r\n    	$list .= \"<ul class = \'dropdown-menu\'><li><a href=\".$link.\">\".$name.\"</a>\";\r\n    	$count = sizeof($children);\r\n        #for each child create a li with a link in it\r\n    	for ($i=0; $i < $count; $i++) {\r\n    		\r\n    		$list .= \"<li><a href=\";\r\n    		$list .= $children[$i]->getUrl();\r\n    		$list .= \">\";\r\n    		$list .= $children[$i]->getName();\r\n    		$list .= \"</a>\";\r\n            $list .= \"</li>\";\r\n    	}\r\n    	$list .= \"</ul>\";\r\n        $list .=\"</li>\";\r\n    } else {\r\n        $list .= \"<li><a href=\".$link.\">\".$name.\"</a></li>\";\r\n    }\r\n\r\n    \r\n\r\n}\r\n\r\n$list .= \"</ul></div></div></nav>\";\r\n\r\necho $list;\r\n\r\n?>',0,'h2cro4_alex','h2cro4_alex',1441986141,1441986141,'a:3:{s:10:\"categories\";a:1:{s:3:\"all\";s:1:\"1\";}s:5:\"ctype\";a:0:{}s:7:\"modules\";a:1:{i:1;a:1:{s:3:\"all\";s:1:\"1\";}}}',0);
/*!40000 ALTER TABLE `rex_template` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_xform_email_template`;
CREATE TABLE `rex_xform_email_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `mail_from` varchar(255) NOT NULL DEFAULT '',
  `mail_from_name` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `body_html` text NOT NULL,
  `attachments` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_xform_field`;
CREATE TABLE `rex_xform_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) NOT NULL,
  `prio` int(11) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `list_hidden` tinyint(1) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `name` text NOT NULL,
  `label` text NOT NULL,
  `year_start` text NOT NULL,
  `year_end` text NOT NULL,
  `current_date` text NOT NULL,
  `options` text NOT NULL,
  `multiple` text NOT NULL,
  `default` text NOT NULL,
  `size` text NOT NULL,
  `only_empty` text NOT NULL,
  `message` text NOT NULL,
  `table` text NOT NULL,
  `hashname` text NOT NULL,
  `field` text NOT NULL,
  `type` text NOT NULL,
  `empty_option` text NOT NULL,
  `names` text NOT NULL,
  `function` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_xform_field` WRITE;
/*!40000 ALTER TABLE `rex_xform_field` DISABLE KEYS */;
INSERT INTO `rex_xform_field` VALUES 
  (2,'rex_berichtsheft',20,'value','textarea',0,1,'aufgaben','aufgaben','','','','','','','','','','','','','','','',''),
  (3,'rex_berichtsheft',30,'value','time',0,1,'einstempeln','einstempeln','','','','','','','','','','','','','','','',''),
  (4,'rex_berichtsheft',40,'value','time',0,1,'ausstempeln','ausstempeln','','','','','','','','','','','','','','','',''),
  (5,'rex_berichtsheft',10,'value','date',0,1,'datum','datum','2015','2025','1','','','','','','','','','','','','',''),
  (6,'rex_com_user',1,'value','text',0,1,'login','translate:login','','','','','','','','','','','','','','','',''),
  (7,'rex_com_user',2,'value','text',1,0,'password','translate:password','','','','','','','','','','','','','','','',''),
  (8,'rex_com_user',3,'value','text',0,1,'email','translate:email','','','','','','','','','','','','','','','',''),
  (9,'rex_com_user',4,'value','select',0,1,'status','translate:status','','','','translate:com_account_requested=0,translate:com_account_active=1,translate:com_account_inactive=-1','0','-1','1','','','','','','','','',''),
  (10,'rex_com_user',5,'value','text',0,1,'firstname','translate:firstname','','','','','','','','','','','','','','','',''),
  (11,'rex_com_user',6,'value','text',0,1,'name','translate:name','','','','','','','','','','','','','','','',''),
  (12,'rex_com_user',7,'value','text',1,1,'activation_key','translate:activation_key','','','','','','','','','','','','','','','',''),
  (13,'rex_com_user',8,'value','text',1,1,'session_key','translate:session_key','','','','','','','','','','','','','','','',''),
  (14,'rex_com_user',9,'value','datestamp',1,1,'last_action_time','U','','','','','','','','0','','','','','','','',''),
  (15,'rex_com_user',10,'validate','empty',1,0,'login','','','','','','','','','','translate:com_please_enter_login','','','','','','',''),
  (16,'rex_com_user',11,'validate','unique',1,0,'login','','','','','','','','','','translate:com_this_login_exists_already','rex_com_user','','','','','',''),
  (17,'rex_com_user',12,'validate','empty',1,0,'password','','','','','','','','','','translate:com_please_enter_password','','','','','','',''),
  (18,'rex_com_user',13,'validate','empty',1,0,'email','','','','','','','','','','translate:com_please_enter_email','','','','','','',''),
  (19,'rex_com_user',14,'validate','email',1,0,'email','','','','','','','','','','translate:com_please_enter_email','','','','','','',''),
  (20,'rex_com_user',15,'validate','unique',1,0,'email','','','','','','','','','','translate:com_this_email_exists_already','rex_com_user','','','','','',''),
  (21,'rex_com_user',16,'value','com_auth_password_hash',0,1,'password_hash','','','','','','','','','','','','password','','','','',''),
  (22,'rex_com_group',1,'value','text',0,0,'name','translate:name','','','','','','','','','','','','','','','',''),
  (23,'rex_com_group',2,'validate','empty',1,0,'name','','','','','','','','','','translate:com_group_xform_enter_name','','','','','','',''),
  (24,'rex_com_user',17,'value','be_manager_relation',1,0,'rex_com_group','translate:rex_com_group','','','','','','','5','','','rex_com_group','','name','1','1','',''),
  (25,'rex_com_user',18,'value','text',1,1,'newsletter_last_id','translate:newsletter_last_id','','','','','','','','','','','','','','','',''),
  (26,'rex_com_user',19,'value','checkbox',1,1,'newsletter','translate:newsletter','','','','','','0','','','','','','','','','',''),
  (27,'rex_com_comment',1,'value','textarea',0,1,'comment','translate:com_comment_name','','','','','','','','','','','','','','','',''),
  (28,'rex_com_comment',2,'validate','empty',1,0,'comment','','','','','','','','','','translate:com_comment_enter_comment','','','','','','',''),
  (29,'rex_com_comment',3,'value','text',0,1,'email','translate:email','','','','','','','','','','','','','','','',''),
  (30,'rex_com_comment',4,'validate','email',1,0,'email','','','','','','','','','','translate:com_comment_enteremail','','','','','','',''),
  (31,'rex_com_comment',5,'value','text',0,1,'name','translate:name','','','','','','','','','','','','','','','',''),
  (32,'rex_com_comment',6,'validate','empty',1,0,'name','','','','','','','','','','translate:com_comment_enter_name','','','','','','',''),
  (33,'rex_com_comment',7,'value','be_manager_relation',0,1,'user_id','translate:com_user','','','','','','','1','','','rex_com_user','','email','2','1','',''),
  (34,'rex_com_comment',8,'value','text',1,1,'www','translate:com_comment_www','','','','','','','','','','','','','','','',''),
  (35,'rex_com_comment',9,'value','datestamp',1,1,'create_datetime','mysql','','','','','','','','1','','','','','','','',''),
  (36,'rex_com_comment',10,'value','datestamp',1,1,'update_datetime','mysql','','','','','','','','0','','','','','','','',''),
  (37,'rex_com_comment',11,'value','checkbox',1,1,'status','translate:status','','','','','','0','','','','','','','','','',''),
  (38,'rex_com_comment',12,'value','text',1,1,'ckey','translate:com_comment_ckey','','','','','','','','','','','','','','','',''),
  (39,'rex_com_comment',13,'value','checkbox',1,1,'info_email','translate:com_comment_infomail','','','','','','0','','','','','','','','','',''),
  (40,'rex_com_comment',14,'value','be_manager_relation',0,1,'reply_to','translate:com_comment_replyto','','','','','','','1','','','rex_com_comment','','ckey','2','1','',''),
  (41,'rex_com_comment',15,'value','index',1,1,'ukey','translate:com_comment_ckey','','','','','','','','','','','','','','','email,user_id,name,comment,ckey,www','sha1'),
  (42,'rex_com_comment',16,'validate','unique',1,0,'ukey','','','','','','','','','','translate:com_comment_enter_exists','rex_com_comment','','','','','','');
/*!40000 ALTER TABLE `rex_xform_field` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_xform_relation`;
CREATE TABLE `rex_xform_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_table` varchar(100) NOT NULL,
  `source_name` varchar(100) NOT NULL,
  `source_id` int(11) NOT NULL,
  `target_table` varchar(100) NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_xform_table`;
CREATE TABLE `rex_xform_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `list_amount` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `prio` int(11) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `export` tinyint(1) NOT NULL,
  `import` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_xform_table` WRITE;
/*!40000 ALTER TABLE `rex_xform_table` DISABLE KEYS */;
INSERT INTO `rex_xform_table` VALUES 
  (1,1,'rex_berichtsheft','Berichtsheft','',50,0,1,0,1,1),
  (2,1,'rex_com_user','translate:com_user','',100,1,0,0,1,1),
  (3,1,'rex_com_group','translate:com_group_name','',50,2,0,0,1,1),
  (4,1,'rex_com_comment','translate:com_comment','',50,3,0,0,1,1);
/*!40000 ALTER TABLE `rex_xform_table` ENABLE KEYS */;
UNLOCK TABLES;

