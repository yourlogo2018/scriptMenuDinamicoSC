# Host: 198.50.238.42  (Version 5.5.5-10.2.23-MariaDB)
# Date: 2020-03-13 14:46:25
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "menu_itens_1"
#

DROP TABLE IF EXISTS `menu_itens_1`;
CREATE TABLE `menu_itens_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `icone` varchar(255) DEFAULT NULL,
  `submenu` tinyint(4) DEFAULT NULL,
  `target` varchar(100) DEFAULT '_parent',
  `grupos` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "menu_itens_1"
#

INSERT INTO `menu_itens_1` VALUES (2,'Dashboard','blank_dashboard','fa-address-card',0,'_parent','1,2'),(6,'Contatos','','fa-address-card',1,'_parent','1,2'),(7,'Importar','blank_menu_importacao','',0,'_parent','1,2');

#
# Structure for table "menu_itens_2"
#

DROP TABLE IF EXISTS `menu_itens_2`;
CREATE TABLE `menu_itens_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_item_1` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `h6` varchar(255) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `icone` varchar(255) DEFAULT NULL,
  `submenu` tinyint(3) DEFAULT 0,
  `target` varchar(100) DEFAULT '_parent',
  `grupos` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_item_1_idx` (`id_item_1`),
  CONSTRAINT `fk_item_1` FOREIGN KEY (`id_item_1`) REFERENCES `yourlogo_zapmarketing`.`cm_menu_itens_1` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "menu_itens_2"
#

INSERT INTO `menu_itens_2` VALUES (15,6,'Meus Contatos',NULL,'blank_form_wizard',NULL,0,'_parent','1,2'),(16,6,'Grupos',NULL,'blank_form_wizard',NULL,0,'_parent','1,2');

#
# Structure for table "menu_itens_3"
#

DROP TABLE IF EXISTS `menu_itens_3`;
CREATE TABLE `menu_itens_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_item_2` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `icone` varchar(255) DEFAULT NULL,
  `submenu` tinyint(4) DEFAULT NULL,
  `target` varchar(100) DEFAULT NULL,
  `grupos` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_item_2_idx` (`id_item_2`),
  CONSTRAINT `fk_item_2` FOREIGN KEY (`id_item_2`) REFERENCES `yourlogo_zapmarketing`.`cm_menu_itens_2` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "menu_itens_3"
#


#
# Structure for table "menu_itens_4"
#

DROP TABLE IF EXISTS `menu_itens_4`;
CREATE TABLE `menu_itens_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_item_3` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `icone` varchar(255) DEFAULT NULL,
  `submenu` tinyint(4) DEFAULT NULL,
  `target` varchar(100) DEFAULT NULL,
  `grupos` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_item_3_idx` (`id_item_3`),
  CONSTRAINT `fk_item_3` FOREIGN KEY (`id_item_3`) REFERENCES `yourlogo_zapmarketing`.`cm_menu_itens_3` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "menu_itens_4"
#


#
# Structure for table "menu_usuario"
#

DROP TABLE IF EXISTS `menu_usuario`;
CREATE TABLE `menu_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `icone` varchar(255) DEFAULT NULL,
  `target` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "menu_usuario"
#

INSERT INTO `menu_usuario` VALUES (1,'Meu Perfil','javascript:void(0)','<i class=\"material-icons\">account_box</i>',NULL),(2,'Sair','config_Login','<i class=\"material-icons\">power_settings_new</i>','_top'),(3,'Editar Senha','config_change_pswd','<i class=\"material-icons\">account_box</i>','_parent');
