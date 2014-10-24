/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : toursmax

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-10-21 17:42:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tactividad`
-- ----------------------------
DROP TABLE IF EXISTS `tactividad`;
CREATE TABLE `tactividad` (
  `codigo_act` int(11) NOT NULL AUTO_INCREMENT,
  `plan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_act`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tactividad
-- ----------------------------

-- ----------------------------
-- Table structure for `talquiler`
-- ----------------------------
DROP TABLE IF EXISTS `talquiler`;
CREATE TABLE `talquiler` (
  `codigo_al` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_bus` int(11) DEFAULT NULL,
  `renta_bus` double(4,0) DEFAULT NULL,
  `costo_bus` double(4,0) DEFAULT NULL,
  PRIMARY KEY (`codigo_al`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of talquiler
-- ----------------------------

-- ----------------------------
-- Table structure for `tchofer`
-- ----------------------------
DROP TABLE IF EXISTS `tchofer`;
CREATE TABLE `tchofer` (
  `codigo_chofer` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `dni` int(8) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `licencialdia` char(1) DEFAULT NULL,
  PRIMARY KEY (`codigo_chofer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tchofer
-- ----------------------------

-- ----------------------------
-- Table structure for `tcliente`
-- ----------------------------
DROP TABLE IF EXISTS `tcliente`;
CREATE TABLE `tcliente` (
  `codigo_cli` int(11) NOT NULL AUTO_INCREMENT,
  `identificacion` int(11) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tcliente
-- ----------------------------

-- ----------------------------
-- Table structure for `texcursion`
-- ----------------------------
DROP TABLE IF EXISTS `texcursion`;
CREATE TABLE `texcursion` (
  `codigo_ex` int(11) DEFAULT NULL,
  `codigo_lug` int(11) DEFAULT NULL,
  `codigo_act` int(11) DEFAULT NULL,
  `codigo_al` int(11) DEFAULT NULL,
  `codigo_hos` int(11) DEFAULT NULL,
  `codigo_chofer` int(11) DEFAULT NULL,
  `codigo_guia` int(11) DEFAULT NULL,
  `costo` double(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of texcursion
-- ----------------------------

-- ----------------------------
-- Table structure for `tguia`
-- ----------------------------
DROP TABLE IF EXISTS `tguia`;
CREATE TABLE `tguia` (
  `codigo_guia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `dni` int(8) DEFAULT NULL,
  `idiomas` varchar(30) DEFAULT NULL,
  `estudios` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_guia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tguia
-- ----------------------------

-- ----------------------------
-- Table structure for `thospedaje`
-- ----------------------------
DROP TABLE IF EXISTS `thospedaje`;
CREATE TABLE `thospedaje` (
  `codigo_hos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `ubicacion` varchar(30) DEFAULT NULL,
  `provincia` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `webpage` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_hos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of thospedaje
-- ----------------------------

-- ----------------------------
-- Table structure for `trecibo`
-- ----------------------------
DROP TABLE IF EXISTS `trecibo`;
CREATE TABLE `trecibo` (
  `codigo_rec` int(11) NOT NULL AUTO_INCREMENT,
  `idreseva` int(11) DEFAULT NULL,
  `fecha_rec` datetime DEFAULT NULL,
  `pago_rec` double(4,4) DEFAULT NULL,
  PRIMARY KEY (`codigo_rec`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of trecibo
-- ----------------------------

-- ----------------------------
-- Table structure for `treservacion`
-- ----------------------------
DROP TABLE IF EXISTS `treservacion`;
CREATE TABLE `treservacion` (
  `codigo_res` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_cli` int(11) DEFAULT NULL,
  `codigo_ex` int(11) DEFAULT NULL,
  `fecha_res` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_res`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of treservacion
-- ----------------------------

-- ----------------------------
-- Table structure for `ttransporte`
-- ----------------------------
DROP TABLE IF EXISTS `ttransporte`;
CREATE TABLE `ttransporte` (
  `codigo_bus` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_chofer` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_bus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ttransporte
-- ----------------------------
