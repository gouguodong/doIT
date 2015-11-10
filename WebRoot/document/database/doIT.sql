/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : doit

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2015-07-21 22:49:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `replyId` int(11) DEFAULT NULL,
  `adminName` varchar(40) NOT NULL,
  `adminPwd` varchar(40) NOT NULL,
  `adminHead` varchar(120) DEFAULT NULL,
  `addTime` timestamp NULL DEFAULT NULL,
  `feedNumber` int(11) DEFAULT '0',
  PRIMARY KEY (`adminId`),
  KEY `FK_adminReply` (`replyId`),
  CONSTRAINT `FK_adminReply` FOREIGN KEY (`replyId`) REFERENCES `replyfeed` (`replyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', null, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'frontstage/img/test/1.jpg', '2015-06-10 00:00:00', '0');

-- ----------------------------
-- Table structure for `agree`
-- ----------------------------
DROP TABLE IF EXISTS `agree`;
CREATE TABLE `agree` (
  `agreeId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `commentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`agreeId`),
  KEY `FK_agreeComment` (`commentId`),
  KEY `FK_userAgree` (`userId`),
  CONSTRAINT `FK_agreeComment` FOREIGN KEY (`commentId`) REFERENCES `coursecomment` (`commentId`),
  CONSTRAINT `FK_userAgree` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agree
-- ----------------------------
INSERT INTO `agree` VALUES ('1', '148', '4');
INSERT INTO `agree` VALUES ('2', '189', '4');
INSERT INTO `agree` VALUES ('3', '149', '4');
INSERT INTO `agree` VALUES ('4', '61', '4');
INSERT INTO `agree` VALUES ('5', '75', '4');
INSERT INTO `agree` VALUES ('6', '190', '83');
INSERT INTO `agree` VALUES ('7', '75', '83');
INSERT INTO `agree` VALUES ('8', '38', '48');
INSERT INTO `agree` VALUES ('9', '119', '48');
INSERT INTO `agree` VALUES ('10', '81', '48');
INSERT INTO `agree` VALUES ('11', '123', '90');
INSERT INTO `agree` VALUES ('12', '39', '90');
INSERT INTO `agree` VALUES ('13', '66', '90');
INSERT INTO `agree` VALUES ('14', '61', '90');
INSERT INTO `agree` VALUES ('15', '146', '90');
INSERT INTO `agree` VALUES ('16', '93', '28');
INSERT INTO `agree` VALUES ('17', '59', '28');
INSERT INTO `agree` VALUES ('18', '57', '45');
INSERT INTO `agree` VALUES ('19', '122', '45');
INSERT INTO `agree` VALUES ('20', '126', '45');
INSERT INTO `agree` VALUES ('21', '8', '45');
INSERT INTO `agree` VALUES ('22', '30', '45');
INSERT INTO `agree` VALUES ('23', '178', '45');
INSERT INTO `agree` VALUES ('24', '158', '45');
INSERT INTO `agree` VALUES ('25', '141', '45');
INSERT INTO `agree` VALUES ('26', '127', '69');
INSERT INTO `agree` VALUES ('27', '3', '69');
INSERT INTO `agree` VALUES ('28', '109', '26');
INSERT INTO `agree` VALUES ('29', '100', '26');
INSERT INTO `agree` VALUES ('30', '8', '26');
INSERT INTO `agree` VALUES ('31', '29', '26');
INSERT INTO `agree` VALUES ('32', '125', '26');
INSERT INTO `agree` VALUES ('33', '58', '71');
INSERT INTO `agree` VALUES ('34', '157', '71');
INSERT INTO `agree` VALUES ('35', '97', '71');
INSERT INTO `agree` VALUES ('36', '93', '71');
INSERT INTO `agree` VALUES ('37', '173', '71');
INSERT INTO `agree` VALUES ('38', '146', '78');
INSERT INTO `agree` VALUES ('39', '44', '78');
INSERT INTO `agree` VALUES ('40', '33', '78');
INSERT INTO `agree` VALUES ('41', '25', '78');
INSERT INTO `agree` VALUES ('42', '132', '77');
INSERT INTO `agree` VALUES ('43', '151', '77');
INSERT INTO `agree` VALUES ('44', '165', '77');
INSERT INTO `agree` VALUES ('45', '137', '5');
INSERT INTO `agree` VALUES ('46', '188', '5');
INSERT INTO `agree` VALUES ('47', '57', '49');
INSERT INTO `agree` VALUES ('48', '149', '49');
INSERT INTO `agree` VALUES ('49', '146', '49');
INSERT INTO `agree` VALUES ('50', '79', '49');
INSERT INTO `agree` VALUES ('51', '58', '25');
INSERT INTO `agree` VALUES ('52', '199', '25');
INSERT INTO `agree` VALUES ('53', '186', '25');
INSERT INTO `agree` VALUES ('54', '166', '25');
INSERT INTO `agree` VALUES ('55', '172', '25');
INSERT INTO `agree` VALUES ('56', '24', '8');
INSERT INTO `agree` VALUES ('57', '113', '8');
INSERT INTO `agree` VALUES ('58', '10', '16');
INSERT INTO `agree` VALUES ('59', '138', '16');
INSERT INTO `agree` VALUES ('60', '170', '16');
INSERT INTO `agree` VALUES ('61', '190', '16');
INSERT INTO `agree` VALUES ('62', '15', '16');
INSERT INTO `agree` VALUES ('63', '107', '66');
INSERT INTO `agree` VALUES ('64', '78', '66');
INSERT INTO `agree` VALUES ('65', '117', '66');
INSERT INTO `agree` VALUES ('66', '5', '66');
INSERT INTO `agree` VALUES ('67', '29', '40');
INSERT INTO `agree` VALUES ('68', '105', '40');
INSERT INTO `agree` VALUES ('69', '139', '81');
INSERT INTO `agree` VALUES ('70', '46', '81');
INSERT INTO `agree` VALUES ('71', '41', '81');
INSERT INTO `agree` VALUES ('72', '131', '81');
INSERT INTO `agree` VALUES ('73', '60', '81');
INSERT INTO `agree` VALUES ('74', '153', '37');
INSERT INTO `agree` VALUES ('75', '95', '37');
INSERT INTO `agree` VALUES ('76', '56', '37');
INSERT INTO `agree` VALUES ('77', '199', '37');
INSERT INTO `agree` VALUES ('78', '11', '37');
INSERT INTO `agree` VALUES ('79', '171', '37');
INSERT INTO `agree` VALUES ('80', '144', '21');
INSERT INTO `agree` VALUES ('81', '127', '21');
INSERT INTO `agree` VALUES ('82', '174', '21');
INSERT INTO `agree` VALUES ('83', '122', '13');
INSERT INTO `agree` VALUES ('84', '32', '13');
INSERT INTO `agree` VALUES ('85', '93', '13');
INSERT INTO `agree` VALUES ('86', '38', '72');
INSERT INTO `agree` VALUES ('87', '146', '72');
INSERT INTO `agree` VALUES ('88', '149', '61');
INSERT INTO `agree` VALUES ('89', '26', '61');
INSERT INTO `agree` VALUES ('90', '42', '61');
INSERT INTO `agree` VALUES ('91', '61', '61');
INSERT INTO `agree` VALUES ('92', '78', '5');
INSERT INTO `agree` VALUES ('93', '78', '5');
INSERT INTO `agree` VALUES ('94', '34', '5');
INSERT INTO `agree` VALUES ('95', '166', '5');
INSERT INTO `agree` VALUES ('96', '96', '37');
INSERT INTO `agree` VALUES ('97', '62', '37');
INSERT INTO `agree` VALUES ('98', '169', '37');
INSERT INTO `agree` VALUES ('99', '123', '37');
INSERT INTO `agree` VALUES ('100', '136', '37');
INSERT INTO `agree` VALUES ('101', '121', '77');
INSERT INTO `agree` VALUES ('102', '162', '77');
INSERT INTO `agree` VALUES ('103', '168', '63');
INSERT INTO `agree` VALUES ('104', '24', '63');
INSERT INTO `agree` VALUES ('105', '196', '63');
INSERT INTO `agree` VALUES ('106', '73', '63');
INSERT INTO `agree` VALUES ('107', '37', '63');
INSERT INTO `agree` VALUES ('108', '5', '1');
INSERT INTO `agree` VALUES ('109', '86', '1');
INSERT INTO `agree` VALUES ('110', '200', '1');
INSERT INTO `agree` VALUES ('111', '87', '1');
INSERT INTO `agree` VALUES ('112', '194', '1');
INSERT INTO `agree` VALUES ('113', '153', '32');
INSERT INTO `agree` VALUES ('114', '126', '32');
INSERT INTO `agree` VALUES ('115', '201', '32');
INSERT INTO `agree` VALUES ('116', '74', '32');
INSERT INTO `agree` VALUES ('117', '5', '23');
INSERT INTO `agree` VALUES ('118', '185', '23');
INSERT INTO `agree` VALUES ('119', '39', '49');
INSERT INTO `agree` VALUES ('120', '60', '49');
INSERT INTO `agree` VALUES ('121', '45', '49');
INSERT INTO `agree` VALUES ('122', '122', '49');
INSERT INTO `agree` VALUES ('123', '187', '49');
INSERT INTO `agree` VALUES ('124', '16', '56');
INSERT INTO `agree` VALUES ('125', '5', '56');
INSERT INTO `agree` VALUES ('126', '97', '56');
INSERT INTO `agree` VALUES ('127', '160', '56');
INSERT INTO `agree` VALUES ('128', '134', '56');
INSERT INTO `agree` VALUES ('129', '168', '55');
INSERT INTO `agree` VALUES ('130', '189', '55');
INSERT INTO `agree` VALUES ('131', '68', '15');
INSERT INTO `agree` VALUES ('132', '186', '15');
INSERT INTO `agree` VALUES ('133', '62', '50');
INSERT INTO `agree` VALUES ('134', '119', '50');
INSERT INTO `agree` VALUES ('135', '43', '50');
INSERT INTO `agree` VALUES ('136', '46', '9');
INSERT INTO `agree` VALUES ('137', '112', '9');
INSERT INTO `agree` VALUES ('138', '191', '43');
INSERT INTO `agree` VALUES ('139', '48', '43');
INSERT INTO `agree` VALUES ('140', '161', '43');
INSERT INTO `agree` VALUES ('141', '143', '43');
INSERT INTO `agree` VALUES ('142', '192', '74');
INSERT INTO `agree` VALUES ('143', '65', '74');
INSERT INTO `agree` VALUES ('144', '167', '24');
INSERT INTO `agree` VALUES ('145', '156', '24');
INSERT INTO `agree` VALUES ('146', '157', '24');
INSERT INTO `agree` VALUES ('147', '124', '24');
INSERT INTO `agree` VALUES ('148', '29', '62');
INSERT INTO `agree` VALUES ('149', '18', '62');
INSERT INTO `agree` VALUES ('150', '77', '62');
INSERT INTO `agree` VALUES ('151', '6', '62');
INSERT INTO `agree` VALUES ('152', '183', '62');
INSERT INTO `agree` VALUES ('153', '63', '53');
INSERT INTO `agree` VALUES ('154', '35', '53');
INSERT INTO `agree` VALUES ('155', '133', '24');
INSERT INTO `agree` VALUES ('156', '18', '24');
INSERT INTO `agree` VALUES ('157', '110', '24');
INSERT INTO `agree` VALUES ('158', '113', '24');
INSERT INTO `agree` VALUES ('159', '186', '24');
INSERT INTO `agree` VALUES ('160', '196', '71');
INSERT INTO `agree` VALUES ('161', '147', '71');
INSERT INTO `agree` VALUES ('162', '175', '71');
INSERT INTO `agree` VALUES ('163', '93', '71');
INSERT INTO `agree` VALUES ('164', '104', '89');
INSERT INTO `agree` VALUES ('165', '107', '89');
INSERT INTO `agree` VALUES ('166', '30', '89');
INSERT INTO `agree` VALUES ('167', '129', '89');
INSERT INTO `agree` VALUES ('168', '87', '34');
INSERT INTO `agree` VALUES ('169', '179', '34');
INSERT INTO `agree` VALUES ('170', '198', '34');
INSERT INTO `agree` VALUES ('171', '58', '47');
INSERT INTO `agree` VALUES ('172', '134', '47');
INSERT INTO `agree` VALUES ('173', '7', '47');
INSERT INTO `agree` VALUES ('174', '52', '59');
INSERT INTO `agree` VALUES ('175', '42', '59');
INSERT INTO `agree` VALUES ('176', '139', '88');
INSERT INTO `agree` VALUES ('177', '72', '88');
INSERT INTO `agree` VALUES ('178', '200', '88');
INSERT INTO `agree` VALUES ('179', '96', '88');
INSERT INTO `agree` VALUES ('180', '122', '88');
INSERT INTO `agree` VALUES ('181', '106', '15');
INSERT INTO `agree` VALUES ('182', '130', '15');
INSERT INTO `agree` VALUES ('183', '98', '15');
INSERT INTO `agree` VALUES ('184', '185', '15');
INSERT INTO `agree` VALUES ('185', '153', '25');
INSERT INTO `agree` VALUES ('186', '80', '25');
INSERT INTO `agree` VALUES ('187', '164', '65');
INSERT INTO `agree` VALUES ('188', '6', '65');
INSERT INTO `agree` VALUES ('189', '169', '65');
INSERT INTO `agree` VALUES ('190', '155', '65');
INSERT INTO `agree` VALUES ('191', '66', '65');
INSERT INTO `agree` VALUES ('192', '41', '80');
INSERT INTO `agree` VALUES ('193', '155', '80');
INSERT INTO `agree` VALUES ('194', '20', '29');
INSERT INTO `agree` VALUES ('195', '172', '29');
INSERT INTO `agree` VALUES ('196', '39', '29');
INSERT INTO `agree` VALUES ('197', '108', '29');
INSERT INTO `agree` VALUES ('198', '104', '57');
INSERT INTO `agree` VALUES ('199', '198', '57');
INSERT INTO `agree` VALUES ('200', '149', '91');
INSERT INTO `agree` VALUES ('201', '190', '91');
INSERT INTO `agree` VALUES ('202', '82', '91');
INSERT INTO `agree` VALUES ('203', '28', '45');
INSERT INTO `agree` VALUES ('204', '34', '45');
INSERT INTO `agree` VALUES ('205', '183', '45');
INSERT INTO `agree` VALUES ('206', '195', '45');
INSERT INTO `agree` VALUES ('207', '107', '45');
INSERT INTO `agree` VALUES ('208', '104', '82');
INSERT INTO `agree` VALUES ('209', '177', '82');
INSERT INTO `agree` VALUES ('210', '64', '66');
INSERT INTO `agree` VALUES ('211', '153', '66');
INSERT INTO `agree` VALUES ('212', '127', '66');
INSERT INTO `agree` VALUES ('213', '28', '91');
INSERT INTO `agree` VALUES ('214', '75', '91');
INSERT INTO `agree` VALUES ('215', '200', '91');
INSERT INTO `agree` VALUES ('216', '48', '91');
INSERT INTO `agree` VALUES ('217', '28', '91');
INSERT INTO `agree` VALUES ('218', '157', '5');
INSERT INTO `agree` VALUES ('219', '151', '5');
INSERT INTO `agree` VALUES ('220', '105', '5');
INSERT INTO `agree` VALUES ('221', '49', '5');
INSERT INTO `agree` VALUES ('222', '130', '5');
INSERT INTO `agree` VALUES ('223', '99', '33');
INSERT INTO `agree` VALUES ('224', '14', '33');
INSERT INTO `agree` VALUES ('225', '175', '33');
INSERT INTO `agree` VALUES ('226', '154', '22');
INSERT INTO `agree` VALUES ('227', '19', '22');
INSERT INTO `agree` VALUES ('228', '10', '22');
INSERT INTO `agree` VALUES ('229', '130', '22');
INSERT INTO `agree` VALUES ('230', '179', '58');
INSERT INTO `agree` VALUES ('231', '136', '58');
INSERT INTO `agree` VALUES ('232', '152', '58');
INSERT INTO `agree` VALUES ('233', '199', '58');
INSERT INTO `agree` VALUES ('234', '174', '72');
INSERT INTO `agree` VALUES ('235', '132', '72');
INSERT INTO `agree` VALUES ('236', '25', '72');
INSERT INTO `agree` VALUES ('237', '169', '72');
INSERT INTO `agree` VALUES ('238', '2', '72');
INSERT INTO `agree` VALUES ('239', '41', '7');
INSERT INTO `agree` VALUES ('240', '156', '7');
INSERT INTO `agree` VALUES ('241', '195', '7');
INSERT INTO `agree` VALUES ('242', '44', '7');
INSERT INTO `agree` VALUES ('243', '45', '7');
INSERT INTO `agree` VALUES ('244', '174', '81');
INSERT INTO `agree` VALUES ('245', '45', '81');
INSERT INTO `agree` VALUES ('246', '133', '81');
INSERT INTO `agree` VALUES ('247', '85', '81');
INSERT INTO `agree` VALUES ('248', '177', '81');
INSERT INTO `agree` VALUES ('249', '127', '51');
INSERT INTO `agree` VALUES ('250', '11', '51');
INSERT INTO `agree` VALUES ('251', '153', '42');
INSERT INTO `agree` VALUES ('252', '159', '42');
INSERT INTO `agree` VALUES ('253', '165', '42');
INSERT INTO `agree` VALUES ('254', '97', '42');
INSERT INTO `agree` VALUES ('255', '57', '67');
INSERT INTO `agree` VALUES ('256', '198', '67');
INSERT INTO `agree` VALUES ('257', '96', '27');
INSERT INTO `agree` VALUES ('258', '101', '27');
INSERT INTO `agree` VALUES ('259', '115', '27');

-- ----------------------------
-- Table structure for `applyfriend`
-- ----------------------------
DROP TABLE IF EXISTS `applyfriend`;
CREATE TABLE `applyfriend` (
  `applyId` int(11) NOT NULL,
  `applyUserId` int(11) DEFAULT NULL,
  `recUserId` int(11) DEFAULT NULL,
  `replayTime` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `context` text,
  PRIMARY KEY (`applyId`),
  KEY `FK_applyUser` (`applyUserId`),
  KEY `FK_recUser` (`recUserId`),
  CONSTRAINT `FK_applyUser` FOREIGN KEY (`applyUserId`) REFERENCES `user` (`userId`),
  CONSTRAINT `FK_recUser` FOREIGN KEY (`recUserId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of applyfriend
-- ----------------------------
INSERT INTO `applyfriend` VALUES ('1', '13', '2', '2015-07-03 19:30:44', '1', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('2', '197', '67', '2015-07-08 14:50:00', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('3', '76', '108', '2015-07-08 14:50:00', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('4', '159', '55', '2015-07-08 14:50:00', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('5', '196', '165', '2015-07-08 14:50:00', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('6', '183', '151', '2015-07-08 14:50:00', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('7', '200', '37', '2015-07-08 14:50:01', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('8', '157', '162', '2015-07-08 14:50:01', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('9', '47', '46', '2015-07-08 14:50:01', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('10', '97', '162', '2015-07-08 14:50:01', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('11', '144', '185', '2015-07-08 14:50:01', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('12', '72', '155', '2015-07-08 14:50:01', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('13', '125', '76', '2015-07-08 14:50:01', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('14', '198', '65', '2015-07-08 14:50:01', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('15', '198', '172', '2015-07-08 14:50:01', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('16', '154', '141', '2015-07-08 14:50:01', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('17', '170', '80', '2015-07-08 14:50:01', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('18', '119', '155', '2015-07-08 14:50:01', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('19', '40', '119', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('20', '158', '187', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('21', '28', '48', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('22', '177', '187', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('23', '190', '36', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('24', '27', '133', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('25', '28', '138', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('26', '99', '154', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('27', '159', '95', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('28', '103', '107', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('29', '43', '71', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('30', '172', '31', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('31', '159', '109', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('32', '116', '158', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('33', '45', '98', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('34', '161', '144', '2015-07-08 14:50:02', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('35', '60', '190', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('36', '149', '35', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('37', '72', '8', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('38', '12', '8', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('39', '35', '19', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('40', '161', '97', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('41', '157', '176', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('42', '85', '105', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('43', '159', '50', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('44', '71', '79', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('45', '166', '170', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('46', '149', '169', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('47', '42', '119', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('48', '48', '145', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('49', '14', '161', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('50', '118', '158', '2015-07-08 14:50:03', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('51', '82', '99', '2015-07-08 14:50:04', '0', '嘿、加个好友呗');
INSERT INTO `applyfriend` VALUES ('52', '12', '2', '2015-07-14 19:32:46', '0', 'aaa');

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cityId` int(11) NOT NULL,
  `provinceId` int(11) DEFAULT NULL,
  `cityName` varchar(40) NOT NULL,
  PRIMARY KEY (`cityId`),
  KEY `FK_cityProvince` (`provinceId`),
  CONSTRAINT `FK_cityProvince` FOREIGN KEY (`provinceId`) REFERENCES `province` (`provinceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '1', '北京市');
INSERT INTO `city` VALUES ('2', '2', '天津市');
INSERT INTO `city` VALUES ('3', '3', '石家庄市');
INSERT INTO `city` VALUES ('4', '3', '唐山市');
INSERT INTO `city` VALUES ('5', '3', '秦皇岛市');
INSERT INTO `city` VALUES ('6', '3', '邯郸市');
INSERT INTO `city` VALUES ('7', '3', '邢台市');
INSERT INTO `city` VALUES ('8', '3', '保定市');
INSERT INTO `city` VALUES ('9', '3', '张家口市');
INSERT INTO `city` VALUES ('10', '3', '承德市');
INSERT INTO `city` VALUES ('11', '3', '沧州市');
INSERT INTO `city` VALUES ('12', '3', '廊坊市');
INSERT INTO `city` VALUES ('13', '3', '衡水市');
INSERT INTO `city` VALUES ('14', '4', '太原市');
INSERT INTO `city` VALUES ('15', '4', '大同市');
INSERT INTO `city` VALUES ('16', '4', '阳泉市');
INSERT INTO `city` VALUES ('17', '4', '长治市');
INSERT INTO `city` VALUES ('18', '4', '晋城市');
INSERT INTO `city` VALUES ('19', '4', '朔州市');
INSERT INTO `city` VALUES ('20', '4', '晋中市');
INSERT INTO `city` VALUES ('21', '4', '运城市');
INSERT INTO `city` VALUES ('22', '4', '忻州市');
INSERT INTO `city` VALUES ('23', '4', '临汾市');
INSERT INTO `city` VALUES ('24', '4', '吕梁市');
INSERT INTO `city` VALUES ('25', '5', '呼和浩特市');
INSERT INTO `city` VALUES ('26', '5', '包头市');
INSERT INTO `city` VALUES ('27', '5', '乌海市');
INSERT INTO `city` VALUES ('28', '5', '赤峰市');
INSERT INTO `city` VALUES ('29', '5', '通辽市');
INSERT INTO `city` VALUES ('30', '5', '鄂尔多斯市');
INSERT INTO `city` VALUES ('31', '5', '呼伦贝尔市');
INSERT INTO `city` VALUES ('32', '5', '巴彦淖尔市');
INSERT INTO `city` VALUES ('33', '5', '乌兰察布市');
INSERT INTO `city` VALUES ('34', '5', '兴安盟');
INSERT INTO `city` VALUES ('35', '5', '锡林郭勒盟');
INSERT INTO `city` VALUES ('36', '5', '阿拉善盟');
INSERT INTO `city` VALUES ('37', '6', '沈阳市');
INSERT INTO `city` VALUES ('38', '6', '大连市');
INSERT INTO `city` VALUES ('39', '6', '鞍山市');
INSERT INTO `city` VALUES ('40', '6', '抚顺市');
INSERT INTO `city` VALUES ('41', '6', '本溪市');
INSERT INTO `city` VALUES ('42', '6', '丹东市');
INSERT INTO `city` VALUES ('43', '6', '锦州市');
INSERT INTO `city` VALUES ('44', '6', '营口市');
INSERT INTO `city` VALUES ('45', '6', '阜新市');
INSERT INTO `city` VALUES ('46', '6', '辽阳市');
INSERT INTO `city` VALUES ('47', '6', '盘锦市');
INSERT INTO `city` VALUES ('48', '6', '铁岭市');
INSERT INTO `city` VALUES ('49', '6', '朝阳市');
INSERT INTO `city` VALUES ('50', '6', '葫芦岛市');
INSERT INTO `city` VALUES ('51', '7', '长春市');
INSERT INTO `city` VALUES ('52', '7', '吉林市');
INSERT INTO `city` VALUES ('53', '7', '四平市');
INSERT INTO `city` VALUES ('54', '7', '辽源市');
INSERT INTO `city` VALUES ('55', '7', '通化市');
INSERT INTO `city` VALUES ('56', '7', '白山市');
INSERT INTO `city` VALUES ('57', '7', '松原市');
INSERT INTO `city` VALUES ('58', '7', '白城市');
INSERT INTO `city` VALUES ('59', '7', '延边朝鲜族自治州');
INSERT INTO `city` VALUES ('60', '8', '哈尔滨市');
INSERT INTO `city` VALUES ('61', '8', '齐齐哈尔市');
INSERT INTO `city` VALUES ('62', '8', '鸡西市');
INSERT INTO `city` VALUES ('63', '8', '鹤岗市');
INSERT INTO `city` VALUES ('64', '8', '双鸭山市');
INSERT INTO `city` VALUES ('65', '8', '大庆市');
INSERT INTO `city` VALUES ('66', '8', '伊春市');
INSERT INTO `city` VALUES ('67', '8', '佳木斯市');
INSERT INTO `city` VALUES ('68', '8', '七台河市');
INSERT INTO `city` VALUES ('69', '8', '牡丹江市');
INSERT INTO `city` VALUES ('70', '8', '黑河市');
INSERT INTO `city` VALUES ('71', '8', '绥化市');
INSERT INTO `city` VALUES ('72', '8', '大兴安岭地区');
INSERT INTO `city` VALUES ('73', '9', '上海市');
INSERT INTO `city` VALUES ('74', '10', '南京市');
INSERT INTO `city` VALUES ('75', '10', '无锡市');
INSERT INTO `city` VALUES ('76', '10', '徐州市');
INSERT INTO `city` VALUES ('77', '10', '常州市');
INSERT INTO `city` VALUES ('78', '10', '苏州市');
INSERT INTO `city` VALUES ('79', '10', '南通市');
INSERT INTO `city` VALUES ('80', '10', '连云港市');
INSERT INTO `city` VALUES ('81', '10', '淮安市');
INSERT INTO `city` VALUES ('82', '10', '盐城市');
INSERT INTO `city` VALUES ('83', '10', '扬州市');
INSERT INTO `city` VALUES ('84', '10', '镇江市');
INSERT INTO `city` VALUES ('85', '10', '泰州市');
INSERT INTO `city` VALUES ('86', '10', '宿迁市');
INSERT INTO `city` VALUES ('87', '11', '杭州市');
INSERT INTO `city` VALUES ('88', '11', '宁波市');
INSERT INTO `city` VALUES ('89', '11', '温州市');
INSERT INTO `city` VALUES ('90', '11', '嘉兴市');
INSERT INTO `city` VALUES ('91', '11', '湖州市');
INSERT INTO `city` VALUES ('92', '11', '绍兴市');
INSERT INTO `city` VALUES ('93', '11', '金华市');
INSERT INTO `city` VALUES ('94', '11', '衢州市');
INSERT INTO `city` VALUES ('95', '11', '舟山市');
INSERT INTO `city` VALUES ('96', '11', '台州市');
INSERT INTO `city` VALUES ('97', '11', '丽水市');
INSERT INTO `city` VALUES ('98', '12', '合肥市');
INSERT INTO `city` VALUES ('99', '12', '芜湖市');
INSERT INTO `city` VALUES ('100', '12', '蚌埠市');
INSERT INTO `city` VALUES ('101', '12', '淮南市');
INSERT INTO `city` VALUES ('102', '12', '马鞍山市');
INSERT INTO `city` VALUES ('103', '12', '淮北市');
INSERT INTO `city` VALUES ('104', '12', '铜陵市');
INSERT INTO `city` VALUES ('105', '12', '安庆市');
INSERT INTO `city` VALUES ('106', '12', '黄山市');
INSERT INTO `city` VALUES ('107', '12', '滁州市');
INSERT INTO `city` VALUES ('108', '12', '阜阳市');
INSERT INTO `city` VALUES ('109', '12', '宿州市');
INSERT INTO `city` VALUES ('110', '12', '巢湖市');
INSERT INTO `city` VALUES ('111', '12', '六安市');
INSERT INTO `city` VALUES ('112', '12', '亳州市');
INSERT INTO `city` VALUES ('113', '12', '池州市');
INSERT INTO `city` VALUES ('114', '12', '宣城市');
INSERT INTO `city` VALUES ('115', '13', '福州市');
INSERT INTO `city` VALUES ('116', '13', '厦门市');
INSERT INTO `city` VALUES ('117', '13', '莆田市');
INSERT INTO `city` VALUES ('118', '13', '三明市');
INSERT INTO `city` VALUES ('119', '13', '泉州市');
INSERT INTO `city` VALUES ('120', '13', '漳州市');
INSERT INTO `city` VALUES ('121', '13', '南平市');
INSERT INTO `city` VALUES ('122', '13', '龙岩市');
INSERT INTO `city` VALUES ('123', '13', '宁德市');
INSERT INTO `city` VALUES ('124', '14', '南昌市');
INSERT INTO `city` VALUES ('125', '14', '景德镇市');
INSERT INTO `city` VALUES ('126', '14', '萍乡市');
INSERT INTO `city` VALUES ('127', '14', '九江市');
INSERT INTO `city` VALUES ('128', '14', '新余市');
INSERT INTO `city` VALUES ('129', '14', '鹰潭市');
INSERT INTO `city` VALUES ('130', '14', '赣州市');
INSERT INTO `city` VALUES ('131', '14', '吉安市');
INSERT INTO `city` VALUES ('132', '14', '宜春市');
INSERT INTO `city` VALUES ('133', '14', '抚州市');
INSERT INTO `city` VALUES ('134', '14', '上饶市');
INSERT INTO `city` VALUES ('135', '15', '济南市');
INSERT INTO `city` VALUES ('136', '15', '青岛市');
INSERT INTO `city` VALUES ('137', '15', '淄博市');
INSERT INTO `city` VALUES ('138', '15', '枣庄市');
INSERT INTO `city` VALUES ('139', '15', '东营市');
INSERT INTO `city` VALUES ('140', '15', '烟台市');
INSERT INTO `city` VALUES ('141', '15', '潍坊市');
INSERT INTO `city` VALUES ('142', '15', '济宁市');
INSERT INTO `city` VALUES ('143', '15', '泰安市');
INSERT INTO `city` VALUES ('144', '15', '威海市');
INSERT INTO `city` VALUES ('145', '15', '日照市');
INSERT INTO `city` VALUES ('146', '15', '莱芜市');
INSERT INTO `city` VALUES ('147', '15', '临沂市');
INSERT INTO `city` VALUES ('148', '15', '德州市');
INSERT INTO `city` VALUES ('149', '15', '聊城市');
INSERT INTO `city` VALUES ('150', '15', '滨州市');
INSERT INTO `city` VALUES ('151', '15', '菏泽市');
INSERT INTO `city` VALUES ('152', '16', '郑州市');
INSERT INTO `city` VALUES ('153', '16', '开封市');
INSERT INTO `city` VALUES ('154', '16', '洛阳市');
INSERT INTO `city` VALUES ('155', '16', '平顶山市');
INSERT INTO `city` VALUES ('156', '16', '安阳市');
INSERT INTO `city` VALUES ('157', '16', '鹤壁市');
INSERT INTO `city` VALUES ('158', '16', '新乡市');
INSERT INTO `city` VALUES ('159', '16', '焦作市');
INSERT INTO `city` VALUES ('160', '16', '濮阳市');
INSERT INTO `city` VALUES ('161', '16', '许昌市');
INSERT INTO `city` VALUES ('162', '16', '漯河市');
INSERT INTO `city` VALUES ('163', '16', '三门峡市');
INSERT INTO `city` VALUES ('164', '16', '南阳市');
INSERT INTO `city` VALUES ('165', '16', '商丘市');
INSERT INTO `city` VALUES ('166', '16', '信阳市');
INSERT INTO `city` VALUES ('167', '16', '周口市');
INSERT INTO `city` VALUES ('168', '16', '驻马店市');
INSERT INTO `city` VALUES ('169', '16', '济源市');
INSERT INTO `city` VALUES ('170', '17', '武汉市');
INSERT INTO `city` VALUES ('171', '17', '黄石市');
INSERT INTO `city` VALUES ('172', '17', '十堰市');
INSERT INTO `city` VALUES ('173', '17', '宜昌市');
INSERT INTO `city` VALUES ('174', '17', '襄樊市');
INSERT INTO `city` VALUES ('175', '17', '鄂州市');
INSERT INTO `city` VALUES ('176', '17', '荆门市');
INSERT INTO `city` VALUES ('177', '17', '孝感市');
INSERT INTO `city` VALUES ('178', '17', '荆州市');
INSERT INTO `city` VALUES ('179', '17', '黄冈市');
INSERT INTO `city` VALUES ('180', '17', '咸宁市');
INSERT INTO `city` VALUES ('181', '17', '随州市');
INSERT INTO `city` VALUES ('182', '17', '恩施土家族苗族自治州');
INSERT INTO `city` VALUES ('183', '17', '省直辖县级行政单位');
INSERT INTO `city` VALUES ('184', '18', '长沙市');
INSERT INTO `city` VALUES ('185', '18', '株洲市');
INSERT INTO `city` VALUES ('186', '18', '湘潭市');
INSERT INTO `city` VALUES ('187', '18', '衡阳市');
INSERT INTO `city` VALUES ('188', '18', '邵阳市');
INSERT INTO `city` VALUES ('189', '18', '岳阳市');
INSERT INTO `city` VALUES ('190', '18', '常德市');
INSERT INTO `city` VALUES ('191', '18', '张家界市');
INSERT INTO `city` VALUES ('192', '18', '益阳市');
INSERT INTO `city` VALUES ('193', '18', '郴州市');
INSERT INTO `city` VALUES ('194', '18', '永州市');
INSERT INTO `city` VALUES ('195', '18', '怀化市');
INSERT INTO `city` VALUES ('196', '18', '娄底市');
INSERT INTO `city` VALUES ('197', '18', '湘西土家族苗族自治州');
INSERT INTO `city` VALUES ('198', '19', '广州市');
INSERT INTO `city` VALUES ('199', '19', '韶关市');
INSERT INTO `city` VALUES ('200', '19', '深圳市');
INSERT INTO `city` VALUES ('201', '19', '珠海市');
INSERT INTO `city` VALUES ('202', '19', '汕头市');
INSERT INTO `city` VALUES ('203', '19', '佛山市');
INSERT INTO `city` VALUES ('204', '19', '江门市');
INSERT INTO `city` VALUES ('205', '19', '湛江市');
INSERT INTO `city` VALUES ('206', '19', '茂名市');
INSERT INTO `city` VALUES ('207', '19', '肇庆市');
INSERT INTO `city` VALUES ('208', '19', '惠州市');
INSERT INTO `city` VALUES ('209', '19', '梅州市');
INSERT INTO `city` VALUES ('210', '19', '汕尾市');
INSERT INTO `city` VALUES ('211', '19', '河源市');
INSERT INTO `city` VALUES ('212', '19', '阳江市');
INSERT INTO `city` VALUES ('213', '19', '清远市');
INSERT INTO `city` VALUES ('214', '19', '东莞市');
INSERT INTO `city` VALUES ('215', '19', '中山市');
INSERT INTO `city` VALUES ('216', '19', '潮州市');
INSERT INTO `city` VALUES ('217', '19', '揭阳市');
INSERT INTO `city` VALUES ('218', '19', '云浮市');
INSERT INTO `city` VALUES ('219', '20', '南宁市');
INSERT INTO `city` VALUES ('220', '20', '柳州市');
INSERT INTO `city` VALUES ('221', '20', '桂林市');
INSERT INTO `city` VALUES ('222', '20', '梧州市');
INSERT INTO `city` VALUES ('223', '20', '北海市');
INSERT INTO `city` VALUES ('224', '20', '防城港市');
INSERT INTO `city` VALUES ('225', '20', '钦州市');
INSERT INTO `city` VALUES ('226', '20', '贵港市');
INSERT INTO `city` VALUES ('227', '20', '玉林市');
INSERT INTO `city` VALUES ('228', '20', '百色市');
INSERT INTO `city` VALUES ('229', '20', '贺州市');
INSERT INTO `city` VALUES ('230', '20', '河池市');
INSERT INTO `city` VALUES ('231', '20', '来宾市');
INSERT INTO `city` VALUES ('232', '20', '崇左市');
INSERT INTO `city` VALUES ('233', '21', '海口市');
INSERT INTO `city` VALUES ('234', '21', '三亚市');
INSERT INTO `city` VALUES ('235', '21', '省直辖县级行政单位');
INSERT INTO `city` VALUES ('236', '22', '重庆市');
INSERT INTO `city` VALUES ('237', '23', '成都市');
INSERT INTO `city` VALUES ('238', '23', '自贡市');
INSERT INTO `city` VALUES ('239', '23', '攀枝花市');
INSERT INTO `city` VALUES ('240', '23', '泸州市');
INSERT INTO `city` VALUES ('241', '23', '德阳市');
INSERT INTO `city` VALUES ('242', '23', '绵阳市');
INSERT INTO `city` VALUES ('243', '23', '广元市');
INSERT INTO `city` VALUES ('244', '23', '遂宁市');
INSERT INTO `city` VALUES ('245', '23', '内江市');
INSERT INTO `city` VALUES ('246', '23', '乐山市');
INSERT INTO `city` VALUES ('247', '23', '南充市');
INSERT INTO `city` VALUES ('248', '23', '眉山市');
INSERT INTO `city` VALUES ('249', '23', '宜宾市');
INSERT INTO `city` VALUES ('250', '23', '广安市');
INSERT INTO `city` VALUES ('251', '23', '达州市');
INSERT INTO `city` VALUES ('252', '23', '雅安市');
INSERT INTO `city` VALUES ('253', '23', '巴中市');
INSERT INTO `city` VALUES ('254', '23', '资阳市');
INSERT INTO `city` VALUES ('255', '23', '阿坝藏族羌族自治州');
INSERT INTO `city` VALUES ('256', '23', '甘孜藏族自治州');
INSERT INTO `city` VALUES ('257', '23', '凉山彝族自治州');
INSERT INTO `city` VALUES ('258', '24', '贵阳市');
INSERT INTO `city` VALUES ('259', '24', '六盘水市');
INSERT INTO `city` VALUES ('260', '24', '遵义市');
INSERT INTO `city` VALUES ('261', '24', '安顺市');
INSERT INTO `city` VALUES ('262', '24', '铜仁地区');
INSERT INTO `city` VALUES ('263', '24', '黔西南布依族苗族自治州');
INSERT INTO `city` VALUES ('264', '24', '毕节地区');
INSERT INTO `city` VALUES ('265', '24', '黔东南苗族侗族自治州');
INSERT INTO `city` VALUES ('266', '24', '黔南布依族苗族自治州');
INSERT INTO `city` VALUES ('267', '25', '昆明市');
INSERT INTO `city` VALUES ('268', '25', '曲靖市');
INSERT INTO `city` VALUES ('269', '25', '玉溪市');
INSERT INTO `city` VALUES ('270', '25', '保山市');
INSERT INTO `city` VALUES ('271', '25', '昭通市');
INSERT INTO `city` VALUES ('272', '25', '丽江市');
INSERT INTO `city` VALUES ('273', '25', '普洱市');
INSERT INTO `city` VALUES ('274', '25', '临沧市');
INSERT INTO `city` VALUES ('275', '25', '楚雄彝族自治州');
INSERT INTO `city` VALUES ('276', '25', '红河哈尼族彝族自治州');
INSERT INTO `city` VALUES ('277', '25', '文山壮族苗族自治州');
INSERT INTO `city` VALUES ('278', '25', '西双版纳傣族自治州');
INSERT INTO `city` VALUES ('279', '25', '大理白族自治州');
INSERT INTO `city` VALUES ('280', '25', '德宏傣族景颇族自治州');
INSERT INTO `city` VALUES ('281', '25', '怒江傈僳族自治州');
INSERT INTO `city` VALUES ('282', '25', '迪庆藏族自治州');
INSERT INTO `city` VALUES ('283', '26', '拉萨市');
INSERT INTO `city` VALUES ('284', '26', '昌都地区');
INSERT INTO `city` VALUES ('285', '26', '山南地区');
INSERT INTO `city` VALUES ('286', '26', '日喀则地区');
INSERT INTO `city` VALUES ('287', '26', '那曲地区');
INSERT INTO `city` VALUES ('288', '26', '阿里地区');
INSERT INTO `city` VALUES ('289', '26', '林芝地区');
INSERT INTO `city` VALUES ('290', '27', '西安市');
INSERT INTO `city` VALUES ('291', '27', '铜川市');
INSERT INTO `city` VALUES ('292', '27', '宝鸡市');
INSERT INTO `city` VALUES ('293', '27', '咸阳市');
INSERT INTO `city` VALUES ('294', '27', '渭南市');
INSERT INTO `city` VALUES ('295', '27', '延安市');
INSERT INTO `city` VALUES ('296', '27', '汉中市');
INSERT INTO `city` VALUES ('297', '27', '榆林市');
INSERT INTO `city` VALUES ('298', '27', '安康市');
INSERT INTO `city` VALUES ('299', '27', '商洛市');
INSERT INTO `city` VALUES ('300', '28', '兰州市');
INSERT INTO `city` VALUES ('301', '28', '嘉峪关市');
INSERT INTO `city` VALUES ('302', '28', '金昌市');
INSERT INTO `city` VALUES ('303', '28', '白银市');
INSERT INTO `city` VALUES ('304', '28', '天水市');
INSERT INTO `city` VALUES ('305', '28', '武威市');
INSERT INTO `city` VALUES ('306', '28', '张掖市');
INSERT INTO `city` VALUES ('307', '28', '平凉市');
INSERT INTO `city` VALUES ('308', '28', '酒泉市');
INSERT INTO `city` VALUES ('309', '28', '庆阳市');
INSERT INTO `city` VALUES ('310', '28', '定西市');
INSERT INTO `city` VALUES ('311', '28', '陇南市');
INSERT INTO `city` VALUES ('312', '28', '临夏回族自治州');
INSERT INTO `city` VALUES ('313', '28', '甘南藏族自治州');
INSERT INTO `city` VALUES ('314', '29', '西宁市');
INSERT INTO `city` VALUES ('315', '29', '海东地区');
INSERT INTO `city` VALUES ('316', '29', '海北藏族自治州');
INSERT INTO `city` VALUES ('317', '29', '黄南藏族自治州');
INSERT INTO `city` VALUES ('318', '29', '海南藏族自治州');
INSERT INTO `city` VALUES ('319', '29', '果洛藏族自治州');
INSERT INTO `city` VALUES ('320', '29', '玉树藏族自治州');
INSERT INTO `city` VALUES ('321', '29', '海西蒙古族藏族自治州');
INSERT INTO `city` VALUES ('322', '30', '银川市');
INSERT INTO `city` VALUES ('323', '30', '石嘴山市');
INSERT INTO `city` VALUES ('324', '30', '吴忠市');
INSERT INTO `city` VALUES ('325', '30', '固原市');
INSERT INTO `city` VALUES ('326', '30', '中卫市');
INSERT INTO `city` VALUES ('327', '31', '乌鲁木齐市');
INSERT INTO `city` VALUES ('328', '31', '克拉玛依市');
INSERT INTO `city` VALUES ('329', '31', '吐鲁番地区');
INSERT INTO `city` VALUES ('330', '31', '哈密地区');
INSERT INTO `city` VALUES ('331', '31', '昌吉回族自治州');
INSERT INTO `city` VALUES ('332', '31', '博尔塔拉蒙古自治州');
INSERT INTO `city` VALUES ('333', '31', '巴音郭楞蒙古自治州');
INSERT INTO `city` VALUES ('334', '31', '阿克苏地区');
INSERT INTO `city` VALUES ('335', '31', '克孜勒苏柯尔克孜自治州');
INSERT INTO `city` VALUES ('336', '31', '喀什地区');
INSERT INTO `city` VALUES ('337', '31', '和田地区');
INSERT INTO `city` VALUES ('338', '31', '伊犁哈萨克自治州');
INSERT INTO `city` VALUES ('339', '31', '塔城地区');
INSERT INTO `city` VALUES ('340', '31', '阿勒泰地区');
INSERT INTO `city` VALUES ('341', '31', '省直辖县级行政单位');
INSERT INTO `city` VALUES ('342', '32', '香港');
INSERT INTO `city` VALUES ('343', '33', '澳门');
INSERT INTO `city` VALUES ('344', '34', '台湾');

-- ----------------------------
-- Table structure for `codetype`
-- ----------------------------
DROP TABLE IF EXISTS `codetype`;
CREATE TABLE `codetype` (
  `typeId` int(11) NOT NULL,
  `typeName` varchar(40) NOT NULL,
  `typeDesc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of codetype
-- ----------------------------
INSERT INTO `codetype` VALUES ('1', 'Java', '运行Java程序');
INSERT INTO `codetype` VALUES ('2', 'HTML', '运行HTML代码');

-- ----------------------------
-- Table structure for `county`
-- ----------------------------
DROP TABLE IF EXISTS `county`;
CREATE TABLE `county` (
  `countyId` int(11) NOT NULL,
  `cityId` int(11) DEFAULT NULL,
  `countyName` varchar(40) NOT NULL,
  PRIMARY KEY (`countyId`),
  KEY `FK_countyCity` (`cityId`),
  CONSTRAINT `FK_countyCity` FOREIGN KEY (`cityId`) REFERENCES `city` (`cityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of county
-- ----------------------------
INSERT INTO `county` VALUES ('1', '1', '东城区');
INSERT INTO `county` VALUES ('2', '1', '西城区');
INSERT INTO `county` VALUES ('3', '1', '崇文区');
INSERT INTO `county` VALUES ('4', '1', '宣武区');
INSERT INTO `county` VALUES ('5', '1', '朝阳区');
INSERT INTO `county` VALUES ('6', '1', '丰台区');
INSERT INTO `county` VALUES ('7', '1', '石景山区');
INSERT INTO `county` VALUES ('8', '1', '海淀区');
INSERT INTO `county` VALUES ('9', '1', '门头沟区');
INSERT INTO `county` VALUES ('10', '1', '房山区');
INSERT INTO `county` VALUES ('11', '1', '通州区');
INSERT INTO `county` VALUES ('12', '1', '顺义区');
INSERT INTO `county` VALUES ('13', '1', '昌平区');
INSERT INTO `county` VALUES ('14', '1', '大兴区');
INSERT INTO `county` VALUES ('15', '1', '怀柔区');
INSERT INTO `county` VALUES ('16', '1', '平谷区');
INSERT INTO `county` VALUES ('17', '1', '密云县');
INSERT INTO `county` VALUES ('18', '1', '延庆县');
INSERT INTO `county` VALUES ('19', '2', '和平区');
INSERT INTO `county` VALUES ('20', '2', '河东区');
INSERT INTO `county` VALUES ('21', '2', '河西区');
INSERT INTO `county` VALUES ('22', '2', '南开区');
INSERT INTO `county` VALUES ('23', '2', '河北区');
INSERT INTO `county` VALUES ('24', '2', '红桥区');
INSERT INTO `county` VALUES ('25', '2', '塘沽区');
INSERT INTO `county` VALUES ('26', '2', '汉沽区');
INSERT INTO `county` VALUES ('27', '2', '大港区');
INSERT INTO `county` VALUES ('28', '2', '东丽区');
INSERT INTO `county` VALUES ('29', '2', '西青区');
INSERT INTO `county` VALUES ('30', '2', '津南区');
INSERT INTO `county` VALUES ('31', '2', '北辰区');
INSERT INTO `county` VALUES ('32', '2', '武清区');
INSERT INTO `county` VALUES ('33', '2', '宝坻区');
INSERT INTO `county` VALUES ('34', '2', '宁河县');
INSERT INTO `county` VALUES ('35', '2', '静海县');
INSERT INTO `county` VALUES ('36', '2', '蓟县');
INSERT INTO `county` VALUES ('37', '2', '保税区');
INSERT INTO `county` VALUES ('38', '2', '经济技术开发区');
INSERT INTO `county` VALUES ('39', '2', '高新区');
INSERT INTO `county` VALUES ('40', '2', '滨海新区');
INSERT INTO `county` VALUES ('41', '3', '长安区');
INSERT INTO `county` VALUES ('42', '3', '桥东区');
INSERT INTO `county` VALUES ('43', '3', '桥西区');
INSERT INTO `county` VALUES ('44', '3', '新华区');
INSERT INTO `county` VALUES ('45', '3', '井陉矿区');
INSERT INTO `county` VALUES ('46', '3', '裕华区');
INSERT INTO `county` VALUES ('47', '3', '井陉县');
INSERT INTO `county` VALUES ('48', '3', '正定县');
INSERT INTO `county` VALUES ('49', '3', '栾城县');
INSERT INTO `county` VALUES ('50', '3', '行唐县');
INSERT INTO `county` VALUES ('51', '3', '灵寿县');
INSERT INTO `county` VALUES ('52', '3', '高邑县');
INSERT INTO `county` VALUES ('53', '3', '深泽县');
INSERT INTO `county` VALUES ('54', '3', '赞皇县');
INSERT INTO `county` VALUES ('55', '3', '无极县');
INSERT INTO `county` VALUES ('56', '3', '平山县');
INSERT INTO `county` VALUES ('57', '3', '元氏县');
INSERT INTO `county` VALUES ('58', '3', '赵县');
INSERT INTO `county` VALUES ('59', '3', '辛集市');
INSERT INTO `county` VALUES ('60', '3', '藁城市');
INSERT INTO `county` VALUES ('61', '3', '晋州市');
INSERT INTO `county` VALUES ('62', '3', '新乐市');
INSERT INTO `county` VALUES ('63', '3', '鹿泉市');
INSERT INTO `county` VALUES ('64', '3', '高新技术开发区');
INSERT INTO `county` VALUES ('65', '4', '路南区');
INSERT INTO `county` VALUES ('66', '4', '路北区');
INSERT INTO `county` VALUES ('67', '4', '古冶区');
INSERT INTO `county` VALUES ('68', '4', '开平区');
INSERT INTO `county` VALUES ('69', '4', '丰南区');
INSERT INTO `county` VALUES ('70', '4', '丰润区');
INSERT INTO `county` VALUES ('71', '4', '滦县');
INSERT INTO `county` VALUES ('72', '4', '滦南县');
INSERT INTO `county` VALUES ('73', '4', '乐亭县');
INSERT INTO `county` VALUES ('74', '4', '迁西县');
INSERT INTO `county` VALUES ('75', '4', '玉田县');
INSERT INTO `county` VALUES ('76', '4', '唐海县');
INSERT INTO `county` VALUES ('77', '4', '遵化市');
INSERT INTO `county` VALUES ('78', '4', '迁安市');
INSERT INTO `county` VALUES ('79', '4', '高新区');
INSERT INTO `county` VALUES ('80', '4', '汉沽管理区');
INSERT INTO `county` VALUES ('81', '4', '海港开发区');
INSERT INTO `county` VALUES ('82', '4', '芦台开发区');
INSERT INTO `county` VALUES ('83', '4', '南堡开发区');
INSERT INTO `county` VALUES ('84', '4', '曹妃甸工业区');
INSERT INTO `county` VALUES ('85', '5', '海港区');
INSERT INTO `county` VALUES ('86', '5', '山海关区');
INSERT INTO `county` VALUES ('87', '5', '北戴河区');
INSERT INTO `county` VALUES ('88', '5', '青龙满族自治县');
INSERT INTO `county` VALUES ('89', '5', '昌黎县');
INSERT INTO `county` VALUES ('90', '5', '抚宁县');
INSERT INTO `county` VALUES ('91', '5', '卢龙县');
INSERT INTO `county` VALUES ('92', '5', '经济技术开发区');
INSERT INTO `county` VALUES ('93', '6', '邯山区');
INSERT INTO `county` VALUES ('94', '6', '丛台区');
INSERT INTO `county` VALUES ('95', '6', '复兴区');
INSERT INTO `county` VALUES ('96', '6', '峰峰矿区');
INSERT INTO `county` VALUES ('97', '6', '邯郸县');
INSERT INTO `county` VALUES ('98', '6', '临漳县');
INSERT INTO `county` VALUES ('99', '6', '成安县');
INSERT INTO `county` VALUES ('100', '6', '大名县');
INSERT INTO `county` VALUES ('101', '6', '涉县');
INSERT INTO `county` VALUES ('102', '6', '磁县');
INSERT INTO `county` VALUES ('103', '6', '肥乡县');
INSERT INTO `county` VALUES ('104', '6', '永年县');
INSERT INTO `county` VALUES ('105', '6', '邱县');
INSERT INTO `county` VALUES ('106', '6', '鸡泽县');
INSERT INTO `county` VALUES ('107', '6', '广平县');
INSERT INTO `county` VALUES ('108', '6', '馆陶县');
INSERT INTO `county` VALUES ('109', '6', '魏县');
INSERT INTO `county` VALUES ('110', '6', '曲周县');
INSERT INTO `county` VALUES ('111', '6', '武安市');
INSERT INTO `county` VALUES ('112', '6', '经济开发区');
INSERT INTO `county` VALUES ('113', '7', '桥东区');
INSERT INTO `county` VALUES ('114', '7', '桥西区');
INSERT INTO `county` VALUES ('115', '7', '邢台县');
INSERT INTO `county` VALUES ('116', '7', '临城县');
INSERT INTO `county` VALUES ('117', '7', '内丘县');
INSERT INTO `county` VALUES ('118', '7', '柏乡县');
INSERT INTO `county` VALUES ('119', '7', '隆尧县');
INSERT INTO `county` VALUES ('120', '7', '任县');
INSERT INTO `county` VALUES ('121', '7', '南和县');
INSERT INTO `county` VALUES ('122', '7', '宁晋县');
INSERT INTO `county` VALUES ('123', '7', '巨鹿县');
INSERT INTO `county` VALUES ('124', '7', '新河县');
INSERT INTO `county` VALUES ('125', '7', '广宗县');
INSERT INTO `county` VALUES ('126', '7', '平乡县');
INSERT INTO `county` VALUES ('127', '7', '威县');
INSERT INTO `county` VALUES ('128', '7', '清河县');
INSERT INTO `county` VALUES ('129', '7', '临西县');
INSERT INTO `county` VALUES ('130', '7', '南宫市');
INSERT INTO `county` VALUES ('131', '7', '沙河市');
INSERT INTO `county` VALUES ('132', '8', '新市区');
INSERT INTO `county` VALUES ('133', '8', '南市区');
INSERT INTO `county` VALUES ('134', '8', '北市区');
INSERT INTO `county` VALUES ('135', '8', '满城县');
INSERT INTO `county` VALUES ('136', '8', '清苑县');
INSERT INTO `county` VALUES ('137', '8', '涞水县');
INSERT INTO `county` VALUES ('138', '8', '阜平县');
INSERT INTO `county` VALUES ('139', '8', '徐水县');
INSERT INTO `county` VALUES ('140', '8', '定兴县');
INSERT INTO `county` VALUES ('141', '8', '唐县');
INSERT INTO `county` VALUES ('142', '8', '高阳县');
INSERT INTO `county` VALUES ('143', '8', '容城县');
INSERT INTO `county` VALUES ('144', '8', '涞源县');
INSERT INTO `county` VALUES ('145', '8', '望都县');
INSERT INTO `county` VALUES ('146', '8', '安新县');
INSERT INTO `county` VALUES ('147', '8', '易县');
INSERT INTO `county` VALUES ('148', '8', '曲阳县');
INSERT INTO `county` VALUES ('149', '8', '蠡县');
INSERT INTO `county` VALUES ('150', '8', '顺平县');
INSERT INTO `county` VALUES ('151', '8', '博野县');
INSERT INTO `county` VALUES ('152', '8', '雄县');
INSERT INTO `county` VALUES ('153', '8', '涿州市');
INSERT INTO `county` VALUES ('154', '8', '定州市');
INSERT INTO `county` VALUES ('155', '8', '安国市');
INSERT INTO `county` VALUES ('156', '8', '高碑店市');
INSERT INTO `county` VALUES ('157', '9', '桥东区');
INSERT INTO `county` VALUES ('158', '9', '桥西区');
INSERT INTO `county` VALUES ('159', '9', '宣化区');
INSERT INTO `county` VALUES ('160', '9', '下花园区');
INSERT INTO `county` VALUES ('161', '9', '宣化县');
INSERT INTO `county` VALUES ('162', '9', '张北县');
INSERT INTO `county` VALUES ('163', '9', '康保县');
INSERT INTO `county` VALUES ('164', '9', '沽源县');
INSERT INTO `county` VALUES ('165', '9', '尚义县');
INSERT INTO `county` VALUES ('166', '9', '蔚县');
INSERT INTO `county` VALUES ('167', '9', '阳原县');
INSERT INTO `county` VALUES ('168', '9', '怀安县');
INSERT INTO `county` VALUES ('169', '9', '万全县');
INSERT INTO `county` VALUES ('170', '9', '怀来县');
INSERT INTO `county` VALUES ('171', '9', '涿鹿县');
INSERT INTO `county` VALUES ('172', '9', '赤城县');
INSERT INTO `county` VALUES ('173', '9', '崇礼县');
INSERT INTO `county` VALUES ('174', '10', '双桥区');
INSERT INTO `county` VALUES ('175', '10', '双滦区');
INSERT INTO `county` VALUES ('176', '10', '鹰手营子矿区');
INSERT INTO `county` VALUES ('177', '10', '承德县');
INSERT INTO `county` VALUES ('178', '10', '兴隆县');
INSERT INTO `county` VALUES ('179', '10', '平泉县');
INSERT INTO `county` VALUES ('180', '10', '滦平县');
INSERT INTO `county` VALUES ('181', '10', '隆化县');
INSERT INTO `county` VALUES ('182', '10', '丰宁满族自治县');
INSERT INTO `county` VALUES ('183', '10', '宽城满族自治县');
INSERT INTO `county` VALUES ('184', '10', '围场满族蒙古族自治县');
INSERT INTO `county` VALUES ('185', '11', '新华区');
INSERT INTO `county` VALUES ('186', '11', '运河区');
INSERT INTO `county` VALUES ('187', '11', '沧县');
INSERT INTO `county` VALUES ('188', '11', '青县');
INSERT INTO `county` VALUES ('189', '11', '东光县');
INSERT INTO `county` VALUES ('190', '11', '海兴县');
INSERT INTO `county` VALUES ('191', '11', '盐山县');
INSERT INTO `county` VALUES ('192', '11', '肃宁县');
INSERT INTO `county` VALUES ('193', '11', '南皮县');
INSERT INTO `county` VALUES ('194', '11', '吴桥县');
INSERT INTO `county` VALUES ('195', '11', '献县');
INSERT INTO `county` VALUES ('196', '11', '孟村回族自治县');
INSERT INTO `county` VALUES ('197', '11', '泊头市');
INSERT INTO `county` VALUES ('198', '11', '任丘市');
INSERT INTO `county` VALUES ('199', '11', '黄骅市');
INSERT INTO `county` VALUES ('200', '11', '河间市');
INSERT INTO `county` VALUES ('201', '12', '安次区');
INSERT INTO `county` VALUES ('202', '12', '广阳区');
INSERT INTO `county` VALUES ('203', '12', '固安县');
INSERT INTO `county` VALUES ('204', '12', '永清县');
INSERT INTO `county` VALUES ('205', '12', '香河县');
INSERT INTO `county` VALUES ('206', '12', '大城县');
INSERT INTO `county` VALUES ('207', '12', '文安县');
INSERT INTO `county` VALUES ('208', '12', '大厂回族自治县');
INSERT INTO `county` VALUES ('209', '12', '霸州市');
INSERT INTO `county` VALUES ('210', '12', '三河市');
INSERT INTO `county` VALUES ('211', '12', '开发区');
INSERT INTO `county` VALUES ('212', '13', '桃城区');
INSERT INTO `county` VALUES ('213', '13', '枣强县');
INSERT INTO `county` VALUES ('214', '13', '武邑县');
INSERT INTO `county` VALUES ('215', '13', '武强县');
INSERT INTO `county` VALUES ('216', '13', '饶阳县');
INSERT INTO `county` VALUES ('217', '13', '安平县');
INSERT INTO `county` VALUES ('218', '13', '故城县');
INSERT INTO `county` VALUES ('219', '13', '景县');
INSERT INTO `county` VALUES ('220', '13', '阜城县');
INSERT INTO `county` VALUES ('221', '13', '冀州市');
INSERT INTO `county` VALUES ('222', '13', '深州市');
INSERT INTO `county` VALUES ('223', '14', '小店区');
INSERT INTO `county` VALUES ('224', '14', '迎泽区');
INSERT INTO `county` VALUES ('225', '14', '杏花岭区');
INSERT INTO `county` VALUES ('226', '14', '尖草坪区');
INSERT INTO `county` VALUES ('227', '14', '万柏林区');
INSERT INTO `county` VALUES ('228', '14', '晋源区');
INSERT INTO `county` VALUES ('229', '14', '清徐县');
INSERT INTO `county` VALUES ('230', '14', '阳曲县');
INSERT INTO `county` VALUES ('231', '14', '娄烦县');
INSERT INTO `county` VALUES ('232', '14', '古交市');
INSERT INTO `county` VALUES ('233', '15', '城区');
INSERT INTO `county` VALUES ('234', '15', '矿区');
INSERT INTO `county` VALUES ('235', '15', '南郊区');
INSERT INTO `county` VALUES ('236', '15', '新荣区');
INSERT INTO `county` VALUES ('237', '15', '阳高县');
INSERT INTO `county` VALUES ('238', '15', '天镇县');
INSERT INTO `county` VALUES ('239', '15', '广灵县');
INSERT INTO `county` VALUES ('240', '15', '灵丘县');
INSERT INTO `county` VALUES ('241', '15', '浑源县');
INSERT INTO `county` VALUES ('242', '15', '左云县');
INSERT INTO `county` VALUES ('243', '15', '大同县');
INSERT INTO `county` VALUES ('244', '16', '城区');
INSERT INTO `county` VALUES ('245', '16', '矿区');
INSERT INTO `county` VALUES ('246', '16', '郊区');
INSERT INTO `county` VALUES ('247', '16', '平定县');
INSERT INTO `county` VALUES ('248', '16', '盂县');
INSERT INTO `county` VALUES ('249', '17', '城区');
INSERT INTO `county` VALUES ('250', '17', '郊区');
INSERT INTO `county` VALUES ('251', '17', '长治县');
INSERT INTO `county` VALUES ('252', '17', '襄垣县');
INSERT INTO `county` VALUES ('253', '17', '屯留县');
INSERT INTO `county` VALUES ('254', '17', '平顺县');
INSERT INTO `county` VALUES ('255', '17', '黎城县');
INSERT INTO `county` VALUES ('256', '17', '壶关县');
INSERT INTO `county` VALUES ('257', '17', '长子县');
INSERT INTO `county` VALUES ('258', '17', '武乡县');
INSERT INTO `county` VALUES ('259', '17', '沁县');
INSERT INTO `county` VALUES ('260', '17', '沁源县');
INSERT INTO `county` VALUES ('261', '17', '潞城市');
INSERT INTO `county` VALUES ('262', '18', '城区');
INSERT INTO `county` VALUES ('263', '18', '沁水县');
INSERT INTO `county` VALUES ('264', '18', '阳城县');
INSERT INTO `county` VALUES ('265', '18', '陵川县');
INSERT INTO `county` VALUES ('266', '18', '泽州县');
INSERT INTO `county` VALUES ('267', '18', '高平市');
INSERT INTO `county` VALUES ('268', '19', '朔城区');
INSERT INTO `county` VALUES ('269', '19', '平鲁区');
INSERT INTO `county` VALUES ('270', '19', '山阴县');
INSERT INTO `county` VALUES ('271', '19', '应县');
INSERT INTO `county` VALUES ('272', '19', '右玉县');
INSERT INTO `county` VALUES ('273', '19', '怀仁县');
INSERT INTO `county` VALUES ('274', '20', '榆次区');
INSERT INTO `county` VALUES ('275', '20', '榆社县');
INSERT INTO `county` VALUES ('276', '20', '左权县');
INSERT INTO `county` VALUES ('277', '20', '和顺县');
INSERT INTO `county` VALUES ('278', '20', '昔阳县');
INSERT INTO `county` VALUES ('279', '20', '寿阳县');
INSERT INTO `county` VALUES ('280', '20', '太谷县');
INSERT INTO `county` VALUES ('281', '20', '祁县');
INSERT INTO `county` VALUES ('282', '20', '平遥县');
INSERT INTO `county` VALUES ('283', '20', '灵石县');
INSERT INTO `county` VALUES ('284', '20', '介休市');
INSERT INTO `county` VALUES ('285', '21', '盐湖区');
INSERT INTO `county` VALUES ('286', '21', '临猗县');
INSERT INTO `county` VALUES ('287', '21', '万荣县');
INSERT INTO `county` VALUES ('288', '21', '闻喜县');
INSERT INTO `county` VALUES ('289', '21', '稷山县');
INSERT INTO `county` VALUES ('290', '21', '新绛县');
INSERT INTO `county` VALUES ('291', '21', '绛县');
INSERT INTO `county` VALUES ('292', '21', '垣曲县');
INSERT INTO `county` VALUES ('293', '21', '夏县');
INSERT INTO `county` VALUES ('294', '21', '平陆县');
INSERT INTO `county` VALUES ('295', '21', '芮城县');
INSERT INTO `county` VALUES ('296', '21', '永济市');
INSERT INTO `county` VALUES ('297', '21', '河津市');
INSERT INTO `county` VALUES ('298', '22', '忻府区');
INSERT INTO `county` VALUES ('299', '22', '定襄县');
INSERT INTO `county` VALUES ('300', '22', '五台县');
INSERT INTO `county` VALUES ('301', '22', '代县');
INSERT INTO `county` VALUES ('302', '22', '繁峙县');
INSERT INTO `county` VALUES ('303', '22', '宁武县');
INSERT INTO `county` VALUES ('304', '22', '静乐县');
INSERT INTO `county` VALUES ('305', '22', '神池县');
INSERT INTO `county` VALUES ('306', '22', '五寨县');
INSERT INTO `county` VALUES ('307', '22', '岢岚县');
INSERT INTO `county` VALUES ('308', '22', '河曲县');
INSERT INTO `county` VALUES ('309', '22', '保德县');
INSERT INTO `county` VALUES ('310', '22', '偏关县');
INSERT INTO `county` VALUES ('311', '22', '原平市');
INSERT INTO `county` VALUES ('312', '23', '尧都区');
INSERT INTO `county` VALUES ('313', '23', '曲沃县');
INSERT INTO `county` VALUES ('314', '23', '翼城县');
INSERT INTO `county` VALUES ('315', '23', '襄汾县');
INSERT INTO `county` VALUES ('316', '23', '洪洞县');
INSERT INTO `county` VALUES ('317', '23', '古县');
INSERT INTO `county` VALUES ('318', '23', '安泽县');
INSERT INTO `county` VALUES ('319', '23', '浮山县');
INSERT INTO `county` VALUES ('320', '23', '吉县');
INSERT INTO `county` VALUES ('321', '23', '乡宁县');
INSERT INTO `county` VALUES ('322', '23', '大宁县');
INSERT INTO `county` VALUES ('323', '23', '隰县');
INSERT INTO `county` VALUES ('324', '23', '永和县');
INSERT INTO `county` VALUES ('325', '23', '蒲县');
INSERT INTO `county` VALUES ('326', '23', '汾西县');
INSERT INTO `county` VALUES ('327', '23', '侯马市');
INSERT INTO `county` VALUES ('328', '23', '霍州市');
INSERT INTO `county` VALUES ('329', '24', '离石区');
INSERT INTO `county` VALUES ('330', '24', '文水县');
INSERT INTO `county` VALUES ('331', '24', '交城县');
INSERT INTO `county` VALUES ('332', '24', '兴县');
INSERT INTO `county` VALUES ('333', '24', '临县');
INSERT INTO `county` VALUES ('334', '24', '柳林县');
INSERT INTO `county` VALUES ('335', '24', '石楼县');
INSERT INTO `county` VALUES ('336', '24', '岚县');
INSERT INTO `county` VALUES ('337', '24', '方山县');
INSERT INTO `county` VALUES ('338', '24', '中阳县');
INSERT INTO `county` VALUES ('339', '24', '交口县');
INSERT INTO `county` VALUES ('340', '24', '孝义市');
INSERT INTO `county` VALUES ('341', '24', '汾阳市');
INSERT INTO `county` VALUES ('342', '25', '回民区');
INSERT INTO `county` VALUES ('343', '25', '玉泉区');
INSERT INTO `county` VALUES ('344', '25', '新城区');
INSERT INTO `county` VALUES ('345', '25', '赛罕区');
INSERT INTO `county` VALUES ('346', '25', '土默特左旗');
INSERT INTO `county` VALUES ('347', '25', '托克托县');
INSERT INTO `county` VALUES ('348', '25', '和林格尔县');
INSERT INTO `county` VALUES ('349', '25', '清水河县');
INSERT INTO `county` VALUES ('350', '25', '武川县');
INSERT INTO `county` VALUES ('351', '26', '东河区');
INSERT INTO `county` VALUES ('352', '26', '昆都仑区');
INSERT INTO `county` VALUES ('353', '26', '青山区');
INSERT INTO `county` VALUES ('354', '26', '石拐区');
INSERT INTO `county` VALUES ('355', '26', '白云矿区');
INSERT INTO `county` VALUES ('356', '26', '九原区');
INSERT INTO `county` VALUES ('357', '26', '土默特右旗');
INSERT INTO `county` VALUES ('358', '26', '固阳县');
INSERT INTO `county` VALUES ('359', '26', '达尔罕茂明安联合旗');
INSERT INTO `county` VALUES ('360', '27', '海勃湾区');
INSERT INTO `county` VALUES ('361', '27', '海南区');
INSERT INTO `county` VALUES ('362', '27', '乌达区');
INSERT INTO `county` VALUES ('363', '28', '红山区');
INSERT INTO `county` VALUES ('364', '28', '元宝山区');
INSERT INTO `county` VALUES ('365', '28', '松山区');
INSERT INTO `county` VALUES ('366', '28', '阿鲁科尔沁旗');
INSERT INTO `county` VALUES ('367', '28', '巴林左旗');
INSERT INTO `county` VALUES ('368', '28', '巴林右旗');
INSERT INTO `county` VALUES ('369', '28', '林西县');
INSERT INTO `county` VALUES ('370', '28', '克什克腾旗');
INSERT INTO `county` VALUES ('371', '28', '翁牛特旗');
INSERT INTO `county` VALUES ('372', '28', '喀喇沁旗');
INSERT INTO `county` VALUES ('373', '28', '宁城县');
INSERT INTO `county` VALUES ('374', '28', '敖汉旗');
INSERT INTO `county` VALUES ('375', '28', '新城区');
INSERT INTO `county` VALUES ('376', '29', '科尔沁区');
INSERT INTO `county` VALUES ('377', '29', '科尔沁左翼中旗');
INSERT INTO `county` VALUES ('378', '29', '科尔沁左翼后旗');
INSERT INTO `county` VALUES ('379', '29', '开鲁县');
INSERT INTO `county` VALUES ('380', '29', '库伦旗');
INSERT INTO `county` VALUES ('381', '29', '奈曼旗');
INSERT INTO `county` VALUES ('382', '29', '扎鲁特旗');
INSERT INTO `county` VALUES ('383', '29', '霍林郭勒市');
INSERT INTO `county` VALUES ('384', '30', '东胜区');
INSERT INTO `county` VALUES ('385', '30', '达拉特旗');
INSERT INTO `county` VALUES ('386', '30', '准格尔旗');
INSERT INTO `county` VALUES ('387', '30', '鄂托克前旗');
INSERT INTO `county` VALUES ('388', '30', '鄂托克旗');
INSERT INTO `county` VALUES ('389', '30', '杭锦旗');
INSERT INTO `county` VALUES ('390', '30', '乌审旗');
INSERT INTO `county` VALUES ('391', '30', '伊金霍洛旗');
INSERT INTO `county` VALUES ('392', '31', '海拉尔区');
INSERT INTO `county` VALUES ('393', '31', '阿荣旗');
INSERT INTO `county` VALUES ('394', '31', '莫力达瓦达斡尔族自治旗');
INSERT INTO `county` VALUES ('395', '31', '鄂伦春自治旗');
INSERT INTO `county` VALUES ('396', '31', '鄂温克族自治旗');
INSERT INTO `county` VALUES ('397', '31', '陈巴尔虎旗');
INSERT INTO `county` VALUES ('398', '31', '新巴尔虎左旗');
INSERT INTO `county` VALUES ('399', '31', '新巴尔虎右旗');
INSERT INTO `county` VALUES ('400', '31', '满洲里市');
INSERT INTO `county` VALUES ('401', '31', '牙克石市');
INSERT INTO `county` VALUES ('402', '31', '扎兰屯市');
INSERT INTO `county` VALUES ('403', '31', '额尔古纳市');
INSERT INTO `county` VALUES ('404', '31', '根河市');
INSERT INTO `county` VALUES ('405', '32', '临河区');
INSERT INTO `county` VALUES ('406', '32', '五原县');
INSERT INTO `county` VALUES ('407', '32', '磴口县');
INSERT INTO `county` VALUES ('408', '32', '乌拉特前旗');
INSERT INTO `county` VALUES ('409', '32', '乌拉特中旗');
INSERT INTO `county` VALUES ('410', '32', '乌拉特后旗');
INSERT INTO `county` VALUES ('411', '32', '杭锦后旗');
INSERT INTO `county` VALUES ('412', '33', '集宁区');
INSERT INTO `county` VALUES ('413', '33', '卓资县');
INSERT INTO `county` VALUES ('414', '33', '化德县');
INSERT INTO `county` VALUES ('415', '33', '商都县');
INSERT INTO `county` VALUES ('416', '33', '兴和县');
INSERT INTO `county` VALUES ('417', '33', '凉城县');
INSERT INTO `county` VALUES ('418', '33', '察哈尔右翼前旗');
INSERT INTO `county` VALUES ('419', '33', '察哈尔右翼中旗');
INSERT INTO `county` VALUES ('420', '33', '察哈尔右翼后旗');
INSERT INTO `county` VALUES ('421', '33', '四子王旗');
INSERT INTO `county` VALUES ('422', '33', '丰镇市');
INSERT INTO `county` VALUES ('423', '34', '乌兰浩特市');
INSERT INTO `county` VALUES ('424', '34', '阿尔山市');
INSERT INTO `county` VALUES ('425', '34', '科尔沁右翼前旗');
INSERT INTO `county` VALUES ('426', '34', '科尔沁右翼中旗');
INSERT INTO `county` VALUES ('427', '34', '扎赉特旗');
INSERT INTO `county` VALUES ('428', '34', '突泉县');
INSERT INTO `county` VALUES ('429', '35', '二连浩特市');
INSERT INTO `county` VALUES ('430', '35', '锡林浩特市');
INSERT INTO `county` VALUES ('431', '35', '阿巴嘎旗');
INSERT INTO `county` VALUES ('432', '35', '苏尼特左旗');
INSERT INTO `county` VALUES ('433', '35', '苏尼特右旗');
INSERT INTO `county` VALUES ('434', '35', '东乌珠穆沁旗');
INSERT INTO `county` VALUES ('435', '35', '西乌珠穆沁旗');
INSERT INTO `county` VALUES ('436', '35', '太仆寺旗');
INSERT INTO `county` VALUES ('437', '35', '镶黄旗');
INSERT INTO `county` VALUES ('438', '35', '正镶白旗');
INSERT INTO `county` VALUES ('439', '35', '正蓝旗');
INSERT INTO `county` VALUES ('440', '35', '多伦县');
INSERT INTO `county` VALUES ('441', '36', '阿拉善左旗');
INSERT INTO `county` VALUES ('442', '36', '阿拉善右旗');
INSERT INTO `county` VALUES ('443', '36', '额济纳旗');
INSERT INTO `county` VALUES ('444', '37', '和平区');
INSERT INTO `county` VALUES ('445', '37', '沈河区');
INSERT INTO `county` VALUES ('446', '37', '大东区');
INSERT INTO `county` VALUES ('447', '37', '皇姑区');
INSERT INTO `county` VALUES ('448', '37', '铁西区');
INSERT INTO `county` VALUES ('449', '37', '苏家屯区');
INSERT INTO `county` VALUES ('450', '37', '东陵区');
INSERT INTO `county` VALUES ('451', '37', '沈北新区');
INSERT INTO `county` VALUES ('452', '37', '于洪区');
INSERT INTO `county` VALUES ('453', '37', '辽中县');
INSERT INTO `county` VALUES ('454', '37', '康平县');
INSERT INTO `county` VALUES ('455', '37', '法库县');
INSERT INTO `county` VALUES ('456', '37', '新民市');
INSERT INTO `county` VALUES ('457', '37', '经济技术开发区');
INSERT INTO `county` VALUES ('458', '37', '浑南新区');
INSERT INTO `county` VALUES ('459', '37', '新城子经济技术开发区');
INSERT INTO `county` VALUES ('460', '38', '中山区');
INSERT INTO `county` VALUES ('461', '38', '西岗区');
INSERT INTO `county` VALUES ('462', '38', '沙河口区');
INSERT INTO `county` VALUES ('463', '38', '甘井子区');
INSERT INTO `county` VALUES ('464', '38', '旅顺口区');
INSERT INTO `county` VALUES ('465', '38', '金州区');
INSERT INTO `county` VALUES ('466', '38', '长海县');
INSERT INTO `county` VALUES ('467', '38', '瓦房店市');
INSERT INTO `county` VALUES ('468', '38', '普兰店市');
INSERT INTO `county` VALUES ('469', '38', '庄河市');
INSERT INTO `county` VALUES ('470', '38', '开发区');
INSERT INTO `county` VALUES ('471', '38', '保税区');
INSERT INTO `county` VALUES ('472', '39', '铁东区');
INSERT INTO `county` VALUES ('473', '39', '铁西区');
INSERT INTO `county` VALUES ('474', '39', '立山区');
INSERT INTO `county` VALUES ('475', '39', '千山区');
INSERT INTO `county` VALUES ('476', '39', '台安县');
INSERT INTO `county` VALUES ('477', '39', '岫岩满族自治县');
INSERT INTO `county` VALUES ('478', '39', '海城市');
INSERT INTO `county` VALUES ('479', '40', '新抚区');
INSERT INTO `county` VALUES ('480', '40', '东洲区');
INSERT INTO `county` VALUES ('481', '40', '望花区');
INSERT INTO `county` VALUES ('482', '40', '顺城区');
INSERT INTO `county` VALUES ('483', '40', '抚顺县');
INSERT INTO `county` VALUES ('484', '40', '新宾满族自治县');
INSERT INTO `county` VALUES ('485', '40', '清原满族自治县');
INSERT INTO `county` VALUES ('486', '41', '平山区');
INSERT INTO `county` VALUES ('487', '41', '明山区');
INSERT INTO `county` VALUES ('488', '41', '溪湖区');
INSERT INTO `county` VALUES ('489', '41', '南芬区');
INSERT INTO `county` VALUES ('490', '41', '本溪满族自治县');
INSERT INTO `county` VALUES ('491', '41', '桓仁满族自治县');
INSERT INTO `county` VALUES ('492', '42', '元宝区');
INSERT INTO `county` VALUES ('493', '42', '振兴区');
INSERT INTO `county` VALUES ('494', '42', '振安区');
INSERT INTO `county` VALUES ('495', '42', '宽甸满族自治县');
INSERT INTO `county` VALUES ('496', '42', '东港市');
INSERT INTO `county` VALUES ('497', '42', '凤城市');
INSERT INTO `county` VALUES ('498', '43', '古塔区');
INSERT INTO `county` VALUES ('499', '43', '凌河区');
INSERT INTO `county` VALUES ('500', '43', '太和区');
INSERT INTO `county` VALUES ('501', '43', '黑山县');
INSERT INTO `county` VALUES ('502', '43', '义县');
INSERT INTO `county` VALUES ('503', '43', '凌海市');
INSERT INTO `county` VALUES ('504', '43', '北宁市');
INSERT INTO `county` VALUES ('505', '43', '松山新区');
INSERT INTO `county` VALUES ('506', '43', '经济技术开发区');
INSERT INTO `county` VALUES ('507', '44', '站前区');
INSERT INTO `county` VALUES ('508', '44', '西市区');
INSERT INTO `county` VALUES ('509', '44', '鲅鱼圈区');
INSERT INTO `county` VALUES ('510', '44', '老边区');
INSERT INTO `county` VALUES ('511', '44', '盖州市');
INSERT INTO `county` VALUES ('512', '44', '大石桥市');
INSERT INTO `county` VALUES ('513', '45', '海州区');
INSERT INTO `county` VALUES ('514', '45', '新邱区');
INSERT INTO `county` VALUES ('515', '45', '太平区');
INSERT INTO `county` VALUES ('516', '45', '清河门区');
INSERT INTO `county` VALUES ('517', '45', '细河区');
INSERT INTO `county` VALUES ('518', '45', '阜新蒙古族自治县');
INSERT INTO `county` VALUES ('519', '45', '彰武县');
INSERT INTO `county` VALUES ('520', '46', '白塔区');
INSERT INTO `county` VALUES ('521', '46', '文圣区');
INSERT INTO `county` VALUES ('522', '46', '宏伟区');
INSERT INTO `county` VALUES ('523', '46', '弓长岭区');
INSERT INTO `county` VALUES ('524', '46', '太子河区');
INSERT INTO `county` VALUES ('525', '46', '辽阳县');
INSERT INTO `county` VALUES ('526', '46', '灯塔市');
INSERT INTO `county` VALUES ('527', '47', '双台子区');
INSERT INTO `county` VALUES ('528', '47', '兴隆台区');
INSERT INTO `county` VALUES ('529', '47', '大洼县');
INSERT INTO `county` VALUES ('530', '47', '盘山县');
INSERT INTO `county` VALUES ('531', '48', '银州区');
INSERT INTO `county` VALUES ('532', '48', '清河区');
INSERT INTO `county` VALUES ('533', '48', '铁岭县');
INSERT INTO `county` VALUES ('534', '48', '西丰县');
INSERT INTO `county` VALUES ('535', '48', '昌图县');
INSERT INTO `county` VALUES ('536', '48', '调兵山市');
INSERT INTO `county` VALUES ('537', '48', '开原市');
INSERT INTO `county` VALUES ('538', '49', '双塔区');
INSERT INTO `county` VALUES ('539', '49', '龙城区');
INSERT INTO `county` VALUES ('540', '49', '朝阳县');
INSERT INTO `county` VALUES ('541', '49', '建平县');
INSERT INTO `county` VALUES ('542', '49', '喀喇沁左翼蒙古族自治县');
INSERT INTO `county` VALUES ('543', '49', '北票市');
INSERT INTO `county` VALUES ('544', '49', '凌源市');
INSERT INTO `county` VALUES ('545', '50', '连山区');
INSERT INTO `county` VALUES ('546', '50', '龙港区');
INSERT INTO `county` VALUES ('547', '50', '南票区');
INSERT INTO `county` VALUES ('548', '50', '绥中县');
INSERT INTO `county` VALUES ('549', '50', '建昌县');
INSERT INTO `county` VALUES ('550', '50', '兴城市');
INSERT INTO `county` VALUES ('551', '51', '南关区');
INSERT INTO `county` VALUES ('552', '51', '宽城区');
INSERT INTO `county` VALUES ('553', '51', '朝阳区');
INSERT INTO `county` VALUES ('554', '51', '二道区');
INSERT INTO `county` VALUES ('555', '51', '绿园区');
INSERT INTO `county` VALUES ('556', '51', '双阳区');
INSERT INTO `county` VALUES ('557', '51', '农安县');
INSERT INTO `county` VALUES ('558', '51', '九台市');
INSERT INTO `county` VALUES ('559', '51', '榆树市');
INSERT INTO `county` VALUES ('560', '51', '德惠市');
INSERT INTO `county` VALUES ('561', '51', '净月经济开发区');
INSERT INTO `county` VALUES ('562', '51', '高新技术产业开发区');
INSERT INTO `county` VALUES ('563', '51', '经济技术开发区');
INSERT INTO `county` VALUES ('564', '52', '昌邑区');
INSERT INTO `county` VALUES ('565', '52', '龙潭区');
INSERT INTO `county` VALUES ('566', '52', '船营区');
INSERT INTO `county` VALUES ('567', '52', '丰满区');
INSERT INTO `county` VALUES ('568', '52', '永吉县');
INSERT INTO `county` VALUES ('569', '52', '蛟河市');
INSERT INTO `county` VALUES ('570', '52', '桦甸市');
INSERT INTO `county` VALUES ('571', '52', '舒兰市');
INSERT INTO `county` VALUES ('572', '52', '磐石市');
INSERT INTO `county` VALUES ('573', '53', '铁西区');
INSERT INTO `county` VALUES ('574', '53', '铁东区');
INSERT INTO `county` VALUES ('575', '53', '梨树县');
INSERT INTO `county` VALUES ('576', '53', '伊通满族自治县');
INSERT INTO `county` VALUES ('577', '53', '公主岭市');
INSERT INTO `county` VALUES ('578', '53', '双辽市');
INSERT INTO `county` VALUES ('579', '54', '龙山区');
INSERT INTO `county` VALUES ('580', '54', '西安区');
INSERT INTO `county` VALUES ('581', '54', '东丰县');
INSERT INTO `county` VALUES ('582', '54', '东辽县');
INSERT INTO `county` VALUES ('583', '55', '东昌区');
INSERT INTO `county` VALUES ('584', '55', '二道江区');
INSERT INTO `county` VALUES ('585', '55', '通化县');
INSERT INTO `county` VALUES ('586', '55', '辉南县');
INSERT INTO `county` VALUES ('587', '55', '柳河县');
INSERT INTO `county` VALUES ('588', '55', '梅河口市');
INSERT INTO `county` VALUES ('589', '55', '集安市');
INSERT INTO `county` VALUES ('590', '56', '八道江区');
INSERT INTO `county` VALUES ('591', '56', '抚松县');
INSERT INTO `county` VALUES ('592', '56', '靖宇县');
INSERT INTO `county` VALUES ('593', '56', '长白朝鲜族自治县');
INSERT INTO `county` VALUES ('594', '56', '江源县');
INSERT INTO `county` VALUES ('595', '56', '临江市');
INSERT INTO `county` VALUES ('596', '57', '宁江区');
INSERT INTO `county` VALUES ('597', '57', '前郭尔罗斯蒙古族自治县');
INSERT INTO `county` VALUES ('598', '57', '长岭县');
INSERT INTO `county` VALUES ('599', '57', '乾安县');
INSERT INTO `county` VALUES ('600', '57', '扶余县');
INSERT INTO `county` VALUES ('601', '58', '洮北区');
INSERT INTO `county` VALUES ('602', '58', '镇赉县');
INSERT INTO `county` VALUES ('603', '58', '通榆县');
INSERT INTO `county` VALUES ('604', '58', '洮南市');
INSERT INTO `county` VALUES ('605', '58', '大安市');
INSERT INTO `county` VALUES ('606', '59', '延吉市');
INSERT INTO `county` VALUES ('607', '59', '图们市');
INSERT INTO `county` VALUES ('608', '59', '敦化市');
INSERT INTO `county` VALUES ('609', '59', '珲春市');
INSERT INTO `county` VALUES ('610', '59', '龙井市');
INSERT INTO `county` VALUES ('611', '59', '和龙市');
INSERT INTO `county` VALUES ('612', '59', '汪清县');
INSERT INTO `county` VALUES ('613', '59', '安图县');
INSERT INTO `county` VALUES ('614', '60', '道里区');
INSERT INTO `county` VALUES ('615', '60', '南岗区');
INSERT INTO `county` VALUES ('616', '60', '道外区');
INSERT INTO `county` VALUES ('617', '60', '香坊区');
INSERT INTO `county` VALUES ('618', '60', '动力区');
INSERT INTO `county` VALUES ('619', '60', '平房区');
INSERT INTO `county` VALUES ('620', '60', '松北区');
INSERT INTO `county` VALUES ('621', '60', '呼兰区');
INSERT INTO `county` VALUES ('622', '60', '依兰县');
INSERT INTO `county` VALUES ('623', '60', '方正县');
INSERT INTO `county` VALUES ('624', '60', '宾县');
INSERT INTO `county` VALUES ('625', '60', '巴彦县');
INSERT INTO `county` VALUES ('626', '60', '木兰县');
INSERT INTO `county` VALUES ('627', '60', '通河县');
INSERT INTO `county` VALUES ('628', '60', '延寿县');
INSERT INTO `county` VALUES ('629', '60', '阿城市');
INSERT INTO `county` VALUES ('630', '60', '双城市');
INSERT INTO `county` VALUES ('631', '60', '尚志市');
INSERT INTO `county` VALUES ('632', '60', '五常市');
INSERT INTO `county` VALUES ('633', '61', '龙沙区');
INSERT INTO `county` VALUES ('634', '61', '建华区');
INSERT INTO `county` VALUES ('635', '61', '铁锋区');
INSERT INTO `county` VALUES ('636', '61', '昂昂溪区');
INSERT INTO `county` VALUES ('637', '61', '富拉尔基区');
INSERT INTO `county` VALUES ('638', '61', '碾子山区');
INSERT INTO `county` VALUES ('639', '61', '梅里斯达斡尔族区');
INSERT INTO `county` VALUES ('640', '61', '龙江县');
INSERT INTO `county` VALUES ('641', '61', '依安县');
INSERT INTO `county` VALUES ('642', '61', '泰来县');
INSERT INTO `county` VALUES ('643', '61', '甘南县');
INSERT INTO `county` VALUES ('644', '61', '富裕县');
INSERT INTO `county` VALUES ('645', '61', '克山县');
INSERT INTO `county` VALUES ('646', '61', '克东县');
INSERT INTO `county` VALUES ('647', '61', '拜泉县');
INSERT INTO `county` VALUES ('648', '61', '讷河市');
INSERT INTO `county` VALUES ('649', '62', '鸡冠区');
INSERT INTO `county` VALUES ('650', '62', '恒山区');
INSERT INTO `county` VALUES ('651', '62', '滴道区');
INSERT INTO `county` VALUES ('652', '62', '梨树区');
INSERT INTO `county` VALUES ('653', '62', '城子河区');
INSERT INTO `county` VALUES ('654', '62', '麻山区');
INSERT INTO `county` VALUES ('655', '62', '鸡东县');
INSERT INTO `county` VALUES ('656', '62', '虎林市');
INSERT INTO `county` VALUES ('657', '62', '密山市');
INSERT INTO `county` VALUES ('658', '63', '向阳区');
INSERT INTO `county` VALUES ('659', '63', '工农区');
INSERT INTO `county` VALUES ('660', '63', '南山区');
INSERT INTO `county` VALUES ('661', '63', '兴安区');
INSERT INTO `county` VALUES ('662', '63', '东山区');
INSERT INTO `county` VALUES ('663', '63', '兴山区');
INSERT INTO `county` VALUES ('664', '63', '萝北县');
INSERT INTO `county` VALUES ('665', '63', '绥滨县');
INSERT INTO `county` VALUES ('666', '64', '尖山区');
INSERT INTO `county` VALUES ('667', '64', '岭东区');
INSERT INTO `county` VALUES ('668', '64', '四方台区');
INSERT INTO `county` VALUES ('669', '64', '宝山区');
INSERT INTO `county` VALUES ('670', '64', '集贤县');
INSERT INTO `county` VALUES ('671', '64', '友谊县');
INSERT INTO `county` VALUES ('672', '64', '宝清县');
INSERT INTO `county` VALUES ('673', '64', '饶河县');
INSERT INTO `county` VALUES ('674', '65', '萨尔图区');
INSERT INTO `county` VALUES ('675', '65', '龙凤区');
INSERT INTO `county` VALUES ('676', '65', '让胡路区');
INSERT INTO `county` VALUES ('677', '65', '红岗区');
INSERT INTO `county` VALUES ('678', '65', '大同区');
INSERT INTO `county` VALUES ('679', '65', '肇州县');
INSERT INTO `county` VALUES ('680', '65', '肇源县');
INSERT INTO `county` VALUES ('681', '65', '林甸县');
INSERT INTO `county` VALUES ('682', '65', '杜尔伯特蒙古族自治县');
INSERT INTO `county` VALUES ('683', '66', '伊春区');
INSERT INTO `county` VALUES ('684', '66', '南岔区');
INSERT INTO `county` VALUES ('685', '66', '友好区');
INSERT INTO `county` VALUES ('686', '66', '西林区');
INSERT INTO `county` VALUES ('687', '66', '翠峦区');
INSERT INTO `county` VALUES ('688', '66', '新青区');
INSERT INTO `county` VALUES ('689', '66', '美溪区');
INSERT INTO `county` VALUES ('690', '66', '金山屯区');
INSERT INTO `county` VALUES ('691', '66', '五营区');
INSERT INTO `county` VALUES ('692', '66', '乌马河区');
INSERT INTO `county` VALUES ('693', '66', '汤旺河区');
INSERT INTO `county` VALUES ('694', '66', '带岭区');
INSERT INTO `county` VALUES ('695', '66', '乌伊岭区');
INSERT INTO `county` VALUES ('696', '66', '红星区');
INSERT INTO `county` VALUES ('697', '66', '上甘岭区');
INSERT INTO `county` VALUES ('698', '66', '嘉荫县');
INSERT INTO `county` VALUES ('699', '66', '铁力市');
INSERT INTO `county` VALUES ('700', '67', '向阳区');
INSERT INTO `county` VALUES ('701', '67', '前进区');
INSERT INTO `county` VALUES ('702', '67', '东风区');
INSERT INTO `county` VALUES ('703', '67', '郊区');
INSERT INTO `county` VALUES ('704', '67', '桦南县');
INSERT INTO `county` VALUES ('705', '67', '桦川县');
INSERT INTO `county` VALUES ('706', '67', '汤原县');
INSERT INTO `county` VALUES ('707', '67', '抚远县');
INSERT INTO `county` VALUES ('708', '67', '同江市');
INSERT INTO `county` VALUES ('709', '67', '富锦市');
INSERT INTO `county` VALUES ('710', '68', '新兴区');
INSERT INTO `county` VALUES ('711', '68', '桃山区');
INSERT INTO `county` VALUES ('712', '68', '茄子河区');
INSERT INTO `county` VALUES ('713', '68', '勃利县');
INSERT INTO `county` VALUES ('714', '69', '东安区');
INSERT INTO `county` VALUES ('715', '69', '爱民区');
INSERT INTO `county` VALUES ('716', '69', '阳明区');
INSERT INTO `county` VALUES ('717', '69', '西安区');
INSERT INTO `county` VALUES ('718', '69', '东宁县');
INSERT INTO `county` VALUES ('719', '69', '林口县');
INSERT INTO `county` VALUES ('720', '69', '绥芬河市');
INSERT INTO `county` VALUES ('721', '69', '海林市');
INSERT INTO `county` VALUES ('722', '69', '宁安市');
INSERT INTO `county` VALUES ('723', '69', '穆棱市');
INSERT INTO `county` VALUES ('724', '70', '爱辉区');
INSERT INTO `county` VALUES ('725', '70', '嫩江县');
INSERT INTO `county` VALUES ('726', '70', '逊克县');
INSERT INTO `county` VALUES ('727', '70', '孙吴县');
INSERT INTO `county` VALUES ('728', '70', '北安市');
INSERT INTO `county` VALUES ('729', '70', '五大连池市');
INSERT INTO `county` VALUES ('730', '71', '北林区');
INSERT INTO `county` VALUES ('731', '71', '望奎县');
INSERT INTO `county` VALUES ('732', '71', '兰西县');
INSERT INTO `county` VALUES ('733', '71', '青冈县');
INSERT INTO `county` VALUES ('734', '71', '庆安县');
INSERT INTO `county` VALUES ('735', '71', '明水县');
INSERT INTO `county` VALUES ('736', '71', '绥棱县');
INSERT INTO `county` VALUES ('737', '71', '安达市');
INSERT INTO `county` VALUES ('738', '71', '肇东市');
INSERT INTO `county` VALUES ('739', '71', '海伦市');
INSERT INTO `county` VALUES ('740', '72', '呼玛县');
INSERT INTO `county` VALUES ('741', '72', '塔河县');
INSERT INTO `county` VALUES ('742', '72', '漠河县');
INSERT INTO `county` VALUES ('743', '72', '加格达奇区');
INSERT INTO `county` VALUES ('744', '72', '松岭区');
INSERT INTO `county` VALUES ('745', '72', '新林区');
INSERT INTO `county` VALUES ('746', '72', '呼中区');
INSERT INTO `county` VALUES ('747', '73', '黄浦区');
INSERT INTO `county` VALUES ('748', '73', '卢湾区');
INSERT INTO `county` VALUES ('749', '73', '徐汇区');
INSERT INTO `county` VALUES ('750', '73', '长宁区');
INSERT INTO `county` VALUES ('751', '73', '静安区');
INSERT INTO `county` VALUES ('752', '73', '普陀区');
INSERT INTO `county` VALUES ('753', '73', '闸北区');
INSERT INTO `county` VALUES ('754', '73', '虹口区');
INSERT INTO `county` VALUES ('755', '73', '杨浦区');
INSERT INTO `county` VALUES ('756', '73', '闵行区');
INSERT INTO `county` VALUES ('757', '73', '宝山区');
INSERT INTO `county` VALUES ('758', '73', '嘉定区');
INSERT INTO `county` VALUES ('759', '73', '浦东新区');
INSERT INTO `county` VALUES ('760', '73', '金山区');
INSERT INTO `county` VALUES ('761', '73', '松江区');
INSERT INTO `county` VALUES ('762', '73', '青浦区');
INSERT INTO `county` VALUES ('763', '73', '南汇区');
INSERT INTO `county` VALUES ('764', '73', '奉贤区');
INSERT INTO `county` VALUES ('765', '73', '崇明县');
INSERT INTO `county` VALUES ('766', '74', '玄武区');
INSERT INTO `county` VALUES ('767', '74', '白下区');
INSERT INTO `county` VALUES ('768', '74', '秦淮区');
INSERT INTO `county` VALUES ('769', '74', '建邺区');
INSERT INTO `county` VALUES ('770', '74', '鼓楼区');
INSERT INTO `county` VALUES ('771', '74', '下关区');
INSERT INTO `county` VALUES ('772', '74', '浦口区');
INSERT INTO `county` VALUES ('773', '74', '栖霞区');
INSERT INTO `county` VALUES ('774', '74', '雨花台区');
INSERT INTO `county` VALUES ('775', '74', '江宁区');
INSERT INTO `county` VALUES ('776', '74', '六合区');
INSERT INTO `county` VALUES ('777', '74', '溧水县');
INSERT INTO `county` VALUES ('778', '74', '高淳县');
INSERT INTO `county` VALUES ('779', '75', '崇安区');
INSERT INTO `county` VALUES ('780', '75', '南长区');
INSERT INTO `county` VALUES ('781', '75', '北塘区');
INSERT INTO `county` VALUES ('782', '75', '锡山区');
INSERT INTO `county` VALUES ('783', '75', '惠山区');
INSERT INTO `county` VALUES ('784', '75', '滨湖区');
INSERT INTO `county` VALUES ('785', '75', '江阴市');
INSERT INTO `county` VALUES ('786', '75', '宜兴市');
INSERT INTO `county` VALUES ('787', '75', '新区');
INSERT INTO `county` VALUES ('788', '76', '云龙区');
INSERT INTO `county` VALUES ('789', '76', '鼓楼区');
INSERT INTO `county` VALUES ('790', '76', '九里区');
INSERT INTO `county` VALUES ('791', '76', '泉山区');
INSERT INTO `county` VALUES ('792', '76', '铜山县');
INSERT INTO `county` VALUES ('793', '76', '贾汪区');
INSERT INTO `county` VALUES ('794', '76', '丰县');
INSERT INTO `county` VALUES ('795', '76', '沛县');
INSERT INTO `county` VALUES ('796', '76', '睢宁县');
INSERT INTO `county` VALUES ('797', '76', '新沂市');
INSERT INTO `county` VALUES ('798', '76', '邳州市');
INSERT INTO `county` VALUES ('799', '77', '天宁区');
INSERT INTO `county` VALUES ('800', '77', '钟楼区');
INSERT INTO `county` VALUES ('801', '77', '戚墅堰区');
INSERT INTO `county` VALUES ('802', '77', '新北区');
INSERT INTO `county` VALUES ('803', '77', '武进区');
INSERT INTO `county` VALUES ('804', '77', '溧阳市');
INSERT INTO `county` VALUES ('805', '77', '金坛市');
INSERT INTO `county` VALUES ('806', '78', '沧浪区');
INSERT INTO `county` VALUES ('807', '78', '平江区');
INSERT INTO `county` VALUES ('808', '78', '金阊区');
INSERT INTO `county` VALUES ('809', '78', '虎丘区');
INSERT INTO `county` VALUES ('810', '78', '吴中区');
INSERT INTO `county` VALUES ('811', '78', '相城区');
INSERT INTO `county` VALUES ('812', '78', '常熟市');
INSERT INTO `county` VALUES ('813', '78', '张家港市');
INSERT INTO `county` VALUES ('814', '78', '昆山市');
INSERT INTO `county` VALUES ('815', '78', '吴江市');
INSERT INTO `county` VALUES ('816', '78', '太仓市');
INSERT INTO `county` VALUES ('817', '78', '工业园区');
INSERT INTO `county` VALUES ('818', '78', '高新区');
INSERT INTO `county` VALUES ('819', '79', '崇川区');
INSERT INTO `county` VALUES ('820', '79', '港闸区');
INSERT INTO `county` VALUES ('821', '79', '海安县');
INSERT INTO `county` VALUES ('822', '79', '如东县');
INSERT INTO `county` VALUES ('823', '79', '启东市');
INSERT INTO `county` VALUES ('824', '79', '如皋市');
INSERT INTO `county` VALUES ('825', '79', '通州市');
INSERT INTO `county` VALUES ('826', '79', '海门市');
INSERT INTO `county` VALUES ('827', '79', '经济技术开发区');
INSERT INTO `county` VALUES ('828', '80', '连云区');
INSERT INTO `county` VALUES ('829', '80', '新浦区');
INSERT INTO `county` VALUES ('830', '80', '海州区');
INSERT INTO `county` VALUES ('831', '80', '赣榆县');
INSERT INTO `county` VALUES ('832', '80', '东海县');
INSERT INTO `county` VALUES ('833', '80', '灌云县');
INSERT INTO `county` VALUES ('834', '80', '灌南县');
INSERT INTO `county` VALUES ('835', '81', '清河区');
INSERT INTO `county` VALUES ('836', '81', '楚州区');
INSERT INTO `county` VALUES ('837', '81', '淮阴区');
INSERT INTO `county` VALUES ('838', '81', '清浦区');
INSERT INTO `county` VALUES ('839', '81', '涟水县');
INSERT INTO `county` VALUES ('840', '81', '洪泽县');
INSERT INTO `county` VALUES ('841', '81', '盱眙县');
INSERT INTO `county` VALUES ('842', '81', '金湖县');
INSERT INTO `county` VALUES ('843', '82', '亭湖区');
INSERT INTO `county` VALUES ('844', '82', '盐都区');
INSERT INTO `county` VALUES ('845', '82', '响水县');
INSERT INTO `county` VALUES ('846', '82', '滨海县');
INSERT INTO `county` VALUES ('847', '82', '阜宁县');
INSERT INTO `county` VALUES ('848', '82', '射阳县');
INSERT INTO `county` VALUES ('849', '82', '建湖县');
INSERT INTO `county` VALUES ('850', '82', '东台市');
INSERT INTO `county` VALUES ('851', '82', '大丰市');
INSERT INTO `county` VALUES ('852', '83', '广陵区');
INSERT INTO `county` VALUES ('853', '83', '邗江区');
INSERT INTO `county` VALUES ('854', '83', '宝应县');
INSERT INTO `county` VALUES ('855', '83', '仪征市');
INSERT INTO `county` VALUES ('856', '83', '高邮市');
INSERT INTO `county` VALUES ('857', '83', '江都市');
INSERT INTO `county` VALUES ('858', '83', '维扬区');
INSERT INTO `county` VALUES ('859', '83', '经济开发区');
INSERT INTO `county` VALUES ('860', '84', '京口区');
INSERT INTO `county` VALUES ('861', '84', '润州区');
INSERT INTO `county` VALUES ('862', '84', '丹徒区');
INSERT INTO `county` VALUES ('863', '84', '丹阳市');
INSERT INTO `county` VALUES ('864', '84', '扬中市');
INSERT INTO `county` VALUES ('865', '84', '句容市');
INSERT INTO `county` VALUES ('866', '84', '新区');
INSERT INTO `county` VALUES ('867', '85', '海陵区');
INSERT INTO `county` VALUES ('868', '85', '高港区');
INSERT INTO `county` VALUES ('869', '85', '兴化市');
INSERT INTO `county` VALUES ('870', '85', '靖江市');
INSERT INTO `county` VALUES ('871', '85', '泰兴市');
INSERT INTO `county` VALUES ('872', '85', '姜堰市');
INSERT INTO `county` VALUES ('873', '86', '宿城区');
INSERT INTO `county` VALUES ('874', '86', '宿豫区');
INSERT INTO `county` VALUES ('875', '86', '沭阳县');
INSERT INTO `county` VALUES ('876', '86', '泗阳县');
INSERT INTO `county` VALUES ('877', '86', '泗洪县');
INSERT INTO `county` VALUES ('878', '87', '上城区');
INSERT INTO `county` VALUES ('879', '87', '下城区');
INSERT INTO `county` VALUES ('880', '87', '江干区');
INSERT INTO `county` VALUES ('881', '87', '拱墅区');
INSERT INTO `county` VALUES ('882', '87', '西湖区');
INSERT INTO `county` VALUES ('883', '87', '滨江区');
INSERT INTO `county` VALUES ('884', '87', '萧山区');
INSERT INTO `county` VALUES ('885', '87', '余杭区');
INSERT INTO `county` VALUES ('886', '87', '桐庐县');
INSERT INTO `county` VALUES ('887', '87', '淳安县');
INSERT INTO `county` VALUES ('888', '87', '建德市');
INSERT INTO `county` VALUES ('889', '87', '富阳市');
INSERT INTO `county` VALUES ('890', '87', '临安市');
INSERT INTO `county` VALUES ('891', '88', '海曙区');
INSERT INTO `county` VALUES ('892', '88', '江东区');
INSERT INTO `county` VALUES ('893', '88', '江北区');
INSERT INTO `county` VALUES ('894', '88', '北仑区');
INSERT INTO `county` VALUES ('895', '88', '镇海区');
INSERT INTO `county` VALUES ('896', '88', '鄞州区');
INSERT INTO `county` VALUES ('897', '88', '象山县');
INSERT INTO `county` VALUES ('898', '88', '宁海县');
INSERT INTO `county` VALUES ('899', '88', '余姚市');
INSERT INTO `county` VALUES ('900', '88', '慈溪市');
INSERT INTO `county` VALUES ('901', '88', '奉化市');
INSERT INTO `county` VALUES ('902', '89', '鹿城区');
INSERT INTO `county` VALUES ('903', '89', '龙湾区');
INSERT INTO `county` VALUES ('904', '89', '瓯海区');
INSERT INTO `county` VALUES ('905', '89', '洞头县');
INSERT INTO `county` VALUES ('906', '89', '永嘉县');
INSERT INTO `county` VALUES ('907', '89', '平阳县');
INSERT INTO `county` VALUES ('908', '89', '苍南县');
INSERT INTO `county` VALUES ('909', '89', '文成县');
INSERT INTO `county` VALUES ('910', '89', '泰顺县');
INSERT INTO `county` VALUES ('911', '89', '瑞安市');
INSERT INTO `county` VALUES ('912', '89', '乐清市');
INSERT INTO `county` VALUES ('913', '90', '秀洲区');
INSERT INTO `county` VALUES ('914', '90', '嘉善县');
INSERT INTO `county` VALUES ('915', '90', '海盐县');
INSERT INTO `county` VALUES ('916', '90', '海宁市');
INSERT INTO `county` VALUES ('917', '90', '平湖市');
INSERT INTO `county` VALUES ('918', '90', '桐乡市');
INSERT INTO `county` VALUES ('919', '90', '南湖区');
INSERT INTO `county` VALUES ('920', '91', '吴兴区');
INSERT INTO `county` VALUES ('921', '91', '南浔区');
INSERT INTO `county` VALUES ('922', '91', '德清县');
INSERT INTO `county` VALUES ('923', '91', '长兴县');
INSERT INTO `county` VALUES ('924', '91', '安吉县');
INSERT INTO `county` VALUES ('925', '92', '越城区');
INSERT INTO `county` VALUES ('926', '92', '绍兴县');
INSERT INTO `county` VALUES ('927', '92', '新昌县');
INSERT INTO `county` VALUES ('928', '92', '诸暨市');
INSERT INTO `county` VALUES ('929', '92', '上虞市');
INSERT INTO `county` VALUES ('930', '92', '嵊州市');
INSERT INTO `county` VALUES ('931', '93', '婺城区');
INSERT INTO `county` VALUES ('932', '93', '金东区');
INSERT INTO `county` VALUES ('933', '93', '武义县');
INSERT INTO `county` VALUES ('934', '93', '浦江县');
INSERT INTO `county` VALUES ('935', '93', '磐安县');
INSERT INTO `county` VALUES ('936', '93', '兰溪市');
INSERT INTO `county` VALUES ('937', '93', '义乌市');
INSERT INTO `county` VALUES ('938', '93', '东阳市');
INSERT INTO `county` VALUES ('939', '93', '永康市');
INSERT INTO `county` VALUES ('940', '94', '柯城区');
INSERT INTO `county` VALUES ('941', '94', '衢江区');
INSERT INTO `county` VALUES ('942', '94', '常山县');
INSERT INTO `county` VALUES ('943', '94', '开化县');
INSERT INTO `county` VALUES ('944', '94', '龙游县');
INSERT INTO `county` VALUES ('945', '94', '江山市');
INSERT INTO `county` VALUES ('946', '95', '定海区');
INSERT INTO `county` VALUES ('947', '95', '普陀区');
INSERT INTO `county` VALUES ('948', '95', '岱山县');
INSERT INTO `county` VALUES ('949', '95', '嵊泗县');
INSERT INTO `county` VALUES ('950', '96', '椒江区');
INSERT INTO `county` VALUES ('951', '96', '路桥区');
INSERT INTO `county` VALUES ('952', '96', '黄岩区');
INSERT INTO `county` VALUES ('953', '96', '玉环县');
INSERT INTO `county` VALUES ('954', '96', '三门县');
INSERT INTO `county` VALUES ('955', '96', '天台县');
INSERT INTO `county` VALUES ('956', '96', '仙居县');
INSERT INTO `county` VALUES ('957', '96', '温岭市');
INSERT INTO `county` VALUES ('958', '96', '临海市');
INSERT INTO `county` VALUES ('959', '97', '莲都区');
INSERT INTO `county` VALUES ('960', '97', '青田县');
INSERT INTO `county` VALUES ('961', '97', '缙云县');
INSERT INTO `county` VALUES ('962', '97', '遂昌县');
INSERT INTO `county` VALUES ('963', '97', '松阳县');
INSERT INTO `county` VALUES ('964', '97', '云和县');
INSERT INTO `county` VALUES ('965', '97', '庆元县');
INSERT INTO `county` VALUES ('966', '97', '景宁畲族自治县');
INSERT INTO `county` VALUES ('967', '97', '龙泉市');
INSERT INTO `county` VALUES ('968', '98', '瑶海区');
INSERT INTO `county` VALUES ('969', '98', '庐阳区');
INSERT INTO `county` VALUES ('970', '98', '蜀山区');
INSERT INTO `county` VALUES ('971', '98', '包河区');
INSERT INTO `county` VALUES ('972', '98', '长丰县');
INSERT INTO `county` VALUES ('973', '98', '肥东县');
INSERT INTO `county` VALUES ('974', '98', '肥西县');
INSERT INTO `county` VALUES ('975', '98', '经济技术开发区');
INSERT INTO `county` VALUES ('976', '98', '新站试验区');
INSERT INTO `county` VALUES ('977', '98', '政务文化新区');
INSERT INTO `county` VALUES ('978', '98', '高新技术产业开发区');
INSERT INTO `county` VALUES ('979', '99', '镜湖区');
INSERT INTO `county` VALUES ('980', '99', '鸠江区');
INSERT INTO `county` VALUES ('981', '99', '芜湖县');
INSERT INTO `county` VALUES ('982', '99', '繁昌县');
INSERT INTO `county` VALUES ('983', '99', '南陵县');
INSERT INTO `county` VALUES ('984', '99', '弋江区');
INSERT INTO `county` VALUES ('985', '99', '三山区');
INSERT INTO `county` VALUES ('986', '100', '龙子湖区');
INSERT INTO `county` VALUES ('987', '100', '蚌山区');
INSERT INTO `county` VALUES ('988', '100', '禹会区');
INSERT INTO `county` VALUES ('989', '100', '淮上区');
INSERT INTO `county` VALUES ('990', '100', '怀远县');
INSERT INTO `county` VALUES ('991', '100', '五河县');
INSERT INTO `county` VALUES ('992', '100', '固镇县');
INSERT INTO `county` VALUES ('993', '101', '大通区');
INSERT INTO `county` VALUES ('994', '101', '田家庵区');
INSERT INTO `county` VALUES ('995', '101', '谢家集区');
INSERT INTO `county` VALUES ('996', '101', '八公山区');
INSERT INTO `county` VALUES ('997', '101', '潘集区');
INSERT INTO `county` VALUES ('998', '101', '凤台县');
INSERT INTO `county` VALUES ('999', '102', '雨山区');
INSERT INTO `county` VALUES ('1000', '102', '花山区');
INSERT INTO `county` VALUES ('1001', '102', '金家庄区');
INSERT INTO `county` VALUES ('1002', '102', '当涂县');
INSERT INTO `county` VALUES ('1003', '102', '经济技术开发区');
INSERT INTO `county` VALUES ('1004', '103', '杜集区');
INSERT INTO `county` VALUES ('1005', '103', '相山区');
INSERT INTO `county` VALUES ('1006', '103', '烈山区');
INSERT INTO `county` VALUES ('1007', '103', '濉溪县');
INSERT INTO `county` VALUES ('1008', '104', '铜官山区');
INSERT INTO `county` VALUES ('1009', '104', '狮子山区');
INSERT INTO `county` VALUES ('1010', '104', '郊区');
INSERT INTO `county` VALUES ('1011', '104', '铜陵县');
INSERT INTO `county` VALUES ('1012', '105', '迎江区');
INSERT INTO `county` VALUES ('1013', '105', '大观区');
INSERT INTO `county` VALUES ('1014', '105', '怀宁县');
INSERT INTO `county` VALUES ('1015', '105', '枞阳县');
INSERT INTO `county` VALUES ('1016', '105', '潜山县');
INSERT INTO `county` VALUES ('1017', '105', '太湖县');
INSERT INTO `county` VALUES ('1018', '105', '宿松县');
INSERT INTO `county` VALUES ('1019', '105', '望江县');
INSERT INTO `county` VALUES ('1020', '105', '岳西县');
INSERT INTO `county` VALUES ('1021', '105', '桐城市');
INSERT INTO `county` VALUES ('1022', '105', '宜秀区');
INSERT INTO `county` VALUES ('1023', '106', '屯溪区');
INSERT INTO `county` VALUES ('1024', '106', '黄山区');
INSERT INTO `county` VALUES ('1025', '106', '徽州区');
INSERT INTO `county` VALUES ('1026', '106', '歙县');
INSERT INTO `county` VALUES ('1027', '106', '休宁县');
INSERT INTO `county` VALUES ('1028', '106', '黟县');
INSERT INTO `county` VALUES ('1029', '106', '祁门县');
INSERT INTO `county` VALUES ('1030', '107', '琅琊区');
INSERT INTO `county` VALUES ('1031', '107', '南谯区');
INSERT INTO `county` VALUES ('1032', '107', '来安县');
INSERT INTO `county` VALUES ('1033', '107', '全椒县');
INSERT INTO `county` VALUES ('1034', '107', '定远县');
INSERT INTO `county` VALUES ('1035', '107', '凤阳县');
INSERT INTO `county` VALUES ('1036', '107', '天长市');
INSERT INTO `county` VALUES ('1037', '107', '明光市');
INSERT INTO `county` VALUES ('1038', '108', '颍州区');
INSERT INTO `county` VALUES ('1039', '108', '颍东区');
INSERT INTO `county` VALUES ('1040', '108', '颍泉区');
INSERT INTO `county` VALUES ('1041', '108', '临泉县');
INSERT INTO `county` VALUES ('1042', '108', '太和县');
INSERT INTO `county` VALUES ('1043', '108', '阜南县');
INSERT INTO `county` VALUES ('1044', '108', '颍上县');
INSERT INTO `county` VALUES ('1045', '108', '界首市');
INSERT INTO `county` VALUES ('1046', '108', '经济开发区');
INSERT INTO `county` VALUES ('1047', '109', '埇桥区');
INSERT INTO `county` VALUES ('1048', '109', '砀山县');
INSERT INTO `county` VALUES ('1049', '109', '萧县');
INSERT INTO `county` VALUES ('1050', '109', '灵璧县');
INSERT INTO `county` VALUES ('1051', '109', '泗县');
INSERT INTO `county` VALUES ('1052', '110', '居巢区');
INSERT INTO `county` VALUES ('1053', '110', '庐江县');
INSERT INTO `county` VALUES ('1054', '110', '无为县');
INSERT INTO `county` VALUES ('1055', '110', '含山县');
INSERT INTO `county` VALUES ('1056', '110', '和县');
INSERT INTO `county` VALUES ('1057', '111', '金安区');
INSERT INTO `county` VALUES ('1058', '111', '裕安区');
INSERT INTO `county` VALUES ('1059', '111', '寿县');
INSERT INTO `county` VALUES ('1060', '111', '霍邱县');
INSERT INTO `county` VALUES ('1061', '111', '舒城县');
INSERT INTO `county` VALUES ('1062', '111', '金寨县');
INSERT INTO `county` VALUES ('1063', '111', '霍山县');
INSERT INTO `county` VALUES ('1064', '112', '谯城区');
INSERT INTO `county` VALUES ('1065', '112', '涡阳县');
INSERT INTO `county` VALUES ('1066', '112', '蒙城县');
INSERT INTO `county` VALUES ('1067', '112', '利辛县');
INSERT INTO `county` VALUES ('1068', '113', '贵池区');
INSERT INTO `county` VALUES ('1069', '113', '东至县');
INSERT INTO `county` VALUES ('1070', '113', '石台县');
INSERT INTO `county` VALUES ('1071', '113', '青阳县');
INSERT INTO `county` VALUES ('1072', '114', '宣州区');
INSERT INTO `county` VALUES ('1073', '114', '郎溪县');
INSERT INTO `county` VALUES ('1074', '114', '广德县');
INSERT INTO `county` VALUES ('1075', '114', '泾县');
INSERT INTO `county` VALUES ('1076', '114', '绩溪县');
INSERT INTO `county` VALUES ('1077', '114', '旌德县');
INSERT INTO `county` VALUES ('1078', '114', '宁国市');
INSERT INTO `county` VALUES ('1079', '115', '鼓楼区');
INSERT INTO `county` VALUES ('1080', '115', '台江区');
INSERT INTO `county` VALUES ('1081', '115', '仓山区');
INSERT INTO `county` VALUES ('1082', '115', '马尾区');
INSERT INTO `county` VALUES ('1083', '115', '晋安区');
INSERT INTO `county` VALUES ('1084', '115', '闽侯县');
INSERT INTO `county` VALUES ('1085', '115', '连江县');
INSERT INTO `county` VALUES ('1086', '115', '罗源县');
INSERT INTO `county` VALUES ('1087', '115', '闽清县');
INSERT INTO `county` VALUES ('1088', '115', '永泰县');
INSERT INTO `county` VALUES ('1089', '115', '平潭县');
INSERT INTO `county` VALUES ('1090', '115', '福清市');
INSERT INTO `county` VALUES ('1091', '115', '长乐市');
INSERT INTO `county` VALUES ('1092', '116', '思明区');
INSERT INTO `county` VALUES ('1093', '116', '海沧区');
INSERT INTO `county` VALUES ('1094', '116', '湖里区');
INSERT INTO `county` VALUES ('1095', '116', '集美区');
INSERT INTO `county` VALUES ('1096', '116', '同安区');
INSERT INTO `county` VALUES ('1097', '116', '翔安区');
INSERT INTO `county` VALUES ('1098', '116', '鼓浪屿区');
INSERT INTO `county` VALUES ('1099', '116', '象屿保税区');
INSERT INTO `county` VALUES ('1100', '116', '火炬高新区');
INSERT INTO `county` VALUES ('1101', '117', '城厢区');
INSERT INTO `county` VALUES ('1102', '117', '涵江区');
INSERT INTO `county` VALUES ('1103', '117', '荔城区');
INSERT INTO `county` VALUES ('1104', '117', '秀屿区');
INSERT INTO `county` VALUES ('1105', '117', '仙游县');
INSERT INTO `county` VALUES ('1106', '118', '梅列区');
INSERT INTO `county` VALUES ('1107', '118', '三元区');
INSERT INTO `county` VALUES ('1108', '118', '明溪县');
INSERT INTO `county` VALUES ('1109', '118', '清流县');
INSERT INTO `county` VALUES ('1110', '118', '宁化县');
INSERT INTO `county` VALUES ('1111', '118', '大田县');
INSERT INTO `county` VALUES ('1112', '118', '尤溪县');
INSERT INTO `county` VALUES ('1113', '118', '沙县');
INSERT INTO `county` VALUES ('1114', '118', '将乐县');
INSERT INTO `county` VALUES ('1115', '118', '泰宁县');
INSERT INTO `county` VALUES ('1116', '118', '建宁县');
INSERT INTO `county` VALUES ('1117', '118', '永安市');
INSERT INTO `county` VALUES ('1118', '119', '鲤城区');
INSERT INTO `county` VALUES ('1119', '119', '丰泽区');
INSERT INTO `county` VALUES ('1120', '119', '洛江区');
INSERT INTO `county` VALUES ('1121', '119', '泉港区');
INSERT INTO `county` VALUES ('1122', '119', '惠安县');
INSERT INTO `county` VALUES ('1123', '119', '安溪县');
INSERT INTO `county` VALUES ('1124', '119', '永春县');
INSERT INTO `county` VALUES ('1125', '119', '德化县');
INSERT INTO `county` VALUES ('1126', '119', '金门县');
INSERT INTO `county` VALUES ('1127', '119', '石狮市');
INSERT INTO `county` VALUES ('1128', '119', '晋江市');
INSERT INTO `county` VALUES ('1129', '119', '南安市');
INSERT INTO `county` VALUES ('1130', '119', '经济技术开发区');
INSERT INTO `county` VALUES ('1131', '120', '芗城区');
INSERT INTO `county` VALUES ('1132', '120', '龙文区');
INSERT INTO `county` VALUES ('1133', '120', '云霄县');
INSERT INTO `county` VALUES ('1134', '120', '漳浦县');
INSERT INTO `county` VALUES ('1135', '120', '诏安县');
INSERT INTO `county` VALUES ('1136', '120', '长泰县');
INSERT INTO `county` VALUES ('1137', '120', '东山县');
INSERT INTO `county` VALUES ('1138', '120', '南靖县');
INSERT INTO `county` VALUES ('1139', '120', '平和县');
INSERT INTO `county` VALUES ('1140', '120', '华安县');
INSERT INTO `county` VALUES ('1141', '120', '龙海市');
INSERT INTO `county` VALUES ('1142', '121', '延平区');
INSERT INTO `county` VALUES ('1143', '121', '顺昌县');
INSERT INTO `county` VALUES ('1144', '121', '浦城县');
INSERT INTO `county` VALUES ('1145', '121', '光泽县');
INSERT INTO `county` VALUES ('1146', '121', '松溪县');
INSERT INTO `county` VALUES ('1147', '121', '政和县');
INSERT INTO `county` VALUES ('1148', '121', '邵武市');
INSERT INTO `county` VALUES ('1149', '121', '武夷山市');
INSERT INTO `county` VALUES ('1150', '121', '建瓯市');
INSERT INTO `county` VALUES ('1151', '121', '建阳市');
INSERT INTO `county` VALUES ('1152', '122', '新罗区');
INSERT INTO `county` VALUES ('1153', '122', '长汀县');
INSERT INTO `county` VALUES ('1154', '122', '永定县');
INSERT INTO `county` VALUES ('1155', '122', '上杭县');
INSERT INTO `county` VALUES ('1156', '122', '武平县');
INSERT INTO `county` VALUES ('1157', '122', '连城县');
INSERT INTO `county` VALUES ('1158', '122', '漳平市');
INSERT INTO `county` VALUES ('1159', '123', '蕉城区');
INSERT INTO `county` VALUES ('1160', '123', '霞浦县');
INSERT INTO `county` VALUES ('1161', '123', '古田县');
INSERT INTO `county` VALUES ('1162', '123', '屏南县');
INSERT INTO `county` VALUES ('1163', '123', '寿宁县');
INSERT INTO `county` VALUES ('1164', '123', '周宁县');
INSERT INTO `county` VALUES ('1165', '123', '柘荣县');
INSERT INTO `county` VALUES ('1166', '123', '福安市');
INSERT INTO `county` VALUES ('1167', '123', '福鼎市');
INSERT INTO `county` VALUES ('1168', '124', '东湖区');
INSERT INTO `county` VALUES ('1169', '124', '西湖区');
INSERT INTO `county` VALUES ('1170', '124', '青云谱区');
INSERT INTO `county` VALUES ('1171', '124', '湾里区');
INSERT INTO `county` VALUES ('1172', '124', '青山湖区');
INSERT INTO `county` VALUES ('1173', '124', '南昌县');
INSERT INTO `county` VALUES ('1174', '124', '新建县');
INSERT INTO `county` VALUES ('1175', '124', '安义县');
INSERT INTO `county` VALUES ('1176', '124', '进贤县');
INSERT INTO `county` VALUES ('1177', '124', '经济技术开发区');
INSERT INTO `county` VALUES ('1178', '124', '红谷滩新区');
INSERT INTO `county` VALUES ('1179', '124', '高新技术产业开发区');
INSERT INTO `county` VALUES ('1180', '124', '桑海经济技术开发区');
INSERT INTO `county` VALUES ('1181', '124', '英雄经济开发区');
INSERT INTO `county` VALUES ('1182', '125', '昌江区');
INSERT INTO `county` VALUES ('1183', '125', '珠山区');
INSERT INTO `county` VALUES ('1184', '125', '浮梁县');
INSERT INTO `county` VALUES ('1185', '125', '乐平市');
INSERT INTO `county` VALUES ('1186', '126', '安源区');
INSERT INTO `county` VALUES ('1187', '126', '湘东区');
INSERT INTO `county` VALUES ('1188', '126', '莲花县');
INSERT INTO `county` VALUES ('1189', '126', '上栗县');
INSERT INTO `county` VALUES ('1190', '126', '芦溪县');
INSERT INTO `county` VALUES ('1191', '127', '庐山区');
INSERT INTO `county` VALUES ('1192', '127', '浔阳区');
INSERT INTO `county` VALUES ('1193', '127', '九江县');
INSERT INTO `county` VALUES ('1194', '127', '武宁县');
INSERT INTO `county` VALUES ('1195', '127', '修水县');
INSERT INTO `county` VALUES ('1196', '127', '永修县');
INSERT INTO `county` VALUES ('1197', '127', '德安县');
INSERT INTO `county` VALUES ('1198', '127', '星子县');
INSERT INTO `county` VALUES ('1199', '127', '都昌县');
INSERT INTO `county` VALUES ('1200', '127', '湖口县');
INSERT INTO `county` VALUES ('1201', '127', '彭泽县');
INSERT INTO `county` VALUES ('1202', '127', '瑞昌市');
INSERT INTO `county` VALUES ('1203', '128', '渝水区');
INSERT INTO `county` VALUES ('1204', '128', '分宜县');
INSERT INTO `county` VALUES ('1205', '129', '月湖区');
INSERT INTO `county` VALUES ('1206', '129', '余江县');
INSERT INTO `county` VALUES ('1207', '129', '贵溪市');
INSERT INTO `county` VALUES ('1208', '130', '章贡区');
INSERT INTO `county` VALUES ('1209', '130', '赣县');
INSERT INTO `county` VALUES ('1210', '130', '信丰县');
INSERT INTO `county` VALUES ('1211', '130', '大余县');
INSERT INTO `county` VALUES ('1212', '130', '上犹县');
INSERT INTO `county` VALUES ('1213', '130', '崇义县');
INSERT INTO `county` VALUES ('1214', '130', '安远县');
INSERT INTO `county` VALUES ('1215', '130', '龙南县');
INSERT INTO `county` VALUES ('1216', '130', '定南县');
INSERT INTO `county` VALUES ('1217', '130', '全南县');
INSERT INTO `county` VALUES ('1218', '130', '宁都县');
INSERT INTO `county` VALUES ('1219', '130', '于都县');
INSERT INTO `county` VALUES ('1220', '130', '兴国县');
INSERT INTO `county` VALUES ('1221', '130', '会昌县');
INSERT INTO `county` VALUES ('1222', '130', '寻乌县');
INSERT INTO `county` VALUES ('1223', '130', '石城县');
INSERT INTO `county` VALUES ('1224', '130', '瑞金市');
INSERT INTO `county` VALUES ('1225', '130', '南康市');
INSERT INTO `county` VALUES ('1226', '131', '吉州区');
INSERT INTO `county` VALUES ('1227', '131', '青原区');
INSERT INTO `county` VALUES ('1228', '131', '吉安县');
INSERT INTO `county` VALUES ('1229', '131', '吉水县');
INSERT INTO `county` VALUES ('1230', '131', '峡江县');
INSERT INTO `county` VALUES ('1231', '131', '新干县');
INSERT INTO `county` VALUES ('1232', '131', '永丰县');
INSERT INTO `county` VALUES ('1233', '131', '泰和县');
INSERT INTO `county` VALUES ('1234', '131', '遂川县');
INSERT INTO `county` VALUES ('1235', '131', '万安县');
INSERT INTO `county` VALUES ('1236', '131', '安福县');
INSERT INTO `county` VALUES ('1237', '131', '永新县');
INSERT INTO `county` VALUES ('1238', '131', '井冈山市');
INSERT INTO `county` VALUES ('1239', '132', '袁州区');
INSERT INTO `county` VALUES ('1240', '132', '奉新县');
INSERT INTO `county` VALUES ('1241', '132', '万载县');
INSERT INTO `county` VALUES ('1242', '132', '上高县');
INSERT INTO `county` VALUES ('1243', '132', '宜丰县');
INSERT INTO `county` VALUES ('1244', '132', '靖安县');
INSERT INTO `county` VALUES ('1245', '132', '铜鼓县');
INSERT INTO `county` VALUES ('1246', '132', '丰城市');
INSERT INTO `county` VALUES ('1247', '132', '樟树市');
INSERT INTO `county` VALUES ('1248', '132', '高安市');
INSERT INTO `county` VALUES ('1249', '133', '临川区');
INSERT INTO `county` VALUES ('1250', '133', '南城县');
INSERT INTO `county` VALUES ('1251', '133', '黎川县');
INSERT INTO `county` VALUES ('1252', '133', '南丰县');
INSERT INTO `county` VALUES ('1253', '133', '崇仁县');
INSERT INTO `county` VALUES ('1254', '133', '乐安县');
INSERT INTO `county` VALUES ('1255', '133', '宜黄县');
INSERT INTO `county` VALUES ('1256', '133', '金溪县');
INSERT INTO `county` VALUES ('1257', '133', '资溪县');
INSERT INTO `county` VALUES ('1258', '133', '东乡县');
INSERT INTO `county` VALUES ('1259', '133', '广昌县');
INSERT INTO `county` VALUES ('1260', '134', '信州区');
INSERT INTO `county` VALUES ('1261', '134', '上饶县');
INSERT INTO `county` VALUES ('1262', '134', '广丰县');
INSERT INTO `county` VALUES ('1263', '134', '玉山县');
INSERT INTO `county` VALUES ('1264', '134', '铅山县');
INSERT INTO `county` VALUES ('1265', '134', '横峰县');
INSERT INTO `county` VALUES ('1266', '134', '弋阳县');
INSERT INTO `county` VALUES ('1267', '134', '余干县');
INSERT INTO `county` VALUES ('1268', '134', '鄱阳县');
INSERT INTO `county` VALUES ('1269', '134', '万年县');
INSERT INTO `county` VALUES ('1270', '134', '婺源县');
INSERT INTO `county` VALUES ('1271', '134', '德兴市');
INSERT INTO `county` VALUES ('1272', '135', '历下区');
INSERT INTO `county` VALUES ('1273', '135', '市中区');
INSERT INTO `county` VALUES ('1274', '135', '槐荫区');
INSERT INTO `county` VALUES ('1275', '135', '天桥区');
INSERT INTO `county` VALUES ('1276', '135', '历城区');
INSERT INTO `county` VALUES ('1277', '135', '长清区');
INSERT INTO `county` VALUES ('1278', '135', '平阴县');
INSERT INTO `county` VALUES ('1279', '135', '济阳县');
INSERT INTO `county` VALUES ('1280', '135', '商河县');
INSERT INTO `county` VALUES ('1281', '135', '章丘市');
INSERT INTO `county` VALUES ('1282', '135', '高新区');
INSERT INTO `county` VALUES ('1283', '135', '经济开发区');
INSERT INTO `county` VALUES ('1284', '136', '市南区');
INSERT INTO `county` VALUES ('1285', '136', '市北区');
INSERT INTO `county` VALUES ('1286', '136', '四方区');
INSERT INTO `county` VALUES ('1287', '136', '黄岛区');
INSERT INTO `county` VALUES ('1288', '136', '崂山区');
INSERT INTO `county` VALUES ('1289', '136', '李沧区');
INSERT INTO `county` VALUES ('1290', '136', '城阳区');
INSERT INTO `county` VALUES ('1291', '136', '胶州市');
INSERT INTO `county` VALUES ('1292', '136', '即墨市');
INSERT INTO `county` VALUES ('1293', '136', '平度市');
INSERT INTO `county` VALUES ('1294', '136', '胶南市');
INSERT INTO `county` VALUES ('1295', '136', '莱西市');
INSERT INTO `county` VALUES ('1296', '137', '淄川区');
INSERT INTO `county` VALUES ('1297', '137', '张店区');
INSERT INTO `county` VALUES ('1298', '137', '博山区');
INSERT INTO `county` VALUES ('1299', '137', '临淄区');
INSERT INTO `county` VALUES ('1300', '137', '周村区');
INSERT INTO `county` VALUES ('1301', '137', '桓台县');
INSERT INTO `county` VALUES ('1302', '137', '高青县');
INSERT INTO `county` VALUES ('1303', '137', '沂源县');
INSERT INTO `county` VALUES ('1304', '137', '高新区');
INSERT INTO `county` VALUES ('1305', '138', '市中区');
INSERT INTO `county` VALUES ('1306', '138', '薛城区');
INSERT INTO `county` VALUES ('1307', '138', '峄城区');
INSERT INTO `county` VALUES ('1308', '138', '台儿庄区');
INSERT INTO `county` VALUES ('1309', '138', '山亭区');
INSERT INTO `county` VALUES ('1310', '138', '滕州市');
INSERT INTO `county` VALUES ('1311', '139', '东营区');
INSERT INTO `county` VALUES ('1312', '139', '河口区');
INSERT INTO `county` VALUES ('1313', '139', '垦利县');
INSERT INTO `county` VALUES ('1314', '139', '利津县');
INSERT INTO `county` VALUES ('1315', '139', '广饶县');
INSERT INTO `county` VALUES ('1316', '140', '芝罘区');
INSERT INTO `county` VALUES ('1317', '140', '福山区');
INSERT INTO `county` VALUES ('1318', '140', '牟平区');
INSERT INTO `county` VALUES ('1319', '140', '莱山区');
INSERT INTO `county` VALUES ('1320', '140', '长岛县');
INSERT INTO `county` VALUES ('1321', '140', '龙口市');
INSERT INTO `county` VALUES ('1322', '140', '莱阳市');
INSERT INTO `county` VALUES ('1323', '140', '莱州市');
INSERT INTO `county` VALUES ('1324', '140', '蓬莱市');
INSERT INTO `county` VALUES ('1325', '140', '招远市');
INSERT INTO `county` VALUES ('1326', '140', '栖霞市');
INSERT INTO `county` VALUES ('1327', '140', '海阳市');
INSERT INTO `county` VALUES ('1328', '140', '开发区');
INSERT INTO `county` VALUES ('1329', '141', '潍城区');
INSERT INTO `county` VALUES ('1330', '141', '寒亭区');
INSERT INTO `county` VALUES ('1331', '141', '坊子区');
INSERT INTO `county` VALUES ('1332', '141', '奎文区');
INSERT INTO `county` VALUES ('1333', '141', '临朐县');
INSERT INTO `county` VALUES ('1334', '141', '昌乐县');
INSERT INTO `county` VALUES ('1335', '141', '青州市');
INSERT INTO `county` VALUES ('1336', '141', '诸城市');
INSERT INTO `county` VALUES ('1337', '141', '寿光市');
INSERT INTO `county` VALUES ('1338', '141', '安丘市');
INSERT INTO `county` VALUES ('1339', '141', '高密市');
INSERT INTO `county` VALUES ('1340', '141', '昌邑市');
INSERT INTO `county` VALUES ('1341', '141', '经济开发区');
INSERT INTO `county` VALUES ('1342', '141', '滨海经济开发区');
INSERT INTO `county` VALUES ('1343', '141', '高新技术开发区');
INSERT INTO `county` VALUES ('1344', '141', '出口加工区');
INSERT INTO `county` VALUES ('1345', '142', '市中区');
INSERT INTO `county` VALUES ('1346', '142', '任城区');
INSERT INTO `county` VALUES ('1347', '142', '微山县');
INSERT INTO `county` VALUES ('1348', '142', '鱼台县');
INSERT INTO `county` VALUES ('1349', '142', '金乡县');
INSERT INTO `county` VALUES ('1350', '142', '嘉祥县');
INSERT INTO `county` VALUES ('1351', '142', '汶上县');
INSERT INTO `county` VALUES ('1352', '142', '泗水县');
INSERT INTO `county` VALUES ('1353', '142', '梁山县');
INSERT INTO `county` VALUES ('1354', '142', '曲阜市');
INSERT INTO `county` VALUES ('1355', '142', '兖州市');
INSERT INTO `county` VALUES ('1356', '142', '邹城市');
INSERT INTO `county` VALUES ('1357', '143', '泰山区');
INSERT INTO `county` VALUES ('1358', '143', '岱岳区');
INSERT INTO `county` VALUES ('1359', '143', '宁阳县');
INSERT INTO `county` VALUES ('1360', '143', '东平县');
INSERT INTO `county` VALUES ('1361', '143', '新泰市');
INSERT INTO `county` VALUES ('1362', '143', '肥城市');
INSERT INTO `county` VALUES ('1363', '144', '环翠区');
INSERT INTO `county` VALUES ('1364', '144', '文登市');
INSERT INTO `county` VALUES ('1365', '144', '荣成市');
INSERT INTO `county` VALUES ('1366', '144', '乳山市');
INSERT INTO `county` VALUES ('1367', '144', '经济技术开发区');
INSERT INTO `county` VALUES ('1368', '144', '高技术开发区');
INSERT INTO `county` VALUES ('1369', '145', '东港区');
INSERT INTO `county` VALUES ('1370', '145', '岚山区');
INSERT INTO `county` VALUES ('1371', '145', '五莲县');
INSERT INTO `county` VALUES ('1372', '145', '莒县');
INSERT INTO `county` VALUES ('1373', '146', '莱城区');
INSERT INTO `county` VALUES ('1374', '146', '钢城区');
INSERT INTO `county` VALUES ('1375', '147', '兰山区');
INSERT INTO `county` VALUES ('1376', '147', '罗庄区');
INSERT INTO `county` VALUES ('1377', '147', '河东区');
INSERT INTO `county` VALUES ('1378', '147', '沂南县');
INSERT INTO `county` VALUES ('1379', '147', '郯城县');
INSERT INTO `county` VALUES ('1380', '147', '沂水县');
INSERT INTO `county` VALUES ('1381', '147', '苍山县');
INSERT INTO `county` VALUES ('1382', '147', '费县');
INSERT INTO `county` VALUES ('1383', '147', '平邑县');
INSERT INTO `county` VALUES ('1384', '147', '莒南县');
INSERT INTO `county` VALUES ('1385', '147', '蒙阴县');
INSERT INTO `county` VALUES ('1386', '147', '临沭县');
INSERT INTO `county` VALUES ('1387', '148', '德城区');
INSERT INTO `county` VALUES ('1388', '148', '陵县');
INSERT INTO `county` VALUES ('1389', '148', '宁津县');
INSERT INTO `county` VALUES ('1390', '148', '庆云县');
INSERT INTO `county` VALUES ('1391', '148', '临邑县');
INSERT INTO `county` VALUES ('1392', '148', '齐河县');
INSERT INTO `county` VALUES ('1393', '148', '平原县');
INSERT INTO `county` VALUES ('1394', '148', '夏津县');
INSERT INTO `county` VALUES ('1395', '148', '武城县');
INSERT INTO `county` VALUES ('1396', '148', '乐陵市');
INSERT INTO `county` VALUES ('1397', '148', '禹城市');
INSERT INTO `county` VALUES ('1398', '149', '东昌府区');
INSERT INTO `county` VALUES ('1399', '149', '阳谷县');
INSERT INTO `county` VALUES ('1400', '149', '莘县');
INSERT INTO `county` VALUES ('1401', '149', '茌平县');
INSERT INTO `county` VALUES ('1402', '149', '东阿县');
INSERT INTO `county` VALUES ('1403', '149', '冠县');
INSERT INTO `county` VALUES ('1404', '149', '高唐县');
INSERT INTO `county` VALUES ('1405', '149', '临清市');
INSERT INTO `county` VALUES ('1406', '150', '滨城区');
INSERT INTO `county` VALUES ('1407', '150', '惠民县');
INSERT INTO `county` VALUES ('1408', '150', '阳信县');
INSERT INTO `county` VALUES ('1409', '150', '无棣县');
INSERT INTO `county` VALUES ('1410', '150', '沾化县');
INSERT INTO `county` VALUES ('1411', '150', '博兴县');
INSERT INTO `county` VALUES ('1412', '150', '邹平县');
INSERT INTO `county` VALUES ('1413', '151', '牡丹区');
INSERT INTO `county` VALUES ('1414', '151', '曹县');
INSERT INTO `county` VALUES ('1415', '151', '单县');
INSERT INTO `county` VALUES ('1416', '151', '成武县');
INSERT INTO `county` VALUES ('1417', '151', '巨野县');
INSERT INTO `county` VALUES ('1418', '151', '郓城县');
INSERT INTO `county` VALUES ('1419', '151', '鄄城县');
INSERT INTO `county` VALUES ('1420', '151', '定陶县');
INSERT INTO `county` VALUES ('1421', '151', '东明县');
INSERT INTO `county` VALUES ('1422', '152', '中原区');
INSERT INTO `county` VALUES ('1423', '152', '二七区');
INSERT INTO `county` VALUES ('1424', '152', '管城回族区');
INSERT INTO `county` VALUES ('1425', '152', '金水区');
INSERT INTO `county` VALUES ('1426', '152', '上街区');
INSERT INTO `county` VALUES ('1427', '152', '中牟县');
INSERT INTO `county` VALUES ('1428', '152', '巩义市');
INSERT INTO `county` VALUES ('1429', '152', '荥阳市');
INSERT INTO `county` VALUES ('1430', '152', '新密市');
INSERT INTO `county` VALUES ('1431', '152', '新郑市');
INSERT INTO `county` VALUES ('1432', '152', '登封市');
INSERT INTO `county` VALUES ('1433', '152', '高新技术开发区');
INSERT INTO `county` VALUES ('1434', '152', '惠济区');
INSERT INTO `county` VALUES ('1435', '152', '经济技术开发区');
INSERT INTO `county` VALUES ('1436', '152', '郑东新区');
INSERT INTO `county` VALUES ('1437', '152', '出口加工区');
INSERT INTO `county` VALUES ('1438', '153', '龙亭区');
INSERT INTO `county` VALUES ('1439', '153', '顺河回族区');
INSERT INTO `county` VALUES ('1440', '153', '鼓楼区');
INSERT INTO `county` VALUES ('1441', '153', '杞县');
INSERT INTO `county` VALUES ('1442', '153', '通许县');
INSERT INTO `county` VALUES ('1443', '153', '尉氏县');
INSERT INTO `county` VALUES ('1444', '153', '开封县');
INSERT INTO `county` VALUES ('1445', '153', '兰考县');
INSERT INTO `county` VALUES ('1446', '153', '金明区');
INSERT INTO `county` VALUES ('1447', '153', '禹王台区');
INSERT INTO `county` VALUES ('1448', '154', '老城区');
INSERT INTO `county` VALUES ('1449', '154', '西工区');
INSERT INTO `county` VALUES ('1450', '154', '瀍河回族区');
INSERT INTO `county` VALUES ('1451', '154', '涧西区');
INSERT INTO `county` VALUES ('1452', '154', '吉利区');
INSERT INTO `county` VALUES ('1453', '154', '洛龙区');
INSERT INTO `county` VALUES ('1454', '154', '孟津县');
INSERT INTO `county` VALUES ('1455', '154', '新安县');
INSERT INTO `county` VALUES ('1456', '154', '栾川县');
INSERT INTO `county` VALUES ('1457', '154', '嵩县');
INSERT INTO `county` VALUES ('1458', '154', '汝阳县');
INSERT INTO `county` VALUES ('1459', '154', '宜阳县');
INSERT INTO `county` VALUES ('1460', '154', '洛宁县');
INSERT INTO `county` VALUES ('1461', '154', '伊川县');
INSERT INTO `county` VALUES ('1462', '154', '偃师市');
INSERT INTO `county` VALUES ('1463', '154', '高新技术开发区');
INSERT INTO `county` VALUES ('1464', '154', '经济技术开发区');
INSERT INTO `county` VALUES ('1465', '155', '新华区');
INSERT INTO `county` VALUES ('1466', '155', '卫东区');
INSERT INTO `county` VALUES ('1467', '155', '石龙区');
INSERT INTO `county` VALUES ('1468', '155', '湛河区');
INSERT INTO `county` VALUES ('1469', '155', '宝丰县');
INSERT INTO `county` VALUES ('1470', '155', '叶县');
INSERT INTO `county` VALUES ('1471', '155', '鲁山县');
INSERT INTO `county` VALUES ('1472', '155', '郏县');
INSERT INTO `county` VALUES ('1473', '155', '舞钢市');
INSERT INTO `county` VALUES ('1474', '155', '汝州市');
INSERT INTO `county` VALUES ('1475', '156', '文峰区');
INSERT INTO `county` VALUES ('1476', '156', '北关区');
INSERT INTO `county` VALUES ('1477', '156', '殷都区');
INSERT INTO `county` VALUES ('1478', '156', '龙安区');
INSERT INTO `county` VALUES ('1479', '156', '安阳县');
INSERT INTO `county` VALUES ('1480', '156', '汤阴县');
INSERT INTO `county` VALUES ('1481', '156', '滑县');
INSERT INTO `county` VALUES ('1482', '156', '内黄县');
INSERT INTO `county` VALUES ('1483', '156', '林州市');
INSERT INTO `county` VALUES ('1484', '157', '鹤山区');
INSERT INTO `county` VALUES ('1485', '157', '山城区');
INSERT INTO `county` VALUES ('1486', '157', '淇滨区');
INSERT INTO `county` VALUES ('1487', '157', '浚县');
INSERT INTO `county` VALUES ('1488', '157', '淇县');
INSERT INTO `county` VALUES ('1489', '158', '红旗区');
INSERT INTO `county` VALUES ('1490', '158', '卫滨区');
INSERT INTO `county` VALUES ('1491', '158', '凤泉区');
INSERT INTO `county` VALUES ('1492', '158', '牧野区');
INSERT INTO `county` VALUES ('1493', '158', '新乡县');
INSERT INTO `county` VALUES ('1494', '158', '获嘉县');
INSERT INTO `county` VALUES ('1495', '158', '原阳县');
INSERT INTO `county` VALUES ('1496', '158', '延津县');
INSERT INTO `county` VALUES ('1497', '158', '封丘县');
INSERT INTO `county` VALUES ('1498', '158', '长垣县');
INSERT INTO `county` VALUES ('1499', '158', '卫辉市');
INSERT INTO `county` VALUES ('1500', '158', '辉县市');
INSERT INTO `county` VALUES ('1501', '159', '解放区');
INSERT INTO `county` VALUES ('1502', '159', '中站区');
INSERT INTO `county` VALUES ('1503', '159', '马村区');
INSERT INTO `county` VALUES ('1504', '159', '山阳区');
INSERT INTO `county` VALUES ('1505', '159', '修武县');
INSERT INTO `county` VALUES ('1506', '159', '博爱县');
INSERT INTO `county` VALUES ('1507', '159', '武陟县');
INSERT INTO `county` VALUES ('1508', '159', '温县');
INSERT INTO `county` VALUES ('1509', '159', '沁阳市');
INSERT INTO `county` VALUES ('1510', '159', '孟州市');
INSERT INTO `county` VALUES ('1511', '160', '华龙区');
INSERT INTO `county` VALUES ('1512', '160', '清丰县');
INSERT INTO `county` VALUES ('1513', '160', '南乐县');
INSERT INTO `county` VALUES ('1514', '160', '范县');
INSERT INTO `county` VALUES ('1515', '160', '台前县');
INSERT INTO `county` VALUES ('1516', '160', '濮阳县');
INSERT INTO `county` VALUES ('1517', '161', '魏都区');
INSERT INTO `county` VALUES ('1518', '161', '许昌县');
INSERT INTO `county` VALUES ('1519', '161', '鄢陵县');
INSERT INTO `county` VALUES ('1520', '161', '襄城县');
INSERT INTO `county` VALUES ('1521', '161', '禹州市');
INSERT INTO `county` VALUES ('1522', '161', '长葛市');
INSERT INTO `county` VALUES ('1523', '162', '源汇区');
INSERT INTO `county` VALUES ('1524', '162', '郾城区');
INSERT INTO `county` VALUES ('1525', '162', '召陵区');
INSERT INTO `county` VALUES ('1526', '162', '舞阳县');
INSERT INTO `county` VALUES ('1527', '162', '临颍县');
INSERT INTO `county` VALUES ('1528', '163', '湖滨区');
INSERT INTO `county` VALUES ('1529', '163', '渑池县');
INSERT INTO `county` VALUES ('1530', '163', '陕县');
INSERT INTO `county` VALUES ('1531', '163', '卢氏县');
INSERT INTO `county` VALUES ('1532', '163', '义马市');
INSERT INTO `county` VALUES ('1533', '163', '灵宝市');
INSERT INTO `county` VALUES ('1534', '164', '宛城区');
INSERT INTO `county` VALUES ('1535', '164', '卧龙区');
INSERT INTO `county` VALUES ('1536', '164', '南召县');
INSERT INTO `county` VALUES ('1537', '164', '方城县');
INSERT INTO `county` VALUES ('1538', '164', '西峡县');
INSERT INTO `county` VALUES ('1539', '164', '镇平县');
INSERT INTO `county` VALUES ('1540', '164', '内乡县');
INSERT INTO `county` VALUES ('1541', '164', '淅川县');
INSERT INTO `county` VALUES ('1542', '164', '社旗县');
INSERT INTO `county` VALUES ('1543', '164', '唐河县');
INSERT INTO `county` VALUES ('1544', '164', '新野县');
INSERT INTO `county` VALUES ('1545', '164', '桐柏县');
INSERT INTO `county` VALUES ('1546', '164', '邓州市');
INSERT INTO `county` VALUES ('1547', '165', '梁园区');
INSERT INTO `county` VALUES ('1548', '165', '睢阳区');
INSERT INTO `county` VALUES ('1549', '165', '民权县');
INSERT INTO `county` VALUES ('1550', '165', '睢县');
INSERT INTO `county` VALUES ('1551', '165', '宁陵县');
INSERT INTO `county` VALUES ('1552', '165', '柘城县');
INSERT INTO `county` VALUES ('1553', '165', '虞城县');
INSERT INTO `county` VALUES ('1554', '165', '夏邑县');
INSERT INTO `county` VALUES ('1555', '165', '永城市');
INSERT INTO `county` VALUES ('1556', '166', '浉河区');
INSERT INTO `county` VALUES ('1557', '166', '平桥区');
INSERT INTO `county` VALUES ('1558', '166', '罗山县');
INSERT INTO `county` VALUES ('1559', '166', '光山县');
INSERT INTO `county` VALUES ('1560', '166', '新县');
INSERT INTO `county` VALUES ('1561', '166', '商城县');
INSERT INTO `county` VALUES ('1562', '166', '固始县');
INSERT INTO `county` VALUES ('1563', '166', '潢川县');
INSERT INTO `county` VALUES ('1564', '166', '淮滨县');
INSERT INTO `county` VALUES ('1565', '166', '息县');
INSERT INTO `county` VALUES ('1566', '167', '川汇区');
INSERT INTO `county` VALUES ('1567', '167', '扶沟县');
INSERT INTO `county` VALUES ('1568', '167', '西华县');
INSERT INTO `county` VALUES ('1569', '167', '商水县');
INSERT INTO `county` VALUES ('1570', '167', '沈丘县');
INSERT INTO `county` VALUES ('1571', '167', '郸城县');
INSERT INTO `county` VALUES ('1572', '167', '淮阳县');
INSERT INTO `county` VALUES ('1573', '167', '太康县');
INSERT INTO `county` VALUES ('1574', '167', '鹿邑县');
INSERT INTO `county` VALUES ('1575', '167', '项城市');
INSERT INTO `county` VALUES ('1576', '168', '驿城区');
INSERT INTO `county` VALUES ('1577', '168', '西平县');
INSERT INTO `county` VALUES ('1578', '168', '上蔡县');
INSERT INTO `county` VALUES ('1579', '168', '平舆县');
INSERT INTO `county` VALUES ('1580', '168', '正阳县');
INSERT INTO `county` VALUES ('1581', '168', '确山县');
INSERT INTO `county` VALUES ('1582', '168', '泌阳县');
INSERT INTO `county` VALUES ('1583', '168', '汝南县');
INSERT INTO `county` VALUES ('1584', '168', '遂平县');
INSERT INTO `county` VALUES ('1585', '168', '新蔡县');
INSERT INTO `county` VALUES ('1586', '169', '济源市');
INSERT INTO `county` VALUES ('1587', '170', '江岸区');
INSERT INTO `county` VALUES ('1588', '170', '江汉区');
INSERT INTO `county` VALUES ('1589', '170', '硚口区');
INSERT INTO `county` VALUES ('1590', '170', '汉阳区');
INSERT INTO `county` VALUES ('1591', '170', '武昌区');
INSERT INTO `county` VALUES ('1592', '170', '青山区');
INSERT INTO `county` VALUES ('1593', '170', '洪山区');
INSERT INTO `county` VALUES ('1594', '170', '东西湖区');
INSERT INTO `county` VALUES ('1595', '170', '汉南区');
INSERT INTO `county` VALUES ('1596', '170', '蔡甸区');
INSERT INTO `county` VALUES ('1597', '170', '江夏区');
INSERT INTO `county` VALUES ('1598', '170', '黄陂区');
INSERT INTO `county` VALUES ('1599', '170', '新洲区');
INSERT INTO `county` VALUES ('1600', '171', '黄石港区');
INSERT INTO `county` VALUES ('1601', '171', '西塞山区');
INSERT INTO `county` VALUES ('1602', '171', '下陆区');
INSERT INTO `county` VALUES ('1603', '171', '铁山区');
INSERT INTO `county` VALUES ('1604', '171', '阳新县');
INSERT INTO `county` VALUES ('1605', '171', '大冶市');
INSERT INTO `county` VALUES ('1606', '172', '茅箭区');
INSERT INTO `county` VALUES ('1607', '172', '张湾区');
INSERT INTO `county` VALUES ('1608', '172', '郧县');
INSERT INTO `county` VALUES ('1609', '172', '郧西县');
INSERT INTO `county` VALUES ('1610', '172', '竹山县');
INSERT INTO `county` VALUES ('1611', '172', '竹溪县');
INSERT INTO `county` VALUES ('1612', '172', '房县');
INSERT INTO `county` VALUES ('1613', '172', '丹江口市');
INSERT INTO `county` VALUES ('1614', '173', '西陵区');
INSERT INTO `county` VALUES ('1615', '173', '伍家岗区');
INSERT INTO `county` VALUES ('1616', '173', '点军区');
INSERT INTO `county` VALUES ('1617', '173', '虢亭区');
INSERT INTO `county` VALUES ('1618', '173', '夷陵区');
INSERT INTO `county` VALUES ('1619', '173', '远安县');
INSERT INTO `county` VALUES ('1620', '173', '兴山县');
INSERT INTO `county` VALUES ('1621', '173', '秭归县');
INSERT INTO `county` VALUES ('1622', '173', '长阳土家族自治县');
INSERT INTO `county` VALUES ('1623', '173', '五峰土家族自治县');
INSERT INTO `county` VALUES ('1624', '173', '宜都市');
INSERT INTO `county` VALUES ('1625', '173', '当阳市');
INSERT INTO `county` VALUES ('1626', '173', '枝江市');
INSERT INTO `county` VALUES ('1627', '173', '经济技术开发区');
INSERT INTO `county` VALUES ('1628', '174', '襄城区');
INSERT INTO `county` VALUES ('1629', '174', '樊城区');
INSERT INTO `county` VALUES ('1630', '174', '襄阳区');
INSERT INTO `county` VALUES ('1631', '174', '南漳县');
INSERT INTO `county` VALUES ('1632', '174', '谷城县');
INSERT INTO `county` VALUES ('1633', '174', '保康县');
INSERT INTO `county` VALUES ('1634', '174', '老河口市');
INSERT INTO `county` VALUES ('1635', '174', '枣阳市');
INSERT INTO `county` VALUES ('1636', '174', '宜城市');
INSERT INTO `county` VALUES ('1637', '175', '梁子湖区');
INSERT INTO `county` VALUES ('1638', '175', '华容区');
INSERT INTO `county` VALUES ('1639', '175', '鄂城区');
INSERT INTO `county` VALUES ('1640', '176', '东宝区');
INSERT INTO `county` VALUES ('1641', '176', '掇刀区');
INSERT INTO `county` VALUES ('1642', '176', '京山县');
INSERT INTO `county` VALUES ('1643', '176', '沙洋县');
INSERT INTO `county` VALUES ('1644', '176', '钟祥市');
INSERT INTO `county` VALUES ('1645', '177', '孝南区');
INSERT INTO `county` VALUES ('1646', '177', '孝昌县');
INSERT INTO `county` VALUES ('1647', '177', '大悟县');
INSERT INTO `county` VALUES ('1648', '177', '云梦县');
INSERT INTO `county` VALUES ('1649', '177', '应城市');
INSERT INTO `county` VALUES ('1650', '177', '安陆市');
INSERT INTO `county` VALUES ('1651', '177', '汉川市');
INSERT INTO `county` VALUES ('1652', '178', '沙市区');
INSERT INTO `county` VALUES ('1653', '178', '荆州区');
INSERT INTO `county` VALUES ('1654', '178', '公安县');
INSERT INTO `county` VALUES ('1655', '178', '监利县');
INSERT INTO `county` VALUES ('1656', '178', '江陵县');
INSERT INTO `county` VALUES ('1657', '178', '石首市');
INSERT INTO `county` VALUES ('1658', '178', '洪湖市');
INSERT INTO `county` VALUES ('1659', '178', '松滋市');
INSERT INTO `county` VALUES ('1660', '179', '黄州区');
INSERT INTO `county` VALUES ('1661', '179', '团风县');
INSERT INTO `county` VALUES ('1662', '179', '红安县');
INSERT INTO `county` VALUES ('1663', '179', '罗田县');
INSERT INTO `county` VALUES ('1664', '179', '英山县');
INSERT INTO `county` VALUES ('1665', '179', '浠水县');
INSERT INTO `county` VALUES ('1666', '179', '蕲春县');
INSERT INTO `county` VALUES ('1667', '179', '黄梅县');
INSERT INTO `county` VALUES ('1668', '179', '麻城市');
INSERT INTO `county` VALUES ('1669', '179', '武穴市');
INSERT INTO `county` VALUES ('1670', '180', '咸安区');
INSERT INTO `county` VALUES ('1671', '180', '嘉鱼县');
INSERT INTO `county` VALUES ('1672', '180', '通城县');
INSERT INTO `county` VALUES ('1673', '180', '崇阳县');
INSERT INTO `county` VALUES ('1674', '180', '通山县');
INSERT INTO `county` VALUES ('1675', '180', '赤壁市');
INSERT INTO `county` VALUES ('1676', '181', '曾都区');
INSERT INTO `county` VALUES ('1677', '181', '广水市');
INSERT INTO `county` VALUES ('1678', '182', '恩施市');
INSERT INTO `county` VALUES ('1679', '182', '利川市');
INSERT INTO `county` VALUES ('1680', '182', '建始县');
INSERT INTO `county` VALUES ('1681', '182', '巴东县');
INSERT INTO `county` VALUES ('1682', '182', '宣恩县');
INSERT INTO `county` VALUES ('1683', '182', '咸丰县');
INSERT INTO `county` VALUES ('1684', '182', '来凤县');
INSERT INTO `county` VALUES ('1685', '182', '鹤峰县');
INSERT INTO `county` VALUES ('1686', '183', '仙桃市');
INSERT INTO `county` VALUES ('1687', '183', '潜江市');
INSERT INTO `county` VALUES ('1688', '183', '天门市');
INSERT INTO `county` VALUES ('1689', '183', '神农架林区');
INSERT INTO `county` VALUES ('1690', '184', '芙蓉区');
INSERT INTO `county` VALUES ('1691', '184', '天心区');
INSERT INTO `county` VALUES ('1692', '184', '岳麓区');
INSERT INTO `county` VALUES ('1693', '184', '开福区');
INSERT INTO `county` VALUES ('1694', '184', '雨花区');
INSERT INTO `county` VALUES ('1695', '184', '长沙县');
INSERT INTO `county` VALUES ('1696', '184', '望城县');
INSERT INTO `county` VALUES ('1697', '184', '宁乡县');
INSERT INTO `county` VALUES ('1698', '184', '浏阳市');
INSERT INTO `county` VALUES ('1699', '185', '荷塘区');
INSERT INTO `county` VALUES ('1700', '185', '芦淞区');
INSERT INTO `county` VALUES ('1701', '185', '石峰区');
INSERT INTO `county` VALUES ('1702', '185', '天元区');
INSERT INTO `county` VALUES ('1703', '185', '株洲县');
INSERT INTO `county` VALUES ('1704', '185', '攸县');
INSERT INTO `county` VALUES ('1705', '185', '茶陵县');
INSERT INTO `county` VALUES ('1706', '185', '炎陵县');
INSERT INTO `county` VALUES ('1707', '185', '醴陵市');
INSERT INTO `county` VALUES ('1708', '186', '雨湖区');
INSERT INTO `county` VALUES ('1709', '186', '岳塘区');
INSERT INTO `county` VALUES ('1710', '186', '湘潭县');
INSERT INTO `county` VALUES ('1711', '186', '湘乡市');
INSERT INTO `county` VALUES ('1712', '186', '韶山市');
INSERT INTO `county` VALUES ('1713', '187', '珠晖区');
INSERT INTO `county` VALUES ('1714', '187', '雁峰区');
INSERT INTO `county` VALUES ('1715', '187', '石鼓区');
INSERT INTO `county` VALUES ('1716', '187', '蒸湘区');
INSERT INTO `county` VALUES ('1717', '187', '南岳区');
INSERT INTO `county` VALUES ('1718', '187', '衡阳县');
INSERT INTO `county` VALUES ('1719', '187', '衡南县');
INSERT INTO `county` VALUES ('1720', '187', '衡山县');
INSERT INTO `county` VALUES ('1721', '187', '衡东县');
INSERT INTO `county` VALUES ('1722', '187', '祁东县');
INSERT INTO `county` VALUES ('1723', '187', '耒阳市');
INSERT INTO `county` VALUES ('1724', '187', '常宁市');
INSERT INTO `county` VALUES ('1725', '188', '双清区');
INSERT INTO `county` VALUES ('1726', '188', '大祥区');
INSERT INTO `county` VALUES ('1727', '188', '北塔区');
INSERT INTO `county` VALUES ('1728', '188', '邵东县');
INSERT INTO `county` VALUES ('1729', '188', '新邵县');
INSERT INTO `county` VALUES ('1730', '188', '邵阳县');
INSERT INTO `county` VALUES ('1731', '188', '隆回县');
INSERT INTO `county` VALUES ('1732', '188', '洞口县');
INSERT INTO `county` VALUES ('1733', '188', '绥宁县');
INSERT INTO `county` VALUES ('1734', '188', '新宁县');
INSERT INTO `county` VALUES ('1735', '188', '城步苗族自治县');
INSERT INTO `county` VALUES ('1736', '188', '武冈市');
INSERT INTO `county` VALUES ('1737', '189', '岳阳楼区');
INSERT INTO `county` VALUES ('1738', '189', '云溪区');
INSERT INTO `county` VALUES ('1739', '189', '君山区');
INSERT INTO `county` VALUES ('1740', '189', '岳阳县');
INSERT INTO `county` VALUES ('1741', '189', '华容县');
INSERT INTO `county` VALUES ('1742', '189', '湘阴县');
INSERT INTO `county` VALUES ('1743', '189', '平江县');
INSERT INTO `county` VALUES ('1744', '189', '汨罗市');
INSERT INTO `county` VALUES ('1745', '189', '临湘市');
INSERT INTO `county` VALUES ('1746', '190', '武陵区');
INSERT INTO `county` VALUES ('1747', '190', '鼎城区');
INSERT INTO `county` VALUES ('1748', '190', '安乡县');
INSERT INTO `county` VALUES ('1749', '190', '汉寿县');
INSERT INTO `county` VALUES ('1750', '190', '澧县');
INSERT INTO `county` VALUES ('1751', '190', '临澧县');
INSERT INTO `county` VALUES ('1752', '190', '桃源县');
INSERT INTO `county` VALUES ('1753', '190', '石门县');
INSERT INTO `county` VALUES ('1754', '190', '津市市');
INSERT INTO `county` VALUES ('1755', '191', '永定区');
INSERT INTO `county` VALUES ('1756', '191', '武陵源区');
INSERT INTO `county` VALUES ('1757', '191', '慈利县');
INSERT INTO `county` VALUES ('1758', '191', '桑植县');
INSERT INTO `county` VALUES ('1759', '192', '资阳区');
INSERT INTO `county` VALUES ('1760', '192', '赫山区');
INSERT INTO `county` VALUES ('1761', '192', '南县');
INSERT INTO `county` VALUES ('1762', '192', '桃江县');
INSERT INTO `county` VALUES ('1763', '192', '安化县');
INSERT INTO `county` VALUES ('1764', '192', '沅江市');
INSERT INTO `county` VALUES ('1765', '193', '北湖区');
INSERT INTO `county` VALUES ('1766', '193', '苏仙区');
INSERT INTO `county` VALUES ('1767', '193', '桂阳县');
INSERT INTO `county` VALUES ('1768', '193', '宜章县');
INSERT INTO `county` VALUES ('1769', '193', '永兴县');
INSERT INTO `county` VALUES ('1770', '193', '嘉禾县');
INSERT INTO `county` VALUES ('1771', '193', '临武县');
INSERT INTO `county` VALUES ('1772', '193', '汝城县');
INSERT INTO `county` VALUES ('1773', '193', '桂东县');
INSERT INTO `county` VALUES ('1774', '193', '安仁县');
INSERT INTO `county` VALUES ('1775', '193', '资兴市');
INSERT INTO `county` VALUES ('1776', '194', '冷水滩区');
INSERT INTO `county` VALUES ('1777', '194', '祁阳县');
INSERT INTO `county` VALUES ('1778', '194', '东安县');
INSERT INTO `county` VALUES ('1779', '194', '双牌县');
INSERT INTO `county` VALUES ('1780', '194', '道县');
INSERT INTO `county` VALUES ('1781', '194', '江永县');
INSERT INTO `county` VALUES ('1782', '194', '宁远县');
INSERT INTO `county` VALUES ('1783', '194', '蓝山县');
INSERT INTO `county` VALUES ('1784', '194', '新田县');
INSERT INTO `county` VALUES ('1785', '194', '江华瑶族自治县');
INSERT INTO `county` VALUES ('1786', '194', '零陵区');
INSERT INTO `county` VALUES ('1787', '195', '鹤城区');
INSERT INTO `county` VALUES ('1788', '195', '中方县');
INSERT INTO `county` VALUES ('1789', '195', '沅陵县');
INSERT INTO `county` VALUES ('1790', '195', '辰溪县');
INSERT INTO `county` VALUES ('1791', '195', '溆浦县');
INSERT INTO `county` VALUES ('1792', '195', '会同县');
INSERT INTO `county` VALUES ('1793', '195', '麻阳苗族自治县');
INSERT INTO `county` VALUES ('1794', '195', '新晃侗族自治县');
INSERT INTO `county` VALUES ('1795', '195', '芷江侗族自治县');
INSERT INTO `county` VALUES ('1796', '195', '靖州苗族侗族自治县');
INSERT INTO `county` VALUES ('1797', '195', '通道侗族自治县');
INSERT INTO `county` VALUES ('1798', '195', '洪江市');
INSERT INTO `county` VALUES ('1799', '196', '娄星区');
INSERT INTO `county` VALUES ('1800', '196', '双峰县');
INSERT INTO `county` VALUES ('1801', '196', '新化县');
INSERT INTO `county` VALUES ('1802', '196', '冷水江市');
INSERT INTO `county` VALUES ('1803', '196', '涟源市');
INSERT INTO `county` VALUES ('1804', '197', '吉首市');
INSERT INTO `county` VALUES ('1805', '197', '泸溪县');
INSERT INTO `county` VALUES ('1806', '197', '凤凰县');
INSERT INTO `county` VALUES ('1807', '197', '花垣县');
INSERT INTO `county` VALUES ('1808', '197', '保靖县');
INSERT INTO `county` VALUES ('1809', '197', '古丈县');
INSERT INTO `county` VALUES ('1810', '197', '永顺县');
INSERT INTO `county` VALUES ('1811', '197', '龙山县');
INSERT INTO `county` VALUES ('1812', '198', '荔湾区');
INSERT INTO `county` VALUES ('1813', '198', '越秀区');
INSERT INTO `county` VALUES ('1814', '198', '海珠区');
INSERT INTO `county` VALUES ('1815', '198', '天河区');
INSERT INTO `county` VALUES ('1816', '198', '白云区');
INSERT INTO `county` VALUES ('1817', '198', '黄埔区');
INSERT INTO `county` VALUES ('1818', '198', '番禺区');
INSERT INTO `county` VALUES ('1819', '198', '花都区');
INSERT INTO `county` VALUES ('1820', '198', '增城市');
INSERT INTO `county` VALUES ('1821', '198', '从化市');
INSERT INTO `county` VALUES ('1822', '198', '南沙区');
INSERT INTO `county` VALUES ('1823', '198', '萝岗区');
INSERT INTO `county` VALUES ('1824', '199', '武江区');
INSERT INTO `county` VALUES ('1825', '199', '浈江区');
INSERT INTO `county` VALUES ('1826', '199', '曲江区');
INSERT INTO `county` VALUES ('1827', '199', '始兴县');
INSERT INTO `county` VALUES ('1828', '199', '仁化县');
INSERT INTO `county` VALUES ('1829', '199', '翁源县');
INSERT INTO `county` VALUES ('1830', '199', '乳源瑶族自治县');
INSERT INTO `county` VALUES ('1831', '199', '新丰县');
INSERT INTO `county` VALUES ('1832', '199', '乐昌市');
INSERT INTO `county` VALUES ('1833', '199', '南雄市');
INSERT INTO `county` VALUES ('1834', '200', '罗湖区');
INSERT INTO `county` VALUES ('1835', '200', '福田区');
INSERT INTO `county` VALUES ('1836', '200', '南山区');
INSERT INTO `county` VALUES ('1837', '200', '宝安区');
INSERT INTO `county` VALUES ('1838', '200', '龙岗区');
INSERT INTO `county` VALUES ('1839', '200', '盐田区');
INSERT INTO `county` VALUES ('1840', '200', '光明新区');
INSERT INTO `county` VALUES ('1841', '200', '坪山新区');
INSERT INTO `county` VALUES ('1842', '201', '香洲区');
INSERT INTO `county` VALUES ('1843', '201', '斗门区');
INSERT INTO `county` VALUES ('1844', '201', '金湾区');
INSERT INTO `county` VALUES ('1845', '202', '龙湖区');
INSERT INTO `county` VALUES ('1846', '202', '金平区');
INSERT INTO `county` VALUES ('1847', '202', '濠江区');
INSERT INTO `county` VALUES ('1848', '202', '潮阳区');
INSERT INTO `county` VALUES ('1849', '202', '潮南区');
INSERT INTO `county` VALUES ('1850', '202', '澄海区');
INSERT INTO `county` VALUES ('1851', '202', '南澳县');
INSERT INTO `county` VALUES ('1852', '203', '禅城区');
INSERT INTO `county` VALUES ('1853', '203', '南海区');
INSERT INTO `county` VALUES ('1854', '203', '顺德区');
INSERT INTO `county` VALUES ('1855', '203', '三水区');
INSERT INTO `county` VALUES ('1856', '203', '高明区');
INSERT INTO `county` VALUES ('1857', '204', '蓬江区');
INSERT INTO `county` VALUES ('1858', '204', '江海区');
INSERT INTO `county` VALUES ('1859', '204', '新会区');
INSERT INTO `county` VALUES ('1860', '204', '台山市');
INSERT INTO `county` VALUES ('1861', '204', '开平市');
INSERT INTO `county` VALUES ('1862', '204', '鹤山市');
INSERT INTO `county` VALUES ('1863', '204', '恩平市');
INSERT INTO `county` VALUES ('1864', '205', '赤坎区');
INSERT INTO `county` VALUES ('1865', '205', '霞山区');
INSERT INTO `county` VALUES ('1866', '205', '坡头区');
INSERT INTO `county` VALUES ('1867', '205', '麻章区');
INSERT INTO `county` VALUES ('1868', '205', '遂溪县');
INSERT INTO `county` VALUES ('1869', '205', '徐闻县');
INSERT INTO `county` VALUES ('1870', '205', '廉江市');
INSERT INTO `county` VALUES ('1871', '205', '雷州市');
INSERT INTO `county` VALUES ('1872', '205', '吴川市');
INSERT INTO `county` VALUES ('1873', '205', '开发区');
INSERT INTO `county` VALUES ('1874', '206', '茂南区');
INSERT INTO `county` VALUES ('1875', '206', '茂港区');
INSERT INTO `county` VALUES ('1876', '206', '电白县');
INSERT INTO `county` VALUES ('1877', '206', '高州市');
INSERT INTO `county` VALUES ('1878', '206', '化州市');
INSERT INTO `county` VALUES ('1879', '206', '信宜市');
INSERT INTO `county` VALUES ('1880', '207', '端州区');
INSERT INTO `county` VALUES ('1881', '207', '鼎湖区');
INSERT INTO `county` VALUES ('1882', '207', '广宁县');
INSERT INTO `county` VALUES ('1883', '207', '怀集县');
INSERT INTO `county` VALUES ('1884', '207', '封开县');
INSERT INTO `county` VALUES ('1885', '207', '德庆县');
INSERT INTO `county` VALUES ('1886', '207', '高要市');
INSERT INTO `county` VALUES ('1887', '207', '四会市');
INSERT INTO `county` VALUES ('1888', '207', '高新技术产业开发区');
INSERT INTO `county` VALUES ('1889', '208', '惠城区');
INSERT INTO `county` VALUES ('1890', '208', '惠阳区');
INSERT INTO `county` VALUES ('1891', '208', '博罗县');
INSERT INTO `county` VALUES ('1892', '208', '惠东县');
INSERT INTO `county` VALUES ('1893', '208', '龙门县');
INSERT INTO `county` VALUES ('1894', '208', '大亚湾区');
INSERT INTO `county` VALUES ('1895', '208', '仲恺高新区');
INSERT INTO `county` VALUES ('1896', '209', '梅江区');
INSERT INTO `county` VALUES ('1897', '209', '梅县');
INSERT INTO `county` VALUES ('1898', '209', '大埔县');
INSERT INTO `county` VALUES ('1899', '209', '丰顺县');
INSERT INTO `county` VALUES ('1900', '209', '五华县');
INSERT INTO `county` VALUES ('1901', '209', '平远县');
INSERT INTO `county` VALUES ('1902', '209', '蕉岭县');
INSERT INTO `county` VALUES ('1903', '209', '兴宁市');
INSERT INTO `county` VALUES ('1904', '210', '城区');
INSERT INTO `county` VALUES ('1905', '210', '陆丰市');
INSERT INTO `county` VALUES ('1906', '210', '海丰县');
INSERT INTO `county` VALUES ('1907', '210', '陆河县');
INSERT INTO `county` VALUES ('1908', '211', '源城区');
INSERT INTO `county` VALUES ('1909', '211', '紫金县');
INSERT INTO `county` VALUES ('1910', '211', '龙川县');
INSERT INTO `county` VALUES ('1911', '211', '连平县');
INSERT INTO `county` VALUES ('1912', '211', '和平县');
INSERT INTO `county` VALUES ('1913', '211', '东源县');
INSERT INTO `county` VALUES ('1914', '212', '江城区');
INSERT INTO `county` VALUES ('1915', '212', '阳西县');
INSERT INTO `county` VALUES ('1916', '212', '阳东县');
INSERT INTO `county` VALUES ('1917', '212', '阳春市');
INSERT INTO `county` VALUES ('1918', '213', '清城区');
INSERT INTO `county` VALUES ('1919', '213', '佛冈县');
INSERT INTO `county` VALUES ('1920', '213', '阳山县');
INSERT INTO `county` VALUES ('1921', '213', '连山壮族瑶族自治县');
INSERT INTO `county` VALUES ('1922', '213', '连南瑶族自治县');
INSERT INTO `county` VALUES ('1923', '213', '清新县');
INSERT INTO `county` VALUES ('1924', '213', '英德市');
INSERT INTO `county` VALUES ('1925', '213', '连州市');
INSERT INTO `county` VALUES ('1926', '214', '南城区');
INSERT INTO `county` VALUES ('1927', '214', '石龙镇');
INSERT INTO `county` VALUES ('1928', '214', '长安镇');
INSERT INTO `county` VALUES ('1929', '214', '虎门镇');
INSERT INTO `county` VALUES ('1930', '214', '横沥镇');
INSERT INTO `county` VALUES ('1931', '214', '寮步镇');
INSERT INTO `county` VALUES ('1932', '214', '黄江镇');
INSERT INTO `county` VALUES ('1933', '214', '清溪镇');
INSERT INTO `county` VALUES ('1934', '214', '莞城区');
INSERT INTO `county` VALUES ('1935', '214', '万江区');
INSERT INTO `county` VALUES ('1936', '214', '东城区');
INSERT INTO `county` VALUES ('1937', '214', '石碣镇');
INSERT INTO `county` VALUES ('1938', '214', '茶山镇');
INSERT INTO `county` VALUES ('1939', '214', '石排镇');
INSERT INTO `county` VALUES ('1940', '214', '企石镇');
INSERT INTO `county` VALUES ('1941', '214', '桥头镇');
INSERT INTO `county` VALUES ('1942', '214', '谢岗镇');
INSERT INTO `county` VALUES ('1943', '214', '东坑镇');
INSERT INTO `county` VALUES ('1944', '214', '常平镇');
INSERT INTO `county` VALUES ('1945', '214', '大朗镇');
INSERT INTO `county` VALUES ('1946', '214', '塘厦镇');
INSERT INTO `county` VALUES ('1947', '214', '凤岗镇');
INSERT INTO `county` VALUES ('1948', '214', '厚街镇');
INSERT INTO `county` VALUES ('1949', '214', '沙田镇');
INSERT INTO `county` VALUES ('1950', '214', '道滘镇');
INSERT INTO `county` VALUES ('1951', '214', '洪梅镇');
INSERT INTO `county` VALUES ('1952', '214', '麻涌镇');
INSERT INTO `county` VALUES ('1953', '214', '中堂镇');
INSERT INTO `county` VALUES ('1954', '214', '高埗镇');
INSERT INTO `county` VALUES ('1955', '214', '樟木头镇');
INSERT INTO `county` VALUES ('1956', '214', '大岭山镇');
INSERT INTO `county` VALUES ('1957', '214', '望牛墩镇');
INSERT INTO `county` VALUES ('1958', '215', '中山市');
INSERT INTO `county` VALUES ('1959', '216', '湘桥区');
INSERT INTO `county` VALUES ('1960', '216', '潮安县');
INSERT INTO `county` VALUES ('1961', '216', '饶平县');
INSERT INTO `county` VALUES ('1962', '217', '榕城区');
INSERT INTO `county` VALUES ('1963', '217', '揭东县');
INSERT INTO `county` VALUES ('1964', '217', '揭西县');
INSERT INTO `county` VALUES ('1965', '217', '惠来县');
INSERT INTO `county` VALUES ('1966', '217', '普宁市');
INSERT INTO `county` VALUES ('1967', '217', '东山区');
INSERT INTO `county` VALUES ('1968', '217', '普侨区');
INSERT INTO `county` VALUES ('1969', '217', '大南山侨区');
INSERT INTO `county` VALUES ('1970', '218', '云城区');
INSERT INTO `county` VALUES ('1971', '218', '新兴县');
INSERT INTO `county` VALUES ('1972', '218', '郁南县');
INSERT INTO `county` VALUES ('1973', '218', '云安县');
INSERT INTO `county` VALUES ('1974', '218', '罗定市');
INSERT INTO `county` VALUES ('1975', '219', '兴宁区');
INSERT INTO `county` VALUES ('1976', '219', '青秀区');
INSERT INTO `county` VALUES ('1977', '219', '江南区');
INSERT INTO `county` VALUES ('1978', '219', '西乡塘区');
INSERT INTO `county` VALUES ('1979', '219', '良庆区');
INSERT INTO `county` VALUES ('1980', '219', '邕宁区');
INSERT INTO `county` VALUES ('1981', '219', '武鸣县');
INSERT INTO `county` VALUES ('1982', '219', '隆安县');
INSERT INTO `county` VALUES ('1983', '219', '马山县');
INSERT INTO `county` VALUES ('1984', '219', '上林县');
INSERT INTO `county` VALUES ('1985', '219', '宾阳县');
INSERT INTO `county` VALUES ('1986', '219', '横县');
INSERT INTO `county` VALUES ('1987', '220', '城中区');
INSERT INTO `county` VALUES ('1988', '220', '鱼峰区');
INSERT INTO `county` VALUES ('1989', '220', '柳南区');
INSERT INTO `county` VALUES ('1990', '220', '柳北区');
INSERT INTO `county` VALUES ('1991', '220', '柳江县');
INSERT INTO `county` VALUES ('1992', '220', '柳城县');
INSERT INTO `county` VALUES ('1993', '220', '鹿寨县');
INSERT INTO `county` VALUES ('1994', '220', '融安县');
INSERT INTO `county` VALUES ('1995', '220', '融水苗族自治县');
INSERT INTO `county` VALUES ('1996', '220', '三江侗族自治县');
INSERT INTO `county` VALUES ('1997', '221', '秀峰区');
INSERT INTO `county` VALUES ('1998', '221', '叠彩区');
INSERT INTO `county` VALUES ('1999', '221', '象山区');
INSERT INTO `county` VALUES ('2000', '221', '七星区');
INSERT INTO `county` VALUES ('2001', '221', '雁山区');
INSERT INTO `county` VALUES ('2002', '221', '阳朔县');
INSERT INTO `county` VALUES ('2003', '221', '临桂县');
INSERT INTO `county` VALUES ('2004', '221', '灵川县');
INSERT INTO `county` VALUES ('2005', '221', '全州县');
INSERT INTO `county` VALUES ('2006', '221', '兴安县');
INSERT INTO `county` VALUES ('2007', '221', '永福县');
INSERT INTO `county` VALUES ('2008', '221', '灌阳县');
INSERT INTO `county` VALUES ('2009', '221', '龙胜各族自治县');
INSERT INTO `county` VALUES ('2010', '221', '资源县');
INSERT INTO `county` VALUES ('2011', '221', '平乐县');
INSERT INTO `county` VALUES ('2012', '221', '荔浦县');
INSERT INTO `county` VALUES ('2013', '221', '恭城瑶族自治县');
INSERT INTO `county` VALUES ('2014', '222', '万秀区');
INSERT INTO `county` VALUES ('2015', '222', '蝶山区');
INSERT INTO `county` VALUES ('2016', '222', '长洲区');
INSERT INTO `county` VALUES ('2017', '222', '苍梧县');
INSERT INTO `county` VALUES ('2018', '222', '藤县');
INSERT INTO `county` VALUES ('2019', '222', '蒙山县');
INSERT INTO `county` VALUES ('2020', '222', '岑溪市');
INSERT INTO `county` VALUES ('2021', '223', '海城区');
INSERT INTO `county` VALUES ('2022', '223', '银海区');
INSERT INTO `county` VALUES ('2023', '223', '铁山港区');
INSERT INTO `county` VALUES ('2024', '223', '合浦县');
INSERT INTO `county` VALUES ('2025', '224', '港口区');
INSERT INTO `county` VALUES ('2026', '224', '防城区');
INSERT INTO `county` VALUES ('2027', '224', '上思县');
INSERT INTO `county` VALUES ('2028', '224', '东兴市');
INSERT INTO `county` VALUES ('2029', '225', '钦南区');
INSERT INTO `county` VALUES ('2030', '225', '钦北区');
INSERT INTO `county` VALUES ('2031', '225', '灵山县');
INSERT INTO `county` VALUES ('2032', '225', '浦北县');
INSERT INTO `county` VALUES ('2033', '225', '钦州港经济开发区');
INSERT INTO `county` VALUES ('2034', '226', '港北区');
INSERT INTO `county` VALUES ('2035', '226', '港南区');
INSERT INTO `county` VALUES ('2036', '226', '覃塘区');
INSERT INTO `county` VALUES ('2037', '226', '平南县');
INSERT INTO `county` VALUES ('2038', '226', '桂平市');
INSERT INTO `county` VALUES ('2039', '227', '玉州区');
INSERT INTO `county` VALUES ('2040', '227', '容县');
INSERT INTO `county` VALUES ('2041', '227', '陆川县');
INSERT INTO `county` VALUES ('2042', '227', '博白县');
INSERT INTO `county` VALUES ('2043', '227', '兴业县');
INSERT INTO `county` VALUES ('2044', '227', '北流市');
INSERT INTO `county` VALUES ('2045', '228', '右江区');
INSERT INTO `county` VALUES ('2046', '228', '田阳县');
INSERT INTO `county` VALUES ('2047', '228', '田东县');
INSERT INTO `county` VALUES ('2048', '228', '平果县');
INSERT INTO `county` VALUES ('2049', '228', '德保县');
INSERT INTO `county` VALUES ('2050', '228', '靖西县');
INSERT INTO `county` VALUES ('2051', '228', '那坡县');
INSERT INTO `county` VALUES ('2052', '228', '凌云县');
INSERT INTO `county` VALUES ('2053', '228', '乐业县');
INSERT INTO `county` VALUES ('2054', '228', '田林县');
INSERT INTO `county` VALUES ('2055', '228', '西林县');
INSERT INTO `county` VALUES ('2056', '228', '隆林各族自治县');
INSERT INTO `county` VALUES ('2057', '229', '八步区');
INSERT INTO `county` VALUES ('2058', '229', '昭平县');
INSERT INTO `county` VALUES ('2059', '229', '钟山县');
INSERT INTO `county` VALUES ('2060', '229', '富川瑶族自治县');
INSERT INTO `county` VALUES ('2061', '230', '金城江区');
INSERT INTO `county` VALUES ('2062', '230', '南丹县');
INSERT INTO `county` VALUES ('2063', '230', '天峨县');
INSERT INTO `county` VALUES ('2064', '230', '凤山县');
INSERT INTO `county` VALUES ('2065', '230', '东兰县');
INSERT INTO `county` VALUES ('2066', '230', '罗城仫佬族自治县');
INSERT INTO `county` VALUES ('2067', '230', '环江毛南族自治县');
INSERT INTO `county` VALUES ('2068', '230', '巴马瑶族自治县');
INSERT INTO `county` VALUES ('2069', '230', '都安瑶族自治县');
INSERT INTO `county` VALUES ('2070', '230', '大化瑶族自治县');
INSERT INTO `county` VALUES ('2071', '230', '宜州市');
INSERT INTO `county` VALUES ('2072', '231', '兴宾区');
INSERT INTO `county` VALUES ('2073', '231', '忻城县');
INSERT INTO `county` VALUES ('2074', '231', '象州县');
INSERT INTO `county` VALUES ('2075', '231', '武宣县');
INSERT INTO `county` VALUES ('2076', '231', '金秀瑶族自治县');
INSERT INTO `county` VALUES ('2077', '231', '合山市');
INSERT INTO `county` VALUES ('2078', '232', '江洲区');
INSERT INTO `county` VALUES ('2079', '232', '扶绥县');
INSERT INTO `county` VALUES ('2080', '232', '宁明县');
INSERT INTO `county` VALUES ('2081', '232', '龙州县');
INSERT INTO `county` VALUES ('2082', '232', '大新县');
INSERT INTO `county` VALUES ('2083', '232', '天等县');
INSERT INTO `county` VALUES ('2084', '232', '凭祥市');
INSERT INTO `county` VALUES ('2085', '233', '秀英区');
INSERT INTO `county` VALUES ('2086', '233', '龙华区');
INSERT INTO `county` VALUES ('2087', '233', '琼山区');
INSERT INTO `county` VALUES ('2088', '233', '美兰区');
INSERT INTO `county` VALUES ('2089', '234', '河西区');
INSERT INTO `county` VALUES ('2090', '234', '河东区');
INSERT INTO `county` VALUES ('2091', '234', '田独镇');
INSERT INTO `county` VALUES ('2092', '234', '凤凰镇');
INSERT INTO `county` VALUES ('2093', '234', '三亚市');
INSERT INTO `county` VALUES ('2094', '234', '崖城镇');
INSERT INTO `county` VALUES ('2095', '234', '天涯镇');
INSERT INTO `county` VALUES ('2096', '234', '育才乡');
INSERT INTO `county` VALUES ('2097', '234', '海棠湾镇');
INSERT INTO `county` VALUES ('2098', '235', '五指山市');
INSERT INTO `county` VALUES ('2099', '235', '琼海市');
INSERT INTO `county` VALUES ('2100', '235', '儋州市');
INSERT INTO `county` VALUES ('2101', '235', '文昌市');
INSERT INTO `county` VALUES ('2102', '235', '万宁市');
INSERT INTO `county` VALUES ('2103', '235', '东方市');
INSERT INTO `county` VALUES ('2104', '235', '定安县');
INSERT INTO `county` VALUES ('2105', '235', '屯昌县');
INSERT INTO `county` VALUES ('2106', '235', '澄迈县');
INSERT INTO `county` VALUES ('2107', '235', '临高县');
INSERT INTO `county` VALUES ('2108', '235', '白沙黎族自治县');
INSERT INTO `county` VALUES ('2109', '235', '昌江黎族自治县');
INSERT INTO `county` VALUES ('2110', '235', '乐东黎族自治县');
INSERT INTO `county` VALUES ('2111', '235', '陵水黎族自治县');
INSERT INTO `county` VALUES ('2112', '235', '保亭黎族苗族自治县');
INSERT INTO `county` VALUES ('2113', '235', '琼中黎族苗族自治县');
INSERT INTO `county` VALUES ('2114', '235', '西、南、中沙群岛办事处');
INSERT INTO `county` VALUES ('2115', '236', '万州区');
INSERT INTO `county` VALUES ('2116', '236', '涪陵区');
INSERT INTO `county` VALUES ('2117', '236', '渝中区');
INSERT INTO `county` VALUES ('2118', '236', '大渡口区');
INSERT INTO `county` VALUES ('2119', '236', '江北区');
INSERT INTO `county` VALUES ('2120', '236', '沙坪坝区');
INSERT INTO `county` VALUES ('2121', '236', '九龙坡区');
INSERT INTO `county` VALUES ('2122', '236', '南岸区');
INSERT INTO `county` VALUES ('2123', '236', '北碚区');
INSERT INTO `county` VALUES ('2124', '236', '万盛区');
INSERT INTO `county` VALUES ('2125', '236', '双桥区');
INSERT INTO `county` VALUES ('2126', '236', '渝北区');
INSERT INTO `county` VALUES ('2127', '236', '巴南区');
INSERT INTO `county` VALUES ('2128', '236', '黔江区');
INSERT INTO `county` VALUES ('2129', '236', '长寿区');
INSERT INTO `county` VALUES ('2130', '236', '綦江县');
INSERT INTO `county` VALUES ('2131', '236', '潼南县');
INSERT INTO `county` VALUES ('2132', '236', '铜梁县');
INSERT INTO `county` VALUES ('2133', '236', '大足县');
INSERT INTO `county` VALUES ('2134', '236', '荣昌县');
INSERT INTO `county` VALUES ('2135', '236', '璧山县');
INSERT INTO `county` VALUES ('2136', '236', '梁平县');
INSERT INTO `county` VALUES ('2137', '236', '城口县');
INSERT INTO `county` VALUES ('2138', '236', '丰都县');
INSERT INTO `county` VALUES ('2139', '236', '垫江县');
INSERT INTO `county` VALUES ('2140', '236', '武隆县');
INSERT INTO `county` VALUES ('2141', '236', '忠县');
INSERT INTO `county` VALUES ('2142', '236', '开县');
INSERT INTO `county` VALUES ('2143', '236', '云阳县');
INSERT INTO `county` VALUES ('2144', '236', '奉节县');
INSERT INTO `county` VALUES ('2145', '236', '巫山县');
INSERT INTO `county` VALUES ('2146', '236', '巫溪县');
INSERT INTO `county` VALUES ('2147', '236', '石柱土家族自治县');
INSERT INTO `county` VALUES ('2148', '236', '秀山土家族苗族自治县');
INSERT INTO `county` VALUES ('2149', '236', '酉阳土家族苗族自治县');
INSERT INTO `county` VALUES ('2150', '236', '彭水苗族土家族自治县');
INSERT INTO `county` VALUES ('2151', '236', '高新区');
INSERT INTO `county` VALUES ('2152', '236', '江津区');
INSERT INTO `county` VALUES ('2153', '236', '合川区');
INSERT INTO `county` VALUES ('2154', '236', '永川区');
INSERT INTO `county` VALUES ('2155', '236', '南川区');
INSERT INTO `county` VALUES ('2156', '237', '锦江区');
INSERT INTO `county` VALUES ('2157', '237', '青羊区');
INSERT INTO `county` VALUES ('2158', '237', '金牛区');
INSERT INTO `county` VALUES ('2159', '237', '武侯区');
INSERT INTO `county` VALUES ('2160', '237', '成华区');
INSERT INTO `county` VALUES ('2161', '237', '龙泉驿区');
INSERT INTO `county` VALUES ('2162', '237', '青白江区');
INSERT INTO `county` VALUES ('2163', '237', '新都区');
INSERT INTO `county` VALUES ('2164', '237', '温江区');
INSERT INTO `county` VALUES ('2165', '237', '金堂县');
INSERT INTO `county` VALUES ('2166', '237', '双流县');
INSERT INTO `county` VALUES ('2167', '237', '郫县');
INSERT INTO `county` VALUES ('2168', '237', '大邑县');
INSERT INTO `county` VALUES ('2169', '237', '蒲江县');
INSERT INTO `county` VALUES ('2170', '237', '新津县');
INSERT INTO `county` VALUES ('2171', '237', '都江堰市');
INSERT INTO `county` VALUES ('2172', '237', '彭州市');
INSERT INTO `county` VALUES ('2173', '237', '邛崃市');
INSERT INTO `county` VALUES ('2174', '237', '崇州市');
INSERT INTO `county` VALUES ('2175', '237', '高新区');
INSERT INTO `county` VALUES ('2176', '237', '高新西区');
INSERT INTO `county` VALUES ('2177', '238', '自流井区');
INSERT INTO `county` VALUES ('2178', '238', '贡井区');
INSERT INTO `county` VALUES ('2179', '238', '大安区');
INSERT INTO `county` VALUES ('2180', '238', '沿滩区');
INSERT INTO `county` VALUES ('2181', '238', '荣县');
INSERT INTO `county` VALUES ('2182', '238', '富顺县');
INSERT INTO `county` VALUES ('2183', '239', '东区');
INSERT INTO `county` VALUES ('2184', '239', '西区');
INSERT INTO `county` VALUES ('2185', '239', '仁和区');
INSERT INTO `county` VALUES ('2186', '239', '米易县');
INSERT INTO `county` VALUES ('2187', '239', '盐边县');
INSERT INTO `county` VALUES ('2188', '240', '江阳区');
INSERT INTO `county` VALUES ('2189', '240', '纳溪区');
INSERT INTO `county` VALUES ('2190', '240', '龙马潭区');
INSERT INTO `county` VALUES ('2191', '240', '泸县');
INSERT INTO `county` VALUES ('2192', '240', '合江县');
INSERT INTO `county` VALUES ('2193', '240', '叙永县');
INSERT INTO `county` VALUES ('2194', '240', '古蔺县');
INSERT INTO `county` VALUES ('2195', '241', '旌阳区');
INSERT INTO `county` VALUES ('2196', '241', '中江县');
INSERT INTO `county` VALUES ('2197', '241', '罗江县');
INSERT INTO `county` VALUES ('2198', '241', '广汉市');
INSERT INTO `county` VALUES ('2199', '241', '什邡市');
INSERT INTO `county` VALUES ('2200', '241', '绵竹市');
INSERT INTO `county` VALUES ('2201', '242', '涪城区');
INSERT INTO `county` VALUES ('2202', '242', '游仙区');
INSERT INTO `county` VALUES ('2203', '242', '三台县');
INSERT INTO `county` VALUES ('2204', '242', '盐亭县');
INSERT INTO `county` VALUES ('2205', '242', '安县');
INSERT INTO `county` VALUES ('2206', '242', '梓潼县');
INSERT INTO `county` VALUES ('2207', '242', '北川羌族自治县');
INSERT INTO `county` VALUES ('2208', '242', '平武县');
INSERT INTO `county` VALUES ('2209', '242', '江油市');
INSERT INTO `county` VALUES ('2210', '242', '农科区');
INSERT INTO `county` VALUES ('2211', '242', '经济技术开发区');
INSERT INTO `county` VALUES ('2212', '242', '高新区');
INSERT INTO `county` VALUES ('2213', '242', '仙海区');
INSERT INTO `county` VALUES ('2214', '243', '利州区');
INSERT INTO `county` VALUES ('2215', '243', '元坝区');
INSERT INTO `county` VALUES ('2216', '243', '朝天区');
INSERT INTO `county` VALUES ('2217', '243', '旺苍县');
INSERT INTO `county` VALUES ('2218', '243', '青川县');
INSERT INTO `county` VALUES ('2219', '243', '剑阁县');
INSERT INTO `county` VALUES ('2220', '243', '苍溪县');
INSERT INTO `county` VALUES ('2221', '244', '船山区');
INSERT INTO `county` VALUES ('2222', '244', '安居区');
INSERT INTO `county` VALUES ('2223', '244', '蓬溪县');
INSERT INTO `county` VALUES ('2224', '244', '射洪县');
INSERT INTO `county` VALUES ('2225', '244', '大英县');
INSERT INTO `county` VALUES ('2226', '245', '市中区');
INSERT INTO `county` VALUES ('2227', '245', '东兴区');
INSERT INTO `county` VALUES ('2228', '245', '威远县');
INSERT INTO `county` VALUES ('2229', '245', '资中县');
INSERT INTO `county` VALUES ('2230', '245', '隆昌县');
INSERT INTO `county` VALUES ('2231', '246', '市中区');
INSERT INTO `county` VALUES ('2232', '246', '沙湾区');
INSERT INTO `county` VALUES ('2233', '246', '五通桥区');
INSERT INTO `county` VALUES ('2234', '246', '金口河区');
INSERT INTO `county` VALUES ('2235', '246', '犍为县');
INSERT INTO `county` VALUES ('2236', '246', '井研县');
INSERT INTO `county` VALUES ('2237', '246', '夹江县');
INSERT INTO `county` VALUES ('2238', '246', '沐川县');
INSERT INTO `county` VALUES ('2239', '246', '峨边彝族自治县');
INSERT INTO `county` VALUES ('2240', '246', '马边彝族自治县');
INSERT INTO `county` VALUES ('2241', '246', '峨眉山市');
INSERT INTO `county` VALUES ('2242', '247', '顺庆区');
INSERT INTO `county` VALUES ('2243', '247', '高坪区');
INSERT INTO `county` VALUES ('2244', '247', '嘉陵区');
INSERT INTO `county` VALUES ('2245', '247', '南部县');
INSERT INTO `county` VALUES ('2246', '247', '营山县');
INSERT INTO `county` VALUES ('2247', '247', '蓬安县');
INSERT INTO `county` VALUES ('2248', '247', '仪陇县');
INSERT INTO `county` VALUES ('2249', '247', '西充县');
INSERT INTO `county` VALUES ('2250', '247', '阆中市');
INSERT INTO `county` VALUES ('2251', '248', '东坡区');
INSERT INTO `county` VALUES ('2252', '248', '仁寿县');
INSERT INTO `county` VALUES ('2253', '248', '彭山县');
INSERT INTO `county` VALUES ('2254', '248', '洪雅县');
INSERT INTO `county` VALUES ('2255', '248', '丹棱县');
INSERT INTO `county` VALUES ('2256', '248', '青神县');
INSERT INTO `county` VALUES ('2257', '249', '翠屏区');
INSERT INTO `county` VALUES ('2258', '249', '宜宾县');
INSERT INTO `county` VALUES ('2259', '249', '南溪县');
INSERT INTO `county` VALUES ('2260', '249', '江安县');
INSERT INTO `county` VALUES ('2261', '249', '长宁县');
INSERT INTO `county` VALUES ('2262', '249', '高县');
INSERT INTO `county` VALUES ('2263', '249', '珙县');
INSERT INTO `county` VALUES ('2264', '249', '筠连县');
INSERT INTO `county` VALUES ('2265', '249', '兴文县');
INSERT INTO `county` VALUES ('2266', '249', '屏山县');
INSERT INTO `county` VALUES ('2267', '250', '广安区');
INSERT INTO `county` VALUES ('2268', '250', '岳池县');
INSERT INTO `county` VALUES ('2269', '250', '武胜县');
INSERT INTO `county` VALUES ('2270', '250', '邻水县');
INSERT INTO `county` VALUES ('2271', '250', '华蓥市');
INSERT INTO `county` VALUES ('2272', '251', '通川区');
INSERT INTO `county` VALUES ('2273', '251', '达县');
INSERT INTO `county` VALUES ('2274', '251', '宣汉县');
INSERT INTO `county` VALUES ('2275', '251', '开江县');
INSERT INTO `county` VALUES ('2276', '251', '大竹县');
INSERT INTO `county` VALUES ('2277', '251', '渠县');
INSERT INTO `county` VALUES ('2278', '251', '万源市');
INSERT INTO `county` VALUES ('2279', '252', '雨城区');
INSERT INTO `county` VALUES ('2280', '252', '名山县');
INSERT INTO `county` VALUES ('2281', '252', '荥经县');
INSERT INTO `county` VALUES ('2282', '252', '汉源县');
INSERT INTO `county` VALUES ('2283', '252', '石棉县');
INSERT INTO `county` VALUES ('2284', '252', '天全县');
INSERT INTO `county` VALUES ('2285', '252', '芦山县');
INSERT INTO `county` VALUES ('2286', '252', '宝兴县');
INSERT INTO `county` VALUES ('2287', '253', '巴州区');
INSERT INTO `county` VALUES ('2288', '253', '通江县');
INSERT INTO `county` VALUES ('2289', '253', '南江县');
INSERT INTO `county` VALUES ('2290', '253', '平昌县');
INSERT INTO `county` VALUES ('2291', '254', '雁江区');
INSERT INTO `county` VALUES ('2292', '254', '安岳县');
INSERT INTO `county` VALUES ('2293', '254', '乐至县');
INSERT INTO `county` VALUES ('2294', '254', '简阳市');
INSERT INTO `county` VALUES ('2295', '255', '汶川县');
INSERT INTO `county` VALUES ('2296', '255', '理县');
INSERT INTO `county` VALUES ('2297', '255', '茂县');
INSERT INTO `county` VALUES ('2298', '255', '松潘县');
INSERT INTO `county` VALUES ('2299', '255', '九寨沟县');
INSERT INTO `county` VALUES ('2300', '255', '金川县');
INSERT INTO `county` VALUES ('2301', '255', '小金县');
INSERT INTO `county` VALUES ('2302', '255', '黑水县');
INSERT INTO `county` VALUES ('2303', '255', '马尔康县');
INSERT INTO `county` VALUES ('2304', '255', '壤塘县');
INSERT INTO `county` VALUES ('2305', '255', '阿坝县');
INSERT INTO `county` VALUES ('2306', '255', '若尔盖县');
INSERT INTO `county` VALUES ('2307', '255', '红原县');
INSERT INTO `county` VALUES ('2308', '256', '康定县');
INSERT INTO `county` VALUES ('2309', '256', '泸定县');
INSERT INTO `county` VALUES ('2310', '256', '丹巴县');
INSERT INTO `county` VALUES ('2311', '256', '九龙县');
INSERT INTO `county` VALUES ('2312', '256', '雅江县');
INSERT INTO `county` VALUES ('2313', '256', '道孚县');
INSERT INTO `county` VALUES ('2314', '256', '炉霍县');
INSERT INTO `county` VALUES ('2315', '256', '甘孜县');
INSERT INTO `county` VALUES ('2316', '256', '新龙县');
INSERT INTO `county` VALUES ('2317', '256', '德格县');
INSERT INTO `county` VALUES ('2318', '256', '白玉县');
INSERT INTO `county` VALUES ('2319', '256', '石渠县');
INSERT INTO `county` VALUES ('2320', '256', '色达县');
INSERT INTO `county` VALUES ('2321', '256', '理塘县');
INSERT INTO `county` VALUES ('2322', '256', '巴塘县');
INSERT INTO `county` VALUES ('2323', '256', '乡城县');
INSERT INTO `county` VALUES ('2324', '256', '稻城县');
INSERT INTO `county` VALUES ('2325', '256', '得荣县');
INSERT INTO `county` VALUES ('2326', '257', '西昌市');
INSERT INTO `county` VALUES ('2327', '257', '木里藏族自治县');
INSERT INTO `county` VALUES ('2328', '257', '盐源县');
INSERT INTO `county` VALUES ('2329', '257', '德昌县');
INSERT INTO `county` VALUES ('2330', '257', '会理县');
INSERT INTO `county` VALUES ('2331', '257', '会东县');
INSERT INTO `county` VALUES ('2332', '257', '宁南县');
INSERT INTO `county` VALUES ('2333', '257', '普格县');
INSERT INTO `county` VALUES ('2334', '257', '布拖县');
INSERT INTO `county` VALUES ('2335', '257', '金阳县');
INSERT INTO `county` VALUES ('2336', '257', '昭觉县');
INSERT INTO `county` VALUES ('2337', '257', '喜德县');
INSERT INTO `county` VALUES ('2338', '257', '冕宁县');
INSERT INTO `county` VALUES ('2339', '257', '越西县');
INSERT INTO `county` VALUES ('2340', '257', '甘洛县');
INSERT INTO `county` VALUES ('2341', '257', '美姑县');
INSERT INTO `county` VALUES ('2342', '257', '雷波县');
INSERT INTO `county` VALUES ('2343', '258', '南明区');
INSERT INTO `county` VALUES ('2344', '258', '云岩区');
INSERT INTO `county` VALUES ('2345', '258', '花溪区');
INSERT INTO `county` VALUES ('2346', '258', '乌当区');
INSERT INTO `county` VALUES ('2347', '258', '白云区');
INSERT INTO `county` VALUES ('2348', '258', '小河区');
INSERT INTO `county` VALUES ('2349', '258', '开阳县');
INSERT INTO `county` VALUES ('2350', '258', '息烽县');
INSERT INTO `county` VALUES ('2351', '258', '修文县');
INSERT INTO `county` VALUES ('2352', '258', '清镇市');
INSERT INTO `county` VALUES ('2353', '258', '金阳新区');
INSERT INTO `county` VALUES ('2354', '259', '钟山区');
INSERT INTO `county` VALUES ('2355', '259', '六枝特区');
INSERT INTO `county` VALUES ('2356', '259', '水城县');
INSERT INTO `county` VALUES ('2357', '259', '盘县');
INSERT INTO `county` VALUES ('2358', '260', '红花岗区');
INSERT INTO `county` VALUES ('2359', '260', '汇川区');
INSERT INTO `county` VALUES ('2360', '260', '遵义县');
INSERT INTO `county` VALUES ('2361', '260', '桐梓县');
INSERT INTO `county` VALUES ('2362', '260', '绥阳县');
INSERT INTO `county` VALUES ('2363', '260', '正安县');
INSERT INTO `county` VALUES ('2364', '260', '道真仡佬族苗族自治县');
INSERT INTO `county` VALUES ('2365', '260', '务川仡佬族苗族自治县');
INSERT INTO `county` VALUES ('2366', '260', '凤冈县');
INSERT INTO `county` VALUES ('2367', '260', '湄潭县');
INSERT INTO `county` VALUES ('2368', '260', '余庆县');
INSERT INTO `county` VALUES ('2369', '260', '习水县');
INSERT INTO `county` VALUES ('2370', '260', '赤水市');
INSERT INTO `county` VALUES ('2371', '260', '仁怀市');
INSERT INTO `county` VALUES ('2372', '261', '西秀区');
INSERT INTO `county` VALUES ('2373', '261', '平坝县');
INSERT INTO `county` VALUES ('2374', '261', '普定县');
INSERT INTO `county` VALUES ('2375', '261', '镇宁布依族苗族自治县');
INSERT INTO `county` VALUES ('2376', '261', '关岭布依族苗族自治县');
INSERT INTO `county` VALUES ('2377', '261', '紫云苗族布依族自治县');
INSERT INTO `county` VALUES ('2378', '262', '铜仁市');
INSERT INTO `county` VALUES ('2379', '262', '江口县');
INSERT INTO `county` VALUES ('2380', '262', '玉屏侗族自治县');
INSERT INTO `county` VALUES ('2381', '262', '石阡县');
INSERT INTO `county` VALUES ('2382', '262', '思南县');
INSERT INTO `county` VALUES ('2383', '262', '印江土家族苗族自治县');
INSERT INTO `county` VALUES ('2384', '262', '德江县');
INSERT INTO `county` VALUES ('2385', '262', '沿河土家族自治县');
INSERT INTO `county` VALUES ('2386', '262', '松桃苗族自治县');
INSERT INTO `county` VALUES ('2387', '262', '万山特区');
INSERT INTO `county` VALUES ('2388', '263', '兴义市');
INSERT INTO `county` VALUES ('2389', '263', '兴仁县');
INSERT INTO `county` VALUES ('2390', '263', '普安县');
INSERT INTO `county` VALUES ('2391', '263', '晴隆县');
INSERT INTO `county` VALUES ('2392', '263', '贞丰县');
INSERT INTO `county` VALUES ('2393', '263', '望谟县');
INSERT INTO `county` VALUES ('2394', '263', '册亨县');
INSERT INTO `county` VALUES ('2395', '263', '安龙县');
INSERT INTO `county` VALUES ('2396', '264', '毕节市');
INSERT INTO `county` VALUES ('2397', '264', '大方县');
INSERT INTO `county` VALUES ('2398', '264', '黔西县');
INSERT INTO `county` VALUES ('2399', '264', '金沙县');
INSERT INTO `county` VALUES ('2400', '264', '织金县');
INSERT INTO `county` VALUES ('2401', '264', '纳雍县');
INSERT INTO `county` VALUES ('2402', '264', '威宁彝族回族苗族自治县');
INSERT INTO `county` VALUES ('2403', '264', '赫章县');
INSERT INTO `county` VALUES ('2404', '265', '凯里市');
INSERT INTO `county` VALUES ('2405', '265', '黄平县');
INSERT INTO `county` VALUES ('2406', '265', '施秉县');
INSERT INTO `county` VALUES ('2407', '265', '三穗县');
INSERT INTO `county` VALUES ('2408', '265', '镇远县');
INSERT INTO `county` VALUES ('2409', '265', '岑巩县');
INSERT INTO `county` VALUES ('2410', '265', '天柱县');
INSERT INTO `county` VALUES ('2411', '265', '锦屏县');
INSERT INTO `county` VALUES ('2412', '265', '剑河县');
INSERT INTO `county` VALUES ('2413', '265', '台江县');
INSERT INTO `county` VALUES ('2414', '265', '黎平县');
INSERT INTO `county` VALUES ('2415', '265', '榕江县');
INSERT INTO `county` VALUES ('2416', '265', '从江县');
INSERT INTO `county` VALUES ('2417', '265', '雷山县');
INSERT INTO `county` VALUES ('2418', '265', '麻江县');
INSERT INTO `county` VALUES ('2419', '265', '丹寨县');
INSERT INTO `county` VALUES ('2420', '266', '都匀市');
INSERT INTO `county` VALUES ('2421', '266', '福泉市');
INSERT INTO `county` VALUES ('2422', '266', '荔波县');
INSERT INTO `county` VALUES ('2423', '266', '贵定县');
INSERT INTO `county` VALUES ('2424', '266', '瓮安县');
INSERT INTO `county` VALUES ('2425', '266', '独山县');
INSERT INTO `county` VALUES ('2426', '266', '平塘县');
INSERT INTO `county` VALUES ('2427', '266', '罗甸县');
INSERT INTO `county` VALUES ('2428', '266', '长顺县');
INSERT INTO `county` VALUES ('2429', '266', '龙里县');
INSERT INTO `county` VALUES ('2430', '266', '惠水县');
INSERT INTO `county` VALUES ('2431', '266', '三都水族自治县');
INSERT INTO `county` VALUES ('2432', '267', '五华区');
INSERT INTO `county` VALUES ('2433', '267', '盘龙区');
INSERT INTO `county` VALUES ('2434', '267', '官渡区');
INSERT INTO `county` VALUES ('2435', '267', '西山区');
INSERT INTO `county` VALUES ('2436', '267', '东川区');
INSERT INTO `county` VALUES ('2437', '267', '呈贡县');
INSERT INTO `county` VALUES ('2438', '267', '晋宁县');
INSERT INTO `county` VALUES ('2439', '267', '富民县');
INSERT INTO `county` VALUES ('2440', '267', '宜良县');
INSERT INTO `county` VALUES ('2441', '267', '石林彝族自治县');
INSERT INTO `county` VALUES ('2442', '267', '嵩明县');
INSERT INTO `county` VALUES ('2443', '267', '禄劝彝族苗族自治县');
INSERT INTO `county` VALUES ('2444', '267', '寻甸回族彝族自治县');
INSERT INTO `county` VALUES ('2445', '267', '安宁市');
INSERT INTO `county` VALUES ('2446', '268', '麒麟区');
INSERT INTO `county` VALUES ('2447', '268', '马龙县');
INSERT INTO `county` VALUES ('2448', '268', '陆良县');
INSERT INTO `county` VALUES ('2449', '268', '师宗县');
INSERT INTO `county` VALUES ('2450', '268', '罗平县');
INSERT INTO `county` VALUES ('2451', '268', '富源县');
INSERT INTO `county` VALUES ('2452', '268', '会泽县');
INSERT INTO `county` VALUES ('2453', '268', '沾益县');
INSERT INTO `county` VALUES ('2454', '268', '宣威市');
INSERT INTO `county` VALUES ('2455', '269', '红塔区');
INSERT INTO `county` VALUES ('2456', '269', '江川县');
INSERT INTO `county` VALUES ('2457', '269', '澄江县');
INSERT INTO `county` VALUES ('2458', '269', '通海县');
INSERT INTO `county` VALUES ('2459', '269', '华宁县');
INSERT INTO `county` VALUES ('2460', '269', '易门县');
INSERT INTO `county` VALUES ('2461', '269', '峨山彝族自治县');
INSERT INTO `county` VALUES ('2462', '269', '新平彝族傣族自治县');
INSERT INTO `county` VALUES ('2463', '269', '元江哈尼族彝族傣族自治县');
INSERT INTO `county` VALUES ('2464', '270', '隆阳区');
INSERT INTO `county` VALUES ('2465', '270', '施甸县');
INSERT INTO `county` VALUES ('2466', '270', '腾冲县');
INSERT INTO `county` VALUES ('2467', '270', '龙陵县');
INSERT INTO `county` VALUES ('2468', '270', '昌宁县');
INSERT INTO `county` VALUES ('2469', '271', '昭阳区');
INSERT INTO `county` VALUES ('2470', '271', '鲁甸县');
INSERT INTO `county` VALUES ('2471', '271', '巧家县');
INSERT INTO `county` VALUES ('2472', '271', '盐津县');
INSERT INTO `county` VALUES ('2473', '271', '大关县');
INSERT INTO `county` VALUES ('2474', '271', '永善县');
INSERT INTO `county` VALUES ('2475', '271', '绥江县');
INSERT INTO `county` VALUES ('2476', '271', '镇雄县');
INSERT INTO `county` VALUES ('2477', '271', '彝良县');
INSERT INTO `county` VALUES ('2478', '271', '威信县');
INSERT INTO `county` VALUES ('2479', '271', '水富县');
INSERT INTO `county` VALUES ('2480', '272', '古城区');
INSERT INTO `county` VALUES ('2481', '272', '玉龙纳西族自治县');
INSERT INTO `county` VALUES ('2482', '272', '永胜县');
INSERT INTO `county` VALUES ('2483', '272', '华坪县');
INSERT INTO `county` VALUES ('2484', '272', '宁蒗彝族自治县');
INSERT INTO `county` VALUES ('2485', '273', '思茅区');
INSERT INTO `county` VALUES ('2486', '273', '宁洱哈尼族彝族自治县');
INSERT INTO `county` VALUES ('2487', '273', '墨江哈尼族自治县');
INSERT INTO `county` VALUES ('2488', '273', '景东彝族自治县');
INSERT INTO `county` VALUES ('2489', '273', '景谷傣族彝族自治县');
INSERT INTO `county` VALUES ('2490', '273', '镇沅彝族哈尼族拉祜族自治县');
INSERT INTO `county` VALUES ('2491', '273', '江城哈尼族彝族自治县');
INSERT INTO `county` VALUES ('2492', '273', '孟连傣族拉祜族佤族自治县');
INSERT INTO `county` VALUES ('2493', '273', '澜沧拉祜族自治县');
INSERT INTO `county` VALUES ('2494', '273', '西盟佤族自治县');
INSERT INTO `county` VALUES ('2495', '274', '临翔区');
INSERT INTO `county` VALUES ('2496', '274', '凤庆县');
INSERT INTO `county` VALUES ('2497', '274', '云县');
INSERT INTO `county` VALUES ('2498', '274', '永德县');
INSERT INTO `county` VALUES ('2499', '274', '镇康县');
INSERT INTO `county` VALUES ('2500', '274', '双江拉祜族佤族布朗族傣族自治县');
INSERT INTO `county` VALUES ('2501', '274', '耿马傣族佤族自治县');
INSERT INTO `county` VALUES ('2502', '274', '沧源佤族自治县');
INSERT INTO `county` VALUES ('2503', '275', '楚雄市');
INSERT INTO `county` VALUES ('2504', '275', '双柏县');
INSERT INTO `county` VALUES ('2505', '275', '牟定县');
INSERT INTO `county` VALUES ('2506', '275', '南华县');
INSERT INTO `county` VALUES ('2507', '275', '姚安县');
INSERT INTO `county` VALUES ('2508', '275', '大姚县');
INSERT INTO `county` VALUES ('2509', '275', '永仁县');
INSERT INTO `county` VALUES ('2510', '275', '元谋县');
INSERT INTO `county` VALUES ('2511', '275', '武定县');
INSERT INTO `county` VALUES ('2512', '275', '禄丰县');
INSERT INTO `county` VALUES ('2513', '276', '个旧市');
INSERT INTO `county` VALUES ('2514', '276', '开远市');
INSERT INTO `county` VALUES ('2515', '276', '蒙自县');
INSERT INTO `county` VALUES ('2516', '276', '屏边苗族自治县');
INSERT INTO `county` VALUES ('2517', '276', '建水县');
INSERT INTO `county` VALUES ('2518', '276', '石屏县');
INSERT INTO `county` VALUES ('2519', '276', '弥勒县');
INSERT INTO `county` VALUES ('2520', '276', '泸西县');
INSERT INTO `county` VALUES ('2521', '276', '元阳县');
INSERT INTO `county` VALUES ('2522', '276', '红河县');
INSERT INTO `county` VALUES ('2523', '276', '金平苗族瑶族傣族自治县');
INSERT INTO `county` VALUES ('2524', '276', '绿春县');
INSERT INTO `county` VALUES ('2525', '276', '河口瑶族自治县');
INSERT INTO `county` VALUES ('2526', '277', '文山县');
INSERT INTO `county` VALUES ('2527', '277', '砚山县');
INSERT INTO `county` VALUES ('2528', '277', '西畴县');
INSERT INTO `county` VALUES ('2529', '277', '麻栗坡县');
INSERT INTO `county` VALUES ('2530', '277', '马关县');
INSERT INTO `county` VALUES ('2531', '277', '丘北县');
INSERT INTO `county` VALUES ('2532', '277', '广南县');
INSERT INTO `county` VALUES ('2533', '277', '富宁县');
INSERT INTO `county` VALUES ('2534', '278', '景洪市');
INSERT INTO `county` VALUES ('2535', '278', '勐海县');
INSERT INTO `county` VALUES ('2536', '278', '勐腊县');
INSERT INTO `county` VALUES ('2537', '279', '大理市');
INSERT INTO `county` VALUES ('2538', '279', '漾濞彝族自治县');
INSERT INTO `county` VALUES ('2539', '279', '祥云县');
INSERT INTO `county` VALUES ('2540', '279', '宾川县');
INSERT INTO `county` VALUES ('2541', '279', '弥渡县');
INSERT INTO `county` VALUES ('2542', '279', '南涧彝族自治县');
INSERT INTO `county` VALUES ('2543', '279', '巍山彝族回族自治县');
INSERT INTO `county` VALUES ('2544', '279', '永平县');
INSERT INTO `county` VALUES ('2545', '279', '云龙县');
INSERT INTO `county` VALUES ('2546', '279', '洱源县');
INSERT INTO `county` VALUES ('2547', '279', '剑川县');
INSERT INTO `county` VALUES ('2548', '279', '鹤庆县');
INSERT INTO `county` VALUES ('2549', '280', '瑞丽市');
INSERT INTO `county` VALUES ('2550', '280', '潞西市');
INSERT INTO `county` VALUES ('2551', '280', '梁河县');
INSERT INTO `county` VALUES ('2552', '280', '盈江县');
INSERT INTO `county` VALUES ('2553', '280', '陇川县');
INSERT INTO `county` VALUES ('2554', '281', '泸水县');
INSERT INTO `county` VALUES ('2555', '281', '福贡县');
INSERT INTO `county` VALUES ('2556', '281', '贡山独龙族怒族自治县');
INSERT INTO `county` VALUES ('2557', '281', '兰坪白族普米族自治县');
INSERT INTO `county` VALUES ('2558', '282', '香格里拉县');
INSERT INTO `county` VALUES ('2559', '282', '德钦县');
INSERT INTO `county` VALUES ('2560', '282', '维西傈僳族自治县');
INSERT INTO `county` VALUES ('2561', '283', '城关区');
INSERT INTO `county` VALUES ('2562', '283', '林周县');
INSERT INTO `county` VALUES ('2563', '283', '当雄县');
INSERT INTO `county` VALUES ('2564', '283', '尼木县');
INSERT INTO `county` VALUES ('2565', '283', '曲水县');
INSERT INTO `county` VALUES ('2566', '283', '堆龙德庆县');
INSERT INTO `county` VALUES ('2567', '283', '达孜县');
INSERT INTO `county` VALUES ('2568', '283', '墨竹工卡县');
INSERT INTO `county` VALUES ('2569', '284', '昌都县');
INSERT INTO `county` VALUES ('2570', '284', '江达县');
INSERT INTO `county` VALUES ('2571', '284', '贡觉县');
INSERT INTO `county` VALUES ('2572', '284', '类乌齐县');
INSERT INTO `county` VALUES ('2573', '284', '丁青县');
INSERT INTO `county` VALUES ('2574', '284', '察雅县');
INSERT INTO `county` VALUES ('2575', '284', '八宿县');
INSERT INTO `county` VALUES ('2576', '284', '左贡县');
INSERT INTO `county` VALUES ('2577', '284', '芒康县');
INSERT INTO `county` VALUES ('2578', '284', '洛隆县');
INSERT INTO `county` VALUES ('2579', '284', '边坝县');
INSERT INTO `county` VALUES ('2580', '285', '乃东县');
INSERT INTO `county` VALUES ('2581', '285', '扎囊县');
INSERT INTO `county` VALUES ('2582', '285', '贡嘎县');
INSERT INTO `county` VALUES ('2583', '285', '桑日县');
INSERT INTO `county` VALUES ('2584', '285', '琼结县');
INSERT INTO `county` VALUES ('2585', '285', '曲松县');
INSERT INTO `county` VALUES ('2586', '285', '措美县');
INSERT INTO `county` VALUES ('2587', '285', '洛扎县');
INSERT INTO `county` VALUES ('2588', '285', '加查县');
INSERT INTO `county` VALUES ('2589', '285', '隆子县');
INSERT INTO `county` VALUES ('2590', '285', '错那县');
INSERT INTO `county` VALUES ('2591', '285', '浪卡子县');
INSERT INTO `county` VALUES ('2592', '286', '日喀则市');
INSERT INTO `county` VALUES ('2593', '286', '南木林县');
INSERT INTO `county` VALUES ('2594', '286', '江孜县');
INSERT INTO `county` VALUES ('2595', '286', '定日县');
INSERT INTO `county` VALUES ('2596', '286', '萨迦县');
INSERT INTO `county` VALUES ('2597', '286', '拉孜县');
INSERT INTO `county` VALUES ('2598', '286', '昂仁县');
INSERT INTO `county` VALUES ('2599', '286', '谢通门县');
INSERT INTO `county` VALUES ('2600', '286', '白朗县');
INSERT INTO `county` VALUES ('2601', '286', '仁布县');
INSERT INTO `county` VALUES ('2602', '286', '康马县');
INSERT INTO `county` VALUES ('2603', '286', '定结县');
INSERT INTO `county` VALUES ('2604', '286', '仲巴县');
INSERT INTO `county` VALUES ('2605', '286', '亚东县');
INSERT INTO `county` VALUES ('2606', '286', '吉隆县');
INSERT INTO `county` VALUES ('2607', '286', '聂拉木县');
INSERT INTO `county` VALUES ('2608', '286', '萨嘎县');
INSERT INTO `county` VALUES ('2609', '286', '岗巴县');
INSERT INTO `county` VALUES ('2610', '287', '那曲县');
INSERT INTO `county` VALUES ('2611', '287', '嘉黎县');
INSERT INTO `county` VALUES ('2612', '287', '比如县');
INSERT INTO `county` VALUES ('2613', '287', '聂荣县');
INSERT INTO `county` VALUES ('2614', '287', '安多县');
INSERT INTO `county` VALUES ('2615', '287', '申扎县');
INSERT INTO `county` VALUES ('2616', '287', '索县');
INSERT INTO `county` VALUES ('2617', '287', '班戈县');
INSERT INTO `county` VALUES ('2618', '287', '巴青县');
INSERT INTO `county` VALUES ('2619', '287', '尼玛县');
INSERT INTO `county` VALUES ('2620', '288', '普兰县');
INSERT INTO `county` VALUES ('2621', '288', '札达县');
INSERT INTO `county` VALUES ('2622', '288', '噶尔县');
INSERT INTO `county` VALUES ('2623', '288', '日土县');
INSERT INTO `county` VALUES ('2624', '288', '革吉县');
INSERT INTO `county` VALUES ('2625', '288', '改则县');
INSERT INTO `county` VALUES ('2626', '288', '措勤县');
INSERT INTO `county` VALUES ('2627', '289', '林芝县');
INSERT INTO `county` VALUES ('2628', '289', '工布江达县');
INSERT INTO `county` VALUES ('2629', '289', '米林县');
INSERT INTO `county` VALUES ('2630', '289', '墨脱县');
INSERT INTO `county` VALUES ('2631', '289', '波密县');
INSERT INTO `county` VALUES ('2632', '289', '察隅县');
INSERT INTO `county` VALUES ('2633', '289', '朗县');
INSERT INTO `county` VALUES ('2634', '290', '新城区');
INSERT INTO `county` VALUES ('2635', '290', '碑林区');
INSERT INTO `county` VALUES ('2636', '290', '莲湖区');
INSERT INTO `county` VALUES ('2637', '290', '灞桥区');
INSERT INTO `county` VALUES ('2638', '290', '未央区');
INSERT INTO `county` VALUES ('2639', '290', '雁塔区');
INSERT INTO `county` VALUES ('2640', '290', '阎良区');
INSERT INTO `county` VALUES ('2641', '290', '临潼区');
INSERT INTO `county` VALUES ('2642', '290', '长安区');
INSERT INTO `county` VALUES ('2643', '290', '蓝田县');
INSERT INTO `county` VALUES ('2644', '290', '周至县');
INSERT INTO `county` VALUES ('2645', '290', '户县');
INSERT INTO `county` VALUES ('2646', '290', '高陵县');
INSERT INTO `county` VALUES ('2647', '290', '高新区');
INSERT INTO `county` VALUES ('2648', '291', '王益区');
INSERT INTO `county` VALUES ('2649', '291', '印台区');
INSERT INTO `county` VALUES ('2650', '291', '耀州区');
INSERT INTO `county` VALUES ('2651', '291', '宜君县');
INSERT INTO `county` VALUES ('2652', '291', '新区');
INSERT INTO `county` VALUES ('2653', '292', '渭滨区');
INSERT INTO `county` VALUES ('2654', '292', '金台区');
INSERT INTO `county` VALUES ('2655', '292', '陈仓区');
INSERT INTO `county` VALUES ('2656', '292', '凤翔县');
INSERT INTO `county` VALUES ('2657', '292', '岐山县');
INSERT INTO `county` VALUES ('2658', '292', '扶风县');
INSERT INTO `county` VALUES ('2659', '292', '眉县');
INSERT INTO `county` VALUES ('2660', '292', '陇县');
INSERT INTO `county` VALUES ('2661', '292', '千阳县');
INSERT INTO `county` VALUES ('2662', '292', '麟游县');
INSERT INTO `county` VALUES ('2663', '292', '凤县');
INSERT INTO `county` VALUES ('2664', '292', '太白县');
INSERT INTO `county` VALUES ('2665', '293', '秦都区');
INSERT INTO `county` VALUES ('2666', '293', '渭城区');
INSERT INTO `county` VALUES ('2667', '293', '杨陵区');
INSERT INTO `county` VALUES ('2668', '293', '三原县');
INSERT INTO `county` VALUES ('2669', '293', '泾阳县');
INSERT INTO `county` VALUES ('2670', '293', '兴平市');
INSERT INTO `county` VALUES ('2671', '293', '乾县');
INSERT INTO `county` VALUES ('2672', '293', '礼泉县');
INSERT INTO `county` VALUES ('2673', '293', '永寿县');
INSERT INTO `county` VALUES ('2674', '293', '彬县');
INSERT INTO `county` VALUES ('2675', '293', '长武县');
INSERT INTO `county` VALUES ('2676', '293', '旬邑县');
INSERT INTO `county` VALUES ('2677', '293', '淳化县');
INSERT INTO `county` VALUES ('2678', '293', '武功县');
INSERT INTO `county` VALUES ('2679', '294', '临渭区');
INSERT INTO `county` VALUES ('2680', '294', '华县');
INSERT INTO `county` VALUES ('2681', '294', '潼关县');
INSERT INTO `county` VALUES ('2682', '294', '大荔县');
INSERT INTO `county` VALUES ('2683', '294', '合阳县');
INSERT INTO `county` VALUES ('2684', '294', '澄城县');
INSERT INTO `county` VALUES ('2685', '294', '蒲城县');
INSERT INTO `county` VALUES ('2686', '294', '白水县');
INSERT INTO `county` VALUES ('2687', '294', '富平县');
INSERT INTO `county` VALUES ('2688', '294', '韩城市');
INSERT INTO `county` VALUES ('2689', '294', '华阴市');
INSERT INTO `county` VALUES ('2690', '295', '宝塔区');
INSERT INTO `county` VALUES ('2691', '295', '延长县');
INSERT INTO `county` VALUES ('2692', '295', '延川县');
INSERT INTO `county` VALUES ('2693', '295', '子长县');
INSERT INTO `county` VALUES ('2694', '295', '安塞县');
INSERT INTO `county` VALUES ('2695', '295', '志丹县');
INSERT INTO `county` VALUES ('2696', '295', '吴旗县');
INSERT INTO `county` VALUES ('2697', '295', '甘泉县');
INSERT INTO `county` VALUES ('2698', '295', '富县');
INSERT INTO `county` VALUES ('2699', '295', '洛川县');
INSERT INTO `county` VALUES ('2700', '295', '宜川县');
INSERT INTO `county` VALUES ('2701', '295', '黄龙县');
INSERT INTO `county` VALUES ('2702', '295', '黄陵县');
INSERT INTO `county` VALUES ('2703', '296', '汉台区');
INSERT INTO `county` VALUES ('2704', '296', '南郑县');
INSERT INTO `county` VALUES ('2705', '296', '城固县');
INSERT INTO `county` VALUES ('2706', '296', '洋县');
INSERT INTO `county` VALUES ('2707', '296', '西乡县');
INSERT INTO `county` VALUES ('2708', '296', '勉县');
INSERT INTO `county` VALUES ('2709', '296', '宁强县');
INSERT INTO `county` VALUES ('2710', '296', '略阳县');
INSERT INTO `county` VALUES ('2711', '296', '镇巴县');
INSERT INTO `county` VALUES ('2712', '296', '留坝县');
INSERT INTO `county` VALUES ('2713', '296', '佛坪县');
INSERT INTO `county` VALUES ('2714', '296', '经济开发区');
INSERT INTO `county` VALUES ('2715', '297', '榆阳区');
INSERT INTO `county` VALUES ('2716', '297', '神木县');
INSERT INTO `county` VALUES ('2717', '297', '府谷县');
INSERT INTO `county` VALUES ('2718', '297', '横山县');
INSERT INTO `county` VALUES ('2719', '297', '靖边县');
INSERT INTO `county` VALUES ('2720', '297', '定边县');
INSERT INTO `county` VALUES ('2721', '297', '绥德县');
INSERT INTO `county` VALUES ('2722', '297', '米脂县');
INSERT INTO `county` VALUES ('2723', '297', '佳县');
INSERT INTO `county` VALUES ('2724', '297', '吴堡县');
INSERT INTO `county` VALUES ('2725', '297', '清涧县');
INSERT INTO `county` VALUES ('2726', '297', '子洲县');
INSERT INTO `county` VALUES ('2727', '298', '汉滨区');
INSERT INTO `county` VALUES ('2728', '298', '汉阴县');
INSERT INTO `county` VALUES ('2729', '298', '石泉县');
INSERT INTO `county` VALUES ('2730', '298', '宁陕县');
INSERT INTO `county` VALUES ('2731', '298', '紫阳县');
INSERT INTO `county` VALUES ('2732', '298', '岚皋县');
INSERT INTO `county` VALUES ('2733', '298', '平利县');
INSERT INTO `county` VALUES ('2734', '298', '镇坪县');
INSERT INTO `county` VALUES ('2735', '298', '旬阳县');
INSERT INTO `county` VALUES ('2736', '298', '白河县');
INSERT INTO `county` VALUES ('2737', '299', '商州区');
INSERT INTO `county` VALUES ('2738', '299', '洛南县');
INSERT INTO `county` VALUES ('2739', '299', '丹凤县');
INSERT INTO `county` VALUES ('2740', '299', '商南县');
INSERT INTO `county` VALUES ('2741', '299', '山阳县');
INSERT INTO `county` VALUES ('2742', '299', '镇安县');
INSERT INTO `county` VALUES ('2743', '299', '柞水县');
INSERT INTO `county` VALUES ('2744', '300', '城关区');
INSERT INTO `county` VALUES ('2745', '300', '七里河区');
INSERT INTO `county` VALUES ('2746', '300', '西固区');
INSERT INTO `county` VALUES ('2747', '300', '安宁区');
INSERT INTO `county` VALUES ('2748', '300', '红古区');
INSERT INTO `county` VALUES ('2749', '300', '永登县');
INSERT INTO `county` VALUES ('2750', '300', '皋兰县');
INSERT INTO `county` VALUES ('2751', '300', '榆中县');
INSERT INTO `county` VALUES ('2752', '301', '嘉峪关市');
INSERT INTO `county` VALUES ('2753', '302', '金川区');
INSERT INTO `county` VALUES ('2754', '302', '永昌县');
INSERT INTO `county` VALUES ('2755', '303', '白银区');
INSERT INTO `county` VALUES ('2756', '303', '平川区');
INSERT INTO `county` VALUES ('2757', '303', '靖远县');
INSERT INTO `county` VALUES ('2758', '303', '会宁县');
INSERT INTO `county` VALUES ('2759', '303', '景泰县');
INSERT INTO `county` VALUES ('2760', '304', '秦州区');
INSERT INTO `county` VALUES ('2761', '304', '麦积区');
INSERT INTO `county` VALUES ('2762', '304', '清水县');
INSERT INTO `county` VALUES ('2763', '304', '秦安县');
INSERT INTO `county` VALUES ('2764', '304', '甘谷县');
INSERT INTO `county` VALUES ('2765', '304', '武山县');
INSERT INTO `county` VALUES ('2766', '304', '张家川回族自治县');
INSERT INTO `county` VALUES ('2767', '305', '凉州区');
INSERT INTO `county` VALUES ('2768', '305', '民勤县');
INSERT INTO `county` VALUES ('2769', '305', '古浪县');
INSERT INTO `county` VALUES ('2770', '305', '天祝藏族自治县');
INSERT INTO `county` VALUES ('2771', '306', '甘州区');
INSERT INTO `county` VALUES ('2772', '306', '肃南裕固族自治县');
INSERT INTO `county` VALUES ('2773', '306', '民乐县');
INSERT INTO `county` VALUES ('2774', '306', '临泽县');
INSERT INTO `county` VALUES ('2775', '306', '高台县');
INSERT INTO `county` VALUES ('2776', '306', '山丹县');
INSERT INTO `county` VALUES ('2777', '307', '崆峒区');
INSERT INTO `county` VALUES ('2778', '307', '泾川县');
INSERT INTO `county` VALUES ('2779', '307', '灵台县');
INSERT INTO `county` VALUES ('2780', '307', '崇信县');
INSERT INTO `county` VALUES ('2781', '307', '华亭县');
INSERT INTO `county` VALUES ('2782', '307', '庄浪县');
INSERT INTO `county` VALUES ('2783', '307', '静宁县');
INSERT INTO `county` VALUES ('2784', '308', '肃州区');
INSERT INTO `county` VALUES ('2785', '308', '金塔县');
INSERT INTO `county` VALUES ('2786', '308', '安西县');
INSERT INTO `county` VALUES ('2787', '308', '肃北蒙古族自治县');
INSERT INTO `county` VALUES ('2788', '308', '阿克塞哈萨克族自治县');
INSERT INTO `county` VALUES ('2789', '308', '玉门市');
INSERT INTO `county` VALUES ('2790', '308', '敦煌市');
INSERT INTO `county` VALUES ('2791', '309', '西峰区');
INSERT INTO `county` VALUES ('2792', '309', '庆城县');
INSERT INTO `county` VALUES ('2793', '309', '环县');
INSERT INTO `county` VALUES ('2794', '309', '华池县');
INSERT INTO `county` VALUES ('2795', '309', '合水县');
INSERT INTO `county` VALUES ('2796', '309', '正宁县');
INSERT INTO `county` VALUES ('2797', '309', '宁县');
INSERT INTO `county` VALUES ('2798', '309', '镇原县');
INSERT INTO `county` VALUES ('2799', '310', '安定区');
INSERT INTO `county` VALUES ('2800', '310', '通渭县');
INSERT INTO `county` VALUES ('2801', '310', '陇西县');
INSERT INTO `county` VALUES ('2802', '310', '渭源县');
INSERT INTO `county` VALUES ('2803', '310', '临洮县');
INSERT INTO `county` VALUES ('2804', '310', '漳县');
INSERT INTO `county` VALUES ('2805', '310', '岷县');
INSERT INTO `county` VALUES ('2806', '311', '武都区');
INSERT INTO `county` VALUES ('2807', '311', '成县');
INSERT INTO `county` VALUES ('2808', '311', '文县');
INSERT INTO `county` VALUES ('2809', '311', '宕昌县');
INSERT INTO `county` VALUES ('2810', '311', '康县');
INSERT INTO `county` VALUES ('2811', '311', '西和县');
INSERT INTO `county` VALUES ('2812', '311', '礼县');
INSERT INTO `county` VALUES ('2813', '311', '徽县');
INSERT INTO `county` VALUES ('2814', '311', '两当县');
INSERT INTO `county` VALUES ('2815', '312', '临夏市');
INSERT INTO `county` VALUES ('2816', '312', '临夏县');
INSERT INTO `county` VALUES ('2817', '312', '康乐县');
INSERT INTO `county` VALUES ('2818', '312', '永靖县');
INSERT INTO `county` VALUES ('2819', '312', '广河县');
INSERT INTO `county` VALUES ('2820', '312', '和政县');
INSERT INTO `county` VALUES ('2821', '312', '东乡族自治县');
INSERT INTO `county` VALUES ('2822', '312', '积石山保安族东乡族撒拉族自治县');
INSERT INTO `county` VALUES ('2823', '313', '合作市');
INSERT INTO `county` VALUES ('2824', '313', '临潭县');
INSERT INTO `county` VALUES ('2825', '313', '卓尼县');
INSERT INTO `county` VALUES ('2826', '313', '舟曲县');
INSERT INTO `county` VALUES ('2827', '313', '迭部县');
INSERT INTO `county` VALUES ('2828', '313', '玛曲县');
INSERT INTO `county` VALUES ('2829', '313', '碌曲县');
INSERT INTO `county` VALUES ('2830', '313', '夏河县');
INSERT INTO `county` VALUES ('2831', '314', '城东区');
INSERT INTO `county` VALUES ('2832', '314', '城中区');
INSERT INTO `county` VALUES ('2833', '314', '城西区');
INSERT INTO `county` VALUES ('2834', '314', '城北区');
INSERT INTO `county` VALUES ('2835', '314', '大通回族土族自治县');
INSERT INTO `county` VALUES ('2836', '314', '湟中县');
INSERT INTO `county` VALUES ('2837', '314', '湟源县');
INSERT INTO `county` VALUES ('2838', '315', '平安县');
INSERT INTO `county` VALUES ('2839', '315', '民和回族土族自治县');
INSERT INTO `county` VALUES ('2840', '315', '乐都县');
INSERT INTO `county` VALUES ('2841', '315', '互助土族自治县');
INSERT INTO `county` VALUES ('2842', '315', '化隆回族自治县');
INSERT INTO `county` VALUES ('2843', '315', '循化撒拉族自治县');
INSERT INTO `county` VALUES ('2844', '316', '门源回族自治县');
INSERT INTO `county` VALUES ('2845', '316', '祁连县');
INSERT INTO `county` VALUES ('2846', '316', '海晏县');
INSERT INTO `county` VALUES ('2847', '316', '刚察县');
INSERT INTO `county` VALUES ('2848', '317', '同仁县');
INSERT INTO `county` VALUES ('2849', '317', '尖扎县');
INSERT INTO `county` VALUES ('2850', '317', '泽库县');
INSERT INTO `county` VALUES ('2851', '317', '河南蒙古族自治县');
INSERT INTO `county` VALUES ('2852', '318', '共和县');
INSERT INTO `county` VALUES ('2853', '318', '同德县');
INSERT INTO `county` VALUES ('2854', '318', '贵德县');
INSERT INTO `county` VALUES ('2855', '318', '兴海县');
INSERT INTO `county` VALUES ('2856', '318', '贵南县');
INSERT INTO `county` VALUES ('2857', '319', '玛沁县');
INSERT INTO `county` VALUES ('2858', '319', '班玛县');
INSERT INTO `county` VALUES ('2859', '319', '甘德县');
INSERT INTO `county` VALUES ('2860', '319', '达日县');
INSERT INTO `county` VALUES ('2861', '319', '久治县');
INSERT INTO `county` VALUES ('2862', '319', '玛多县');
INSERT INTO `county` VALUES ('2863', '320', '玉树县');
INSERT INTO `county` VALUES ('2864', '320', '杂多县');
INSERT INTO `county` VALUES ('2865', '320', '称多县');
INSERT INTO `county` VALUES ('2866', '320', '治多县');
INSERT INTO `county` VALUES ('2867', '320', '囊谦县');
INSERT INTO `county` VALUES ('2868', '320', '曲麻莱县');
INSERT INTO `county` VALUES ('2869', '321', '格尔木市');
INSERT INTO `county` VALUES ('2870', '321', '德令哈市');
INSERT INTO `county` VALUES ('2871', '321', '乌兰县');
INSERT INTO `county` VALUES ('2872', '321', '都兰县');
INSERT INTO `county` VALUES ('2873', '321', '天峻县');
INSERT INTO `county` VALUES ('2874', '321', '大柴旦行委');
INSERT INTO `county` VALUES ('2875', '322', '兴庆区');
INSERT INTO `county` VALUES ('2876', '322', '西夏区');
INSERT INTO `county` VALUES ('2877', '322', '金凤区');
INSERT INTO `county` VALUES ('2878', '322', '永宁县');
INSERT INTO `county` VALUES ('2879', '322', '贺兰县');
INSERT INTO `county` VALUES ('2880', '322', '灵武市');
INSERT INTO `county` VALUES ('2881', '323', '大武口区');
INSERT INTO `county` VALUES ('2882', '323', '惠农区');
INSERT INTO `county` VALUES ('2883', '323', '平罗县');
INSERT INTO `county` VALUES ('2884', '324', '利通区');
INSERT INTO `county` VALUES ('2885', '324', '盐池县');
INSERT INTO `county` VALUES ('2886', '324', '同心县');
INSERT INTO `county` VALUES ('2887', '324', '青铜峡市');
INSERT INTO `county` VALUES ('2888', '325', '原州区');
INSERT INTO `county` VALUES ('2889', '325', '西吉县');
INSERT INTO `county` VALUES ('2890', '325', '隆德县');
INSERT INTO `county` VALUES ('2891', '325', '泾源县');
INSERT INTO `county` VALUES ('2892', '325', '彭阳县');
INSERT INTO `county` VALUES ('2893', '326', '沙坡头区');
INSERT INTO `county` VALUES ('2894', '326', '中宁县');
INSERT INTO `county` VALUES ('2895', '326', '海原县');
INSERT INTO `county` VALUES ('2896', '327', '天山区');
INSERT INTO `county` VALUES ('2897', '327', '沙依巴克区');
INSERT INTO `county` VALUES ('2898', '327', '新市区');
INSERT INTO `county` VALUES ('2899', '327', '水磨沟区');
INSERT INTO `county` VALUES ('2900', '327', '头屯河区');
INSERT INTO `county` VALUES ('2901', '327', '达坂城区');
INSERT INTO `county` VALUES ('2902', '327', '米东区');
INSERT INTO `county` VALUES ('2903', '327', '乌鲁木齐县');
INSERT INTO `county` VALUES ('2904', '328', '独山子区');
INSERT INTO `county` VALUES ('2905', '328', '克拉玛依区');
INSERT INTO `county` VALUES ('2906', '328', '白碱滩区');
INSERT INTO `county` VALUES ('2907', '328', '乌尔禾区');
INSERT INTO `county` VALUES ('2908', '329', '吐鲁番市');
INSERT INTO `county` VALUES ('2909', '329', '鄯善县');
INSERT INTO `county` VALUES ('2910', '329', '托克逊县');
INSERT INTO `county` VALUES ('2911', '330', '哈密市');
INSERT INTO `county` VALUES ('2912', '330', '巴里坤哈萨克自治县');
INSERT INTO `county` VALUES ('2913', '330', '伊吾县');
INSERT INTO `county` VALUES ('2914', '331', '昌吉市');
INSERT INTO `county` VALUES ('2915', '331', '阜康市');
INSERT INTO `county` VALUES ('2916', '331', '米泉市');
INSERT INTO `county` VALUES ('2917', '331', '呼图壁县');
INSERT INTO `county` VALUES ('2918', '331', '玛纳斯县');
INSERT INTO `county` VALUES ('2919', '331', '奇台县');
INSERT INTO `county` VALUES ('2920', '331', '吉木萨尔县');
INSERT INTO `county` VALUES ('2921', '331', '木垒哈萨克自治县');
INSERT INTO `county` VALUES ('2922', '332', '博乐市');
INSERT INTO `county` VALUES ('2923', '332', '精河县');
INSERT INTO `county` VALUES ('2924', '332', '温泉县');
INSERT INTO `county` VALUES ('2925', '333', '库尔勒市');
INSERT INTO `county` VALUES ('2926', '333', '轮台县');
INSERT INTO `county` VALUES ('2927', '333', '尉犁县');
INSERT INTO `county` VALUES ('2928', '333', '若羌县');
INSERT INTO `county` VALUES ('2929', '333', '且末县');
INSERT INTO `county` VALUES ('2930', '333', '焉耆回族自治县');
INSERT INTO `county` VALUES ('2931', '333', '和静县');
INSERT INTO `county` VALUES ('2932', '333', '和硕县');
INSERT INTO `county` VALUES ('2933', '333', '博湖县');
INSERT INTO `county` VALUES ('2934', '334', '阿克苏市');
INSERT INTO `county` VALUES ('2935', '334', '温宿县');
INSERT INTO `county` VALUES ('2936', '334', '库车县');
INSERT INTO `county` VALUES ('2937', '334', '沙雅县');
INSERT INTO `county` VALUES ('2938', '334', '新和县');
INSERT INTO `county` VALUES ('2939', '334', '拜城县');
INSERT INTO `county` VALUES ('2940', '334', '乌什县');
INSERT INTO `county` VALUES ('2941', '334', '阿瓦提县');
INSERT INTO `county` VALUES ('2942', '334', '柯坪县');
INSERT INTO `county` VALUES ('2943', '335', '阿图什市');
INSERT INTO `county` VALUES ('2944', '335', '阿克陶县');
INSERT INTO `county` VALUES ('2945', '335', '阿合奇县');
INSERT INTO `county` VALUES ('2946', '335', '乌恰县');
INSERT INTO `county` VALUES ('2947', '336', '喀什市');
INSERT INTO `county` VALUES ('2948', '336', '疏附县');
INSERT INTO `county` VALUES ('2949', '336', '疏勒县');
INSERT INTO `county` VALUES ('2950', '336', '英吉沙县');
INSERT INTO `county` VALUES ('2951', '336', '泽普县');
INSERT INTO `county` VALUES ('2952', '336', '莎车县');
INSERT INTO `county` VALUES ('2953', '336', '叶城县');
INSERT INTO `county` VALUES ('2954', '336', '麦盖提县');
INSERT INTO `county` VALUES ('2955', '336', '岳普湖县');
INSERT INTO `county` VALUES ('2956', '336', '伽师县');
INSERT INTO `county` VALUES ('2957', '336', '巴楚县');
INSERT INTO `county` VALUES ('2958', '336', '塔什库尔干塔吉克自治县');
INSERT INTO `county` VALUES ('2959', '337', '和田市');
INSERT INTO `county` VALUES ('2960', '337', '和田县');
INSERT INTO `county` VALUES ('2961', '337', '墨玉县');
INSERT INTO `county` VALUES ('2962', '337', '皮山县');
INSERT INTO `county` VALUES ('2963', '337', '洛浦县');
INSERT INTO `county` VALUES ('2964', '337', '策勒县');
INSERT INTO `county` VALUES ('2965', '337', '于田县');
INSERT INTO `county` VALUES ('2966', '337', '民丰县');
INSERT INTO `county` VALUES ('2967', '338', '伊宁市');
INSERT INTO `county` VALUES ('2968', '338', '奎屯市');
INSERT INTO `county` VALUES ('2969', '338', '伊宁县');
INSERT INTO `county` VALUES ('2970', '338', '察布查尔锡伯自治县');
INSERT INTO `county` VALUES ('2971', '338', '霍城县');
INSERT INTO `county` VALUES ('2972', '338', '巩留县');
INSERT INTO `county` VALUES ('2973', '338', '新源县');
INSERT INTO `county` VALUES ('2974', '338', '昭苏县');
INSERT INTO `county` VALUES ('2975', '338', '特克斯县');
INSERT INTO `county` VALUES ('2976', '338', '尼勒克县');
INSERT INTO `county` VALUES ('2977', '339', '塔城市');
INSERT INTO `county` VALUES ('2978', '339', '乌苏市');
INSERT INTO `county` VALUES ('2979', '339', '额敏县');
INSERT INTO `county` VALUES ('2980', '339', '沙湾县');
INSERT INTO `county` VALUES ('2981', '339', '托里县');
INSERT INTO `county` VALUES ('2982', '339', '裕民县');
INSERT INTO `county` VALUES ('2983', '339', '和布克赛尔蒙古自治县');
INSERT INTO `county` VALUES ('2984', '340', '阿勒泰市');
INSERT INTO `county` VALUES ('2985', '340', '布尔津县');
INSERT INTO `county` VALUES ('2986', '340', '富蕴县');
INSERT INTO `county` VALUES ('2987', '340', '福海县');
INSERT INTO `county` VALUES ('2988', '340', '哈巴河县');
INSERT INTO `county` VALUES ('2989', '340', '青河县');
INSERT INTO `county` VALUES ('2990', '340', '吉木乃县');
INSERT INTO `county` VALUES ('2991', '341', '石河子市');
INSERT INTO `county` VALUES ('2992', '341', '阿拉尔市');
INSERT INTO `county` VALUES ('2993', '341', '图木舒克市');
INSERT INTO `county` VALUES ('2994', '341', '五家渠市');
INSERT INTO `county` VALUES ('2995', '342', '香港');
INSERT INTO `county` VALUES ('2996', '343', '澳门');
INSERT INTO `county` VALUES ('2997', '344', '台湾');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `teacherId` int(11) DEFAULT NULL,
  `courseName` varchar(80) NOT NULL,
  `courseAd` varchar(40) DEFAULT NULL,
  `courseDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT NULL,
  `courseTime` varchar(40) NOT NULL,
  `courseIndex` varchar(120) DEFAULT NULL,
  `courseInfo` text,
  `studyNumber` int(11) DEFAULT '0',
  `courseLevel` varchar(40) DEFAULT '初级',
  `updateTo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`courseId`),
  KEY `FK_teacherCourse` (`teacherId`),
  KEY `FK_courseTypes` (`typeId`),
  CONSTRAINT `FK_courseTypes` FOREIGN KEY (`typeId`) REFERENCES `coursetype` (`typeId`),
  CONSTRAINT `FK_teacherCourse` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`teacherId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '26', '1', 'Cocos2d-x游戏开发初体验-C++篇', '国足都出成绩了，你还不来学？', '2015-07-07 21:08:01', '2015-06-10 00:00:00', '1小时1分钟', 'frontstage/img/test/1.jpg', '游戏开发博大精深，在这个后页游时期的手游时代，还在为无法入门游戏行业而烦恼吗？Cocos2d-x就是一款专门为手机游戏打造的开源游戏引擎，够轻量、够简单。在这个不一样的时代，雷哥将带着你走出一个不一样的自己\r\n游戏开发博大精深，在这个后页游时期的手游时代，还在为无法入门游戏行业而烦恼吗？Cocos2d-x就是一款专门为手机游戏打造的开源游戏引擎，够轻量、够简单。在这个不一样的时代，雷哥将带着你走出一个不一样的自己', '11', '初级', '1-1');
INSERT INTO `course` VALUES ('2', '6', '1', '测试开设课程', '我课程都传上来了、你还不来看？', '2015-07-07 21:08:02', '2015-06-09 00:00:00', '1小时30分钟', 'frontstage/img/test/1.jpg', '这是测试开设一门课程', '8', '初级', '1-1');
INSERT INTO `course` VALUES ('4', '15', '4', '第二次测试', '我课程都传上来了、你还不来看？', '2015-07-07 21:08:02', '2015-06-15 00:00:00', '1小时30分钟', 'frontstage/img/test/1.jpg', '这是测试开设一门课程', '11', '中级', '1-1');
INSERT INTO `course` VALUES ('5', '13', '2', '名称', '这是课程宣语', '2015-07-07 21:08:03', '2015-06-15 00:00:00', '1小时30分钟', 'frontstage/img/test/1.jpg', '这里是课程简介', '10', '初级', '1-1');
INSERT INTO `course` VALUES ('6', '6', '2', '第1门课程测试数据', '这是第1门课程的宣语', '2015-07-07 17:46:49', '2015-07-07 16:48:00', '4小时20分钟', 'frontstage/img/test/course/1.jpg', '这里是第1门课程简介的内容', '16', '中级', '1-1');
INSERT INTO `course` VALUES ('7', '7', '3', '第2门课程测试数据', '这是第2门课程的宣语', '2015-07-07 17:46:51', '2015-07-07 16:48:00', '4小时20分钟', 'frontstage/img/test/course/2.jpg', '这里是第2门课程简介的内容', '13', '初级', '1-1');
INSERT INTO `course` VALUES ('8', '8', '4', '第3门课程测试数据', '这是第3门课程的宣语', '2015-07-07 17:46:53', '2015-07-07 16:48:00', '4小时20分钟', 'frontstage/img/test/course/3.jpg', '这里是第3门课程简介的内容', '17', '中级', '1-1');
INSERT INTO `course` VALUES ('9', '9', '5', '第4门课程测试数据', '这是第4门课程的宣语', '2015-07-07 17:47:05', '2015-07-07 16:48:00', '4小时20分钟', 'frontstage/img/test/course/4.jpg', '这里是第4门课程简介的内容', '8', '初级', '1-1');
INSERT INTO `course` VALUES ('10', '10', '1', '第5门课程测试数据', '这是第5门课程的宣语', '2015-07-07 17:47:08', '2015-07-07 16:48:00', '4小时20分钟', 'frontstage/img/test/course/5.jpg', '这里是第5门课程简介的内容', '16', '中级', '1-1');
INSERT INTO `course` VALUES ('11', '11', '2', '第6门课程测试数据', '这是第6门课程的宣语', '2015-07-07 17:47:11', '2015-07-07 16:48:00', '4小时20分钟', 'frontstage/img/test/course/6.jpg', '这里是第6门课程简介的内容', '10', '初级', '1-1');
INSERT INTO `course` VALUES ('12', '12', '3', '第7门课程测试数据', '这是第7门课程的宣语', '2015-07-07 17:47:13', '2015-07-16 17:19:13', '4小时20分钟', 'frontstage/img/test/course/7.jpg', '这里是第7门课程简介的内容', '10', '中级', '1-1');
INSERT INTO `course` VALUES ('13', '13', '4', '第8门课程测试数据', '这是第8门课程的宣语', '2015-07-07 17:47:15', '2015-07-07 16:48:00', '4小时20分钟', 'frontstage/img/test/course/8.jpg', '这里是第8门课程简介的内容', '14', '初级', '1-1');
INSERT INTO `course` VALUES ('14', '13', '5', '第9门课程测试数据', '这是第9门课程的宣语', '2015-07-07 17:47:24', '2015-07-07 16:48:00', '4小时20分钟', 'frontstage/img/test/course/9.jpg', '这里是第9门课程简介的内容', '6', '中级', '1-1');
INSERT INTO `course` VALUES ('15', '13', '1', '第10门课程测试数据', '这是第10门课程的宣语', '2015-07-07 17:47:27', '2015-07-07 16:48:00', '4小时20分钟', 'frontstage/img/test/course/10.jpg', '这里是第10门课程简介的内容', '12', '初级', '1-1');
INSERT INTO `course` VALUES ('16', '16', '2', '第11门课程测试数据', '这是第11门课程的宣语', '2015-07-07 17:47:30', '2015-07-07 16:48:00', '4小时20分钟', 'frontstage/img/test/course/11.jpg', '这里是第11门课程简介的内容', '13', '中级', '1-1');

-- ----------------------------
-- Table structure for `coursecomment`
-- ----------------------------
DROP TABLE IF EXISTS `coursecomment`;
CREATE TABLE `coursecomment` (
  `commentId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `commentInfo` text NOT NULL,
  `agreeNumber` int(11) DEFAULT '0',
  `date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`commentId`),
  KEY `FK_courseComment` (`courseId`),
  KEY `FK_userComment` (`userId`),
  CONSTRAINT `FK_courseComment` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`),
  CONSTRAINT `FK_userComment` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursecomment
-- ----------------------------
INSERT INTO `coursecomment` VALUES ('1', '42', '1', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('2', '27', '1', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('3', '119', '1', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('4', '174', '1', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('5', '40', '1', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('6', '75', '1', '这里是第5条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('7', '188', '2', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('8', '69', '2', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('9', '13', '2', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('10', '132', '2', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('11', '122', '2', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('12', '125', '2', '这里是第5条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('13', '49', '2', '这里是第6条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('14', '75', '4', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('15', '110', '4', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('16', '38', '4', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('17', '13', '4', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('18', '13', '4', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('19', '191', '4', '这里是第5条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('20', '59', '5', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('21', '51', '5', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('22', '121', '5', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('23', '174', '5', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('24', '193', '5', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('25', '112', '5', '这里是第5条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('26', '179', '5', '这里是第6条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('27', '172', '6', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('28', '168', '6', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('29', '55', '6', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('30', '71', '6', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('31', '166', '6', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('32', '32', '7', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('33', '150', '7', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('34', '148', '7', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('35', '75', '7', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('36', '94', '7', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('37', '176', '7', '这里是第5条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('38', '90', '8', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('39', '159', '8', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('40', '9', '8', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('41', '31', '8', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('42', '19', '8', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('43', '143', '8', '这里是第5条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('44', '99', '8', '这里是第6条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('45', '155', '9', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('46', '86', '9', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('47', '42', '9', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('48', '123', '9', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('49', '12', '9', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('50', '14', '10', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('51', '111', '10', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('52', '175', '10', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('53', '112', '10', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('54', '65', '10', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('55', '145', '10', '这里是第5条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('56', '198', '11', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('57', '121', '11', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('58', '132', '11', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('59', '68', '11', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('60', '108', '11', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('61', '38', '11', '这里是第5条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('62', '188', '11', '这里是第6条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('63', '66', '12', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('64', '158', '12', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('65', '28', '12', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('66', '31', '12', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('67', '39', '12', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('68', '173', '13', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('69', '201', '13', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('70', '161', '13', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('71', '77', '13', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('72', '112', '13', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('73', '198', '13', '这里是第5条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('74', '99', '14', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('75', '85', '14', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('76', '162', '14', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('77', '86', '14', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('78', '117', '14', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('79', '43', '14', '这里是第5条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('80', '179', '14', '这里是第6条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('81', '55', '15', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('82', '68', '15', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('83', '172', '15', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('84', '67', '15', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('85', '83', '15', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('86', '191', '16', '这里是第0条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('87', '199', '16', '这里是第1条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('88', '176', '16', '这里是第2条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('89', '51', '16', '这里是第3条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('90', '187', '16', '这里是第4条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('91', '189', '16', '这里是第5条评论内容', '0', null);
INSERT INTO `coursecomment` VALUES ('92', '13', '6', '<p>aaaa<br/></p>', '0', '2015-07-13 11:39:26');
INSERT INTO `coursecomment` VALUES ('93', '13', '6', '<p>dd</p>', '0', '2015-07-13 11:39:29');
INSERT INTO `coursecomment` VALUES ('94', '210', '6', '<p>ss<br/></p>', '0', '2015-07-13 13:55:16');
INSERT INTO `coursecomment` VALUES ('95', '210', '6', 'aaa', '0', '2015-07-13 13:55:24');
INSERT INTO `coursecomment` VALUES ('96', '210', '6', '<p>sss<br/></p>', '0', '2015-07-13 14:51:44');
INSERT INTO `coursecomment` VALUES ('97', '210', '6', '<p>aa<br/></p>', '0', '2015-07-13 14:56:54');
INSERT INTO `coursecomment` VALUES ('98', '210', '6', '<p>dd<br/></p>', '0', '2015-07-13 14:57:07');
INSERT INTO `coursecomment` VALUES ('99', '2', '7', '<p><img src=\"/izhi/frontstage/js/ueditor/dialogs/emotion/images/jx2/j_0027.gif\"/> 这里是评论内容<br/></p>', '0', '2015-07-14 11:14:20');
INSERT INTO `coursecomment` VALUES ('100', '2', '6', '<p>测试<br/></p>', '0', '2015-07-14 13:20:57');

-- ----------------------------
-- Table structure for `courselabel`
-- ----------------------------
DROP TABLE IF EXISTS `courselabel`;
CREATE TABLE `courselabel` (
  `labelId` int(11) NOT NULL,
  `labelName` varchar(40) NOT NULL,
  `labelValue` int(11) DEFAULT '0',
  PRIMARY KEY (`labelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courselabel
-- ----------------------------
INSERT INTO `courselabel` VALUES ('1', '循循善诱', '0');
INSERT INTO `courselabel` VALUES ('2', '抑扬顿挫', '0');
INSERT INTO `courselabel` VALUES ('3', '茅塞顿开', '0');
INSERT INTO `courselabel` VALUES ('4', '因材施教', '0');
INSERT INTO `courselabel` VALUES ('5', '循循善诱', '0');
INSERT INTO `courselabel` VALUES ('6', '惟妙惟肖', '0');
INSERT INTO `courselabel` VALUES ('7', '津津有味', '0');
INSERT INTO `courselabel` VALUES ('8', '绘声绘色', '0');
INSERT INTO `courselabel` VALUES ('9', '娓娓动听', '0');
INSERT INTO `courselabel` VALUES ('10', '妙语连珠', '0');
INSERT INTO `courselabel` VALUES ('11', '余音袅袅', '0');
INSERT INTO `courselabel` VALUES ('12', '活神活现', '0');
INSERT INTO `courselabel` VALUES ('13', '出口成章', '0');
INSERT INTO `courselabel` VALUES ('14', '行云流水', '0');
INSERT INTO `courselabel` VALUES ('15', '引人入胜', '0');
INSERT INTO `courselabel` VALUES ('16', '如痴如醉', '0');
INSERT INTO `courselabel` VALUES ('17', '思绪万千', '0');
INSERT INTO `courselabel` VALUES ('18', '身临其境', '0');
INSERT INTO `courselabel` VALUES ('19', '字字珠玑', '0');
INSERT INTO `courselabel` VALUES ('20', '一字千金', '0');
INSERT INTO `courselabel` VALUES ('21', '精彩绝伦', '0');
INSERT INTO `courselabel` VALUES ('22', '扣人心弦', '0');
INSERT INTO `courselabel` VALUES ('23', '韵味无穷', '0');
INSERT INTO `courselabel` VALUES ('24', '精彩纷呈', '0');
INSERT INTO `courselabel` VALUES ('25', '跌宕起伏', '0');
INSERT INTO `courselabel` VALUES ('26', '纷繁复杂', '0');
INSERT INTO `courselabel` VALUES ('27', '一波三折', '0');
INSERT INTO `courselabel` VALUES ('28', '妙趣横生', '0');
INSERT INTO `courselabel` VALUES ('29', '回肠荡气', '0');
INSERT INTO `courselabel` VALUES ('30', '文采飞扬', '0');
INSERT INTO `courselabel` VALUES ('31', '文不加点', '0');
INSERT INTO `courselabel` VALUES ('32', '辞采华美', '0');

-- ----------------------------
-- Table structure for `courselabelvalue`
-- ----------------------------
DROP TABLE IF EXISTS `courselabelvalue`;
CREATE TABLE `courselabelvalue` (
  `valueId` int(11) NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `labelId` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`valueId`),
  KEY `FK__courseValue` (`courseId`),
  KEY `FK__labelValue` (`labelId`),
  CONSTRAINT `FK__courseValue` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`),
  CONSTRAINT `FK__labelValue` FOREIGN KEY (`labelId`) REFERENCES `courselabel` (`labelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courselabelvalue
-- ----------------------------
INSERT INTO `courselabelvalue` VALUES ('1', '1', '14', '0');
INSERT INTO `courselabelvalue` VALUES ('2', '1', '22', '0');
INSERT INTO `courselabelvalue` VALUES ('3', '1', '14', '0');
INSERT INTO `courselabelvalue` VALUES ('4', '2', '5', '0');
INSERT INTO `courselabelvalue` VALUES ('5', '2', '11', '0');
INSERT INTO `courselabelvalue` VALUES ('6', '2', '6', '0');
INSERT INTO `courselabelvalue` VALUES ('7', '2', '31', '0');
INSERT INTO `courselabelvalue` VALUES ('8', '4', '21', '0');
INSERT INTO `courselabelvalue` VALUES ('9', '4', '11', '0');
INSERT INTO `courselabelvalue` VALUES ('10', '4', '14', '0');
INSERT INTO `courselabelvalue` VALUES ('11', '4', '13', '0');
INSERT INTO `courselabelvalue` VALUES ('12', '4', '26', '0');
INSERT INTO `courselabelvalue` VALUES ('13', '5', '1', '0');
INSERT INTO `courselabelvalue` VALUES ('14', '5', '24', '0');
INSERT INTO `courselabelvalue` VALUES ('15', '5', '3', '0');
INSERT INTO `courselabelvalue` VALUES ('16', '5', '1', '0');
INSERT INTO `courselabelvalue` VALUES ('17', '6', '10', '0');
INSERT INTO `courselabelvalue` VALUES ('18', '6', '12', '0');
INSERT INTO `courselabelvalue` VALUES ('19', '6', '16', '0');
INSERT INTO `courselabelvalue` VALUES ('20', '6', '17', '0');
INSERT INTO `courselabelvalue` VALUES ('21', '6', '21', '0');
INSERT INTO `courselabelvalue` VALUES ('22', '7', '31', '0');
INSERT INTO `courselabelvalue` VALUES ('23', '7', '8', '0');
INSERT INTO `courselabelvalue` VALUES ('24', '7', '3', '0');
INSERT INTO `courselabelvalue` VALUES ('25', '8', '14', '0');
INSERT INTO `courselabelvalue` VALUES ('26', '8', '11', '0');
INSERT INTO `courselabelvalue` VALUES ('27', '8', '25', '0');
INSERT INTO `courselabelvalue` VALUES ('28', '8', '29', '0');
INSERT INTO `courselabelvalue` VALUES ('29', '9', '1', '0');
INSERT INTO `courselabelvalue` VALUES ('30', '9', '17', '0');
INSERT INTO `courselabelvalue` VALUES ('31', '9', '11', '0');
INSERT INTO `courselabelvalue` VALUES ('32', '10', '25', '0');
INSERT INTO `courselabelvalue` VALUES ('33', '10', '1', '0');
INSERT INTO `courselabelvalue` VALUES ('34', '11', '9', '0');
INSERT INTO `courselabelvalue` VALUES ('35', '11', '19', '0');
INSERT INTO `courselabelvalue` VALUES ('36', '11', '20', '0');
INSERT INTO `courselabelvalue` VALUES ('37', '11', '30', '0');
INSERT INTO `courselabelvalue` VALUES ('38', '11', '22', '0');

-- ----------------------------
-- Table structure for `coursetype`
-- ----------------------------
DROP TABLE IF EXISTS `coursetype`;
CREATE TABLE `coursetype` (
  `typeId` int(11) NOT NULL,
  `fatherId` int(11) DEFAULT NULL,
  `typeName` varchar(60) NOT NULL,
  PRIMARY KEY (`typeId`),
  KEY `FK_nodeType` (`fatherId`),
  CONSTRAINT `FK_nodeType` FOREIGN KEY (`fatherId`) REFERENCES `coursetype` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursetype
-- ----------------------------
INSERT INTO `coursetype` VALUES ('1', null, '前端开发');
INSERT INTO `coursetype` VALUES ('2', null, '后端开发');
INSERT INTO `coursetype` VALUES ('3', null, '移动开发');
INSERT INTO `coursetype` VALUES ('4', null, '数据处理');
INSERT INTO `coursetype` VALUES ('5', null, '图像处理');
INSERT INTO `coursetype` VALUES ('6', '1', 'HTML/CSS');
INSERT INTO `coursetype` VALUES ('7', '1', 'JavaScript');
INSERT INTO `coursetype` VALUES ('8', '1', 'CSS3');
INSERT INTO `coursetype` VALUES ('9', '1', 'Html5');
INSERT INTO `coursetype` VALUES ('10', '1', 'jQuery');
INSERT INTO `coursetype` VALUES ('11', '1', 'AngularJS');
INSERT INTO `coursetype` VALUES ('12', '1', 'Node.js');
INSERT INTO `coursetype` VALUES ('13', '1', 'Bootstrap');
INSERT INTO `coursetype` VALUES ('14', '1', 'WebApp');
INSERT INTO `coursetype` VALUES ('15', '1', '前端工具');
INSERT INTO `coursetype` VALUES ('16', '2', 'PHP');
INSERT INTO `coursetype` VALUES ('17', '2', 'JAVA');
INSERT INTO `coursetype` VALUES ('18', '2', 'Linux');
INSERT INTO `coursetype` VALUES ('19', '2', 'Python');
INSERT INTO `coursetype` VALUES ('20', '2', 'C');
INSERT INTO `coursetype` VALUES ('21', '2', 'C++');
INSERT INTO `coursetype` VALUES ('22', '2', 'Go');
INSERT INTO `coursetype` VALUES ('23', '3', 'Android');
INSERT INTO `coursetype` VALUES ('24', '3', 'iOS');
INSERT INTO `coursetype` VALUES ('25', '3', 'Unity 3D');
INSERT INTO `coursetype` VALUES ('26', '3', 'Cocos2d-x');
INSERT INTO `coursetype` VALUES ('27', '4', 'MySQL');
INSERT INTO `coursetype` VALUES ('28', '4', 'MongoDB');
INSERT INTO `coursetype` VALUES ('29', '4', '云计算');
INSERT INTO `coursetype` VALUES ('30', '4', 'Oracle');
INSERT INTO `coursetype` VALUES ('31', '5', 'Photoshop');
INSERT INTO `coursetype` VALUES ('32', '5', 'Maya');
INSERT INTO `coursetype` VALUES ('33', '5', 'Premiere');

-- ----------------------------
-- Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `feedId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `feedContext` text NOT NULL,
  `feedTime` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`feedId`),
  KEY `FK_userFeed` (`userId`),
  CONSTRAINT `FK_userFeed` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('1', '1', '这里是意见反馈测试内容', '2015-06-21 00:00:00', '0');
INSERT INTO `feedback` VALUES ('2', '2', '这里是意见反馈测试内容', '2015-06-21 00:00:00', '0');

-- ----------------------------
-- Table structure for `filter`
-- ----------------------------
DROP TABLE IF EXISTS `filter`;
CREATE TABLE `filter` (
  `filterId` int(11) NOT NULL,
  `adminId` int(11) DEFAULT NULL,
  `filterContext` varchar(40) NOT NULL,
  `replaceTo` varchar(40) NOT NULL DEFAULT '**',
  `addTime` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`filterId`),
  KEY `FK_adminFilter` (`adminId`),
  CONSTRAINT `FK_adminFilter` FOREIGN KEY (`adminId`) REFERENCES `admin` (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filter
-- ----------------------------
INSERT INTO `filter` VALUES ('1', '1', '测试添加', '**', '2015-06-24 19:35:08');
INSERT INTO `filter` VALUES ('2', '1', '测试', '..', '2015-07-16 17:21:42');

-- ----------------------------
-- Table structure for `head`
-- ----------------------------
DROP TABLE IF EXISTS `head`;
CREATE TABLE `head` (
  `headId` int(11) NOT NULL,
  `headUrl` varchar(120) NOT NULL,
  `addTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`headId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of head
-- ----------------------------
INSERT INTO `head` VALUES ('1', 'frontstage/img/test/h1.jpg', '2015-06-10 00:00:00');
INSERT INTO `head` VALUES ('2', 'frontstage/img/test/my.jpg', '2015-06-11 00:00:00');
INSERT INTO `head` VALUES ('3', 'frontstage/img/test/head/1.jpg', '2015-07-07 16:32:50');
INSERT INTO `head` VALUES ('4', 'frontstage/img/test/head/2.jpg', '2015-07-07 16:32:50');
INSERT INTO `head` VALUES ('5', 'frontstage/img/test/head/3.jpg', '2015-07-07 16:32:50');
INSERT INTO `head` VALUES ('6', 'frontstage/img/test/head/4.jpg', '2015-07-07 16:32:50');
INSERT INTO `head` VALUES ('7', 'frontstage/img/test/head/5.jpg', '2015-07-07 16:32:50');
INSERT INTO `head` VALUES ('8', 'frontstage/img/test/head/6.jpg', '2015-07-07 16:32:50');
INSERT INTO `head` VALUES ('9', 'frontstage/img/test/head/7.jpg', '2015-07-07 16:32:50');
INSERT INTO `head` VALUES ('10', 'frontstage/img/test/head/8.jpg', '2015-07-07 16:32:50');
INSERT INTO `head` VALUES ('11', 'frontstage/img/test/head/9.jpg', '2015-07-07 16:32:50');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messageId` int(11) NOT NULL,
  `sendId` int(11) DEFAULT NULL,
  `receiveId` int(11) DEFAULT NULL,
  `messageContext` text,
  `status` int(11) DEFAULT '0',
  `sendTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  KEY `FK_userReceive` (`receiveId`),
  KEY `FK_userSend` (`sendId`),
  CONSTRAINT `FK_userReceive` FOREIGN KEY (`receiveId`) REFERENCES `user` (`userId`),
  CONSTRAINT `FK_userSend` FOREIGN KEY (`sendId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1', '2', 'Hi，亲爱的test0，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '1', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('2', '1', '3', 'Hi，亲爱的test1，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('3', '1', '4', 'Hi，亲爱的test2，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('4', '1', '5', 'Hi，亲爱的test3，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('5', '1', '6', 'Hi，亲爱的test4，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('6', '1', '7', 'Hi，亲爱的test5，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('7', '1', '8', 'Hi，亲爱的test6，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('8', '1', '9', 'Hi，亲爱的test7，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('9', '1', '10', 'Hi，亲爱的test8，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('10', '1', '11', 'Hi，亲爱的test9，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('11', '1', '12', 'Hi，亲爱的test10，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('12', '1', '13', 'Hi，亲爱的test11，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '1', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('13', '1', '14', 'Hi，亲爱的test12，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('14', '1', '15', 'Hi，亲爱的test13，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('15', '1', '16', 'Hi，亲爱的test14，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:22');
INSERT INTO `message` VALUES ('16', '1', '17', 'Hi，亲爱的test15，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('17', '1', '18', 'Hi，亲爱的test16，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('18', '1', '19', 'Hi，亲爱的test17，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('19', '1', '20', 'Hi，亲爱的test18，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('20', '1', '21', 'Hi，亲爱的test19，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('21', '1', '22', 'Hi，亲爱的test20，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('22', '1', '23', 'Hi，亲爱的test21，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('23', '1', '24', 'Hi，亲爱的test22，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('24', '1', '25', 'Hi，亲爱的test23，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('25', '1', '26', 'Hi，亲爱的test24，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('26', '1', '27', 'Hi，亲爱的test25，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('27', '1', '28', 'Hi，亲爱的test26，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('28', '1', '29', 'Hi，亲爱的test27，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('29', '1', '30', 'Hi，亲爱的test28，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('30', '1', '31', 'Hi，亲爱的test29，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('31', '1', '32', 'Hi，亲爱的test30，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('32', '1', '33', 'Hi，亲爱的test31，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('33', '1', '34', 'Hi，亲爱的test32，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('34', '1', '35', 'Hi，亲爱的test33，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('35', '1', '36', 'Hi，亲爱的test34，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('36', '1', '37', 'Hi，亲爱的test35，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('37', '1', '38', 'Hi，亲爱的test36，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:23');
INSERT INTO `message` VALUES ('38', '1', '39', 'Hi，亲爱的test37，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('39', '1', '40', 'Hi，亲爱的test38，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('40', '1', '41', 'Hi，亲爱的test39，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('41', '1', '42', 'Hi，亲爱的test40，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('42', '1', '43', 'Hi，亲爱的test41，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('43', '1', '44', 'Hi，亲爱的test42，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('44', '1', '45', 'Hi，亲爱的test43，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('45', '1', '46', 'Hi，亲爱的test44，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('46', '1', '47', 'Hi，亲爱的test45，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('47', '1', '48', 'Hi，亲爱的test46，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('48', '1', '49', 'Hi，亲爱的test47，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('49', '1', '50', 'Hi，亲爱的test48，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('50', '1', '51', 'Hi，亲爱的test49，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('51', '1', '52', 'Hi，亲爱的test50，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('52', '1', '53', 'Hi，亲爱的test51，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('53', '1', '54', 'Hi，亲爱的test52，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('54', '1', '55', 'Hi，亲爱的test53，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('55', '1', '56', 'Hi，亲爱的test54，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('56', '1', '57', 'Hi，亲爱的test55，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:24');
INSERT INTO `message` VALUES ('57', '1', '58', 'Hi，亲爱的test56，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('58', '1', '59', 'Hi，亲爱的test57，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('59', '1', '60', 'Hi，亲爱的test58，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('60', '1', '61', 'Hi，亲爱的test59，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('61', '1', '62', 'Hi，亲爱的test60，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('62', '1', '63', 'Hi，亲爱的test61，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('63', '1', '64', 'Hi，亲爱的test62，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('64', '1', '65', 'Hi，亲爱的test63，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('65', '1', '66', 'Hi，亲爱的test64，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('66', '1', '67', 'Hi，亲爱的test65，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('67', '1', '68', 'Hi，亲爱的test66，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('68', '1', '69', 'Hi，亲爱的test67，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('69', '1', '70', 'Hi，亲爱的test68，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('70', '1', '71', 'Hi，亲爱的test69，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('71', '1', '72', 'Hi，亲爱的test70，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('72', '1', '73', 'Hi，亲爱的test71，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('73', '1', '74', 'Hi，亲爱的test72，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('74', '1', '75', 'Hi，亲爱的test73，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:25');
INSERT INTO `message` VALUES ('75', '1', '76', 'Hi，亲爱的test74，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('76', '1', '77', 'Hi，亲爱的test75，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('77', '1', '78', 'Hi，亲爱的test76，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('78', '1', '79', 'Hi，亲爱的test77，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('79', '1', '80', 'Hi，亲爱的test78，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('80', '1', '81', 'Hi，亲爱的test79，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('81', '1', '82', 'Hi，亲爱的test80，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('82', '1', '83', 'Hi，亲爱的test81，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('83', '1', '84', 'Hi，亲爱的test82，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('84', '1', '85', 'Hi，亲爱的test83，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('85', '1', '86', 'Hi，亲爱的test84，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('86', '1', '87', 'Hi，亲爱的test85，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('87', '1', '88', 'Hi，亲爱的test86，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('88', '1', '89', 'Hi，亲爱的test87，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('89', '1', '90', 'Hi，亲爱的test88，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('90', '1', '91', 'Hi，亲爱的test89，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('91', '1', '92', 'Hi，亲爱的test90，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('92', '1', '93', 'Hi，亲爱的test91，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:26');
INSERT INTO `message` VALUES ('93', '1', '94', 'Hi，亲爱的test92，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('94', '1', '95', 'Hi，亲爱的test93，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('95', '1', '96', 'Hi，亲爱的test94，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('96', '1', '97', 'Hi，亲爱的test95，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('97', '1', '98', 'Hi，亲爱的test96，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('98', '1', '99', 'Hi，亲爱的test97，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('99', '1', '100', 'Hi，亲爱的test98，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('100', '1', '101', 'Hi，亲爱的test99，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('101', '1', '102', 'Hi，亲爱的test100，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('102', '1', '103', 'Hi，亲爱的test101，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('103', '1', '104', 'Hi，亲爱的test102，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('104', '1', '105', 'Hi，亲爱的test103，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('105', '1', '106', 'Hi，亲爱的test104，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('106', '1', '107', 'Hi，亲爱的test105，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('107', '1', '108', 'Hi，亲爱的test106，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:27');
INSERT INTO `message` VALUES ('108', '1', '109', 'Hi，亲爱的test107，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('109', '1', '110', 'Hi，亲爱的test108，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('110', '1', '111', 'Hi，亲爱的test109，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('111', '1', '112', 'Hi，亲爱的test110，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('112', '1', '113', 'Hi，亲爱的test111，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('113', '1', '114', 'Hi，亲爱的test112，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('114', '1', '115', 'Hi，亲爱的test113，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('115', '1', '116', 'Hi，亲爱的test114，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('116', '1', '117', 'Hi，亲爱的test115，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('117', '1', '118', 'Hi，亲爱的test116，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('118', '1', '119', 'Hi，亲爱的test117，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('119', '1', '120', 'Hi，亲爱的test118，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('120', '1', '121', 'Hi，亲爱的test119，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('121', '1', '122', 'Hi，亲爱的test120，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('122', '1', '123', 'Hi，亲爱的test121，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('123', '1', '124', 'Hi，亲爱的test122，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:28');
INSERT INTO `message` VALUES ('124', '1', '125', 'Hi，亲爱的test123，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('125', '1', '126', 'Hi，亲爱的test124，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('126', '1', '127', 'Hi，亲爱的test125，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('127', '1', '128', 'Hi，亲爱的test126，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('128', '1', '129', 'Hi，亲爱的test127，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('129', '1', '130', 'Hi，亲爱的test128，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('130', '1', '131', 'Hi，亲爱的test129，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('131', '1', '132', 'Hi，亲爱的test130，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('132', '1', '133', 'Hi，亲爱的test131，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('133', '1', '134', 'Hi，亲爱的test132，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('134', '1', '135', 'Hi，亲爱的test133，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('135', '1', '136', 'Hi，亲爱的test134，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('136', '1', '137', 'Hi，亲爱的test135，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('137', '1', '138', 'Hi，亲爱的test136，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('138', '1', '139', 'Hi，亲爱的test137，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('139', '1', '140', 'Hi，亲爱的test138，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('140', '1', '141', 'Hi，亲爱的test139，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('141', '1', '142', 'Hi，亲爱的test140，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('142', '1', '143', 'Hi，亲爱的test141，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('143', '1', '144', 'Hi，亲爱的test142，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('144', '1', '145', 'Hi，亲爱的test143，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('145', '1', '146', 'Hi，亲爱的test144，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:29');
INSERT INTO `message` VALUES ('146', '1', '147', 'Hi，亲爱的test145，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('147', '1', '148', 'Hi，亲爱的test146，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('148', '1', '149', 'Hi，亲爱的test147，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('149', '1', '150', 'Hi，亲爱的test148，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('150', '1', '151', 'Hi，亲爱的test149，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('151', '1', '152', 'Hi，亲爱的test150，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('152', '1', '153', 'Hi，亲爱的test151，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('153', '1', '154', 'Hi，亲爱的test152，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('154', '1', '155', 'Hi，亲爱的test153，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('155', '1', '156', 'Hi，亲爱的test154，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('156', '1', '157', 'Hi，亲爱的test155，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('157', '1', '158', 'Hi，亲爱的test156，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('158', '1', '159', 'Hi，亲爱的test157，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('159', '1', '160', 'Hi，亲爱的test158，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('160', '1', '161', 'Hi，亲爱的test159，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('161', '1', '162', 'Hi，亲爱的test160，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('162', '1', '163', 'Hi，亲爱的test161，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('163', '1', '164', 'Hi，亲爱的test162，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('164', '1', '165', 'Hi，亲爱的test163，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('165', '1', '166', 'Hi，亲爱的test164，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('166', '1', '167', 'Hi，亲爱的test165，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:30');
INSERT INTO `message` VALUES ('167', '1', '168', 'Hi，亲爱的test166，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('168', '1', '169', 'Hi，亲爱的test167，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('169', '1', '170', 'Hi，亲爱的test168，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('170', '1', '171', 'Hi，亲爱的test169，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('171', '1', '172', 'Hi，亲爱的test170，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('172', '1', '173', 'Hi，亲爱的test171，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('173', '1', '174', 'Hi，亲爱的test172，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('174', '1', '175', 'Hi，亲爱的test173，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('175', '1', '176', 'Hi，亲爱的test174，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('176', '1', '177', 'Hi，亲爱的test175，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('177', '1', '178', 'Hi，亲爱的test176，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('178', '1', '179', 'Hi，亲爱的test177，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('179', '1', '180', 'Hi，亲爱的test178，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('180', '1', '181', 'Hi，亲爱的test179，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('181', '1', '182', 'Hi，亲爱的test180，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('182', '1', '183', 'Hi，亲爱的test181，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('183', '1', '184', 'Hi，亲爱的test182，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('184', '1', '185', 'Hi，亲爱的test183，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('185', '1', '186', 'Hi，亲爱的test184，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('186', '1', '187', 'Hi，亲爱的test185，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:31');
INSERT INTO `message` VALUES ('187', '1', '188', 'Hi，亲爱的test186，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('188', '1', '189', 'Hi，亲爱的test187，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('189', '1', '190', 'Hi，亲爱的test188，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('190', '1', '191', 'Hi，亲爱的test189，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('191', '1', '192', 'Hi，亲爱的test190，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('192', '1', '193', 'Hi，亲爱的test191，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('193', '1', '194', 'Hi，亲爱的test192，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('194', '1', '195', 'Hi，亲爱的test193，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('195', '1', '196', 'Hi，亲爱的test194，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('196', '1', '197', 'Hi，亲爱的test195，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('197', '1', '198', 'Hi，亲爱的test196，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('198', '1', '199', 'Hi，亲爱的test197，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('199', '1', '200', 'Hi，亲爱的test198，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('200', '1', '201', 'Hi，亲爱的test199，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-02 21:12:32');
INSERT INTO `message` VALUES ('214', '2', '1', '什么是慕课', '1', '2015-07-03 13:43:20');
INSERT INTO `message` VALUES ('215', '1', '2', '慕课（MOOC）是英文A Massive Open Online Course 的首字母缩写，其中，Massive，大规模的；Open，开放的；Online，在线的；Course，课程；直译就是“大规模网络开放课程”。', '1', '2015-07-03 13:43:21');
INSERT INTO `message` VALUES ('216', '2', '1', '什么是C语言', '1', '2015-07-03 13:44:23');
INSERT INTO `message` VALUES ('217', '1', '2', 'C语言是一种计算机程序设计语言。它既具有高级语言的特点，又具有汇编语言的特点。它可以作为工作系统设计语言，编写系统应用程序，也可以作为应用程序设计语言，编写不依赖计算机硬件的应用程序。', '1', '2015-07-03 13:44:24');
INSERT INTO `message` VALUES ('218', '2', '1', 'Java配置JDK', '1', '2015-07-03 13:45:46');
INSERT INTO `message` VALUES ('219', '1', '2', '配置jdk真的好吗', '1', '2015-07-03 13:45:47');
INSERT INTO `message` VALUES ('220', '2', '1', '如何配置JDK', '1', '2015-07-03 13:45:55');
INSERT INTO `message` VALUES ('221', '1', '2', '总有这样一种人，我们称之为井——也就是横竖都是二的意思。', '1', '2015-07-03 13:45:56');
INSERT INTO `message` VALUES ('222', '2', '1', '什么是Java', '1', '2015-07-03 13:55:21');
INSERT INTO `message` VALUES ('223', '1', '2', 'JAVA是一种可以撰写跨平台应用软件的面向对象的程序设计语言，由升阳（Sun Microsystems）公司的詹姆斯高斯林（James Gosling）等人于1990年代初开发。它最初被命名为Oak，目标设定在家用电器等小型系统的编程语言，来解决诸如电视机、电话、闹钟、烤面包机等家用电器的控制和通讯问题。由于这些智能化家电的市场需求没有预期的高，Sun放弃了该项计划。就在Oak几近失败之时，随着互联网的发展，Sun看到了Oak在计算机网络上的广阔应用前景，于是改造了Oak，在1995年5月23日以“Java”的名称正式发布了。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于个人PC、数据中心、游戏控制台、科学超级计算机、移动电话和互联网，同时拥有全球最大的开发者专业社群。在全球云计算和移动互联网的产业环境下，Java更具备了显著优势和广阔前景。', '1', '2015-07-03 13:55:23');
INSERT INTO `message` VALUES ('224', '2', '1', 'Java好还是Html好', '1', '2015-07-03 13:55:40');
INSERT INTO `message` VALUES ('225', '1', '2', '谁惹小智可爱的你了', '1', '2015-07-03 13:55:41');
INSERT INTO `message` VALUES ('227', '2', '13', '我们已经是好友了，现在开始对话吧!', '1', '2015-07-03 20:26:19');
INSERT INTO `message` VALUES ('228', '2', '13', '你好', '1', '2015-07-05 13:15:06');
INSERT INTO `message` VALUES ('229', '13', '2', '你好', '1', '2015-07-05 13:19:39');
INSERT INTO `message` VALUES ('230', '2', '13', '天气怎么样', '1', '2015-07-05 13:20:35');
INSERT INTO `message` VALUES ('231', '13', '2', '还好.下了点小雨', '1', '2015-07-05 13:20:59');
INSERT INTO `message` VALUES ('232', '2', '13', '你是不是有点傻', '1', '2015-07-05 13:24:51');
INSERT INTO `message` VALUES ('233', '13', '2', '你才傻', '1', '2015-07-05 13:31:12');
INSERT INTO `message` VALUES ('234', '2', '13', 'Hadoop、Mahout', '1', '2015-07-05 13:35:44');
INSERT INTO `message` VALUES ('235', '13', '2', '怎么还没有成功', '1', '2015-07-05 13:37:38');
INSERT INTO `message` VALUES ('236', '2', '13', '就快要成功了', '1', '2015-07-05 13:38:24');
INSERT INTO `message` VALUES ('237', '13', '2', '好难调', '1', '2015-07-05 13:43:42');
INSERT INTO `message` VALUES ('238', '2', '13', '调的好想死', '1', '2015-07-05 13:43:59');
INSERT INTO `message` VALUES ('239', '2', '13', '测试一下', '1', '2015-07-05 13:45:35');
INSERT INTO `message` VALUES ('240', '13', '2', '我也测试一下', '1', '2015-07-05 13:45:44');
INSERT INTO `message` VALUES ('241', '2', '13', '测试不成功', '1', '2015-07-05 13:46:13');
INSERT INTO `message` VALUES ('242', '2', '13', '来一发', '1', '2015-07-05 13:52:30');
INSERT INTO `message` VALUES ('243', '13', '2', '我也来一发', '1', '2015-07-05 13:52:39');
INSERT INTO `message` VALUES ('244', '2', '13', '然而并不能成功', '1', '2015-07-05 13:52:54');
INSERT INTO `message` VALUES ('245', '13', '2', '好烦恼啊', '1', '2015-07-05 13:53:05');
INSERT INTO `message` VALUES ('246', '2', '13', '刚才还可以啊 ', '1', '2015-07-05 13:53:23');
INSERT INTO `message` VALUES ('247', '2', '13', '什么鬼', '1', '2015-07-05 13:54:03');
INSERT INTO `message` VALUES ('248', '13', '2', '什么什么鬼', '1', '2015-07-05 13:54:14');
INSERT INTO `message` VALUES ('249', '2', '13', '你不知道吗', '1', '2015-07-05 13:54:28');
INSERT INTO `message` VALUES ('250', '13', '2', '什么都不知道', '1', '2015-07-05 14:01:07');
INSERT INTO `message` VALUES ('251', '2', '13', '要你有什么用', '1', '2015-07-05 14:01:26');
INSERT INTO `message` VALUES ('252', '13', '2', '少哔哔', '1', '2015-07-05 14:01:52');
INSERT INTO `message` VALUES ('253', '2', '13', '我就喜欢哔哔怎么了', '1', '2015-07-05 14:03:13');
INSERT INTO `message` VALUES ('254', '13', '2', '你赢了', '1', '2015-07-05 14:03:39');
INSERT INTO `message` VALUES ('255', '2', '13', '123', '1', '2015-07-05 14:08:00');
INSERT INTO `message` VALUES ('256', '13', '2', '456', '1', '2015-07-05 14:08:12');
INSERT INTO `message` VALUES ('257', '2', '13', '1111', '1', '2015-07-05 14:09:53');
INSERT INTO `message` VALUES ('258', '13', '2', '2222', '1', '2015-07-05 14:10:23');
INSERT INTO `message` VALUES ('259', '13', '2', '不能调用到指定页面的方法', '1', '2015-07-05 14:11:49');
INSERT INTO `message` VALUES ('260', '2', '13', '是的', '1', '2015-07-05 14:12:02');
INSERT INTO `message` VALUES ('261', '13', '2', '怎么会弹出两次', '1', '2015-07-05 14:12:18');
INSERT INTO `message` VALUES ('262', '2', '13', '不知道、还是不行么', '1', '2015-07-05 14:16:57');
INSERT INTO `message` VALUES ('263', '13', '2', '嗯、不能即时通信', '1', '2015-07-05 14:17:08');
INSERT INTO `message` VALUES ('264', '2', '13', '好烦恼', '1', '2015-07-05 14:17:31');
INSERT INTO `message` VALUES ('265', '13', '2', '应该可以了吧', '1', '2015-07-05 14:18:28');
INSERT INTO `message` VALUES ('266', '2', '13', '并不能行', '1', '2015-07-05 14:18:42');
INSERT INTO `message` VALUES ('267', '13', '2', '但是只是上一条的信息', '1', '2015-07-05 14:19:10');
INSERT INTO `message` VALUES ('268', '2', '13', '嗯、消息会滞留', '1', '2015-07-05 14:20:29');
INSERT INTO `message` VALUES ('269', '13', '2', '这样子不知道是怎么一回事', '1', '2015-07-05 14:20:56');
INSERT INTO `message` VALUES ('270', '2', '13', '额、你看、滞留了', '1', '2015-07-05 14:21:08');
INSERT INTO `message` VALUES ('271', '2', '13', '然而我加上判断条件之后又不行了', '1', '2015-07-05 14:21:46');
INSERT INTO `message` VALUES ('272', '13', '2', '这不是坑爹么', '1', '2015-07-05 14:22:55');
INSERT INTO `message` VALUES ('273', '2', '13', '坑了个爹', '1', '2015-07-05 14:23:06');
INSERT INTO `message` VALUES ('274', '2', '13', '我给你发一条', '1', '2015-07-05 14:27:32');
INSERT INTO `message` VALUES ('275', '13', '2', '我又给你发一条', '1', '2015-07-05 14:27:40');
INSERT INTO `message` VALUES ('276', '2', '13', '还能刷新出来么', '1', '2015-07-05 14:28:00');
INSERT INTO `message` VALUES ('277', '13', '2', '其实是可以的', '1', '2015-07-05 14:56:18');
INSERT INTO `message` VALUES ('278', '2', '13', '但是要我发送才能推送', '1', '2015-07-05 14:56:31');
INSERT INTO `message` VALUES ('279', '13', '2', '这还有什么意思', '1', '2015-07-05 14:58:45');
INSERT INTO `message` VALUES ('280', '2', '13', '嗯 并没有什么意思', '1', '2015-07-05 14:58:56');
INSERT INTO `message` VALUES ('281', '13', '2', '只是并不能实时刷新出来', '1', '2015-07-05 15:00:00');
INSERT INTO `message` VALUES ('282', '2', '13', '发现了', '1', '2015-07-05 15:00:19');
INSERT INTO `message` VALUES ('283', '13', '2', '发现了又有什么用、并不能调好', '1', '2015-07-05 15:13:01');
INSERT INTO `message` VALUES ('284', '2', '13', '额、起码能涨点姿势', '1', '2015-07-05 15:13:20');
INSERT INTO `message` VALUES ('285', '13', '2', '你不懂', '1', '2015-07-05 15:13:49');
INSERT INTO `message` VALUES ('286', '2', '13', '你猜不懂', '1', '2015-07-05 15:13:55');
INSERT INTO `message` VALUES ('287', '13', '2', '心好累', '1', '2015-07-05 15:30:43');
INSERT INTO `message` VALUES ('288', '2', '13', '你这里怎么还没有出来', '1', '2015-07-05 15:30:53');
INSERT INTO `message` VALUES ('289', '13', '2', '是作用域的问题么 ', '1', '2015-07-05 15:39:28');
INSERT INTO `message` VALUES ('290', '2', '13', '好像并不是的', '1', '2015-07-05 15:39:37');
INSERT INTO `message` VALUES ('291', '13', '2', '调不好了、不调试了', '1', '2015-07-05 15:47:48');
INSERT INTO `message` VALUES ('292', '2', '13', '好吧、那就先这样', '1', '2015-07-05 15:47:59');
INSERT INTO `message` VALUES ('293', '13', '2', '还不行就要炸了', '1', '2015-07-05 16:03:11');
INSERT INTO `message` VALUES ('294', '2', '13', '真的不行么', '1', '2015-07-05 16:03:23');
INSERT INTO `message` VALUES ('295', '13', '2', '再试一次', '1', '2015-07-05 16:05:41');
INSERT INTO `message` VALUES ('296', '2', '13', '这次总可以了吧？', '1', '2015-07-05 16:06:12');
INSERT INTO `message` VALUES ('297', '13', '2', '额啊、哈哈哈、总算是可以了', '1', '2015-07-05 16:06:23');
INSERT INTO `message` VALUES ('298', '13', '1', 'æè·å°æºè¯´è¯´è¯', '1', '2015-07-05 17:12:08');
INSERT INTO `message` VALUES ('299', '1', '13', '一般你问我，我都直接回答你了但这种问题嘛，我建议你去百度，嘿嘿', '1', '2015-07-05 17:12:11');
INSERT INTO `message` VALUES ('300', '1', '212', 'Hi，亲爱的测试添加，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '1', '2015-07-12 20:32:22');
INSERT INTO `message` VALUES ('301', '3', '2', 'aaaa', '1', '2015-07-14 19:31:57');
INSERT INTO `message` VALUES ('302', '2', '2', 'www', '1', '2015-07-15 13:33:26');
INSERT INTO `message` VALUES ('303', '2', '2', 'wwww', '1', '2015-07-15 13:33:40');
INSERT INTO `message` VALUES ('304', '2', '1', '什么是Java', '1', '2015-07-16 17:15:05');
INSERT INTO `message` VALUES ('305', '1', '2', 'JAVA是一种可以撰写跨平台应用软件的面向对象的程序设计语言，由升阳（Sun Microsystems）公司的詹姆斯高斯林（James Gosling）等人于1990年代初开发。它最初被命名为Oak，目标设定在家用电器等小型系统的编程语言，来解决诸如电视机、电话、闹钟、烤面包机等家用电器的控制和通讯问题。由于这些智能化家电的市场需求没有预期的高，Sun放弃了该项计划。就在Oak几近失败之时，随着互联网的发展，Sun看到了Oak在计算机网络上的广阔应用前景，于是改造了Oak，在1995年5月23日以“Java”的名称正式发布了。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于个人PC、数据中心、游戏控制台、科学超级计算机、移动电话和互联网，同时拥有全球最大的开发者专业社群。在全球云计算和移动互联网的产业环境下，Java更具备了显著优势和广阔前景。', '1', '2015-07-16 17:15:08');
INSERT INTO `message` VALUES ('306', '1', '213', 'Hi，亲爱的tanshnxiang，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-21 20:19:19');
INSERT INTO `message` VALUES ('307', '1', '214', 'Hi，亲爱的ttttttdfafda，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！', '0', '2015-07-21 20:29:28');
INSERT INTO `message` VALUES ('308', '2', '1', '你是傻逼吗\n你是傻逼吗', '0', '2015-07-21 21:10:12');
INSERT INTO `message` VALUES ('309', '1', '2', '这对于纯洁的我来说实在是 捂脸', '1', '2015-07-21 21:10:14');

-- ----------------------------
-- Table structure for `postlabel`
-- ----------------------------
DROP TABLE IF EXISTS `postlabel`;
CREATE TABLE `postlabel` (
  `labelId` int(11) NOT NULL,
  `labelName` varchar(40) NOT NULL,
  PRIMARY KEY (`labelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postlabel
-- ----------------------------
INSERT INTO `postlabel` VALUES ('1', 'PHP');
INSERT INTO `postlabel` VALUES ('2', 'JAVA');
INSERT INTO `postlabel` VALUES ('3', 'Html/CSS');
INSERT INTO `postlabel` VALUES ('4', 'Maya');
INSERT INTO `postlabel` VALUES ('5', 'Photoshop');
INSERT INTO `postlabel` VALUES ('6', 'Premiere');
INSERT INTO `postlabel` VALUES ('7', 'MongoDB');
INSERT INTO `postlabel` VALUES ('8', 'Python');
INSERT INTO `postlabel` VALUES ('9', 'JavaScript');
INSERT INTO `postlabel` VALUES ('10', 'JQuery');
INSERT INTO `postlabel` VALUES ('11', 'Html5');
INSERT INTO `postlabel` VALUES ('12', 'Node.js');
INSERT INTO `postlabel` VALUES ('13', 'Android');
INSERT INTO `postlabel` VALUES ('14', 'Mysql');
INSERT INTO `postlabel` VALUES ('15', 'Bootstrap');
INSERT INTO `postlabel` VALUES ('16', 'AngularJS');
INSERT INTO `postlabel` VALUES ('17', '云计算');
INSERT INTO `postlabel` VALUES ('18', 'Linux');
INSERT INTO `postlabel` VALUES ('19', 'iOS');
INSERT INTO `postlabel` VALUES ('20', 'Unity3D');
INSERT INTO `postlabel` VALUES ('21', 'Cocos2d-x');
INSERT INTO `postlabel` VALUES ('22', 'Go');
INSERT INTO `postlabel` VALUES ('23', 'C++');
INSERT INTO `postlabel` VALUES ('24', 'Oracle');
INSERT INTO `postlabel` VALUES ('25', 'C');
INSERT INTO `postlabel` VALUES ('26', 'WebApp');
INSERT INTO `postlabel` VALUES ('27', '前端工具');
INSERT INTO `postlabel` VALUES ('28', 'CSS3');
INSERT INTO `postlabel` VALUES ('29', '大数据');
INSERT INTO `postlabel` VALUES ('30', 'SQL Server');

-- ----------------------------
-- Table structure for `postresource`
-- ----------------------------
DROP TABLE IF EXISTS `postresource`;
CREATE TABLE `postresource` (
  `resourceId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `uploadTime` timestamp NULL DEFAULT NULL,
  `resourceUrl` varchar(200) NOT NULL,
  PRIMARY KEY (`resourceId`),
  KEY `FK_postResType` (`typeId`),
  CONSTRAINT `FK_postResType` FOREIGN KEY (`typeId`) REFERENCES `resourcetype` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postresource
-- ----------------------------
INSERT INTO `postresource` VALUES ('1', '2', '2015-07-08 14:33:31', 'frontstage/resource/test/test.rar');
INSERT INTO `postresource` VALUES ('2', '2', '2015-07-08 14:38:03', 'frontstage/resource/test/test.rar');
INSERT INTO `postresource` VALUES ('3', '2', '2015-07-08 14:38:05', 'frontstage/resource/test/test.rar');
INSERT INTO `postresource` VALUES ('4', '2', '2015-07-08 14:38:05', 'frontstage/resource/test/test.rar');

-- ----------------------------
-- Table structure for `posttype`
-- ----------------------------
DROP TABLE IF EXISTS `posttype`;
CREATE TABLE `posttype` (
  `typeId` int(11) NOT NULL,
  `typeName` varchar(40) NOT NULL,
  `typeDesc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posttype
-- ----------------------------
INSERT INTO `posttype` VALUES ('1', '问答', '问答贴');
INSERT INTO `posttype` VALUES ('2', '分享', '技术分享');

-- ----------------------------
-- Table structure for `province`
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `provinceId` int(11) NOT NULL,
  `provinceName` varchar(40) NOT NULL,
  PRIMARY KEY (`provinceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '北京');
INSERT INTO `province` VALUES ('2', '天津');
INSERT INTO `province` VALUES ('3', '河北');
INSERT INTO `province` VALUES ('4', '山西');
INSERT INTO `province` VALUES ('5', '内蒙古');
INSERT INTO `province` VALUES ('6', '辽宁');
INSERT INTO `province` VALUES ('7', '吉林');
INSERT INTO `province` VALUES ('8', '黑龙江');
INSERT INTO `province` VALUES ('9', '上海');
INSERT INTO `province` VALUES ('10', '江苏');
INSERT INTO `province` VALUES ('11', '浙江');
INSERT INTO `province` VALUES ('12', '安徽');
INSERT INTO `province` VALUES ('13', '福建');
INSERT INTO `province` VALUES ('14', '江西');
INSERT INTO `province` VALUES ('15', '山东');
INSERT INTO `province` VALUES ('16', '河南');
INSERT INTO `province` VALUES ('17', '湖北');
INSERT INTO `province` VALUES ('18', '湖南');
INSERT INTO `province` VALUES ('19', '广东');
INSERT INTO `province` VALUES ('20', '广西');
INSERT INTO `province` VALUES ('21', '海南');
INSERT INTO `province` VALUES ('22', '重庆');
INSERT INTO `province` VALUES ('23', '四川');
INSERT INTO `province` VALUES ('24', '贵州');
INSERT INTO `province` VALUES ('25', '云南');
INSERT INTO `province` VALUES ('26', '西藏');
INSERT INTO `province` VALUES ('27', '陕西');
INSERT INTO `province` VALUES ('28', '甘肃');
INSERT INTO `province` VALUES ('29', '青海');
INSERT INTO `province` VALUES ('30', '宁夏');
INSERT INTO `province` VALUES ('31', '新疆');
INSERT INTO `province` VALUES ('32', '香港');
INSERT INTO `province` VALUES ('33', '澳门');
INSERT INTO `province` VALUES ('34', '台湾');

-- ----------------------------
-- Table structure for `recommend`
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `recommendId` int(11) NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `labelId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`recommendId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('1', '15', '2', '5', '0');
INSERT INTO `recommend` VALUES ('2', '11', '2', '5', '0');
INSERT INTO `recommend` VALUES ('3', '13', '2', '3', '0');
INSERT INTO `recommend` VALUES ('4', '6', '5', '4', '0');
INSERT INTO `recommend` VALUES ('5', '4', '5', '3', '0');
INSERT INTO `recommend` VALUES ('6', '5', '7', '5', '0');
INSERT INTO `recommend` VALUES ('7', '11', '19', '5', '0');
INSERT INTO `recommend` VALUES ('8', '13', '19', '3', '0');
INSERT INTO `recommend` VALUES ('9', '16', '19', '1', '0');
INSERT INTO `recommend` VALUES ('10', '5', '22', '5', '0');
INSERT INTO `recommend` VALUES ('11', '12', '22', '5', '0');
INSERT INTO `recommend` VALUES ('12', '14', '22', '5', '0');
INSERT INTO `recommend` VALUES ('13', '10', '22', '5', '0');
INSERT INTO `recommend` VALUES ('14', '2', '22', '4', '0');
INSERT INTO `recommend` VALUES ('15', '13', '22', '4', '0');
INSERT INTO `recommend` VALUES ('16', '15', '22', '3', '0');
INSERT INTO `recommend` VALUES ('17', '8', '22', '1', '0');
INSERT INTO `recommend` VALUES ('18', '16', '24', '5', '0');
INSERT INTO `recommend` VALUES ('19', '4', '24', '3', '0');
INSERT INTO `recommend` VALUES ('20', '9', '24', '1', '0');
INSERT INTO `recommend` VALUES ('21', '15', '24', '1', '0');
INSERT INTO `recommend` VALUES ('22', '11', '24', '1', '0');
INSERT INTO `recommend` VALUES ('23', '13', '32', '5', '0');
INSERT INTO `recommend` VALUES ('24', '4', '32', '3', '0');
INSERT INTO `recommend` VALUES ('25', '12', '32', '3', '0');
INSERT INTO `recommend` VALUES ('26', '1', '32', '1', '0');
INSERT INTO `recommend` VALUES ('27', '9', '32', '1', '0');
INSERT INTO `recommend` VALUES ('28', '8', '34', '3', '0');
INSERT INTO `recommend` VALUES ('29', '16', '34', '2', '0');
INSERT INTO `recommend` VALUES ('30', '1', '34', '2', '0');
INSERT INTO `recommend` VALUES ('31', '9', '34', '1', '0');
INSERT INTO `recommend` VALUES ('32', '15', '37', '5', '0');
INSERT INTO `recommend` VALUES ('33', '16', '37', '5', '0');
INSERT INTO `recommend` VALUES ('34', '4', '37', '4', '0');
INSERT INTO `recommend` VALUES ('35', '7', '37', '3', '0');
INSERT INTO `recommend` VALUES ('36', '6', '37', '3', '0');
INSERT INTO `recommend` VALUES ('37', '1', '37', '1', '0');
INSERT INTO `recommend` VALUES ('38', '12', '38', '5', '0');
INSERT INTO `recommend` VALUES ('39', '6', '62', '5', '0');
INSERT INTO `recommend` VALUES ('40', '8', '62', '1', '0');
INSERT INTO `recommend` VALUES ('41', '16', '62', '1', '0');
INSERT INTO `recommend` VALUES ('42', '12', '62', '1', '0');
INSERT INTO `recommend` VALUES ('43', '7', '68', '5', '0');
INSERT INTO `recommend` VALUES ('44', '1', '68', '1', '0');
INSERT INTO `recommend` VALUES ('45', '5', '78', '3', '0');
INSERT INTO `recommend` VALUES ('46', '11', '78', '3', '0');
INSERT INTO `recommend` VALUES ('47', '9', '78', '2', '0');
INSERT INTO `recommend` VALUES ('48', '13', '80', '5', '0');
INSERT INTO `recommend` VALUES ('49', '1', '80', '4', '0');
INSERT INTO `recommend` VALUES ('50', '6', '80', '3', '0');
INSERT INTO `recommend` VALUES ('51', '9', '80', '2', '0');
INSERT INTO `recommend` VALUES ('52', '4', '80', '1', '0');
INSERT INTO `recommend` VALUES ('53', '5', '80', '1', '0');
INSERT INTO `recommend` VALUES ('54', '16', '80', '1', '0');
INSERT INTO `recommend` VALUES ('55', '16', '86', '5', '0');
INSERT INTO `recommend` VALUES ('56', '7', '86', '4', '0');
INSERT INTO `recommend` VALUES ('57', '13', '86', '3', '0');
INSERT INTO `recommend` VALUES ('58', '4', '86', '2', '0');
INSERT INTO `recommend` VALUES ('59', '5', '96', '3', '0');
INSERT INTO `recommend` VALUES ('60', '11', '96', '3', '0');
INSERT INTO `recommend` VALUES ('61', '10', '96', '1', '0');
INSERT INTO `recommend` VALUES ('62', '6', '108', '5', '0');
INSERT INTO `recommend` VALUES ('63', '10', '108', '5', '0');
INSERT INTO `recommend` VALUES ('64', '4', '108', '5', '0');
INSERT INTO `recommend` VALUES ('65', '11', '108', '5', '0');
INSERT INTO `recommend` VALUES ('66', '15', '108', '4', '0');
INSERT INTO `recommend` VALUES ('67', '2', '108', '3', '0');
INSERT INTO `recommend` VALUES ('68', '1', '108', '1', '0');
INSERT INTO `recommend` VALUES ('69', '4', '110', '3', '0');
INSERT INTO `recommend` VALUES ('70', '7', '110', '2', '0');
INSERT INTO `recommend` VALUES ('71', '8', '110', '1', '0');
INSERT INTO `recommend` VALUES ('72', '10', '114', '5', '0');
INSERT INTO `recommend` VALUES ('73', '12', '114', '5', '0');
INSERT INTO `recommend` VALUES ('74', '6', '114', '5', '0');
INSERT INTO `recommend` VALUES ('75', '11', '114', '4', '0');
INSERT INTO `recommend` VALUES ('76', '15', '114', '3', '0');
INSERT INTO `recommend` VALUES ('77', '7', '114', '2', '0');
INSERT INTO `recommend` VALUES ('78', '1', '114', '2', '0');
INSERT INTO `recommend` VALUES ('79', '8', '114', '2', '0');
INSERT INTO `recommend` VALUES ('80', '9', '114', '2', '0');
INSERT INTO `recommend` VALUES ('81', '11', '123', '5', '0');
INSERT INTO `recommend` VALUES ('82', '13', '123', '4', '0');
INSERT INTO `recommend` VALUES ('83', '1', '123', '2', '0');
INSERT INTO `recommend` VALUES ('84', '4', '123', '1', '0');
INSERT INTO `recommend` VALUES ('85', '9', '123', '1', '0');
INSERT INTO `recommend` VALUES ('86', '7', '131', '4', '0');
INSERT INTO `recommend` VALUES ('87', '4', '131', '3', '0');
INSERT INTO `recommend` VALUES ('88', '16', '131', '2', '0');
INSERT INTO `recommend` VALUES ('89', '11', '131', '2', '0');
INSERT INTO `recommend` VALUES ('90', '2', '131', '2', '0');
INSERT INTO `recommend` VALUES ('91', '14', '131', '1', '0');
INSERT INTO `recommend` VALUES ('92', '13', '142', '5', '0');
INSERT INTO `recommend` VALUES ('93', '7', '157', '5', '0');
INSERT INTO `recommend` VALUES ('94', '4', '171', '5', '0');
INSERT INTO `recommend` VALUES ('95', '11', '171', '5', '0');
INSERT INTO `recommend` VALUES ('96', '1', '171', '5', '0');
INSERT INTO `recommend` VALUES ('97', '5', '171', '3', '0');
INSERT INTO `recommend` VALUES ('98', '9', '171', '3', '0');
INSERT INTO `recommend` VALUES ('99', '7', '171', '3', '0');
INSERT INTO `recommend` VALUES ('100', '14', '171', '1', '0');
INSERT INTO `recommend` VALUES ('101', '1', '177', '5', '0');
INSERT INTO `recommend` VALUES ('102', '13', '177', '5', '0');
INSERT INTO `recommend` VALUES ('103', '11', '177', '5', '0');
INSERT INTO `recommend` VALUES ('104', '10', '177', '4', '0');
INSERT INTO `recommend` VALUES ('105', '9', '177', '2', '0');
INSERT INTO `recommend` VALUES ('106', '13', '179', '2', '0');
INSERT INTO `recommend` VALUES ('107', '5', '179', '1', '0');
INSERT INTO `recommend` VALUES ('108', '5', '181', '3', '0');
INSERT INTO `recommend` VALUES ('109', '2', '181', '3', '0');
INSERT INTO `recommend` VALUES ('110', '13', '181', '3', '0');
INSERT INTO `recommend` VALUES ('111', '11', '181', '3', '0');
INSERT INTO `recommend` VALUES ('112', '14', '181', '3', '0');
INSERT INTO `recommend` VALUES ('113', '6', '181', '2', '0');
INSERT INTO `recommend` VALUES ('114', '9', '181', '2', '0');
INSERT INTO `recommend` VALUES ('115', '7', '181', '1', '0');
INSERT INTO `recommend` VALUES ('116', '14', '183', '5', '0');
INSERT INTO `recommend` VALUES ('117', '5', '183', '5', '0');

-- ----------------------------
-- Table structure for `relationtype`
-- ----------------------------
DROP TABLE IF EXISTS `relationtype`;
CREATE TABLE `relationtype` (
  `typeId` int(11) NOT NULL,
  `typeName` varchar(40) NOT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relationtype
-- ----------------------------
INSERT INTO `relationtype` VALUES ('1', '关注');
INSERT INTO `relationtype` VALUES ('2', '在学');
INSERT INTO `relationtype` VALUES ('3', '学完');

-- ----------------------------
-- Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `replyId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `fatherId` int(11) DEFAULT NULL,
  `replyURL` varchar(200) DEFAULT NULL,
  `replyContext` varchar(280) NOT NULL,
  `replyNumber` int(11) DEFAULT '0',
  `replyTime` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`replyId`),
  KEY `FK_postRelpy` (`postId`),
  KEY `FK_replyReply` (`fatherId`),
  KEY `FK_replyUser` (`userId`),
  CONSTRAINT `FK_postRelpy` FOREIGN KEY (`postId`) REFERENCES `userpost` (`postId`),
  CONSTRAINT `FK_replyReply` FOREIGN KEY (`fatherId`) REFERENCES `reply` (`replyId`),
  CONSTRAINT `FK_replyUser` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '171', '1', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:51:46', '0');
INSERT INTO `reply` VALUES ('2', '108', '1', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:51:46', '0');
INSERT INTO `reply` VALUES ('3', '188', '1', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:51:46', '0');
INSERT INTO `reply` VALUES ('4', '155', '1', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:51:46', '0');
INSERT INTO `reply` VALUES ('5', '52', '2', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:51:48', '0');
INSERT INTO `reply` VALUES ('6', '158', '2', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:51:48', '0');
INSERT INTO `reply` VALUES ('7', '98', '2', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:51:48', '0');
INSERT INTO `reply` VALUES ('8', '152', '2', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:51:48', '0');
INSERT INTO `reply` VALUES ('9', '128', '2', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:51:48', '0');
INSERT INTO `reply` VALUES ('10', '87', '2', null, null, '这里是第5条评论内容', '0', '2015-07-08 15:51:48', '0');
INSERT INTO `reply` VALUES ('11', '19', '3', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:51:50', '1');
INSERT INTO `reply` VALUES ('12', '55', '3', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:51:50', '1');
INSERT INTO `reply` VALUES ('13', '110', '3', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:51:50', '1');
INSERT INTO `reply` VALUES ('14', '179', '3', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:51:50', '1');
INSERT INTO `reply` VALUES ('15', '60', '4', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:51:52', '0');
INSERT INTO `reply` VALUES ('16', '187', '4', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:51:52', '0');
INSERT INTO `reply` VALUES ('17', '35', '4', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:51:52', '0');
INSERT INTO `reply` VALUES ('18', '135', '4', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:51:52', '0');
INSERT INTO `reply` VALUES ('19', '118', '4', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:51:52', '0');
INSERT INTO `reply` VALUES ('20', '146', '5', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:52:11', '0');
INSERT INTO `reply` VALUES ('21', '177', '5', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:52:11', '0');
INSERT INTO `reply` VALUES ('22', '156', '5', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:52:11', '0');
INSERT INTO `reply` VALUES ('23', '48', '5', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:52:11', '0');
INSERT INTO `reply` VALUES ('24', '4', '5', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:52:11', '0');
INSERT INTO `reply` VALUES ('25', '198', '5', null, null, '这里是第5条评论内容', '0', '2015-07-08 15:52:11', '0');
INSERT INTO `reply` VALUES ('26', '59', '5', null, null, '这里是第6条评论内容', '0', '2015-07-08 15:52:11', '0');
INSERT INTO `reply` VALUES ('27', '194', '6', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:52:15', '0');
INSERT INTO `reply` VALUES ('28', '34', '6', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:52:15', '0');
INSERT INTO `reply` VALUES ('29', '101', '6', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:52:15', '0');
INSERT INTO `reply` VALUES ('30', '127', '6', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:52:15', '0');
INSERT INTO `reply` VALUES ('31', '20', '6', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:52:15', '0');
INSERT INTO `reply` VALUES ('32', '195', '6', null, null, '这里是第5条评论内容', '0', '2015-07-08 15:52:15', '0');
INSERT INTO `reply` VALUES ('33', '175', '7', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:52:32', '0');
INSERT INTO `reply` VALUES ('34', '43', '7', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:52:32', '0');
INSERT INTO `reply` VALUES ('35', '14', '7', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:52:32', '0');
INSERT INTO `reply` VALUES ('36', '32', '7', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:52:32', '0');
INSERT INTO `reply` VALUES ('37', '165', '7', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:52:32', '0');
INSERT INTO `reply` VALUES ('38', '20', '8', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:52:34', '0');
INSERT INTO `reply` VALUES ('39', '73', '8', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:52:34', '0');
INSERT INTO `reply` VALUES ('40', '118', '8', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:52:34', '0');
INSERT INTO `reply` VALUES ('41', '6', '8', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:52:34', '0');
INSERT INTO `reply` VALUES ('42', '116', '8', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:52:34', '0');
INSERT INTO `reply` VALUES ('43', '158', '9', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:52:38', '0');
INSERT INTO `reply` VALUES ('44', '96', '9', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:52:38', '0');
INSERT INTO `reply` VALUES ('45', '11', '9', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:52:38', '0');
INSERT INTO `reply` VALUES ('46', '95', '9', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:52:38', '0');
INSERT INTO `reply` VALUES ('47', '160', '9', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:52:38', '0');
INSERT INTO `reply` VALUES ('48', '182', '10', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:52:50', '0');
INSERT INTO `reply` VALUES ('49', '19', '10', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:52:50', '0');
INSERT INTO `reply` VALUES ('50', '81', '10', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:52:50', '0');
INSERT INTO `reply` VALUES ('51', '156', '10', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:52:50', '0');
INSERT INTO `reply` VALUES ('52', '152', '10', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:52:50', '0');
INSERT INTO `reply` VALUES ('53', '101', '11', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:52:58', '0');
INSERT INTO `reply` VALUES ('54', '11', '11', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:52:58', '0');
INSERT INTO `reply` VALUES ('55', '103', '11', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:52:58', '0');
INSERT INTO `reply` VALUES ('56', '196', '11', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:52:58', '0');
INSERT INTO `reply` VALUES ('57', '106', '11', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:52:58', '0');
INSERT INTO `reply` VALUES ('58', '59', '11', null, null, '这里是第5条评论内容', '0', '2015-07-08 15:52:58', '0');
INSERT INTO `reply` VALUES ('59', '132', '12', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:53:14', '0');
INSERT INTO `reply` VALUES ('60', '33', '12', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:53:14', '0');
INSERT INTO `reply` VALUES ('61', '161', '12', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:53:14', '0');
INSERT INTO `reply` VALUES ('62', '147', '12', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:53:14', '0');
INSERT INTO `reply` VALUES ('63', '75', '13', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:53:21', '0');
INSERT INTO `reply` VALUES ('64', '201', '13', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:53:21', '0');
INSERT INTO `reply` VALUES ('65', '2', '13', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:53:21', '0');
INSERT INTO `reply` VALUES ('66', '194', '13', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:53:21', '0');
INSERT INTO `reply` VALUES ('67', '151', '13', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:53:21', '0');
INSERT INTO `reply` VALUES ('68', '155', '13', null, null, '这里是第5条评论内容', '0', '2015-07-08 15:53:21', '0');
INSERT INTO `reply` VALUES ('69', '145', '13', null, null, '这里是第6条评论内容', '0', '2015-07-08 15:53:21', '0');
INSERT INTO `reply` VALUES ('70', '41', '14', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:53:34', '0');
INSERT INTO `reply` VALUES ('71', '14', '14', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:53:34', '0');
INSERT INTO `reply` VALUES ('72', '59', '14', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:53:34', '0');
INSERT INTO `reply` VALUES ('73', '163', '14', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:53:34', '0');
INSERT INTO `reply` VALUES ('74', '55', '14', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:53:34', '0');
INSERT INTO `reply` VALUES ('75', '148', '15', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:53:37', '0');
INSERT INTO `reply` VALUES ('76', '103', '15', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:53:37', '0');
INSERT INTO `reply` VALUES ('77', '69', '15', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:53:37', '0');
INSERT INTO `reply` VALUES ('78', '49', '15', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:53:37', '0');
INSERT INTO `reply` VALUES ('79', '88', '15', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:53:37', '0');
INSERT INTO `reply` VALUES ('80', '8', '16', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:53:44', '0');
INSERT INTO `reply` VALUES ('81', '72', '16', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:53:44', '0');
INSERT INTO `reply` VALUES ('82', '53', '16', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:53:44', '0');
INSERT INTO `reply` VALUES ('83', '190', '16', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:53:44', '0');
INSERT INTO `reply` VALUES ('84', '92', '17', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:53:51', '0');
INSERT INTO `reply` VALUES ('85', '179', '17', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:53:51', '0');
INSERT INTO `reply` VALUES ('86', '36', '17', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:53:51', '0');
INSERT INTO `reply` VALUES ('87', '46', '17', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:53:51', '0');
INSERT INTO `reply` VALUES ('88', '192', '17', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:53:51', '0');
INSERT INTO `reply` VALUES ('89', '186', '17', null, null, '这里是第5条评论内容', '0', '2015-07-08 15:53:51', '0');
INSERT INTO `reply` VALUES ('90', '37', '17', null, null, '这里是第6条评论内容', '0', '2015-07-08 15:53:51', '0');
INSERT INTO `reply` VALUES ('91', '196', '18', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:54:08', '0');
INSERT INTO `reply` VALUES ('92', '117', '18', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:54:08', '0');
INSERT INTO `reply` VALUES ('93', '76', '18', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:54:08', '0');
INSERT INTO `reply` VALUES ('94', '117', '18', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:54:08', '0');
INSERT INTO `reply` VALUES ('95', '125', '18', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:54:08', '0');
INSERT INTO `reply` VALUES ('96', '85', '19', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:54:10', '0');
INSERT INTO `reply` VALUES ('97', '26', '19', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:54:10', '0');
INSERT INTO `reply` VALUES ('98', '128', '19', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:54:10', '0');
INSERT INTO `reply` VALUES ('99', '83', '19', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:54:10', '0');
INSERT INTO `reply` VALUES ('100', '62', '19', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:54:10', '0');
INSERT INTO `reply` VALUES ('101', '115', '20', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:54:12', '0');
INSERT INTO `reply` VALUES ('102', '182', '20', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:54:12', '0');
INSERT INTO `reply` VALUES ('103', '140', '20', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:54:12', '0');
INSERT INTO `reply` VALUES ('104', '22', '20', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:54:12', '0');
INSERT INTO `reply` VALUES ('105', '191', '20', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:54:12', '0');
INSERT INTO `reply` VALUES ('106', '120', '20', null, null, '这里是第5条评论内容', '0', '2015-07-08 15:54:12', '0');
INSERT INTO `reply` VALUES ('107', '97', '21', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:54:26', '0');
INSERT INTO `reply` VALUES ('108', '21', '21', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:54:26', '0');
INSERT INTO `reply` VALUES ('109', '9', '21', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:54:26', '0');
INSERT INTO `reply` VALUES ('110', '157', '21', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:54:26', '0');
INSERT INTO `reply` VALUES ('111', '100', '21', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:54:26', '0');
INSERT INTO `reply` VALUES ('112', '89', '22', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:54:38', '0');
INSERT INTO `reply` VALUES ('113', '46', '22', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:54:38', '0');
INSERT INTO `reply` VALUES ('114', '170', '22', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:54:38', '0');
INSERT INTO `reply` VALUES ('115', '5', '22', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:54:38', '0');
INSERT INTO `reply` VALUES ('116', '57', '22', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:54:38', '0');
INSERT INTO `reply` VALUES ('117', '66', '22', null, null, '这里是第5条评论内容', '0', '2015-07-08 15:54:38', '0');
INSERT INTO `reply` VALUES ('118', '35', '23', null, null, '这里是第0条评论内容', '0', '2015-07-08 15:54:43', '0');
INSERT INTO `reply` VALUES ('119', '179', '23', null, null, '这里是第1条评论内容', '0', '2015-07-08 15:54:43', '0');
INSERT INTO `reply` VALUES ('120', '116', '23', null, null, '这里是第2条评论内容', '0', '2015-07-08 15:54:43', '0');
INSERT INTO `reply` VALUES ('121', '187', '23', null, null, '这里是第3条评论内容', '0', '2015-07-08 15:54:43', '0');
INSERT INTO `reply` VALUES ('122', '122', '23', null, null, '这里是第4条评论内容', '0', '2015-07-08 15:54:43', '0');
INSERT INTO `reply` VALUES ('123', '163', '23', null, null, '这里是第5条评论内容', '0', '2015-07-08 15:54:43', '0');
INSERT INTO `reply` VALUES ('124', '84', '23', null, null, '这里是第6条评论内容', '0', '2015-07-08 15:54:43', '0');

-- ----------------------------
-- Table structure for `replyfeed`
-- ----------------------------
DROP TABLE IF EXISTS `replyfeed`;
CREATE TABLE `replyfeed` (
  `replyId` int(11) NOT NULL,
  `feedId` int(11) DEFAULT NULL,
  `replyContext` text NOT NULL,
  PRIMARY KEY (`replyId`),
  KEY `FK_replyFeed` (`feedId`),
  CONSTRAINT `FK_replyFeed` FOREIGN KEY (`feedId`) REFERENCES `feedback` (`feedId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of replyfeed
-- ----------------------------

-- ----------------------------
-- Table structure for `report`
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `reportId` int(11) NOT NULL,
  `replyId` int(11) DEFAULT NULL,
  `postId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `reportReason` varchar(120) NOT NULL,
  PRIMARY KEY (`reportId`),
  KEY `FK_reportPost` (`postId`),
  KEY `FK_reportReply` (`replyId`),
  KEY `FK_reportUser` (`userId`),
  CONSTRAINT `FK_reportPost` FOREIGN KEY (`postId`) REFERENCES `userpost` (`postId`),
  CONSTRAINT `FK_reportReply` FOREIGN KEY (`replyId`) REFERENCES `reply` (`replyId`),
  CONSTRAINT `FK_reportUser` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------

-- ----------------------------
-- Table structure for `resourcetype`
-- ----------------------------
DROP TABLE IF EXISTS `resourcetype`;
CREATE TABLE `resourcetype` (
  `typeId` int(11) NOT NULL,
  `typeName` varchar(40) NOT NULL,
  `typeDesc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resourcetype
-- ----------------------------
INSERT INTO `resourcetype` VALUES ('1', '课程资源', '课程的资源');
INSERT INTO `resourcetype` VALUES ('2', '帖子资源', '技术贴的分享资源');

-- ----------------------------
-- Table structure for `section`
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `sectionId` int(11) NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `sectionName` varchar(40) NOT NULL,
  `sectionDesc` text,
  `openTime` timestamp NULL DEFAULT NULL,
  `sectionCode` int(11) DEFAULT NULL,
  PRIMARY KEY (`sectionId`),
  KEY `FK_Coursesection` (`courseId`),
  CONSTRAINT `FK_Coursesection` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES ('1', '1', '第1章 课程简介', null, '2015-06-03 00:00:00', '1');
INSERT INTO `section` VALUES ('2', '1', '第2章 这是常识-游戏开发与引擎基础', null, '2015-06-05 00:00:00', '2');
INSERT INTO `section` VALUES ('3', '1', '第3章 走进Cocos2d-x', null, '2015-06-10 00:00:00', '3');
INSERT INTO `section` VALUES ('4', '1', '第4章 总结', null, '2015-06-25 00:00:00', '4');
INSERT INTO `section` VALUES ('5', '4', '第一章 这是第一章标题', '这里是章节简介', null, '1');
INSERT INTO `section` VALUES ('6', '4', ' 第二章 这是第二章标题', null, null, '2');
INSERT INTO `section` VALUES ('7', '5', '第一章 ', null, null, '1');
INSERT INTO `section` VALUES ('8', '5', '第二章 第二个章节', null, null, '2');
INSERT INTO `section` VALUES ('9', '6', '第1章 第1章名称', '这是第1门课程的第1个章节描述', '2015-07-07 17:21:31', '1');
INSERT INTO `section` VALUES ('10', '6', '第2章 第2章名称', '这是第1门课程的第2个章节描述', '2015-07-07 17:21:31', '2');
INSERT INTO `section` VALUES ('11', '6', '第3章 第3章名称', '这是第1门课程的第3个章节描述', '2015-07-07 17:21:31', '3');
INSERT INTO `section` VALUES ('12', '6', '第4章 第4章名称', '这是第1门课程的第4个章节描述', '2015-07-07 17:21:31', '4');
INSERT INTO `section` VALUES ('13', '6', '第5章 第5章名称', '这是第1门课程的第5个章节描述', '2015-07-07 17:21:31', '5');
INSERT INTO `section` VALUES ('14', '7', '第1章 第1章名称', '这是第2门课程的第1个章节描述', '2015-07-07 17:21:31', '1');
INSERT INTO `section` VALUES ('15', '7', '第2章 第2章名称', '这是第2门课程的第2个章节描述', '2015-07-07 17:21:31', '2');
INSERT INTO `section` VALUES ('16', '7', '第3章 第3章名称', '这是第2门课程的第3个章节描述', '2015-07-07 17:21:31', '3');
INSERT INTO `section` VALUES ('17', '7', '第4章 第4章名称', '这是第2门课程的第4个章节描述', '2015-07-07 17:21:31', '4');
INSERT INTO `section` VALUES ('18', '7', '第5章 第5章名称', '这是第2门课程的第5个章节描述', '2015-07-07 17:21:31', '5');
INSERT INTO `section` VALUES ('19', '7', '第6章 第6章名称', '这是第2门课程的第6个章节描述', '2015-07-07 17:21:32', '6');
INSERT INTO `section` VALUES ('20', '8', '第1章 第1章名称', '这是第3门课程的第1个章节描述', '2015-07-07 17:21:32', '1');
INSERT INTO `section` VALUES ('21', '8', '第2章 第2章名称', '这是第3门课程的第2个章节描述', '2015-07-07 17:21:32', '2');
INSERT INTO `section` VALUES ('22', '8', '第3章 第3章名称', '这是第3门课程的第3个章节描述', '2015-07-07 17:21:32', '3');
INSERT INTO `section` VALUES ('23', '9', '第1章 第1章名称', '这是第4门课程的第1个章节描述', '2015-07-07 17:21:32', '1');
INSERT INTO `section` VALUES ('24', '9', '第2章 第2章名称', '这是第4门课程的第2个章节描述', '2015-07-07 17:21:32', '2');
INSERT INTO `section` VALUES ('25', '9', '第3章 第3章名称', '这是第4门课程的第3个章节描述', '2015-07-07 17:21:32', '3');
INSERT INTO `section` VALUES ('26', '9', '第4章 第4章名称', '这是第4门课程的第4个章节描述', '2015-07-07 17:21:32', '4');
INSERT INTO `section` VALUES ('27', '10', '第1章 第1章名称', '这是第5门课程的第1个章节描述', '2015-07-07 17:21:32', '1');
INSERT INTO `section` VALUES ('28', '10', '第2章 第2章名称', '这是第5门课程的第2个章节描述', '2015-07-07 17:21:32', '2');
INSERT INTO `section` VALUES ('29', '10', '第3章 第3章名称', '这是第5门课程的第3个章节描述', '2015-07-07 17:21:32', '3');
INSERT INTO `section` VALUES ('30', '10', '第4章 第4章名称', '这是第5门课程的第4个章节描述', '2015-07-07 17:21:32', '4');
INSERT INTO `section` VALUES ('31', '10', '第5章 第5章名称', '这是第5门课程的第5个章节描述', '2015-07-07 17:21:32', '5');
INSERT INTO `section` VALUES ('32', '11', '第1章 第1章名称', '这是第6门课程的第1个章节描述', '2015-07-07 17:21:32', '1');
INSERT INTO `section` VALUES ('33', '11', '第2章 第2章名称', '这是第6门课程的第2个章节描述', '2015-07-07 17:21:32', '2');
INSERT INTO `section` VALUES ('34', '11', '第3章 第3章名称', '这是第6门课程的第3个章节描述', '2015-07-07 17:21:32', '3');
INSERT INTO `section` VALUES ('35', '11', '第4章 第4章名称', '这是第6门课程的第4个章节描述', '2015-07-07 17:21:32', '4');
INSERT INTO `section` VALUES ('36', '11', '第5章 第5章名称', '这是第6门课程的第5个章节描述', '2015-07-07 17:21:32', '5');
INSERT INTO `section` VALUES ('37', '11', '第6章 第6章名称', '这是第6门课程的第6个章节描述', '2015-07-07 17:21:32', '6');
INSERT INTO `section` VALUES ('38', '12', '第1章 第1章名称', '第一个章节', '2015-07-07 17:21:32', '1');
INSERT INTO `section` VALUES ('39', '12', '第2章 第2章名称', '这是第7门课程的第2个章节描述', '2015-07-07 17:21:32', '2');
INSERT INTO `section` VALUES ('40', '12', '第3章 第3章名称', '这是第7门课程的第3个章节描述', '2015-07-07 17:21:32', '3');
INSERT INTO `section` VALUES ('41', '13', '第1章 第1章名称', '这是第8门课程的第1个章节描述', '2015-07-07 17:21:32', '1');
INSERT INTO `section` VALUES ('42', '13', '第2章 第2章名称', '这是第8门课程的第2个章节描述', '2015-07-07 17:21:32', '2');
INSERT INTO `section` VALUES ('43', '13', '第3章 第3章名称', '这是第8门课程的第3个章节描述', '2015-07-07 17:21:32', '3');
INSERT INTO `section` VALUES ('44', '13', '第4章 第4章名称', '这是第8门课程的第4个章节描述', '2015-07-07 17:21:32', '4');
INSERT INTO `section` VALUES ('45', '14', '第1章 第1章名称', '这是第9门课程的第1个章节描述', '2015-07-07 17:21:32', '1');
INSERT INTO `section` VALUES ('46', '14', '第2章 第2章名称', '这是第9门课程的第2个章节描述', '2015-07-07 17:21:32', '2');
INSERT INTO `section` VALUES ('47', '14', '第3章 第3章名称', '这是第9门课程的第3个章节描述', '2015-07-07 17:21:33', '3');
INSERT INTO `section` VALUES ('48', '14', '第4章 第4章名称', '这是第9门课程的第4个章节描述', '2015-07-07 17:21:33', '4');
INSERT INTO `section` VALUES ('49', '14', '第5章 第5章名称', '这是第9门课程的第5个章节描述', '2015-07-07 17:21:33', '5');
INSERT INTO `section` VALUES ('50', '15', '第1章 第1章名称', '这是第10门课程的第1个章节描述', '2015-07-07 17:21:33', '1');
INSERT INTO `section` VALUES ('51', '15', '第2章 第2章名称', '这是第10门课程的第2个章节描述', '2015-07-07 17:21:33', '2');
INSERT INTO `section` VALUES ('52', '15', '第3章 第3章名称', '这是第10门课程的第3个章节描述', '2015-07-07 17:21:33', '3');
INSERT INTO `section` VALUES ('53', '15', '第4章 第4章名称', '这是第10门课程的第4个章节描述', '2015-07-07 17:21:33', '4');
INSERT INTO `section` VALUES ('54', '15', '第5章 第5章名称', '这是第10门课程的第5个章节描述', '2015-07-07 17:21:33', '5');
INSERT INTO `section` VALUES ('55', '15', '第6章 第6章名称', '这是第10门课程的第6个章节描述', '2015-07-07 17:21:33', '6');
INSERT INTO `section` VALUES ('56', '16', '第1章 第1章名称', '这是第11门课程的第1个章节描述', '2015-07-07 17:21:33', '1');
INSERT INTO `section` VALUES ('57', '16', '第2章 第2章名称', '这是第11门课程的第2个章节描述', '2015-07-07 17:21:33', '2');
INSERT INTO `section` VALUES ('58', '16', '第3章 第3章名称', '这是第11门课程的第3个章节描述', '2015-07-07 17:21:33', '3');

-- ----------------------------
-- Table structure for `study`
-- ----------------------------
DROP TABLE IF EXISTS `study`;
CREATE TABLE `study` (
  `studyId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `studyDate` date DEFAULT NULL,
  `studyTime` int(11) DEFAULT '0',
  PRIMARY KEY (`studyId`),
  KEY `FK_userStudy` (`userId`),
  CONSTRAINT `FK_userStudy` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û�ѧϰ���';

-- ----------------------------
-- Records of study
-- ----------------------------
INSERT INTO `study` VALUES ('1', '181', '2015-07-08', '0');
INSERT INTO `study` VALUES ('2', '177', '2015-07-08', '0');
INSERT INTO `study` VALUES ('3', '2', '2015-07-08', '0');
INSERT INTO `study` VALUES ('4', '110', '2015-07-08', '0');
INSERT INTO `study` VALUES ('5', '20', '2015-07-08', '0');
INSERT INTO `study` VALUES ('6', '68', '2015-07-08', '0');
INSERT INTO `study` VALUES ('7', '54', '2015-07-08', '0');
INSERT INTO `study` VALUES ('8', '131', '2015-07-08', '0');
INSERT INTO `study` VALUES ('9', '157', '2015-07-08', '0');
INSERT INTO `study` VALUES ('10', '24', '2015-07-08', '0');
INSERT INTO `study` VALUES ('11', '131', '2015-07-08', '0');
INSERT INTO `study` VALUES ('12', '37', '2015-07-08', '0');
INSERT INTO `study` VALUES ('13', '181', '2015-07-08', '0');
INSERT INTO `study` VALUES ('14', '142', '2015-07-08', '0');
INSERT INTO `study` VALUES ('15', '38', '2015-07-08', '0');
INSERT INTO `study` VALUES ('16', '62', '2015-07-08', '0');
INSERT INTO `study` VALUES ('17', '19', '2015-07-08', '0');
INSERT INTO `study` VALUES ('18', '179', '2015-07-08', '0');
INSERT INTO `study` VALUES ('19', '175', '2015-07-08', '0');
INSERT INTO `study` VALUES ('20', '35', '2015-07-08', '0');
INSERT INTO `study` VALUES ('21', '78', '2015-07-08', '0');
INSERT INTO `study` VALUES ('22', '77', '2015-07-08', '0');
INSERT INTO `study` VALUES ('23', '70', '2015-07-08', '0');
INSERT INTO `study` VALUES ('24', '42', '2015-07-08', '0');
INSERT INTO `study` VALUES ('25', '96', '2015-07-08', '0');
INSERT INTO `study` VALUES ('26', '120', '2015-07-08', '0');
INSERT INTO `study` VALUES ('27', '7', '2015-07-08', '0');
INSERT INTO `study` VALUES ('28', '123', '2015-07-08', '0');
INSERT INTO `study` VALUES ('29', '32', '2015-07-08', '0');
INSERT INTO `study` VALUES ('30', '22', '2015-07-08', '0');
INSERT INTO `study` VALUES ('31', '164', '2015-07-08', '0');
INSERT INTO `study` VALUES ('32', '32', '2015-07-08', '0');
INSERT INTO `study` VALUES ('33', '6', '2015-07-08', '0');
INSERT INTO `study` VALUES ('34', '17', '2015-07-08', '0');
INSERT INTO `study` VALUES ('35', '34', '2015-07-08', '0');
INSERT INTO `study` VALUES ('36', '114', '2015-07-08', '0');
INSERT INTO `study` VALUES ('37', '55', '2015-07-08', '0');
INSERT INTO `study` VALUES ('38', '190', '2015-07-08', '0');
INSERT INTO `study` VALUES ('39', '171', '2015-07-08', '0');
INSERT INTO `study` VALUES ('40', '114', '2015-07-08', '0');
INSERT INTO `study` VALUES ('41', '80', '2015-07-08', '0');
INSERT INTO `study` VALUES ('42', '200', '2015-07-08', '0');
INSERT INTO `study` VALUES ('43', '194', '2015-07-08', '0');
INSERT INTO `study` VALUES ('44', '41', '2015-07-08', '0');
INSERT INTO `study` VALUES ('45', '183', '2015-07-08', '0');
INSERT INTO `study` VALUES ('46', '86', '2015-07-08', '0');
INSERT INTO `study` VALUES ('47', '22', '2015-07-08', '0');
INSERT INTO `study` VALUES ('48', '5', '2015-07-08', '0');
INSERT INTO `study` VALUES ('49', '108', '2015-07-08', '0');
INSERT INTO `study` VALUES ('50', '58', '2015-07-08', '0');
INSERT INTO `study` VALUES ('51', '2', '2015-07-09', '0');
INSERT INTO `study` VALUES ('52', '2', '2015-07-10', '0');
INSERT INTO `study` VALUES ('53', '2', '2015-07-14', '16');
INSERT INTO `study` VALUES ('54', '2', '2015-07-15', null);
INSERT INTO `study` VALUES ('55', '2', '2015-07-16', '4');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacherId` int(11) NOT NULL,
  `teacherName` varchar(40) NOT NULL,
  `teacherPwd` varchar(40) NOT NULL,
  `realName` varchar(40) DEFAULT NULL,
  `registTime` timestamp NULL DEFAULT NULL,
  `courseNumber` int(11) DEFAULT '0',
  `teacherInfo` text,
  PRIMARY KEY (`teacherId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'eclipse_xu', '098f6bcd4621d373cade4e832627b4f6', null, '2015-06-10 00:00:00', '0', '爱分享、爱极客的编程怪兽，Coding之路注定是痛苦的，少不了BUG和崩溃，但那又怎样，哪怕不能执行，也要编的漂亮，我就是 eclipse_xu，我为我自己代言，为编程而生，为需求而死，为Debug而奋斗一辈子！');
INSERT INTO `teacher` VALUES ('2', 'lyn', '098f6bcd4621d373cade4e832627b4f6', null, '2015-06-10 00:00:00', '0', 'WEB前端开发工程师,IT男神，Full Stack Web Developer，追求代码、界面的可扩展性；性能，设计和出色的用户体验。从界面交互到程序性能，喜欢把控从Visual、Frontend、Backend、DevOps的每一个细节');
INSERT INTO `teacher` VALUES ('3', 'Kit_Ren', '098f6bcd4621d373cade4e832627b4f6', null, '2015-06-10 00:00:00', '0', '博士，某高校副教授，实战经验丰富，曾担任过大型互联网公司的技术顾问，目前与几位志同道合的好友共同创业，开发大数据平台。');
INSERT INTO `teacher` VALUES ('4', '张鑫旭', '098f6bcd4621d373cade4e832627b4f6', null, '2015-06-10 00:00:00', '0', 'web前端，就职于腾讯ISUX上海设计中心，喜欢卖萌打杂，同事都叫我张老师，(*^__^*) 嘻嘻……');
INSERT INTO `teacher` VALUES ('5', 'Meshare_huang', '098f6bcd4621d373cade4e832627b4f6', null, '2015-06-10 00:00:00', '0', '10年开发经验，现在从事智能设备方向工作，曾从事培训行业 ，乐于分享，技术控 。');

-- ----------------------------
-- Table structure for `title`
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title` (
  `titleId` int(11) NOT NULL,
  `titleName` varchar(40) NOT NULL,
  `addTime` date DEFAULT NULL,
  `titleDesc` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`titleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���1-18�̶�Ϊ�ȼ��ƺ�';

-- ----------------------------
-- Records of title
-- ----------------------------
INSERT INTO `title` VALUES ('1', '路人', '2015-06-10', '第一个等级');
INSERT INTO `title` VALUES ('2', '酱油', '2015-06-10', null);
INSERT INTO `title` VALUES ('3', '低能力者', '2015-06-10', null);
INSERT INTO `title` VALUES ('4', '酱油\r\n低能力者', '2015-06-10', null);
INSERT INTO `title` VALUES ('5', '异能力者', '2015-06-10', null);
INSERT INTO `title` VALUES ('6', '异能力者', '2015-06-10', null);
INSERT INTO `title` VALUES ('7', '强能力者', '2015-06-12', null);
INSERT INTO `title` VALUES ('8', '强能力者', '2015-06-12', null);
INSERT INTO `title` VALUES ('9', '强能力者', '2015-06-12', null);
INSERT INTO `title` VALUES ('10', '强能力者', '2015-06-12', null);
INSERT INTO `title` VALUES ('11', '大能力者', '2015-06-13', null);
INSERT INTO `title` VALUES ('12', '大能力者', '2015-06-13', null);
INSERT INTO `title` VALUES ('13', '大能力者', '2015-06-13', null);
INSERT INTO `title` VALUES ('14', '大能力者', '2015-06-13', null);
INSERT INTO `title` VALUES ('15', '超能力者', '2015-06-14', null);
INSERT INTO `title` VALUES ('16', '超能力者', '2015-06-14', null);
INSERT INTO `title` VALUES ('17', '超能力者', '2015-06-14', null);
INSERT INTO `title` VALUES ('18', '超能力者', '2015-06-14', '最高等级、18级');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPwd` varchar(40) NOT NULL,
  `userHead` varchar(120) DEFAULT NULL,
  `userEmail` varchar(40) DEFAULT NULL,
  `userTel` varchar(20) DEFAULT NULL,
  `userQq` varchar(20) DEFAULT NULL,
  `userWeixin` varchar(20) DEFAULT NULL,
  `userSina` varchar(40) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `frostTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '小智', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/my.jpg', '154287627@qq.com', '15074480723', null, null, null, '1', null);
INSERT INTO `user` VALUES ('2', '测试', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/5.jpg', '491158129@qq.com', null, null, null, null, '0', '2015-06-22 00:00:00');
INSERT INTO `user` VALUES ('3', 'test1', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/my.jpg', 'test1@izhi.com', null, null, null, null, '7', '2015-06-22 00:00:00');
INSERT INTO `user` VALUES ('4', 'test2', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/my.jpg', 'test2@izhi.com', null, null, null, null, '7', '2015-06-22 00:00:00');
INSERT INTO `user` VALUES ('5', 'test3', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/my.jpg', 'test3@izhi.com', null, null, null, null, '7', '2015-06-22 00:00:00');
INSERT INTO `user` VALUES ('6', 'test4', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/my.jpg', 'test4@izhi.com', null, null, null, null, '7', '2015-06-22 00:00:00');
INSERT INTO `user` VALUES ('7', 'test5', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/my.jpg', 'test5@izhi.com', null, null, null, null, '7', '2015-06-22 00:00:00');
INSERT INTO `user` VALUES ('8', 'test6', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/my.jpg', 'test6@izhi.com', null, null, null, null, '1', '2015-06-22 00:00:00');
INSERT INTO `user` VALUES ('9', 'test7', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/my.jpg', 'test7@izhi.com', null, null, null, null, '1', '2015-06-22 00:00:00');
INSERT INTO `user` VALUES ('10', 'test8', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/my.jpg', 'test8@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('11', 'test9', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test9@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('12', 'test10', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test10@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('13', 'test11', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/my.jpg', 'test11@izhi.com', null, null, null, null, '1', null);
INSERT INTO `user` VALUES ('14', 'test12', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test12@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('15', 'test13', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test13@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('16', 'test14', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test14@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('17', 'test15', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test15@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('18', 'test16', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test16@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('19', 'test17', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test17@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('20', 'test18', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test18@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('21', 'test19', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test19@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('22', 'test20', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test20@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('23', 'test21', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test21@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('24', 'test22', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test22@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('25', 'test23', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test23@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('26', 'test24', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test24@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('27', 'test25', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test25@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('28', 'test26', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test26@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('29', 'test27', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test27@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('30', 'test28', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test28@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('31', 'test29', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test29@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('32', 'test30', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test30@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('33', 'test31', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test31@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('34', 'test32', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test32@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('35', 'test33', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test33@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('36', 'test34', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test34@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('37', 'test35', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test35@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('38', 'test36', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test36@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('39', 'test37', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test37@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('40', 'test38', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test38@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('41', 'test39', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test39@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('42', 'test40', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test40@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('43', 'test41', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test41@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('44', 'test42', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test42@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('45', 'test43', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test43@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('46', 'test44', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test44@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('47', 'test45', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test45@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('48', 'test46', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test46@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('49', 'test47', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test47@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('50', 'test48', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test48@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('51', 'test49', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test49@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('52', 'test50', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test50@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('53', 'test51', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test51@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('54', 'test52', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test52@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('55', 'test53', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test53@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('56', 'test54', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test54@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('57', 'test55', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test55@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('58', 'test56', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test56@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('59', 'test57', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test57@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('60', 'test58', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test58@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('61', 'test59', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test59@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('62', 'test60', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test60@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('63', 'test61', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test61@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('64', 'test62', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test62@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('65', 'test63', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test63@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('66', 'test64', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test64@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('67', 'test65', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test65@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('68', 'test66', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test66@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('69', 'test67', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test67@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('70', 'test68', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test68@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('71', 'test69', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test69@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('72', 'test70', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test70@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('73', 'test71', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test71@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('74', 'test72', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test72@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('75', 'test73', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test73@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('76', 'test74', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test74@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('77', 'test75', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test75@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('78', 'test76', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test76@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('79', 'test77', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test77@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('80', 'test78', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test78@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('81', 'test79', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test79@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('82', 'test80', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test80@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('83', 'test81', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test81@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('84', 'test82', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test82@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('85', 'test83', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test83@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('86', 'test84', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test84@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('87', 'test85', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test85@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('88', 'test86', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test86@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('89', 'test87', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test87@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('90', 'test88', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test88@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('91', 'test89', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test89@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('92', 'test90', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test90@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('93', 'test91', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test91@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('94', 'test92', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test92@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('95', 'test93', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test93@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('96', 'test94', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test94@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('97', 'test95', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test95@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('98', 'test96', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test96@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('99', 'test97', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test97@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('100', 'test98', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test98@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('101', 'test99', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test99@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('102', 'test100', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test100@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('103', 'test101', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test101@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('104', 'test102', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test102@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('105', 'test103', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test103@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('106', 'test104', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test104@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('107', 'test105', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test105@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('108', 'test106', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test106@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('109', 'test107', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test107@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('110', 'test108', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test108@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('111', 'test109', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test109@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('112', 'test110', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test110@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('113', 'test111', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test111@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('114', 'test112', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test112@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('115', 'test113', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test113@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('116', 'test114', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test114@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('117', 'test115', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test115@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('118', 'test116', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test116@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('119', 'test117', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test117@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('120', 'test118', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test118@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('121', 'test119', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test119@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('122', 'test120', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test120@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('123', 'test121', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test121@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('124', 'test122', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test122@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('125', 'test123', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test123@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('126', 'test124', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test124@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('127', 'test125', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test125@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('128', 'test126', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test126@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('129', 'test127', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test127@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('130', 'test128', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test128@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('131', 'test129', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test129@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('132', 'test130', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test130@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('133', 'test131', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test131@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('134', 'test132', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test132@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('135', 'test133', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test133@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('136', 'test134', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test134@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('137', 'test135', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test135@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('138', 'test136', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test136@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('139', 'test137', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test137@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('140', 'test138', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test138@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('141', 'test139', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test139@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('142', 'test140', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test140@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('143', 'test141', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test141@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('144', 'test142', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test142@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('145', 'test143', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test143@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('146', 'test144', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test144@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('147', 'test145', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test145@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('148', 'test146', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test146@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('149', 'test147', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test147@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('150', 'test148', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test148@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('151', 'test149', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test149@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('152', 'test150', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test150@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('153', 'test151', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test151@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('154', 'test152', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test152@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('155', 'test153', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test153@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('156', 'test154', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test154@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('157', 'test155', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test155@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('158', 'test156', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test156@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('159', 'test157', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test157@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('160', 'test158', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test158@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('161', 'test159', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test159@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('162', 'test160', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test160@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('163', 'test161', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test161@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('164', 'test162', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test162@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('165', 'test163', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test163@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('166', 'test164', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test164@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('167', 'test165', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test165@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('168', 'test166', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test166@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('169', 'test167', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test167@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('170', 'test168', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test168@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('171', 'test169', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test169@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('172', 'test170', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test170@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('173', 'test171', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test171@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('174', 'test172', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test172@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('175', 'test173', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test173@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('176', 'test174', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test174@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('177', 'test175', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test175@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('178', 'test176', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test176@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('179', 'test177', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test177@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('180', 'test178', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test178@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('181', 'test179', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test179@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('182', 'test180', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test180@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('183', 'test181', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test181@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('184', 'test182', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test182@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('185', 'test183', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test183@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('186', 'test184', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test184@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('187', 'test185', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test185@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('188', 'test186', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test186@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('189', 'test187', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test187@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('190', 'test188', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test188@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('191', 'test189', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test189@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('192', 'test190', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test190@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('193', 'test191', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test191@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('194', 'test192', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test192@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('195', 'test193', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test193@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('196', 'test194', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test194@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('197', 'test195', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test195@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('198', 'test196', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test196@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('199', 'test197', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test197@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('200', 'test198', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test198@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('201', 'test199', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/head/9.jpg', 'test199@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('204', 'test200', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/1.jpg', 'test200@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('205', 'test201', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/1.jpg', 'test201@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('209', 'ramo', 'e10adc3949ba59abbe56e057f20f883e', 'frontstage/img/test/1.jpg', '823517146@qq.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('210', 'test0', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/h1.jpg', 'test@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('211', '添加', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/h1.jpg', 'add@izhi.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('212', '测试添加', '098f6bcd4621d373cade4e832627b4f6', 'frontstage/img/test/h1.jpg', 'ts@ts.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('213', 'tanshnxiang', 'e10adc3949ba59abbe56e057f20f883e', 'frontstage/img/test/h1.jpg', '3413432@qq.com', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('214', 'ttttttdfafda', 'e10adc3949ba59abbe56e057f20f883e', 'frontstage/img/test/h1.jpg', '341432@qq.com', null, null, null, null, '0', null);

-- ----------------------------
-- Table structure for `usercode`
-- ----------------------------
DROP TABLE IF EXISTS `usercode`;
CREATE TABLE `usercode` (
  `codeId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `codeContext` text NOT NULL,
  `saveTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`codeId`),
  KEY `FK_codeType` (`typeId`),
  KEY `FK_userCode` (`userId`),
  CONSTRAINT `FK_codeType` FOREIGN KEY (`typeId`) REFERENCES `codetype` (`typeId`),
  CONSTRAINT `FK_userCode` FOREIGN KEY (`userId`) REFERENCES `userinfo` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercode
-- ----------------------------
INSERT INTO `usercode` VALUES ('1', '2', '1', 'public class Hello {\n	public static void main(String[] args) {\n     	for (String arg : args) {\n         	System.out.println(arg); \n        \n        }\n    }\n}        \n				', '2015-07-14 16:33:35');

-- ----------------------------
-- Table structure for `usercourse`
-- ----------------------------
DROP TABLE IF EXISTS `usercourse`;
CREATE TABLE `usercourse` (
  `relationId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `studyId` int(11) DEFAULT NULL,
  `voideId` int(11) DEFAULT NULL,
  `studyTime` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`relationId`),
  KEY `FK_courseRelation` (`courseId`),
  KEY `FK_courseType` (`typeId`),
  KEY `FK_userCourse` (`userId`),
  KEY `FK_studyUserCourse` (`studyId`),
  KEY `FK_userCourseVoide` (`voideId`),
  CONSTRAINT `FK_courseRelation` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`),
  CONSTRAINT `FK_courseType` FOREIGN KEY (`typeId`) REFERENCES `relationtype` (`typeId`),
  CONSTRAINT `FK_studyUserCourse` FOREIGN KEY (`studyId`) REFERENCES `study` (`studyId`),
  CONSTRAINT `FK_userCourse` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `FK_userCourseVoide` FOREIGN KEY (`voideId`) REFERENCES `voide` (`voideId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercourse
-- ----------------------------
INSERT INTO `usercourse` VALUES ('1', '1', '8', '181', '1', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('2', '3', '16', '181', '1', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('3', '3', '8', '181', '1', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('4', '1', '1', '181', '1', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('5', '3', '10', '181', '1', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('6', '1', '8', '177', '2', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('7', '3', '6', '177', '2', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('8', '2', '5', '177', '2', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('9', '3', '12', '177', '2', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('11', '1', '6', '2', '55', '19', '0小时22分钟');
INSERT INTO `usercourse` VALUES ('13', '3', '7', '2', '3', '28', '0小时30分钟');
INSERT INTO `usercourse` VALUES ('14', '2', '16', '110', '4', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('15', '3', '10', '110', '4', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('16', '1', '1', '110', '4', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('17', '1', '16', '110', '4', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('18', '1', '10', '110', '4', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('19', '3', '7', '20', '5', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('20', '2', '13', '20', '5', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('21', '3', '15', '68', '6', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('22', '2', '4', '68', '6', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('23', '1', '6', '68', '6', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('24', '1', '5', '54', '7', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('25', '1', '13', '54', '7', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('26', '2', '10', '54', '7', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('27', '2', '8', '54', '7', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('28', '3', '10', '54', '7', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('29', '1', '15', '131', '8', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('30', '1', '13', '131', '8', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('31', '1', '5', '131', '8', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('32', '1', '8', '157', '9', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('33', '3', '9', '157', '9', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('34', '2', '1', '2', '51', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('35', '3', '10', '157', '9', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('36', '1', '13', '157', '9', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('37', '2', '6', '24', '10', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('38', '2', '1', '24', '10', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('39', '2', '7', '24', '10', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('40', '2', '13', '24', '10', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('41', '1', '6', '131', '11', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('42', '2', '6', '131', '11', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('43', '1', '6', '131', '11', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('44', '1', '1', '131', '11', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('45', '3', '6', '131', '11', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('46', '3', '12', '37', '12', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('47', '3', '9', '37', '12', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('48', '2', '8', '37', '12', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('49', '3', '5', '37', '12', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('50', '1', '11', '37', '12', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('51', '2', '12', '181', '13', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('52', '1', '4', '181', '13', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('53', '2', '8', '142', '14', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('54', '2', '1', '142', '14', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('55', '3', '10', '142', '14', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('56', '2', '8', '38', '15', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('57', '2', '11', '38', '15', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('58', '1', '15', '38', '15', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('59', '1', '9', '38', '15', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('60', '1', '15', '62', '16', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('61', '2', '11', '62', '16', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('62', '2', '9', '62', '16', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('63', '2', '15', '62', '16', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('64', '1', '7', '62', '16', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('65', '3', '10', '19', '17', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('66', '3', '10', '19', '17', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('67', '3', '9', '19', '17', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('68', '3', '7', '19', '17', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('69', '1', '10', '19', '17', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('70', '1', '14', '179', '18', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('71', '2', '16', '179', '18', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('72', '1', '15', '179', '18', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('73', '1', '1', '179', '18', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('74', '1', '4', '175', '19', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('75', '1', '11', '175', '19', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('76', '3', '15', '35', '20', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('77', '2', '4', '35', '20', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('78', '3', '8', '35', '20', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('79', '1', '12', '78', '21', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('80', '2', '8', '78', '21', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('81', '3', '8', '78', '21', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('82', '3', '15', '77', '22', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('83', '2', '12', '77', '22', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('84', '3', '7', '77', '22', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('85', '2', '10', '70', '23', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('86', '3', '11', '70', '23', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('87', '1', '13', '70', '23', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('88', '2', '2', '42', '24', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('89', '3', '10', '42', '24', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('90', '3', '12', '96', '25', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('91', '2', '8', '96', '25', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('92', '2', '9', '96', '25', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('93', '1', '13', '96', '25', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('94', '3', '12', '96', '25', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('95', '2', '10', '120', '26', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('96', '2', '6', '120', '26', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('97', '1', '2', '120', '26', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('98', '1', '15', '7', '27', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('99', '3', '14', '7', '27', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('100', '2', '13', '7', '27', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('101', '1', '15', '123', '28', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('102', '3', '7', '123', '28', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('103', '3', '6', '123', '28', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('104', '3', '10', '32', '29', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('105', '1', '7', '32', '29', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('106', '1', '16', '22', '30', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('107', '1', '7', '22', '30', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('108', '3', '4', '22', '30', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('109', '1', '11', '22', '30', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('110', '3', '16', '22', '30', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('111', '3', '11', '164', '31', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('112', '3', '15', '164', '31', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('113', '3', '16', '32', '32', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('114', '2', '7', '32', '32', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('115', '1', '16', '6', '33', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('116', '3', '5', '6', '33', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('117', '2', '1', '17', '34', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('118', '3', '11', '17', '34', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('119', '2', '5', '17', '34', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('120', '3', '13', '34', '35', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('121', '1', '10', '34', '35', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('122', '1', '12', '34', '35', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('123', '3', '7', '34', '35', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('124', '3', '2', '114', '36', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('125', '2', '4', '114', '36', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('126', '1', '5', '114', '36', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('127', '1', '5', '114', '36', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('128', '3', '13', '114', '36', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('129', '2', '10', '55', '37', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('130', '3', '5', '55', '37', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('131', '3', '16', '190', '38', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('132', '1', '13', '190', '38', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('133', '1', '13', '171', '39', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('134', '3', '16', '171', '39', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('135', '1', '6', '171', '39', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('136', '1', '2', '171', '39', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('137', '2', '13', '114', '40', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('138', '2', '14', '114', '40', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('139', '3', '16', '114', '40', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('140', '1', '11', '80', '41', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('141', '2', '12', '80', '41', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('142', '3', '8', '80', '41', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('143', '1', '14', '80', '41', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('144', '2', '2', '80', '41', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('145', '1', '5', '200', '42', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('146', '2', '4', '200', '42', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('147', '1', '8', '200', '42', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('148', '2', '4', '200', '42', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('149', '1', '2', '200', '42', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('150', '3', '12', '194', '43', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('151', '2', '6', '194', '43', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('152', '2', '6', '41', '44', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('153', '3', '6', '41', '44', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('154', '3', '15', '41', '44', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('155', '3', '2', '183', '45', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('156', '2', '8', '183', '45', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('157', '1', '4', '183', '45', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('158', '2', '1', '86', '46', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('159', '2', '6', '86', '46', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('160', '2', '11', '86', '46', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('161', '2', '2', '86', '46', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('162', '3', '9', '22', '47', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('163', '2', '16', '22', '47', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('164', '1', '6', '22', '47', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('165', '3', '1', '22', '47', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('166', '3', '4', '22', '47', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('167', '3', '1', '5', '48', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('168', '1', '7', '5', '48', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('169', '2', '13', '108', '49', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('170', '2', '7', '108', '49', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('171', '2', '14', '108', '49', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('172', '3', '16', '108', '49', null, '0小时30分钟');
INSERT INTO `usercourse` VALUES ('173', '3', '9', '108', '49', null, '0小时40分钟');
INSERT INTO `usercourse` VALUES ('174', '3', '8', '58', '50', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('175', '1', '8', '58', '50', null, '0小时10分钟');
INSERT INTO `usercourse` VALUES ('176', '3', '14', '58', '50', null, '0小时20分钟');
INSERT INTO `usercourse` VALUES ('177', '1', '9', '2', '53', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('178', '1', '10', '2', '53', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('179', '1', '11', '2', '53', null, '0小时0分钟');
INSERT INTO `usercourse` VALUES ('181', '2', '14', '2', '53', '91', '0小时12分钟');
INSERT INTO `usercourse` VALUES ('182', '2', '8', '2', '53', '43', '0小时4分钟');
INSERT INTO `usercourse` VALUES ('183', '1', '12', '2', null, null, '0小时0分钟');

-- ----------------------------
-- Table structure for `usergroup`
-- ----------------------------
DROP TABLE IF EXISTS `usergroup`;
CREATE TABLE `usergroup` (
  `groupId` int(11) NOT NULL,
  `groupName` varchar(40) NOT NULL,
  `friendNumber` int(11) DEFAULT '0',
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usergroup
-- ----------------------------

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userId` int(11) NOT NULL DEFAULT '0',
  `countyId` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `labelId` int(11) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `codeId` int(11) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  `titleId` int(11) DEFAULT NULL,
  `voideId` int(11) DEFAULT NULL,
  `userHead` varchar(120) DEFAULT NULL,
  `realName` varchar(80) DEFAULT NULL,
  `userSex` varchar(40) DEFAULT NULL,
  `birthday` timestamp NULL DEFAULT NULL,
  `registTime` timestamp NULL DEFAULT NULL,
  `signature` varchar(280) DEFAULT NULL,
  `loginNumber` int(11) DEFAULT '0',
  `loginTime` timestamp NULL DEFAULT NULL,
  `codeNumber` int(11) DEFAULT '0',
  `messageNumber` int(11) DEFAULT '0',
  `studyTime` int(11) DEFAULT NULL,
  `studyCourse` int(11) DEFAULT '0',
  `replyNumber` int(11) DEFAULT '0',
  `postNumber` int(11) DEFAULT '0',
  `userLevel` int(11) DEFAULT '1',
  `userExp` int(11) DEFAULT '0',
  PRIMARY KEY (`userId`),
  KEY `FK_userCity` (`countyId`),
  KEY `FK_userCode` (`codeId`),
  KEY `FK_userGroup` (`groupId`),
  KEY `FK_userLabel` (`labelId`),
  KEY `FK_userOffice` (`officeId`),
  KEY `FK_userTitle` (`titleId`),
  KEY `FK_userType` (`typeId`),
  KEY `FK_userStudying` (`voideId`),
  CONSTRAINT `FK_userCity` FOREIGN KEY (`countyId`) REFERENCES `county` (`countyId`),
  CONSTRAINT `FK_userGroup` FOREIGN KEY (`groupId`) REFERENCES `usergroup` (`groupId`),
  CONSTRAINT `FK_userInfo` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `FK_userLabel` FOREIGN KEY (`labelId`) REFERENCES `userlabel` (`labelId`),
  CONSTRAINT `FK_userOffice` FOREIGN KEY (`officeId`) REFERENCES `useroffice` (`officeId`),
  CONSTRAINT `FK_userStudying` FOREIGN KEY (`voideId`) REFERENCES `voide` (`voideId`),
  CONSTRAINT `FK_userTitle` FOREIGN KEY (`titleId`) REFERENCES `title` (`titleId`),
  CONSTRAINT `FK_userType` FOREIGN KEY (`typeId`) REFERENCES `usertype` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '482', null, null, '3', null, null, '1', null, 'frontstage/img/test/my.jpg', null, '男', null, '2015-06-16 00:00:00', '个性签名', '0', '2015-07-14 16:47:24', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('2', '1', null, null, '1', null, null, '1', '19', 'frontstage/img/test/head/5.jpg', null, '保密', null, '2015-06-16 00:00:00', '', '0', '2015-07-21 21:19:40', '1', '0', '0', '8', '1', '1', '1', '0');
INSERT INTO `userinfo` VALUES ('3', '1', null, null, null, null, null, '1', null, 'frontstage/img/test/my.jpg', null, '男', null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('4', '1', null, null, null, null, null, '1', null, 'frontstage/img/test/my.jpg', null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('5', '1', null, null, null, null, null, '1', null, 'frontstage/img/test/my.jpg', null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '2', '1', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('6', '1', null, null, null, null, null, '1', null, 'frontstage/img/test/my.jpg', null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '2', '1', '1', '1', '0');
INSERT INTO `userinfo` VALUES ('7', '1', null, null, null, null, null, '1', null, 'frontstage/img/test/my.jpg', null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '3', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('8', '1', null, null, null, null, null, '1', null, 'frontstage/img/test/my.jpg', null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('9', '1', null, null, null, null, null, '1', null, 'frontstage/img/test/my.jpg', null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '1', '1', '0');
INSERT INTO `userinfo` VALUES ('10', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('11', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('12', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '1', null, '0');
INSERT INTO `userinfo` VALUES ('13', '1', null, null, null, null, null, '1', null, 'frontstage/img/test/my.jpg', null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('14', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('15', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '1', null, '0');
INSERT INTO `userinfo` VALUES ('16', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '1', null, '0');
INSERT INTO `userinfo` VALUES ('17', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '3', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('18', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('19', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '5', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('20', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '2', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('21', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '1', null, '0');
INSERT INTO `userinfo` VALUES ('22', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '10', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('23', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('24', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '4', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('25', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('26', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('27', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '1', null, '0');
INSERT INTO `userinfo` VALUES ('28', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('29', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('30', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('31', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('32', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '4', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('33', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('34', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '4', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('35', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '3', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('36', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('37', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '5', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('38', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '4', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('39', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('40', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('41', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '3', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('42', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '2', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('43', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('44', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('45', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('46', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('47', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('48', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('49', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('50', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('51', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('52', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('53', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('54', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '5', '0', '1', null, '0');
INSERT INTO `userinfo` VALUES ('55', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '2', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('56', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('57', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('58', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '3', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('59', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '3', '0', null, '0');
INSERT INTO `userinfo` VALUES ('60', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('61', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('62', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '5', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('63', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('64', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('65', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('66', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('67', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('68', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '3', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('69', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('70', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '3', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('71', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('72', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('73', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '1', null, '0');
INSERT INTO `userinfo` VALUES ('74', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '1', null, '0');
INSERT INTO `userinfo` VALUES ('75', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('76', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('77', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '3', '0', '1', null, '0');
INSERT INTO `userinfo` VALUES ('78', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '3', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('79', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('80', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '5', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('81', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('82', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('83', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('84', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('85', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('86', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '4', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('87', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('88', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('89', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('90', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('91', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('92', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('93', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('94', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('95', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '1', null, '0');
INSERT INTO `userinfo` VALUES ('96', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '5', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('97', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('98', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '1', null, '0');
INSERT INTO `userinfo` VALUES ('99', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('100', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('101', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '1', null, '0');
INSERT INTO `userinfo` VALUES ('102', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('103', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('104', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('105', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('106', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('107', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('108', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '5', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('109', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('110', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '5', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('111', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('112', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('113', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('114', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '8', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('115', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('116', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('117', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('118', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('119', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('120', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '3', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('121', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '1', null, '0');
INSERT INTO `userinfo` VALUES ('122', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('123', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '3', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('124', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('125', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('126', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('127', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('128', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('129', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('130', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('131', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '8', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('132', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('133', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('134', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('135', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('136', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '1', null, '0');
INSERT INTO `userinfo` VALUES ('137', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('138', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('139', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('140', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('141', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('142', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '3', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('143', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('144', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('145', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('146', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '1', null, '0');
INSERT INTO `userinfo` VALUES ('147', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('148', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('149', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('150', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('151', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('152', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('153', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '1', null, '0');
INSERT INTO `userinfo` VALUES ('154', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('155', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('156', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('157', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '4', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('158', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('159', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('160', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('161', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('162', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('163', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '1', null, '0');
INSERT INTO `userinfo` VALUES ('164', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '2', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('165', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('166', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('167', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('168', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('169', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('170', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('171', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '4', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('172', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('173', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('174', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('175', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '2', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('176', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '1', null, '0');
INSERT INTO `userinfo` VALUES ('177', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '4', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('178', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('179', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '4', '3', '0', null, '0');
INSERT INTO `userinfo` VALUES ('180', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('181', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '7', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('182', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('183', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '3', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('184', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('185', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '1', null, '0');
INSERT INTO `userinfo` VALUES ('186', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('187', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', null, '0');
INSERT INTO `userinfo` VALUES ('188', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', null, '0');
INSERT INTO `userinfo` VALUES ('189', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('190', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '2', '1', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('191', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('192', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '1', '1', '0');
INSERT INTO `userinfo` VALUES ('193', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('194', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '2', '2', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('195', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('196', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '2', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('197', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('198', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '1', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('199', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('200', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('201', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-06-16 00:00:00', null, '0', null, '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('204', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-07-05 20:08:07', null, '1', '2015-07-05 20:08:07', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('205', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-07-05 20:15:11', null, '1', '2015-07-05 20:15:11', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('209', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-07-12 20:20:25', null, '1', '2015-07-12 20:20:25', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('210', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-07-12 20:24:29', null, '1', '2015-07-12 20:24:29', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `userinfo` VALUES ('211', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-07-12 20:25:59', null, '1', '2015-07-12 20:25:59', '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('212', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-07-12 20:32:22', null, '1', '2015-07-12 20:32:22', '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('213', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-07-21 20:19:19', null, '1', '2015-07-21 20:19:19', '0', '0', '0', '0', '0', '0', null, '0');
INSERT INTO `userinfo` VALUES ('214', '1', null, null, null, null, null, '1', null, null, null, null, null, '2015-07-21 20:29:28', null, '1', '2015-07-21 20:30:31', '0', '0', '0', '0', '0', '0', null, '0');

-- ----------------------------
-- Table structure for `userlabel`
-- ----------------------------
DROP TABLE IF EXISTS `userlabel`;
CREATE TABLE `userlabel` (
  `labelId` int(11) NOT NULL,
  `labelName` varchar(40) NOT NULL,
  `labelValue` int(11) DEFAULT NULL,
  PRIMARY KEY (`labelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlabel
-- ----------------------------

-- ----------------------------
-- Table structure for `useroffice`
-- ----------------------------
DROP TABLE IF EXISTS `useroffice`;
CREATE TABLE `useroffice` (
  `officeId` int(11) NOT NULL,
  `officeName` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`officeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useroffice
-- ----------------------------
INSERT INTO `useroffice` VALUES ('1', '页面重构师');
INSERT INTO `useroffice` VALUES ('2', '交互设计师');
INSERT INTO `useroffice` VALUES ('3', '产品经理');
INSERT INTO `useroffice` VALUES ('4', 'UI设计师');
INSERT INTO `useroffice` VALUES ('5', 'JS工程师');
INSERT INTO `useroffice` VALUES ('6', 'Web前端工程师');
INSERT INTO `useroffice` VALUES ('7', '移动开发工程师');
INSERT INTO `useroffice` VALUES ('8', 'PHP开发工程师');
INSERT INTO `useroffice` VALUES ('9', '软件测试工程师');
INSERT INTO `useroffice` VALUES ('10', 'Linux系统工程师');
INSERT INTO `useroffice` VALUES ('11', 'JAVA开发工程师');
INSERT INTO `useroffice` VALUES ('12', '学生');
INSERT INTO `useroffice` VALUES ('13', '其他');

-- ----------------------------
-- Table structure for `userpost`
-- ----------------------------
DROP TABLE IF EXISTS `userpost`;
CREATE TABLE `userpost` (
  `postId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `labelId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `resourceId` int(11) DEFAULT NULL,
  `postTitle` varchar(100) NOT NULL,
  `postURL` varchar(200) DEFAULT NULL,
  `postContext` text NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `replyTime` timestamp NULL DEFAULT NULL,
  `clickNumber` int(11) DEFAULT '0',
  `replyNumber` int(11) DEFAULT '0',
  `courseId` int(11) DEFAULT NULL,
  PRIMARY KEY (`postId`),
  KEY `FK_postResource` (`resourceId`),
  KEY `FK_postType` (`typeId`),
  KEY `FK_userPost` (`userId`),
  KEY `FK_coursePost` (`courseId`),
  KEY `FK_postLabel` (`labelId`),
  CONSTRAINT `FK_coursePost` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`),
  CONSTRAINT `FK_postLabel` FOREIGN KEY (`labelId`) REFERENCES `postlabel` (`labelId`),
  CONSTRAINT `FK_postResource` FOREIGN KEY (`resourceId`) REFERENCES `postresource` (`resourceId`),
  CONSTRAINT `FK_postType` FOREIGN KEY (`typeId`) REFERENCES `posttype` (`typeId`),
  CONSTRAINT `FK_userPost` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userpost
-- ----------------------------
INSERT INTO `userpost` VALUES ('1', '1', '2', '121', null, '第0个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\121\\1436335627338\\1436335627338.txt', '', '2015-07-08 14:07:07', null, '0', '8', null);
INSERT INTO `userpost` VALUES ('2', '1', '23', '136', null, '第0个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\136\\1436336854016\\1436336854016.txt', '', '2015-07-08 14:27:34', null, '0', '12', null);
INSERT INTO `userpost` VALUES ('3', '1', '16', '2', null, '第0个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\80\\1436336943561\\1436336943561.txt', '', '2015-07-09 18:07:15', null, '5', '8', null);
INSERT INTO `userpost` VALUES ('4', '2', '30', '98', '1', '第1个是分享帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\98\\1436337211795\\1436337211795.txt', '', '2015-07-08 14:33:31', null, '0', '11', null);
INSERT INTO `userpost` VALUES ('5', '1', '14', '163', null, '第2个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\163\\1436337230536\\1436337230536.txt', '', '2015-07-08 14:33:50', null, '0', '12', null);
INSERT INTO `userpost` VALUES ('6', '1', '26', '21', null, '第3个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\21\\1436337248787\\1436337248787.txt', '', '2015-07-08 14:34:08', null, '0', '13', null);
INSERT INTO `userpost` VALUES ('7', '1', '14', '101', null, '第4个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\101\\1436337416566\\1436337416566.txt', '', '2015-07-08 14:36:56', null, '0', '9', null);
INSERT INTO `userpost` VALUES ('8', '2', '18', '153', '2', '第5个是分享帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\153\\1436337483830\\1436337483830.txt', '', '2015-07-08 14:39:35', null, '0', '11', null);
INSERT INTO `userpost` VALUES ('9', '1', '1', '95', null, '第6个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\95\\1436337592650\\1436337592650.txt', '', '2015-07-08 14:39:52', null, '0', '9', null);
INSERT INTO `userpost` VALUES ('10', '2', '11', '27', '3', '第7个是分享帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\27\\1436337669693\\1436337669693.txt', '', '2015-07-08 14:42:46', null, '0', '12', null);
INSERT INTO `userpost` VALUES ('11', '1', '12', '74', null, '第8个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\74\\1436337687642\\1436337687642.txt', '', '2015-07-08 14:41:27', null, '0', '10', null);
INSERT INTO `userpost` VALUES ('12', '2', '19', '15', '4', '第9个是分享帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\15\\1436337709701\\1436337709701.txt', '', '2015-07-08 14:42:44', null, '0', '11', null);
INSERT INTO `userpost` VALUES ('13', '1', '7', '9', null, '第10个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\9\\1436337730261\\1436337730261.txt', '', '2015-07-08 14:42:10', null, '0', '11', null);
INSERT INTO `userpost` VALUES ('14', '1', '27', '77', null, '第11个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\77\\1436337736537\\1436337736537.txt', '', '2015-07-08 14:42:16', null, '0', '11', null);
INSERT INTO `userpost` VALUES ('15', '1', '21', '176', null, '第12个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\176\\1436337746194\\1436337746194.txt', '', '2015-07-08 14:42:26', null, '0', '12', null);
INSERT INTO `userpost` VALUES ('16', '1', '14', '192', null, '第13个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\192\\1436337753050\\1436337753050.txt', '', '2015-07-08 14:42:33', null, '0', '11', null);
INSERT INTO `userpost` VALUES ('17', '1', '22', '185', null, '第14个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\185\\1436337849951\\1436337849951.txt', '', '2015-07-08 14:44:09', null, '0', '12', null);
INSERT INTO `userpost` VALUES ('18', '1', '3', '73', null, '第15个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\73\\1436337864136\\1436337864136.txt', '', '2015-07-08 14:44:24', null, '0', '12', null);
INSERT INTO `userpost` VALUES ('19', '1', '11', '16', null, '第16个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\16\\1436337875853\\1436337875853.txt', '', '2015-07-08 14:44:35', null, '0', '11', null);
INSERT INTO `userpost` VALUES ('20', '1', '15', '6', null, '第17个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\6\\1436337880000\\1436337880000.txt', '', '2015-07-08 14:44:40', null, '2', '11', null);
INSERT INTO `userpost` VALUES ('21', '1', '20', '54', null, '第18个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\54\\1436337890804\\1436337890804.txt', '', '2015-07-08 14:44:50', null, '0', '11', null);
INSERT INTO `userpost` VALUES ('22', '1', '26', '146', null, '第19个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\146\\1436337900659\\1436337900659.txt', '', '2015-07-08 14:45:00', null, '0', '12', null);
INSERT INTO `userpost` VALUES ('23', '1', '1', '12', null, '第20个是问答帖子', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\12\\1436337907283\\1436337907283.txt', '', '2015-07-08 14:45:07', null, '2', '11', null);

-- ----------------------------
-- Table structure for `userrelation`
-- ----------------------------
DROP TABLE IF EXISTS `userrelation`;
CREATE TABLE `userrelation` (
  `relationId` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `userIdA` int(11) DEFAULT NULL,
  `userIdB` int(11) DEFAULT NULL,
  `userName` varchar(40) DEFAULT NULL,
  `relationTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`relationId`),
  KEY `FK_relationGroup` (`groupId`),
  KEY `FK_userA` (`userIdA`),
  KEY `FK_userB` (`userIdB`),
  CONSTRAINT `FK_relationGroup` FOREIGN KEY (`groupId`) REFERENCES `usergroup` (`groupId`),
  CONSTRAINT `FK_userA` FOREIGN KEY (`userIdA`) REFERENCES `user` (`userId`),
  CONSTRAINT `FK_userB` FOREIGN KEY (`userIdB`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userrelation
-- ----------------------------
INSERT INTO `userrelation` VALUES ('1', null, '2', '3', null, '2015-07-02 21:24:47');
INSERT INTO `userrelation` VALUES ('2', null, '2', '4', null, '2015-07-02 21:24:47');
INSERT INTO `userrelation` VALUES ('3', null, '2', '5', null, '2015-07-02 21:24:47');
INSERT INTO `userrelation` VALUES ('4', null, '2', '6', null, '2015-07-02 21:24:47');
INSERT INTO `userrelation` VALUES ('5', null, '2', '7', null, '2015-07-02 21:24:47');
INSERT INTO `userrelation` VALUES ('6', null, '2', '13', null, '2015-07-03 20:24:19');
INSERT INTO `userrelation` VALUES ('7', null, '13', '2', null, '2015-07-03 20:24:19');
INSERT INTO `userrelation` VALUES ('8', null, '57', '159', null, '2015-07-08 14:53:07');
INSERT INTO `userrelation` VALUES ('9', null, '159', '57', null, '2015-07-08 14:53:07');
INSERT INTO `userrelation` VALUES ('10', null, '57', '75', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('11', null, '75', '57', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('12', null, '57', '186', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('13', null, '186', '57', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('14', null, '57', '125', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('15', null, '125', '57', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('16', null, '57', '137', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('17', null, '137', '57', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('18', null, '57', '5', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('19', null, '5', '57', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('20', null, '57', '9', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('21', null, '9', '57', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('22', null, '57', '179', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('23', null, '179', '57', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('24', null, '57', '128', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('25', null, '128', '57', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('26', null, '108', '120', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('27', null, '120', '108', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('28', null, '108', '31', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('29', null, '31', '108', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('30', null, '108', '82', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('31', null, '82', '108', null, '2015-07-08 14:53:08');
INSERT INTO `userrelation` VALUES ('32', null, '108', '153', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('33', null, '153', '108', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('34', null, '108', '175', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('35', null, '175', '108', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('36', null, '108', '163', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('37', null, '163', '108', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('38', null, '108', '147', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('39', null, '147', '108', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('40', null, '108', '117', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('41', null, '117', '108', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('42', null, '108', '184', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('43', null, '184', '108', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('44', null, '164', '142', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('45', null, '142', '164', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('46', null, '164', '38', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('47', null, '38', '164', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('48', null, '164', '194', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('49', null, '194', '164', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('50', null, '164', '116', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('51', null, '116', '164', null, '2015-07-08 14:53:09');
INSERT INTO `userrelation` VALUES ('52', null, '164', '97', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('53', null, '97', '164', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('54', null, '164', '54', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('55', null, '54', '164', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('56', null, '164', '188', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('57', null, '188', '164', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('58', null, '164', '201', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('59', null, '201', '164', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('60', null, '164', '172', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('61', null, '172', '164', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('62', null, '62', '19', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('63', null, '19', '62', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('64', null, '62', '133', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('65', null, '133', '62', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('66', null, '62', '30', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('67', null, '30', '62', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('68', null, '62', '103', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('69', null, '103', '62', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('70', null, '62', '144', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('71', null, '144', '62', null, '2015-07-08 14:53:10');
INSERT INTO `userrelation` VALUES ('72', null, '62', '151', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('73', null, '151', '62', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('74', null, '62', '4', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('75', null, '4', '62', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('76', null, '62', '57', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('77', null, '57', '62', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('78', null, '62', '137', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('79', null, '137', '62', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('80', null, '6', '71', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('81', null, '71', '6', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('82', null, '6', '76', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('83', null, '76', '6', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('84', null, '6', '18', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('85', null, '18', '6', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('86', null, '6', '150', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('87', null, '150', '6', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('88', null, '6', '97', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('89', null, '97', '6', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('90', null, '6', '124', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('91', null, '124', '6', null, '2015-07-08 14:53:11');
INSERT INTO `userrelation` VALUES ('92', null, '6', '136', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('93', null, '136', '6', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('94', null, '6', '179', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('95', null, '179', '6', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('96', null, '6', '147', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('97', null, '147', '6', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('98', null, '186', '42', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('99', null, '42', '186', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('100', null, '186', '50', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('101', null, '50', '186', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('102', null, '186', '38', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('103', null, '38', '186', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('104', null, '186', '197', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('105', null, '197', '186', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('106', null, '186', '52', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('107', null, '52', '186', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('108', null, '186', '31', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('109', null, '31', '186', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('110', null, '186', '132', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('111', null, '132', '186', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('112', null, '186', '167', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('113', null, '167', '186', null, '2015-07-08 14:53:12');
INSERT INTO `userrelation` VALUES ('114', null, '186', '9', null, '2015-07-08 14:53:13');
INSERT INTO `userrelation` VALUES ('115', null, '9', '186', null, '2015-07-08 14:53:13');
INSERT INTO `userrelation` VALUES ('116', null, '201', '130', null, '2015-07-08 14:53:13');
INSERT INTO `userrelation` VALUES ('117', null, '130', '201', null, '2015-07-08 14:53:13');
INSERT INTO `userrelation` VALUES ('118', null, '201', '99', null, '2015-07-08 14:53:13');
INSERT INTO `userrelation` VALUES ('119', null, '99', '201', null, '2015-07-08 14:53:13');
INSERT INTO `userrelation` VALUES ('120', null, '201', '60', null, '2015-07-08 14:53:13');
INSERT INTO `userrelation` VALUES ('121', null, '60', '201', null, '2015-07-08 14:53:13');
INSERT INTO `userrelation` VALUES ('122', null, '201', '82', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('123', null, '82', '201', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('124', null, '201', '125', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('125', null, '125', '201', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('126', null, '201', '125', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('127', null, '125', '201', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('128', null, '201', '187', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('129', null, '187', '201', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('130', null, '201', '163', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('131', null, '163', '201', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('132', null, '201', '13', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('133', null, '13', '201', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('134', null, '178', '113', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('135', null, '113', '178', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('136', null, '178', '124', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('137', null, '124', '178', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('138', null, '178', '91', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('139', null, '91', '178', null, '2015-07-08 14:53:14');
INSERT INTO `userrelation` VALUES ('140', null, '178', '182', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('141', null, '182', '178', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('142', null, '178', '135', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('143', null, '135', '178', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('144', null, '178', '56', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('145', null, '56', '178', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('146', null, '178', '50', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('147', null, '50', '178', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('148', null, '178', '77', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('149', null, '77', '178', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('150', null, '178', '110', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('151', null, '110', '178', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('152', null, '15', '141', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('153', null, '141', '15', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('154', null, '15', '145', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('155', null, '145', '15', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('156', null, '15', '43', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('157', null, '43', '15', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('158', null, '15', '45', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('159', null, '45', '15', null, '2015-07-08 14:53:15');
INSERT INTO `userrelation` VALUES ('160', null, '15', '149', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('161', null, '149', '15', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('162', null, '15', '90', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('163', null, '90', '15', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('164', null, '15', '127', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('165', null, '127', '15', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('166', null, '15', '111', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('167', null, '111', '15', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('168', null, '15', '101', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('169', null, '101', '15', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('170', null, '43', '170', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('171', null, '170', '43', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('172', null, '43', '54', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('173', null, '54', '43', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('174', null, '43', '188', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('175', null, '188', '43', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('176', null, '43', '145', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('177', null, '145', '43', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('178', null, '43', '84', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('179', null, '84', '43', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('180', null, '43', '21', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('181', null, '21', '43', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('182', null, '43', '102', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('183', null, '102', '43', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('184', null, '43', '127', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('185', null, '127', '43', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('186', null, '43', '103', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('187', null, '103', '43', null, '2015-07-08 14:53:16');
INSERT INTO `userrelation` VALUES ('188', null, '21', '56', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('189', null, '56', '21', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('190', null, '21', '148', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('191', null, '148', '21', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('192', null, '21', '76', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('193', null, '76', '21', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('194', null, '21', '111', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('195', null, '111', '21', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('196', null, '21', '78', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('197', null, '78', '21', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('198', null, '21', '86', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('199', null, '86', '21', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('200', null, '21', '121', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('201', null, '121', '21', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('202', null, '21', '73', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('203', null, '73', '21', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('204', null, '21', '42', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('205', null, '42', '21', null, '2015-07-08 14:53:17');
INSERT INTO `userrelation` VALUES ('206', null, '120', '116', null, '2015-07-08 14:53:18');
INSERT INTO `userrelation` VALUES ('207', null, '116', '120', null, '2015-07-08 14:53:18');
INSERT INTO `userrelation` VALUES ('208', null, '120', '162', null, '2015-07-08 14:53:18');
INSERT INTO `userrelation` VALUES ('209', null, '162', '120', null, '2015-07-08 14:53:18');
INSERT INTO `userrelation` VALUES ('210', null, '120', '27', null, '2015-07-08 14:53:19');
INSERT INTO `userrelation` VALUES ('211', null, '27', '120', null, '2015-07-08 14:53:19');
INSERT INTO `userrelation` VALUES ('212', null, '120', '55', null, '2015-07-08 14:53:19');
INSERT INTO `userrelation` VALUES ('213', null, '55', '120', null, '2015-07-08 14:53:19');
INSERT INTO `userrelation` VALUES ('214', null, '120', '23', null, '2015-07-08 14:53:19');
INSERT INTO `userrelation` VALUES ('215', null, '23', '120', null, '2015-07-08 14:53:19');
INSERT INTO `userrelation` VALUES ('216', null, '120', '199', null, '2015-07-08 14:53:19');
INSERT INTO `userrelation` VALUES ('217', null, '199', '120', null, '2015-07-08 14:53:19');
INSERT INTO `userrelation` VALUES ('218', null, '120', '24', null, '2015-07-08 14:53:19');
INSERT INTO `userrelation` VALUES ('219', null, '24', '120', null, '2015-07-08 14:53:19');
INSERT INTO `userrelation` VALUES ('220', null, '120', '122', null, '2015-07-08 14:53:19');
INSERT INTO `userrelation` VALUES ('221', null, '122', '120', null, '2015-07-08 14:53:19');
INSERT INTO `userrelation` VALUES ('222', null, '120', '104', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('223', null, '104', '120', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('224', null, '152', '31', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('225', null, '31', '152', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('226', null, '152', '32', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('227', null, '32', '152', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('228', null, '152', '91', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('229', null, '91', '152', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('230', null, '152', '197', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('231', null, '197', '152', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('232', null, '152', '71', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('233', null, '71', '152', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('234', null, '152', '179', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('235', null, '179', '152', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('236', null, '152', '70', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('237', null, '70', '152', null, '2015-07-08 14:53:20');
INSERT INTO `userrelation` VALUES ('238', null, '152', '137', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('239', null, '137', '152', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('240', null, '152', '158', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('241', null, '158', '152', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('242', null, '18', '193', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('243', null, '193', '18', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('244', null, '18', '89', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('245', null, '89', '18', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('246', null, '18', '88', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('247', null, '88', '18', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('248', null, '18', '116', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('249', null, '116', '18', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('250', null, '18', '192', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('251', null, '192', '18', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('252', null, '18', '14', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('253', null, '14', '18', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('254', null, '18', '5', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('255', null, '5', '18', null, '2015-07-08 14:53:21');
INSERT INTO `userrelation` VALUES ('256', null, '18', '176', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('257', null, '176', '18', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('258', null, '18', '190', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('259', null, '190', '18', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('260', null, '77', '61', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('261', null, '61', '77', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('262', null, '77', '114', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('263', null, '114', '77', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('264', null, '77', '183', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('265', null, '183', '77', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('266', null, '77', '192', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('267', null, '192', '77', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('268', null, '77', '66', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('269', null, '66', '77', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('270', null, '77', '168', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('271', null, '168', '77', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('272', null, '77', '123', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('273', null, '123', '77', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('274', null, '77', '174', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('275', null, '174', '77', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('276', null, '77', '170', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('277', null, '170', '77', null, '2015-07-08 14:53:22');
INSERT INTO `userrelation` VALUES ('278', null, '98', '66', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('279', null, '66', '98', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('280', null, '98', '69', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('281', null, '69', '98', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('282', null, '98', '96', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('283', null, '96', '98', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('284', null, '98', '72', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('285', null, '72', '98', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('286', null, '98', '64', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('287', null, '64', '98', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('288', null, '98', '176', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('289', null, '176', '98', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('290', null, '98', '86', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('291', null, '86', '98', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('292', null, '98', '101', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('293', null, '101', '98', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('294', null, '98', '63', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('295', null, '63', '98', null, '2015-07-08 14:53:23');
INSERT INTO `userrelation` VALUES ('296', null, '131', '73', null, '2015-07-08 14:53:24');
INSERT INTO `userrelation` VALUES ('297', null, '73', '131', null, '2015-07-08 14:53:24');
INSERT INTO `userrelation` VALUES ('298', null, '131', '161', null, '2015-07-08 14:53:24');
INSERT INTO `userrelation` VALUES ('299', null, '161', '131', null, '2015-07-08 14:53:24');
INSERT INTO `userrelation` VALUES ('300', null, '131', '107', null, '2015-07-08 14:53:24');
INSERT INTO `userrelation` VALUES ('301', null, '107', '131', null, '2015-07-08 14:53:24');
INSERT INTO `userrelation` VALUES ('302', null, '131', '155', null, '2015-07-08 14:53:24');
INSERT INTO `userrelation` VALUES ('303', null, '155', '131', null, '2015-07-08 14:53:24');
INSERT INTO `userrelation` VALUES ('304', null, '131', '145', null, '2015-07-08 14:53:24');
INSERT INTO `userrelation` VALUES ('305', null, '145', '131', null, '2015-07-08 14:53:24');
INSERT INTO `userrelation` VALUES ('306', null, '131', '85', null, '2015-07-08 14:53:25');
INSERT INTO `userrelation` VALUES ('307', null, '85', '131', null, '2015-07-08 14:53:25');
INSERT INTO `userrelation` VALUES ('308', null, '131', '14', null, '2015-07-08 14:53:25');
INSERT INTO `userrelation` VALUES ('309', null, '14', '131', null, '2015-07-08 14:53:25');
INSERT INTO `userrelation` VALUES ('310', null, '131', '171', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('311', null, '171', '131', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('312', null, '131', '84', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('313', null, '84', '131', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('314', null, '176', '57', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('315', null, '57', '176', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('316', null, '176', '49', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('317', null, '49', '176', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('318', null, '176', '182', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('319', null, '182', '176', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('320', null, '176', '86', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('321', null, '86', '176', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('322', null, '176', '123', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('323', null, '123', '176', null, '2015-07-08 14:53:26');
INSERT INTO `userrelation` VALUES ('324', null, '176', '55', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('325', null, '55', '176', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('326', null, '176', '102', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('327', null, '102', '176', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('328', null, '176', '127', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('329', null, '127', '176', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('330', null, '176', '161', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('331', null, '161', '176', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('332', null, '45', '160', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('333', null, '160', '45', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('334', null, '45', '70', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('335', null, '70', '45', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('336', null, '45', '50', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('337', null, '50', '45', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('338', null, '45', '3', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('339', null, '3', '45', null, '2015-07-08 14:53:27');
INSERT INTO `userrelation` VALUES ('340', null, '45', '34', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('341', null, '34', '45', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('342', null, '45', '152', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('343', null, '152', '45', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('344', null, '45', '102', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('345', null, '102', '45', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('346', null, '45', '148', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('347', null, '148', '45', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('348', null, '45', '6', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('349', null, '6', '45', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('350', null, '164', '155', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('351', null, '155', '164', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('352', null, '164', '151', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('353', null, '151', '164', null, '2015-07-08 14:53:28');
INSERT INTO `userrelation` VALUES ('354', null, '164', '59', null, '2015-07-08 14:53:29');
INSERT INTO `userrelation` VALUES ('355', null, '59', '164', null, '2015-07-08 14:53:29');
INSERT INTO `userrelation` VALUES ('356', null, '164', '114', null, '2015-07-08 14:53:29');
INSERT INTO `userrelation` VALUES ('357', null, '114', '164', null, '2015-07-08 14:53:29');
INSERT INTO `userrelation` VALUES ('358', null, '164', '155', null, '2015-07-08 14:53:29');
INSERT INTO `userrelation` VALUES ('359', null, '155', '164', null, '2015-07-08 14:53:29');
INSERT INTO `userrelation` VALUES ('360', null, '164', '39', null, '2015-07-08 14:53:29');
INSERT INTO `userrelation` VALUES ('361', null, '39', '164', null, '2015-07-08 14:53:29');
INSERT INTO `userrelation` VALUES ('362', null, '164', '176', null, '2015-07-08 14:53:30');
INSERT INTO `userrelation` VALUES ('363', null, '176', '164', null, '2015-07-08 14:53:30');
INSERT INTO `userrelation` VALUES ('364', null, '164', '12', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('365', null, '12', '164', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('366', null, '164', '37', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('367', null, '37', '164', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('368', null, '90', '79', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('369', null, '79', '90', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('370', null, '90', '121', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('371', null, '121', '90', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('372', null, '90', '70', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('373', null, '70', '90', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('374', null, '90', '47', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('375', null, '47', '90', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('376', null, '90', '145', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('377', null, '145', '90', null, '2015-07-08 14:53:31');
INSERT INTO `userrelation` VALUES ('378', null, '90', '80', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('379', null, '80', '90', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('380', null, '90', '68', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('381', null, '68', '90', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('382', null, '90', '8', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('383', null, '8', '90', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('384', null, '90', '115', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('385', null, '115', '90', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('386', null, '2', '143', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('387', null, '143', '2', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('388', null, '2', '199', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('389', null, '199', '2', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('390', null, '2', '69', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('391', null, '69', '2', null, '2015-07-08 14:53:32');
INSERT INTO `userrelation` VALUES ('392', null, '2', '152', null, '2015-07-08 14:53:33');
INSERT INTO `userrelation` VALUES ('393', null, '152', '2', null, '2015-07-08 14:53:33');
INSERT INTO `userrelation` VALUES ('394', null, '2', '76', null, '2015-07-08 14:53:33');
INSERT INTO `userrelation` VALUES ('395', null, '76', '2', null, '2015-07-08 14:53:33');
INSERT INTO `userrelation` VALUES ('396', null, '2', '29', null, '2015-07-08 14:53:33');
INSERT INTO `userrelation` VALUES ('397', null, '29', '2', null, '2015-07-08 14:53:33');
INSERT INTO `userrelation` VALUES ('398', null, '2', '67', null, '2015-07-08 14:53:33');
INSERT INTO `userrelation` VALUES ('399', null, '67', '2', null, '2015-07-08 14:53:33');
INSERT INTO `userrelation` VALUES ('400', null, '2', '155', null, '2015-07-08 14:53:33');
INSERT INTO `userrelation` VALUES ('401', null, '155', '2', null, '2015-07-08 14:53:33');
INSERT INTO `userrelation` VALUES ('402', null, '2', '31', null, '2015-07-08 14:53:33');
INSERT INTO `userrelation` VALUES ('403', null, '31', '2', null, '2015-07-08 14:53:33');
INSERT INTO `userrelation` VALUES ('404', null, '62', '194', null, '2015-07-08 14:53:34');
INSERT INTO `userrelation` VALUES ('405', null, '194', '62', null, '2015-07-08 14:53:34');
INSERT INTO `userrelation` VALUES ('406', null, '62', '75', null, '2015-07-08 14:53:34');
INSERT INTO `userrelation` VALUES ('407', null, '75', '62', null, '2015-07-08 14:53:34');
INSERT INTO `userrelation` VALUES ('408', null, '62', '37', null, '2015-07-08 14:53:34');
INSERT INTO `userrelation` VALUES ('409', null, '37', '62', null, '2015-07-08 14:53:34');
INSERT INTO `userrelation` VALUES ('410', null, '62', '152', null, '2015-07-08 14:53:34');
INSERT INTO `userrelation` VALUES ('411', null, '152', '62', null, '2015-07-08 14:53:34');
INSERT INTO `userrelation` VALUES ('412', null, '62', '32', null, '2015-07-08 14:53:34');
INSERT INTO `userrelation` VALUES ('413', null, '32', '62', null, '2015-07-08 14:53:34');
INSERT INTO `userrelation` VALUES ('414', null, '62', '191', null, '2015-07-08 14:53:35');
INSERT INTO `userrelation` VALUES ('415', null, '191', '62', null, '2015-07-08 14:53:35');
INSERT INTO `userrelation` VALUES ('416', null, '62', '20', null, '2015-07-08 14:53:35');
INSERT INTO `userrelation` VALUES ('417', null, '20', '62', null, '2015-07-08 14:53:35');
INSERT INTO `userrelation` VALUES ('418', null, '62', '129', null, '2015-07-08 14:53:35');
INSERT INTO `userrelation` VALUES ('419', null, '129', '62', null, '2015-07-08 14:53:35');
INSERT INTO `userrelation` VALUES ('420', null, '62', '160', null, '2015-07-08 14:53:35');
INSERT INTO `userrelation` VALUES ('421', null, '160', '62', null, '2015-07-08 14:53:35');
INSERT INTO `userrelation` VALUES ('422', null, '51', '23', null, '2015-07-08 14:53:36');
INSERT INTO `userrelation` VALUES ('423', null, '23', '51', null, '2015-07-08 14:53:36');
INSERT INTO `userrelation` VALUES ('424', null, '51', '104', null, '2015-07-08 14:53:36');
INSERT INTO `userrelation` VALUES ('425', null, '104', '51', null, '2015-07-08 14:53:36');
INSERT INTO `userrelation` VALUES ('426', null, '51', '57', null, '2015-07-08 14:53:36');
INSERT INTO `userrelation` VALUES ('427', null, '57', '51', null, '2015-07-08 14:53:36');
INSERT INTO `userrelation` VALUES ('428', null, '51', '24', null, '2015-07-08 14:53:36');
INSERT INTO `userrelation` VALUES ('429', null, '24', '51', null, '2015-07-08 14:53:36');
INSERT INTO `userrelation` VALUES ('430', null, '51', '201', null, '2015-07-08 14:53:36');
INSERT INTO `userrelation` VALUES ('431', null, '201', '51', null, '2015-07-08 14:53:36');
INSERT INTO `userrelation` VALUES ('432', null, '51', '60', null, '2015-07-08 14:53:36');
INSERT INTO `userrelation` VALUES ('433', null, '60', '51', null, '2015-07-08 14:53:36');
INSERT INTO `userrelation` VALUES ('434', null, '51', '171', null, '2015-07-08 14:53:37');
INSERT INTO `userrelation` VALUES ('435', null, '171', '51', null, '2015-07-08 14:53:37');
INSERT INTO `userrelation` VALUES ('436', null, '51', '21', null, '2015-07-08 14:53:37');
INSERT INTO `userrelation` VALUES ('437', null, '21', '51', null, '2015-07-08 14:53:37');
INSERT INTO `userrelation` VALUES ('438', null, '51', '181', null, '2015-07-08 14:53:37');
INSERT INTO `userrelation` VALUES ('439', null, '181', '51', null, '2015-07-08 14:53:37');
INSERT INTO `userrelation` VALUES ('440', null, '74', '101', null, '2015-07-08 14:53:37');
INSERT INTO `userrelation` VALUES ('441', null, '101', '74', null, '2015-07-08 14:53:37');
INSERT INTO `userrelation` VALUES ('442', null, '74', '147', null, '2015-07-08 14:53:37');
INSERT INTO `userrelation` VALUES ('443', null, '147', '74', null, '2015-07-08 14:53:37');
INSERT INTO `userrelation` VALUES ('444', null, '74', '80', null, '2015-07-08 14:53:38');
INSERT INTO `userrelation` VALUES ('445', null, '80', '74', null, '2015-07-08 14:53:38');
INSERT INTO `userrelation` VALUES ('446', null, '74', '194', null, '2015-07-08 14:53:38');
INSERT INTO `userrelation` VALUES ('447', null, '194', '74', null, '2015-07-08 14:53:38');
INSERT INTO `userrelation` VALUES ('448', null, '74', '21', null, '2015-07-08 14:53:38');
INSERT INTO `userrelation` VALUES ('449', null, '21', '74', null, '2015-07-08 14:53:38');
INSERT INTO `userrelation` VALUES ('450', null, '74', '86', null, '2015-07-08 14:53:38');
INSERT INTO `userrelation` VALUES ('451', null, '86', '74', null, '2015-07-08 14:53:38');
INSERT INTO `userrelation` VALUES ('452', null, '74', '100', null, '2015-07-08 14:53:38');
INSERT INTO `userrelation` VALUES ('453', null, '100', '74', null, '2015-07-08 14:53:38');
INSERT INTO `userrelation` VALUES ('454', null, '74', '120', null, '2015-07-08 14:53:38');
INSERT INTO `userrelation` VALUES ('455', null, '120', '74', null, '2015-07-08 14:53:38');
INSERT INTO `userrelation` VALUES ('456', null, '74', '77', null, '2015-07-08 14:53:39');
INSERT INTO `userrelation` VALUES ('457', null, '77', '74', null, '2015-07-08 14:53:39');
INSERT INTO `userrelation` VALUES ('458', null, '47', '105', null, '2015-07-08 14:53:39');
INSERT INTO `userrelation` VALUES ('459', null, '105', '47', null, '2015-07-08 14:53:39');
INSERT INTO `userrelation` VALUES ('460', null, '47', '160', null, '2015-07-08 14:53:39');
INSERT INTO `userrelation` VALUES ('461', null, '160', '47', null, '2015-07-08 14:53:39');
INSERT INTO `userrelation` VALUES ('462', null, '47', '30', null, '2015-07-08 14:53:39');
INSERT INTO `userrelation` VALUES ('463', null, '30', '47', null, '2015-07-08 14:53:39');
INSERT INTO `userrelation` VALUES ('464', null, '47', '54', null, '2015-07-08 14:53:39');
INSERT INTO `userrelation` VALUES ('465', null, '54', '47', null, '2015-07-08 14:53:39');
INSERT INTO `userrelation` VALUES ('466', null, '47', '74', null, '2015-07-08 14:53:39');
INSERT INTO `userrelation` VALUES ('467', null, '74', '47', null, '2015-07-08 14:53:39');
INSERT INTO `userrelation` VALUES ('468', null, '47', '10', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('469', null, '10', '47', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('470', null, '47', '148', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('471', null, '148', '47', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('472', null, '47', '149', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('473', null, '149', '47', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('474', null, '47', '186', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('475', null, '186', '47', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('476', null, '70', '54', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('477', null, '54', '70', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('478', null, '70', '88', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('479', null, '88', '70', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('480', null, '70', '169', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('481', null, '169', '70', null, '2015-07-08 14:53:40');
INSERT INTO `userrelation` VALUES ('482', null, '70', '145', null, '2015-07-08 14:53:41');
INSERT INTO `userrelation` VALUES ('483', null, '145', '70', null, '2015-07-08 14:53:41');
INSERT INTO `userrelation` VALUES ('484', null, '70', '32', null, '2015-07-08 14:53:41');
INSERT INTO `userrelation` VALUES ('485', null, '32', '70', null, '2015-07-08 14:53:41');
INSERT INTO `userrelation` VALUES ('486', null, '70', '41', null, '2015-07-08 14:53:41');
INSERT INTO `userrelation` VALUES ('487', null, '41', '70', null, '2015-07-08 14:53:41');
INSERT INTO `userrelation` VALUES ('488', null, '70', '167', null, '2015-07-08 14:53:41');
INSERT INTO `userrelation` VALUES ('489', null, '167', '70', null, '2015-07-08 14:53:41');
INSERT INTO `userrelation` VALUES ('490', null, '70', '133', null, '2015-07-08 14:53:42');
INSERT INTO `userrelation` VALUES ('491', null, '133', '70', null, '2015-07-08 14:53:42');
INSERT INTO `userrelation` VALUES ('492', null, '70', '167', null, '2015-07-08 14:53:42');
INSERT INTO `userrelation` VALUES ('493', null, '167', '70', null, '2015-07-08 14:53:42');
INSERT INTO `userrelation` VALUES ('494', null, '176', '75', null, '2015-07-08 14:53:42');
INSERT INTO `userrelation` VALUES ('495', null, '75', '176', null, '2015-07-08 14:53:42');
INSERT INTO `userrelation` VALUES ('496', null, '176', '54', null, '2015-07-08 14:53:43');
INSERT INTO `userrelation` VALUES ('497', null, '54', '176', null, '2015-07-08 14:53:43');
INSERT INTO `userrelation` VALUES ('498', null, '176', '32', null, '2015-07-08 14:53:43');
INSERT INTO `userrelation` VALUES ('499', null, '32', '176', null, '2015-07-08 14:53:43');
INSERT INTO `userrelation` VALUES ('500', null, '176', '47', null, '2015-07-08 14:53:43');
INSERT INTO `userrelation` VALUES ('501', null, '47', '176', null, '2015-07-08 14:53:43');
INSERT INTO `userrelation` VALUES ('502', null, '176', '200', null, '2015-07-08 14:53:43');
INSERT INTO `userrelation` VALUES ('503', null, '200', '176', null, '2015-07-08 14:53:43');
INSERT INTO `userrelation` VALUES ('504', null, '176', '113', null, '2015-07-08 14:53:43');
INSERT INTO `userrelation` VALUES ('505', null, '113', '176', null, '2015-07-08 14:53:43');
INSERT INTO `userrelation` VALUES ('506', null, '176', '149', null, '2015-07-08 14:53:44');
INSERT INTO `userrelation` VALUES ('507', null, '149', '176', null, '2015-07-08 14:53:44');
INSERT INTO `userrelation` VALUES ('508', null, '176', '19', null, '2015-07-08 14:53:44');
INSERT INTO `userrelation` VALUES ('509', null, '19', '176', null, '2015-07-08 14:53:44');
INSERT INTO `userrelation` VALUES ('510', null, '176', '133', null, '2015-07-08 14:53:44');
INSERT INTO `userrelation` VALUES ('511', null, '133', '176', null, '2015-07-08 14:53:44');
INSERT INTO `userrelation` VALUES ('512', null, '71', '85', null, '2015-07-08 14:53:44');
INSERT INTO `userrelation` VALUES ('513', null, '85', '71', null, '2015-07-08 14:53:44');
INSERT INTO `userrelation` VALUES ('514', null, '71', '86', null, '2015-07-08 14:53:44');
INSERT INTO `userrelation` VALUES ('515', null, '86', '71', null, '2015-07-08 14:53:44');
INSERT INTO `userrelation` VALUES ('516', null, '71', '111', null, '2015-07-08 14:53:44');
INSERT INTO `userrelation` VALUES ('517', null, '111', '71', null, '2015-07-08 14:53:44');
INSERT INTO `userrelation` VALUES ('518', null, '71', '183', null, '2015-07-08 14:53:45');
INSERT INTO `userrelation` VALUES ('519', null, '183', '71', null, '2015-07-08 14:53:45');
INSERT INTO `userrelation` VALUES ('520', null, '71', '31', null, '2015-07-08 14:53:45');
INSERT INTO `userrelation` VALUES ('521', null, '31', '71', null, '2015-07-08 14:53:45');
INSERT INTO `userrelation` VALUES ('522', null, '71', '178', null, '2015-07-08 14:53:45');
INSERT INTO `userrelation` VALUES ('523', null, '178', '71', null, '2015-07-08 14:53:45');
INSERT INTO `userrelation` VALUES ('524', null, '71', '102', null, '2015-07-08 14:53:45');
INSERT INTO `userrelation` VALUES ('525', null, '102', '71', null, '2015-07-08 14:53:45');
INSERT INTO `userrelation` VALUES ('526', null, '71', '10', null, '2015-07-08 14:53:45');
INSERT INTO `userrelation` VALUES ('527', null, '10', '71', null, '2015-07-08 14:53:45');
INSERT INTO `userrelation` VALUES ('528', null, '71', '147', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('529', null, '147', '71', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('530', null, '128', '201', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('531', null, '201', '128', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('532', null, '128', '40', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('533', null, '40', '128', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('534', null, '128', '117', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('535', null, '117', '128', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('536', null, '128', '134', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('537', null, '134', '128', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('538', null, '128', '142', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('539', null, '142', '128', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('540', null, '128', '72', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('541', null, '72', '128', null, '2015-07-08 14:53:46');
INSERT INTO `userrelation` VALUES ('542', null, '128', '55', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('543', null, '55', '128', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('544', null, '128', '87', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('545', null, '87', '128', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('546', null, '128', '58', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('547', null, '58', '128', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('548', null, '92', '153', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('549', null, '153', '92', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('550', null, '92', '125', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('551', null, '125', '92', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('552', null, '92', '33', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('553', null, '33', '92', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('554', null, '92', '43', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('555', null, '43', '92', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('556', null, '92', '72', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('557', null, '72', '92', null, '2015-07-08 14:53:47');
INSERT INTO `userrelation` VALUES ('558', null, '92', '97', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('559', null, '97', '92', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('560', null, '92', '83', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('561', null, '83', '92', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('562', null, '92', '120', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('563', null, '120', '92', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('564', null, '92', '32', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('565', null, '32', '92', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('566', null, '139', '60', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('567', null, '60', '139', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('568', null, '139', '15', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('569', null, '15', '139', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('570', null, '139', '55', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('571', null, '55', '139', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('572', null, '139', '149', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('573', null, '149', '139', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('574', null, '139', '61', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('575', null, '61', '139', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('576', null, '139', '96', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('577', null, '96', '139', null, '2015-07-08 14:53:48');
INSERT INTO `userrelation` VALUES ('578', null, '139', '24', null, '2015-07-08 14:53:49');
INSERT INTO `userrelation` VALUES ('579', null, '24', '139', null, '2015-07-08 14:53:49');
INSERT INTO `userrelation` VALUES ('580', null, '139', '57', null, '2015-07-08 14:53:49');
INSERT INTO `userrelation` VALUES ('581', null, '57', '139', null, '2015-07-08 14:53:49');
INSERT INTO `userrelation` VALUES ('582', null, '139', '60', null, '2015-07-08 14:53:49');
INSERT INTO `userrelation` VALUES ('583', null, '60', '139', null, '2015-07-08 14:53:49');
INSERT INTO `userrelation` VALUES ('584', null, '68', '8', null, '2015-07-08 14:53:49');
INSERT INTO `userrelation` VALUES ('585', null, '8', '68', null, '2015-07-08 14:53:49');
INSERT INTO `userrelation` VALUES ('586', null, '68', '83', null, '2015-07-08 14:53:49');
INSERT INTO `userrelation` VALUES ('587', null, '83', '68', null, '2015-07-08 14:53:49');
INSERT INTO `userrelation` VALUES ('588', null, '68', '173', null, '2015-07-08 14:53:49');
INSERT INTO `userrelation` VALUES ('589', null, '173', '68', null, '2015-07-08 14:53:49');
INSERT INTO `userrelation` VALUES ('590', null, '68', '100', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('591', null, '100', '68', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('592', null, '68', '17', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('593', null, '17', '68', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('594', null, '68', '146', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('595', null, '146', '68', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('596', null, '68', '107', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('597', null, '107', '68', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('598', null, '68', '137', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('599', null, '137', '68', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('600', null, '68', '201', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('601', null, '201', '68', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('602', null, '16', '152', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('603', null, '152', '16', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('604', null, '16', '119', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('605', null, '119', '16', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('606', null, '16', '150', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('607', null, '150', '16', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('608', null, '16', '176', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('609', null, '176', '16', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('610', null, '16', '52', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('611', null, '52', '16', null, '2015-07-08 14:53:50');
INSERT INTO `userrelation` VALUES ('612', null, '16', '130', null, '2015-07-08 14:53:51');
INSERT INTO `userrelation` VALUES ('613', null, '130', '16', null, '2015-07-08 14:53:51');
INSERT INTO `userrelation` VALUES ('614', null, '16', '56', null, '2015-07-08 14:53:51');
INSERT INTO `userrelation` VALUES ('615', null, '56', '16', null, '2015-07-08 14:53:51');
INSERT INTO `userrelation` VALUES ('616', null, '16', '199', null, '2015-07-08 14:53:51');
INSERT INTO `userrelation` VALUES ('617', null, '199', '16', null, '2015-07-08 14:53:51');
INSERT INTO `userrelation` VALUES ('618', null, '16', '69', null, '2015-07-08 14:53:51');
INSERT INTO `userrelation` VALUES ('619', null, '69', '16', null, '2015-07-08 14:53:51');
INSERT INTO `userrelation` VALUES ('620', null, '74', '139', null, '2015-07-08 14:53:51');
INSERT INTO `userrelation` VALUES ('621', null, '139', '74', null, '2015-07-08 14:53:51');
INSERT INTO `userrelation` VALUES ('622', null, '74', '131', null, '2015-07-08 14:53:51');
INSERT INTO `userrelation` VALUES ('623', null, '131', '74', null, '2015-07-08 14:53:51');
INSERT INTO `userrelation` VALUES ('624', null, '74', '172', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('625', null, '172', '74', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('626', null, '74', '59', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('627', null, '59', '74', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('628', null, '74', '183', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('629', null, '183', '74', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('630', null, '74', '16', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('631', null, '16', '74', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('632', null, '74', '168', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('633', null, '168', '74', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('634', null, '74', '45', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('635', null, '45', '74', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('636', null, '74', '6', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('637', null, '6', '74', null, '2015-07-08 14:53:52');
INSERT INTO `userrelation` VALUES ('638', null, '25', '81', null, '2015-07-08 14:53:53');
INSERT INTO `userrelation` VALUES ('639', null, '81', '25', null, '2015-07-08 14:53:53');
INSERT INTO `userrelation` VALUES ('640', null, '25', '91', null, '2015-07-08 14:53:53');
INSERT INTO `userrelation` VALUES ('641', null, '91', '25', null, '2015-07-08 14:53:53');
INSERT INTO `userrelation` VALUES ('642', null, '25', '33', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('643', null, '33', '25', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('644', null, '25', '164', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('645', null, '164', '25', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('646', null, '25', '10', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('647', null, '10', '25', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('648', null, '25', '63', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('649', null, '63', '25', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('650', null, '25', '167', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('651', null, '167', '25', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('652', null, '25', '70', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('653', null, '70', '25', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('654', null, '25', '124', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('655', null, '124', '25', null, '2015-07-08 14:53:54');
INSERT INTO `userrelation` VALUES ('656', null, '2', '59', null, '2015-07-08 14:53:55');
INSERT INTO `userrelation` VALUES ('657', null, '59', '2', null, '2015-07-08 14:53:55');
INSERT INTO `userrelation` VALUES ('658', null, '2', '78', null, '2015-07-08 14:53:55');
INSERT INTO `userrelation` VALUES ('659', null, '78', '2', null, '2015-07-08 14:53:55');
INSERT INTO `userrelation` VALUES ('660', null, '2', '44', null, '2015-07-08 14:53:55');
INSERT INTO `userrelation` VALUES ('661', null, '44', '2', null, '2015-07-08 14:53:55');
INSERT INTO `userrelation` VALUES ('662', null, '2', '72', null, '2015-07-08 14:53:55');
INSERT INTO `userrelation` VALUES ('663', null, '72', '2', null, '2015-07-08 14:53:55');
INSERT INTO `userrelation` VALUES ('664', null, '2', '121', null, '2015-07-08 14:53:55');
INSERT INTO `userrelation` VALUES ('665', null, '121', '2', null, '2015-07-08 14:53:55');
INSERT INTO `userrelation` VALUES ('666', null, '2', '198', null, '2015-07-08 14:53:56');
INSERT INTO `userrelation` VALUES ('667', null, '198', '2', null, '2015-07-08 14:53:56');
INSERT INTO `userrelation` VALUES ('668', null, '2', '200', null, '2015-07-08 14:53:56');
INSERT INTO `userrelation` VALUES ('669', null, '200', '2', null, '2015-07-08 14:53:56');
INSERT INTO `userrelation` VALUES ('670', null, '2', '18', null, '2015-07-08 14:53:56');
INSERT INTO `userrelation` VALUES ('671', null, '18', '2', null, '2015-07-08 14:53:56');
INSERT INTO `userrelation` VALUES ('672', null, '2', '54', null, '2015-07-08 14:53:57');
INSERT INTO `userrelation` VALUES ('673', null, '54', '2', null, '2015-07-08 14:53:57');
INSERT INTO `userrelation` VALUES ('674', null, '11', '99', null, '2015-07-08 14:53:57');
INSERT INTO `userrelation` VALUES ('675', null, '99', '11', null, '2015-07-08 14:53:57');
INSERT INTO `userrelation` VALUES ('676', null, '11', '189', null, '2015-07-08 14:53:57');
INSERT INTO `userrelation` VALUES ('677', null, '189', '11', null, '2015-07-08 14:53:57');
INSERT INTO `userrelation` VALUES ('678', null, '11', '185', null, '2015-07-08 14:53:58');
INSERT INTO `userrelation` VALUES ('679', null, '185', '11', null, '2015-07-08 14:53:58');
INSERT INTO `userrelation` VALUES ('680', null, '11', '69', null, '2015-07-08 14:53:58');
INSERT INTO `userrelation` VALUES ('681', null, '69', '11', null, '2015-07-08 14:53:58');
INSERT INTO `userrelation` VALUES ('682', null, '11', '58', null, '2015-07-08 14:53:58');
INSERT INTO `userrelation` VALUES ('683', null, '58', '11', null, '2015-07-08 14:53:58');
INSERT INTO `userrelation` VALUES ('684', null, '11', '112', null, '2015-07-08 14:53:59');
INSERT INTO `userrelation` VALUES ('685', null, '112', '11', null, '2015-07-08 14:53:59');
INSERT INTO `userrelation` VALUES ('686', null, '11', '201', null, '2015-07-08 14:53:59');
INSERT INTO `userrelation` VALUES ('687', null, '201', '11', null, '2015-07-08 14:53:59');
INSERT INTO `userrelation` VALUES ('688', null, '11', '58', null, '2015-07-08 14:53:59');
INSERT INTO `userrelation` VALUES ('689', null, '58', '11', null, '2015-07-08 14:53:59');
INSERT INTO `userrelation` VALUES ('690', null, '11', '82', null, '2015-07-08 14:53:59');
INSERT INTO `userrelation` VALUES ('691', null, '82', '11', null, '2015-07-08 14:53:59');
INSERT INTO `userrelation` VALUES ('692', null, '60', '20', null, '2015-07-08 14:53:59');
INSERT INTO `userrelation` VALUES ('693', null, '20', '60', null, '2015-07-08 14:53:59');
INSERT INTO `userrelation` VALUES ('694', null, '60', '190', null, '2015-07-08 14:54:00');
INSERT INTO `userrelation` VALUES ('695', null, '190', '60', null, '2015-07-08 14:54:00');
INSERT INTO `userrelation` VALUES ('696', null, '60', '73', null, '2015-07-08 14:54:00');
INSERT INTO `userrelation` VALUES ('697', null, '73', '60', null, '2015-07-08 14:54:00');
INSERT INTO `userrelation` VALUES ('698', null, '60', '84', null, '2015-07-08 14:54:00');
INSERT INTO `userrelation` VALUES ('699', null, '84', '60', null, '2015-07-08 14:54:00');
INSERT INTO `userrelation` VALUES ('700', null, '60', '72', null, '2015-07-08 14:54:00');
INSERT INTO `userrelation` VALUES ('701', null, '72', '60', null, '2015-07-08 14:54:00');
INSERT INTO `userrelation` VALUES ('702', null, '60', '173', null, '2015-07-08 14:54:00');
INSERT INTO `userrelation` VALUES ('703', null, '173', '60', null, '2015-07-08 14:54:00');
INSERT INTO `userrelation` VALUES ('704', null, '60', '157', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('705', null, '157', '60', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('706', null, '60', '67', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('707', null, '67', '60', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('708', null, '60', '26', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('709', null, '26', '60', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('710', null, '160', '84', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('711', null, '84', '160', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('712', null, '160', '68', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('713', null, '68', '160', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('714', null, '160', '138', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('715', null, '138', '160', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('716', null, '160', '46', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('717', null, '46', '160', null, '2015-07-08 14:54:01');
INSERT INTO `userrelation` VALUES ('718', null, '160', '146', null, '2015-07-08 14:54:02');
INSERT INTO `userrelation` VALUES ('719', null, '146', '160', null, '2015-07-08 14:54:02');
INSERT INTO `userrelation` VALUES ('720', null, '160', '45', null, '2015-07-08 14:54:02');
INSERT INTO `userrelation` VALUES ('721', null, '45', '160', null, '2015-07-08 14:54:02');
INSERT INTO `userrelation` VALUES ('722', null, '160', '127', null, '2015-07-08 14:54:03');
INSERT INTO `userrelation` VALUES ('723', null, '127', '160', null, '2015-07-08 14:54:03');
INSERT INTO `userrelation` VALUES ('724', null, '160', '186', null, '2015-07-08 14:54:03');
INSERT INTO `userrelation` VALUES ('725', null, '186', '160', null, '2015-07-08 14:54:03');
INSERT INTO `userrelation` VALUES ('726', null, '160', '73', null, '2015-07-08 14:54:03');
INSERT INTO `userrelation` VALUES ('727', null, '73', '160', null, '2015-07-08 14:54:03');
INSERT INTO `userrelation` VALUES ('728', null, '173', '196', null, '2015-07-08 14:54:03');
INSERT INTO `userrelation` VALUES ('729', null, '196', '173', null, '2015-07-08 14:54:03');
INSERT INTO `userrelation` VALUES ('730', null, '173', '162', null, '2015-07-08 14:54:03');
INSERT INTO `userrelation` VALUES ('731', null, '162', '173', null, '2015-07-08 14:54:03');
INSERT INTO `userrelation` VALUES ('732', null, '173', '32', null, '2015-07-08 14:54:03');
INSERT INTO `userrelation` VALUES ('733', null, '32', '173', null, '2015-07-08 14:54:03');
INSERT INTO `userrelation` VALUES ('734', null, '173', '44', null, '2015-07-08 14:54:04');
INSERT INTO `userrelation` VALUES ('735', null, '44', '173', null, '2015-07-08 14:54:04');
INSERT INTO `userrelation` VALUES ('736', null, '173', '78', null, '2015-07-08 14:54:04');
INSERT INTO `userrelation` VALUES ('737', null, '78', '173', null, '2015-07-08 14:54:04');
INSERT INTO `userrelation` VALUES ('738', null, '173', '96', null, '2015-07-08 14:54:04');
INSERT INTO `userrelation` VALUES ('739', null, '96', '173', null, '2015-07-08 14:54:04');
INSERT INTO `userrelation` VALUES ('740', null, '173', '18', null, '2015-07-08 14:54:05');
INSERT INTO `userrelation` VALUES ('741', null, '18', '173', null, '2015-07-08 14:54:05');
INSERT INTO `userrelation` VALUES ('742', null, '173', '130', null, '2015-07-08 14:54:05');
INSERT INTO `userrelation` VALUES ('743', null, '130', '173', null, '2015-07-08 14:54:05');
INSERT INTO `userrelation` VALUES ('744', null, '173', '201', null, '2015-07-08 14:54:05');
INSERT INTO `userrelation` VALUES ('745', null, '201', '173', null, '2015-07-08 14:54:05');
INSERT INTO `userrelation` VALUES ('746', null, '161', '119', null, '2015-07-08 14:54:05');
INSERT INTO `userrelation` VALUES ('747', null, '119', '161', null, '2015-07-08 14:54:05');
INSERT INTO `userrelation` VALUES ('748', null, '161', '110', null, '2015-07-08 14:54:06');
INSERT INTO `userrelation` VALUES ('749', null, '110', '161', null, '2015-07-08 14:54:06');
INSERT INTO `userrelation` VALUES ('750', null, '161', '146', null, '2015-07-08 14:54:06');
INSERT INTO `userrelation` VALUES ('751', null, '146', '161', null, '2015-07-08 14:54:06');
INSERT INTO `userrelation` VALUES ('752', null, '161', '63', null, '2015-07-08 14:54:06');
INSERT INTO `userrelation` VALUES ('753', null, '63', '161', null, '2015-07-08 14:54:06');
INSERT INTO `userrelation` VALUES ('754', null, '161', '26', null, '2015-07-08 14:54:06');
INSERT INTO `userrelation` VALUES ('755', null, '26', '161', null, '2015-07-08 14:54:06');
INSERT INTO `userrelation` VALUES ('756', null, '161', '35', null, '2015-07-08 14:54:07');
INSERT INTO `userrelation` VALUES ('757', null, '35', '161', null, '2015-07-08 14:54:07');
INSERT INTO `userrelation` VALUES ('758', null, '161', '99', null, '2015-07-08 14:54:07');
INSERT INTO `userrelation` VALUES ('759', null, '99', '161', null, '2015-07-08 14:54:07');
INSERT INTO `userrelation` VALUES ('760', null, '161', '65', null, '2015-07-08 14:54:07');
INSERT INTO `userrelation` VALUES ('761', null, '65', '161', null, '2015-07-08 14:54:07');
INSERT INTO `userrelation` VALUES ('762', null, '161', '69', null, '2015-07-08 14:54:07');
INSERT INTO `userrelation` VALUES ('763', null, '69', '161', null, '2015-07-08 14:54:07');
INSERT INTO `userrelation` VALUES ('764', null, '7', '4', null, '2015-07-08 14:54:07');
INSERT INTO `userrelation` VALUES ('765', null, '4', '7', null, '2015-07-08 14:54:07');
INSERT INTO `userrelation` VALUES ('766', null, '7', '80', null, '2015-07-08 14:54:08');
INSERT INTO `userrelation` VALUES ('767', null, '80', '7', null, '2015-07-08 14:54:08');
INSERT INTO `userrelation` VALUES ('768', null, '7', '5', null, '2015-07-08 14:54:08');
INSERT INTO `userrelation` VALUES ('769', null, '5', '7', null, '2015-07-08 14:54:08');
INSERT INTO `userrelation` VALUES ('770', null, '7', '104', null, '2015-07-08 14:54:08');
INSERT INTO `userrelation` VALUES ('771', null, '104', '7', null, '2015-07-08 14:54:08');
INSERT INTO `userrelation` VALUES ('772', null, '7', '75', null, '2015-07-08 14:54:08');
INSERT INTO `userrelation` VALUES ('773', null, '75', '7', null, '2015-07-08 14:54:08');
INSERT INTO `userrelation` VALUES ('774', null, '7', '6', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('775', null, '6', '7', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('776', null, '7', '32', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('777', null, '32', '7', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('778', null, '7', '91', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('779', null, '91', '7', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('780', null, '7', '200', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('781', null, '200', '7', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('782', null, '66', '31', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('783', null, '31', '66', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('784', null, '66', '39', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('785', null, '39', '66', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('786', null, '66', '56', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('787', null, '56', '66', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('788', null, '66', '135', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('789', null, '135', '66', null, '2015-07-08 14:54:09');
INSERT INTO `userrelation` VALUES ('790', null, '66', '107', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('791', null, '107', '66', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('792', null, '66', '103', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('793', null, '103', '66', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('794', null, '66', '37', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('795', null, '37', '66', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('796', null, '66', '199', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('797', null, '199', '66', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('798', null, '66', '156', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('799', null, '156', '66', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('800', null, '146', '87', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('801', null, '87', '146', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('802', null, '146', '63', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('803', null, '63', '146', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('804', null, '146', '172', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('805', null, '172', '146', null, '2015-07-08 14:54:10');
INSERT INTO `userrelation` VALUES ('806', null, '146', '41', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('807', null, '41', '146', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('808', null, '146', '131', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('809', null, '131', '146', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('810', null, '146', '120', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('811', null, '120', '146', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('812', null, '146', '201', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('813', null, '201', '146', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('814', null, '146', '140', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('815', null, '140', '146', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('816', null, '146', '49', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('817', null, '49', '146', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('818', null, '42', '154', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('819', null, '154', '42', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('820', null, '42', '137', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('821', null, '137', '42', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('822', null, '42', '44', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('823', null, '44', '42', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('824', null, '42', '188', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('825', null, '188', '42', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('826', null, '42', '153', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('827', null, '153', '42', null, '2015-07-08 14:54:11');
INSERT INTO `userrelation` VALUES ('828', null, '42', '82', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('829', null, '82', '42', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('830', null, '42', '139', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('831', null, '139', '42', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('832', null, '42', '60', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('833', null, '60', '42', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('834', null, '42', '71', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('835', null, '71', '42', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('836', null, '178', '148', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('837', null, '148', '178', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('838', null, '178', '79', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('839', null, '79', '178', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('840', null, '178', '157', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('841', null, '157', '178', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('842', null, '178', '100', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('843', null, '100', '178', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('844', null, '178', '144', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('845', null, '144', '178', null, '2015-07-08 14:54:12');
INSERT INTO `userrelation` VALUES ('846', null, '178', '158', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('847', null, '158', '178', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('848', null, '178', '38', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('849', null, '38', '178', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('850', null, '178', '143', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('851', null, '143', '178', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('852', null, '178', '2', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('853', null, '2', '178', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('854', null, '46', '18', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('855', null, '18', '46', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('856', null, '46', '2', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('857', null, '2', '46', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('858', null, '46', '161', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('859', null, '161', '46', null, '2015-07-08 14:54:13');
INSERT INTO `userrelation` VALUES ('860', null, '46', '130', null, '2015-07-08 14:54:14');
INSERT INTO `userrelation` VALUES ('861', null, '130', '46', null, '2015-07-08 14:54:14');
INSERT INTO `userrelation` VALUES ('862', null, '46', '173', null, '2015-07-08 14:54:14');
INSERT INTO `userrelation` VALUES ('863', null, '173', '46', null, '2015-07-08 14:54:14');
INSERT INTO `userrelation` VALUES ('864', null, '46', '200', null, '2015-07-08 14:54:14');
INSERT INTO `userrelation` VALUES ('865', null, '200', '46', null, '2015-07-08 14:54:14');
INSERT INTO `userrelation` VALUES ('866', null, '46', '196', null, '2015-07-08 14:54:14');
INSERT INTO `userrelation` VALUES ('867', null, '196', '46', null, '2015-07-08 14:54:14');
INSERT INTO `userrelation` VALUES ('868', null, '46', '103', null, '2015-07-08 14:54:14');
INSERT INTO `userrelation` VALUES ('869', null, '103', '46', null, '2015-07-08 14:54:14');
INSERT INTO `userrelation` VALUES ('870', null, '46', '95', null, '2015-07-08 14:54:15');
INSERT INTO `userrelation` VALUES ('871', null, '95', '46', null, '2015-07-08 14:54:15');
INSERT INTO `userrelation` VALUES ('872', null, '160', '181', null, '2015-07-08 14:54:15');
INSERT INTO `userrelation` VALUES ('873', null, '181', '160', null, '2015-07-08 14:54:15');
INSERT INTO `userrelation` VALUES ('874', null, '160', '68', null, '2015-07-08 14:54:15');
INSERT INTO `userrelation` VALUES ('875', null, '68', '160', null, '2015-07-08 14:54:15');
INSERT INTO `userrelation` VALUES ('876', null, '160', '196', null, '2015-07-08 14:54:15');
INSERT INTO `userrelation` VALUES ('877', null, '196', '160', null, '2015-07-08 14:54:15');
INSERT INTO `userrelation` VALUES ('878', null, '160', '108', null, '2015-07-08 14:54:16');
INSERT INTO `userrelation` VALUES ('879', null, '108', '160', null, '2015-07-08 14:54:16');
INSERT INTO `userrelation` VALUES ('880', null, '160', '198', null, '2015-07-08 14:54:16');
INSERT INTO `userrelation` VALUES ('881', null, '198', '160', null, '2015-07-08 14:54:16');
INSERT INTO `userrelation` VALUES ('882', null, '160', '156', null, '2015-07-08 14:54:16');
INSERT INTO `userrelation` VALUES ('883', null, '156', '160', null, '2015-07-08 14:54:16');
INSERT INTO `userrelation` VALUES ('884', null, '160', '131', null, '2015-07-08 14:54:16');
INSERT INTO `userrelation` VALUES ('885', null, '131', '160', null, '2015-07-08 14:54:16');
INSERT INTO `userrelation` VALUES ('886', null, '160', '132', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('887', null, '132', '160', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('888', null, '160', '184', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('889', null, '184', '160', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('890', null, '185', '60', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('891', null, '60', '185', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('892', null, '185', '79', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('893', null, '79', '185', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('894', null, '185', '19', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('895', null, '19', '185', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('896', null, '185', '150', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('897', null, '150', '185', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('898', null, '185', '43', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('899', null, '43', '185', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('900', null, '185', '165', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('901', null, '165', '185', null, '2015-07-08 14:54:17');
INSERT INTO `userrelation` VALUES ('902', null, '185', '112', null, '2015-07-08 14:54:18');
INSERT INTO `userrelation` VALUES ('903', null, '112', '185', null, '2015-07-08 14:54:18');
INSERT INTO `userrelation` VALUES ('904', null, '185', '121', null, '2015-07-08 14:54:18');
INSERT INTO `userrelation` VALUES ('905', null, '121', '185', null, '2015-07-08 14:54:18');
INSERT INTO `userrelation` VALUES ('906', null, '185', '51', null, '2015-07-08 14:54:18');
INSERT INTO `userrelation` VALUES ('907', null, '51', '185', null, '2015-07-08 14:54:18');

-- ----------------------------
-- Table structure for `usertype`
-- ----------------------------
DROP TABLE IF EXISTS `usertype`;
CREATE TABLE `usertype` (
  `typeId` int(11) NOT NULL,
  `typeName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertype
-- ----------------------------
INSERT INTO `usertype` VALUES ('1', '智翔学员');
INSERT INTO `usertype` VALUES ('2', 'IT爱好者');

-- ----------------------------
-- Table structure for `voide`
-- ----------------------------
DROP TABLE IF EXISTS `voide`;
CREATE TABLE `voide` (
  `voideId` int(11) NOT NULL,
  `resourceId` int(11) DEFAULT NULL,
  `sectionId` int(11) DEFAULT NULL,
  `voideName` varchar(120) NOT NULL,
  `voideUrl` varchar(120) NOT NULL,
  `voideTime` int(11) DEFAULT '0',
  `voideCode` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`voideId`),
  KEY `FK_voideResource` (`resourceId`),
  KEY `FK_voideSection` (`sectionId`),
  CONSTRAINT `FK_voideResource` FOREIGN KEY (`resourceId`) REFERENCES `voideresource` (`resourceId`),
  CONSTRAINT `FK_voideSection` FOREIGN KEY (`sectionId`) REFERENCES `section` (`sectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of voide
-- ----------------------------
INSERT INTO `voide` VALUES ('1', '1', '5', '测试', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\course\\4\\1.flv', '70', '4');
INSERT INTO `voide` VALUES ('2', null, '1', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('3', null, '1', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('4', null, '2', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('5', null, '2', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('6', null, '2', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('7', null, '3', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('8', null, '4', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('9', null, '4', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('10', null, '5', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('11', null, '5', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('12', null, '5', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('13', null, '6', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('14', null, '7', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('15', null, '7', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('16', null, '8', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('17', null, '8', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('18', null, '8', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('19', null, '9', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('20', null, '10', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('21', null, '10', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('22', null, '11', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('23', null, '11', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('24', null, '11', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('25', null, '12', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('26', null, '13', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('27', null, '13', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('28', null, '14', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('29', null, '14', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('30', null, '14', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('31', null, '15', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('32', null, '16', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('33', null, '16', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('34', null, '17', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('35', null, '17', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('36', null, '17', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('37', null, '18', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('38', null, '19', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('39', null, '19', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('40', null, '20', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('41', null, '20', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('42', null, '20', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('43', null, '21', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('44', null, '22', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('45', null, '22', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('46', null, '23', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('47', null, '23', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('48', null, '23', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('49', null, '24', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('50', null, '25', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('51', null, '25', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('52', null, '26', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('53', null, '26', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('54', null, '26', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('55', null, '27', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('56', null, '28', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('57', null, '28', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('58', null, '29', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('59', null, '29', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('60', null, '29', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('61', null, '30', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('62', null, '31', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('63', null, '31', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('64', null, '32', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('65', null, '32', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('66', null, '32', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('67', null, '33', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('68', null, '34', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('69', null, '34', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('70', null, '35', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('71', null, '35', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('72', null, '35', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('73', null, '36', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('74', null, '37', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('75', null, '37', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('76', null, '38', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('77', null, '38', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('78', null, '38', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('79', null, '39', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('80', null, '40', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('81', null, '40', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('82', null, '41', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('83', null, '41', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('84', null, '41', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('85', null, '42', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('86', null, '43', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('87', null, '43', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('88', null, '44', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('89', null, '44', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('90', null, '44', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('91', null, '45', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('92', null, '46', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('93', null, '46', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('94', null, '47', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('95', null, '47', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('96', null, '47', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('97', null, '48', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('98', null, '49', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('99', null, '49', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('100', null, '50', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('101', null, '50', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('102', null, '50', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('103', null, '51', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('104', null, '52', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('105', null, '52', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('106', null, '53', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('107', null, '53', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('108', null, '53', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('109', null, '54', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('110', null, '55', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('111', null, '55', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('112', null, '56', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('113', null, '56', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('114', null, '56', '第3个视频', 'frontstage/video/demo.mp4', '4', '3');
INSERT INTO `voide` VALUES ('115', null, '57', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('116', null, '58', '第1个视频', 'frontstage/video/demo.mp4', '4', '1');
INSERT INTO `voide` VALUES ('117', null, '58', '第2个视频', 'frontstage/video/demo.mp4', '4', '2');
INSERT INTO `voide` VALUES ('118', '2', '38', '1.flv', 'course/3/12/38/Thu Jul 16 17:19:12 CST 2015', null, null);

-- ----------------------------
-- Table structure for `voideresource`
-- ----------------------------
DROP TABLE IF EXISTS `voideresource`;
CREATE TABLE `voideresource` (
  `resourceId` int(11) NOT NULL,
  `resourceUrl` varchar(120) NOT NULL,
  PRIMARY KEY (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of voideresource
-- ----------------------------
INSERT INTO `voideresource` VALUES ('1', 'F:\\apache-tomcat-6.0.41\\webapps\\izhi\\course\\4\\4\\1.rar');
INSERT INTO `voideresource` VALUES ('2', 'course/3/12/38/Thu Jul 16 17:19:12 CST 2015');
