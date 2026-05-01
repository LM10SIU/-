/*
 Navicat Premium Dump SQL

 Source Server         : tour_travel
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3306
 Source Schema         : tour_travel

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 16/01/2026 15:09:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attraction
-- ----------------------------
DROP TABLE IF EXISTS `attraction`;
CREATE TABLE `attraction`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` decimal(10, 7) NOT NULL,
  `latitude` decimal(10, 7) NOT NULL,
  `open_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ticket_price` decimal(8, 2) NULL DEFAULT 0.00,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `rating` decimal(2, 1) NULL DEFAULT 5.0,
  `status` tinyint NULL DEFAULT 1,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '长沙',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 794 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attraction
-- ----------------------------
INSERT INTO `attraction` VALUES (780, '岳麓山', '南岳衡山七十二峰之尾峰，长沙市的标志性山脉，湖湘文化的重要载体。', '自然风光', '岳麓区', '长沙市岳麓区麓山路', 112.9361040, 28.1836010, '全天开放', 0.00, '0731-88665000', 'https://ts2.tc.mm.bing.net/th/id/OIP-C.8GAVI-xWEu-akEC2oQYKwgHaE7?rs=1&pid=ImgDetMain&o=7&rm=3', 4.7, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');
INSERT INTO `attraction` VALUES (781, '橘子洲头', '长沙的标志性景点，毛泽东青年雕塑所在地，湘江江心狭长沙岛，被誉为中国第一洲。', '自然风光', '岳麓区', '长沙市岳麓区橘子洲头', 112.9630810, 28.1965050, '全天开放', 0.00, '0731-88996666', 'https://newbbs-fd.zol-img.com.cn/t_s1200x5000/g6/M00/0F/0C/ChMkKmHIJ6yIXwJ9AAJWts12Sm0AAW_mAIIaqMAAlbO900.jpg', 4.8, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');
INSERT INTO `attraction` VALUES (782, '湖南省博物馆', '收藏马王堆汉墓文物，历史底蕴深厚，国家一级博物馆，镇馆之宝马王堆汉墓出土文物。', '历史人文', '开福区', '长沙市开福区东风路50号', 112.9934990, 28.2118760, '09:00-17:00', 0.00, '0731-84514600', 'https://ts1.tc.mm.bing.net/th/id/R-C.09bdc6d0de615d35e5159a444ebd99c8?rik=50RBMlphU9ASwQ&riu=http%3a%2f%2fimg1.voc.com.cn%2fUpLoadFile%2f2017%2f11%2f30%2f201711301642436134.jpg&ehk=ecwD0CqoQ6Es15udU7GTaTx566wPjtsbHmjH8GkwpqU%3d&risl=&pid=ImgRaw&r=0', 4.7, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');
INSERT INTO `attraction` VALUES (783, '五一广场', '长沙最繁华的商业中心，时尚购物和美食天堂，都市地标。', '休闲娱乐', '芙蓉区', '长沙市芙蓉区五一广场', 112.9773400, 28.1965000, '全天开放', 0.00, '', 'https://img.rednet.cn/2019/10-17/e28f3c7b-7d1e-4edc-b152-904ff3240fc6.jpg', 4.6, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');
INSERT INTO `attraction` VALUES (784, '天心阁', '长沙古城墙遗址，历史悠久的城楼，长沙仅存的古城楼，见证了长沙的千年历史。', '历史人文', '天心区', '长沙市天心区天心路17号', 112.9818610, 28.1847540, '08:00-18:00', 32.00, '0731-85527777', 'https://ts1.tc.mm.bing.net/th/id/R-C.f886eca6c0a17bc66b3aaa108de9cd19?rik=kghMYNyJ9T9fyQ&riu=http%3a%2f%2fyouimg1.c-ctrip.com%2ftarget%2f100q070000002dv68FF74.jpg&ehk=2eiZA7m6rS%2b%2fw23jyz8d3KvTR5GzjDKEsGAi9ez81LY%3d&risl=&pid=ImgRaw&r=0', 4.5, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');
INSERT INTO `attraction` VALUES (785, '杜甫江阁', '为纪念唐代大诗人杜甫而建，湘江美景尽收眼底，是长沙的文化地标之一。', '历史人文', '天心区', '长沙市天心区湘江中路108号', 112.9686240, 28.1844420, '08:00-18:00', 11.00, '0731-85138888', 'https://ts1.tc.mm.bing.net/th/id/R-C.a4a90073b686cb6404c4b792adfc7627?rik=2sOdZhKjaZQa9w&riu=http%3a%2f%2fimg95.699pic.com%2fphoto%2f50065%2f1838.jpg_wh300.jpg&ehk=WnXUDDZ9VnttSk6OOh0DRBjYkIMk72ZTw8tCoQ9Zm%2b0%3d&risl=&pid=ImgRaw&r=0', 4.6, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');
INSERT INTO `attraction` VALUES (786, '太平老街', '长沙最具特色的古街之一，保存完好的明清建筑，美食和手工艺品集中地。', '历史人文', '天心区', '长沙市天心区太平街', 112.9720710, 28.1935730, '全天开放', 0.00, '0731-85828888', 'https://youimg1.c-ctrip.com/target/fd/tg/g5/M08/B3/88/CggYsVcXEiyABQaJABJ3ch1WO8U651.jpg', 4.6, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');
INSERT INTO `attraction` VALUES (787, '梅溪湖国际文化艺术中心', '现代建筑艺术与文化的完美结合，扎哈·哈迪德设计，长沙新的文化地标。', '休闲娱乐', '岳麓区', '长沙市岳麓区梅溪湖路36号', 112.9063920, 28.1965690, '10:00-18:00', 0.00, '0731-88116666', 'https://img95.699pic.com/photo/50235/9759.jpg_wh860.jpg', 4.4, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');
INSERT INTO `attraction` VALUES (788, '世界之窗', '汇集世界奇观的微缩景观主题公园，湖南最大的主题公园之一。', '休闲娱乐', '开福区', '长沙市开福区三一大道485号', 113.0548930, 28.2367080, '08:30-18:00', 130.00, '0731-84256888', 'https://ts4.tc.mm.bing.net/th/id/OIP-C.xyY1EeHUNDvPQccRjqtl5QHaFj?rs=1&pid=ImgDetMain&o=7&rm=3', 4.3, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');
INSERT INTO `attraction` VALUES (789, '烈士公园', '长沙市最大的公园之一，纪念革命先烈，自然风光优美。', '自然风光', '开福区', '长沙市开福区东风路', 112.9964320, 28.2095210, '全天开放', 0.00, '0731-84524888', 'https://ts2.tc.mm.bing.net/th/id/OIP-C.iX5PKVRRw-QEHMtiYRlR6AHaE8?rs=1&pid=ImgDetMain&o=7&rm=3', 4.5, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');
INSERT INTO `attraction` VALUES (790, '长沙生态动物园', '集野生动物保护、科普教育、休闲观光为一体的大型动物园。', '休闲娱乐', '雨花区', '长沙市雨花区森林植物园', 113.0044860, 28.0332250, '09:00-17:30', 80.00, '0731-85678888', 'https://so1.360tres.com/t012b1749419466b5c9.jpg', 4.3, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');
INSERT INTO `attraction` VALUES (791, '湖南省森林植物园', '以森林植物为特色，集科研、科普、游览于一体的植物园。', '自然风光', '雨花区', '长沙市雨花区植物园路', 113.0321840, 28.1030140, '08:00-18:00', 50.00, '0731-85123456', 'https://ts1.tc.mm.bing.net/th/id/R-C.9c500fc2ccce9f27d33c9cc9b11f1331?rik=H4IUniXJxWVu5w&riu=http%3a%2f%2fimg1.voc.com.cn%2fUpLoadFile%2f2017%2f03%2f15%2f201703150939429356.jpg&ehk=PpIuAwvT5nx02IH%2bLE03jGNquJxphQFQKDGUbHueTVw%3d&risl=&pid=ImgRaw&r=0', 4.6, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');
INSERT INTO `attraction` VALUES (792, '岳麓书院', '中国四大书院之一，千年学府，中国古代四大书院之一，历史底蕴深厚。', '历史人文', '岳麓区', '长沙市岳麓区麓山路273号', 112.9408050, 28.1803970, '08:00-17:30', 50.00, '0731-88823933', 'https://img1.qunarzz.com/travel/d1/1802/3e/6dc166f75f0d74b5.jpg', 4.9, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');
INSERT INTO `attraction` VALUES (793, '开福寺', '千年古刹，长沙佛教文化的重要场所，历史悠久的佛教寺院。', '历史人文', '开福区', '长沙市开福区开福寺路', 112.9783190, 28.2243510, '08:00-17:00', 0.00, '0731-84534567', 'https://youimg1.c-ctrip.com/target/100u0z000000mha2u6158.jpg', 4.4, 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04', '长沙');

-- ----------------------------
-- Table structure for attraction_checkin
-- ----------------------------
DROP TABLE IF EXISTS `attraction_checkin`;
CREATE TABLE `attraction_checkin`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attraction_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `likes` int NULL DEFAULT 0,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_attraction_id`(`attraction_id` ASC) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attraction_checkin
-- ----------------------------

-- ----------------------------
-- Table structure for attraction_realtime
-- ----------------------------
DROP TABLE IF EXISTS `attraction_realtime`;
CREATE TABLE `attraction_realtime`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attraction_id` bigint NOT NULL,
  `crowd_level` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `temperature` int NULL DEFAULT NULL,
  `weather` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `attraction_id`(`attraction_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 731 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attraction_realtime
-- ----------------------------
INSERT INTO `attraction_realtime` VALUES (717, 1, '拥挤', 28, '晴', '2026-01-16 15:01:04');
INSERT INTO `attraction_realtime` VALUES (718, 2, '适中', 26, '多云', '2026-01-16 15:01:04');
INSERT INTO `attraction_realtime` VALUES (719, 3, '拥挤', 25, '晴', '2026-01-16 15:01:04');
INSERT INTO `attraction_realtime` VALUES (720, 4, '拥挤', 30, '多云', '2026-01-16 15:01:04');
INSERT INTO `attraction_realtime` VALUES (721, 5, '适中', 27, '晴', '2026-01-16 15:01:04');
INSERT INTO `attraction_realtime` VALUES (722, 6, '适中', 29, '多云', '2026-01-16 15:01:04');
INSERT INTO `attraction_realtime` VALUES (723, 7, '拥挤', 32, '晴', '2026-01-16 15:01:04');
INSERT INTO `attraction_realtime` VALUES (724, 8, '适中', 26, '多云', '2026-01-16 15:01:04');
INSERT INTO `attraction_realtime` VALUES (725, 9, '拥挤', 25, '晴', '2026-01-16 15:01:04');
INSERT INTO `attraction_realtime` VALUES (726, 10, '适中', 30, '晴', '2026-01-16 15:01:04');
INSERT INTO `attraction_realtime` VALUES (727, 11, '舒适', 27, '晴', '2026-01-16 15:01:04');
INSERT INTO `attraction_realtime` VALUES (728, 12, '拥挤', 26, '多云', '2026-01-16 15:01:04');
INSERT INTO `attraction_realtime` VALUES (729, 13, '适中', 28, '晴', '2026-01-16 15:01:04');
INSERT INTO `attraction_realtime` VALUES (730, 14, '拥挤', 29, '多云', '2026-01-16 15:01:04');

-- ----------------------------
-- Table structure for attraction_review
-- ----------------------------
DROP TABLE IF EXISTS `attraction_review`;
CREATE TABLE `attraction_review`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attraction_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int NULL DEFAULT 0,
  `comments` int NULL DEFAULT 0,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_attraction_id`(`attraction_id` ASC) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `attraction_review_chk_1` CHECK ((`rating` >= 1) and (`rating` <= 5))
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attraction_review
-- ----------------------------

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '长沙',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` decimal(10, 7) NOT NULL,
  `latitude` decimal(10, 7) NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `rating` decimal(2, 1) NULL DEFAULT 5.0,
  `price_per_night` decimal(8, 2) NOT NULL,
  `room_types` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `facilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `check_in_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '14:00',
  `check_out_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '12:00',
  `status` tinyint NULL DEFAULT 1,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_city`(`city` ASC) USING BTREE,
  INDEX `idx_category`(`category` ASC) USING BTREE,
  INDEX `idx_rating`(`rating` ASC) USING BTREE,
  INDEX `idx_price`(`price_per_night` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 244 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES (237, '长沙君悦酒店', '位于市中心高端商务酒店，拥有豪华客房和顶级设施', '豪华酒店', '天心区', '长沙', '长沙市天心区湘江中路36号', 112.9710280, 28.1892400, '0731-89658888', 'https://pavo.elongstatic.com/i/tHotel800_600/000a6daz.jpg', 4.8, 899.00, '标准间,豪华间,套房,总统套房', '免费WiFi,游泳池,健身房,餐厅,会议室,停车场,商务中心', '14:00', '12:00', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `hotel` VALUES (238, '长沙W酒店', '时尚前卫的设计酒店，适合年轻人和商务人士', '设计酒店', '开福区', '长沙', '长沙市开福区湘江中路一段98号', 113.0424380, 28.1699340, '0731-88558888', 'https://uimg.huixiaoer.net/86198618/122cf8c9ce5be66f36fc01e18e948378.jpg', 4.7, 799.00, '标准间,大床房,套房,行政套房', '免费WiFi,酒吧,健身房,餐厅,停车场,24小时前台', '14:00', '12:00', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `hotel` VALUES (239, '长沙瑞吉酒店', '国际奢华酒店品牌，提供极致尊贵体验', '豪华酒店', '岳麓区', '长沙', '长沙市岳麓区潇湘北路一段88号', 113.0435950, 28.1700760, '0731-86868888', 'https://ts1.tc.mm.bing.net/th/id/R-C.b97f8c3e42d6d4d7bc80d613a3618630?rik=CG68XWBTPPGMTA&riu=http%3a%2f%2fi.mooool.com%2fimg%2f2018%2f08%2fmooool-ruiji-hotel2.jpg&ehk=vC8aMStrjb44Pxqpn%2bCe1jIN0rDH0ToZ%2fDVJWdbYalo%3d&risl=&pid=ImgRaw&r=0', 4.9, 1299.00, '豪华间,套房,总统套房', '免费WiFi,游泳池,SPA,餐厅,会议室,管家服务', '14:00', '12:00', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `hotel` VALUES (240, '长沙尼依格罗酒店', '雅高集团旗下奢华酒店，设计独特', '豪华酒店', '芙蓉区', '长沙', '长沙市芙蓉区解放西路188号', 112.9788470, 28.1923020, '0731-83388888', 'https://staticfile.badazhou.com/20200710/1e46e5e43c724ad49dcb3de26593fe9b.jpg', 4.8, 1099.00, '标准间,豪华间,套房', '免费WiFi,健身房,餐厅,会议室,商务中心', '14:00', '12:00', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `hotel` VALUES (241, '长沙万达文华酒店', '万达集团旗下高端酒店，设施齐全', '高端酒店', '开福区', '长沙', '长沙市开福区中山路589号', 112.9715160, 28.2003060, '0731-87898888', 'https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1080,h_720/w_66,x_12,y_12,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/ngkcysevcytjh8gss6ma/%E9%95%BF%E6%B2%99%E5%AF%8C%E5%8A%9B%E4%B8%87%E8%BE%BE%E6%96%87%E5%8D%8E%E9%85%92%E5%BA%97%E4%BD%8F%E5%AE%BF%E5%A5%97%E9%A4%90.jpg', 4.6, 699.00, '标准间,大床房,套房', '免费WiFi,游泳池,健身房,餐厅,停车场,会议室', '14:00', '12:00', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `hotel` VALUES (242, '长沙神农大酒店', '本土五星酒店，设施完善', '豪华酒店', '天心区', '长沙', '长沙市天心区芙蓉中路三段78号', 112.9862490, 28.1606060, '0731-85338888', 'https://img-v.veimg.cn/company_picture/uppic/2011-7/2011719171849657.jpg', 4.5, 529.00, '标准间,豪华间,套房', '免费WiFi,游泳池,健身房,餐厅,会议室,停车场', '14:00', '12:00', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `hotel` VALUES (243, '长沙北辰洲际酒店', '紧邻湘江，景观优美', '景观酒店', '开福区', '长沙', '长沙市开福区湘江北路三段1288号', 112.9783990, 28.2391780, '0731-87978888', 'https://ts1.tc.mm.bing.net/th/id/R-C.811e4977229228f772d0fada7b04b239?rik=HT5iT3AuWT5IXA&riu=http%3a%2f%2fwww.gdhyjj.com%2fUploadFiles%2fOthers%2f20181114092353_83969.jpg&ehk=5%2bQdgqKEZzsz1%2fa%2fDLUTD6yiWBbuQ25unq2c%2ftVYCCI%3d&risl=&pid=ImgRaw&r=0', 4.7, 749.00, '标准间,江景房,套房', '免费WiFi,游泳池,健身房,餐厅,江景阳台', '14:00', '12:00', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');

-- ----------------------------
-- Table structure for hotel_booking
-- ----------------------------
DROP TABLE IF EXISTS `hotel_booking`;
CREATE TABLE `hotel_booking`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `hotel_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `room_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `guest_count` int NOT NULL,
  `total_price` decimal(8, 2) NOT NULL,
  `contact_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '待确认',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_hotel_id`(`hotel_id` ASC) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_check_in_date`(`check_in_date` ASC) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel_booking
-- ----------------------------

-- ----------------------------
-- Table structure for hotel_review
-- ----------------------------
DROP TABLE IF EXISTS `hotel_review`;
CREATE TABLE `hotel_review`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `hotel_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int NULL DEFAULT 0,
  `comments` int NULL DEFAULT 0,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_hotel_id`(`hotel_id` ASC) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_rating`(`rating` ASC) USING BTREE,
  CONSTRAINT `hotel_review_chk_1` CHECK ((`rating` >= 1) and (`rating` <= 5))
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel_review
-- ----------------------------

-- ----------------------------
-- Table structure for itinerary
-- ----------------------------
DROP TABLE IF EXISTS `itinerary`;
CREATE TABLE `itinerary`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `total_days` int NULL DEFAULT 1,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of itinerary
-- ----------------------------
INSERT INTO `itinerary` VALUES (3, 20, '1', '', 1, '2026-01-15 00:13:57', '2026-01-15 00:13:57');
INSERT INTO `itinerary` VALUES (4, 24, '1', '', 1, '2026-01-15 00:30:15', '2026-01-15 00:30:15');
INSERT INTO `itinerary` VALUES (5, 26, '1', '', 1, '2026-01-15 00:35:43', '2026-01-15 00:35:43');
INSERT INTO `itinerary` VALUES (6, 34, '1', '', 1, '2026-01-15 01:20:07', '2026-01-15 01:20:07');
INSERT INTO `itinerary` VALUES (7, 36, '1', '', 1, '2026-01-15 01:33:59', '2026-01-15 01:33:59');
INSERT INTO `itinerary` VALUES (8, 40, '1', '', 1, '2026-01-15 01:42:03', '2026-01-15 01:42:03');
INSERT INTO `itinerary` VALUES (9, 42, '1', '', 1, '2026-01-15 01:50:47', '2026-01-15 01:50:47');
INSERT INTO `itinerary` VALUES (10, 46, '1', '', 1, '2026-01-15 02:26:38', '2026-01-15 02:26:38');
INSERT INTO `itinerary` VALUES (11, 48, '1', '', 1, '2026-01-15 14:37:47', '2026-01-15 14:37:47');
INSERT INTO `itinerary` VALUES (12, 56, '1', '', 1, '2026-01-15 16:48:05', '2026-01-15 16:48:05');
INSERT INTO `itinerary` VALUES (13, 64, '1', '', 1, '2026-01-15 23:39:47', '2026-01-15 23:39:47');
INSERT INTO `itinerary` VALUES (14, 80, '1', '', 1, '2026-01-16 01:19:53', '2026-01-16 01:19:53');
INSERT INTO `itinerary` VALUES (15, 82, '1', '', 1, '2026-01-16 01:42:07', '2026-01-16 01:42:07');
INSERT INTO `itinerary` VALUES (16, 84, '1', '', 1, '2026-01-16 01:48:03', '2026-01-16 01:48:03');
INSERT INTO `itinerary` VALUES (17, 90, '1', '', 1, '2026-01-16 02:33:19', '2026-01-16 02:33:19');
INSERT INTO `itinerary` VALUES (18, 96, '1', '', 1, '2026-01-16 02:47:46', '2026-01-16 02:47:46');
INSERT INTO `itinerary` VALUES (19, 98, '12', '', 1, '2026-01-16 03:10:26', '2026-01-16 03:10:26');

-- ----------------------------
-- Table structure for itinerary_attraction
-- ----------------------------
DROP TABLE IF EXISTS `itinerary_attraction`;
CREATE TABLE `itinerary_attraction`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `itinerary_id` bigint NOT NULL,
  `attraction_id` bigint NOT NULL,
  `day_number` int NOT NULL DEFAULT 1,
  `visit_order` int NOT NULL DEFAULT 1,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of itinerary_attraction
-- ----------------------------
INSERT INTO `itinerary_attraction` VALUES (5, 3, 72, 1, 1, '2026-01-15 00:14:02');
INSERT INTO `itinerary_attraction` VALUES (6, 3, 71, 1, 2, '2026-01-15 00:14:03');
INSERT INTO `itinerary_attraction` VALUES (7, 4, 92, 1, 1, '2026-01-15 00:30:23');
INSERT INTO `itinerary_attraction` VALUES (8, 4, 91, 1, 2, '2026-01-15 00:30:23');
INSERT INTO `itinerary_attraction` VALUES (9, 4, 93, 1, 3, '2026-01-15 00:32:17');
INSERT INTO `itinerary_attraction` VALUES (10, 5, 102, 1, 1, '2026-01-15 00:35:50');
INSERT INTO `itinerary_attraction` VALUES (11, 5, 101, 1, 2, '2026-01-15 00:35:50');
INSERT INTO `itinerary_attraction` VALUES (12, 5, 103, 1, 3, '2026-01-15 00:35:52');
INSERT INTO `itinerary_attraction` VALUES (13, 6, 142, 1, 1, '2026-01-15 01:20:18');
INSERT INTO `itinerary_attraction` VALUES (14, 6, 141, 1, 2, '2026-01-15 01:20:19');
INSERT INTO `itinerary_attraction` VALUES (15, 6, 143, 1, 3, '2026-01-15 01:20:20');
INSERT INTO `itinerary_attraction` VALUES (16, 7, 152, 1, 1, '2026-01-15 01:34:05');
INSERT INTO `itinerary_attraction` VALUES (17, 7, 151, 1, 2, '2026-01-15 01:34:06');
INSERT INTO `itinerary_attraction` VALUES (18, 7, 155, 1, 3, '2026-01-15 01:34:06');
INSERT INTO `itinerary_attraction` VALUES (19, 8, 172, 1, 1, '2026-01-15 01:42:08');
INSERT INTO `itinerary_attraction` VALUES (20, 8, 171, 1, 2, '2026-01-15 01:42:09');
INSERT INTO `itinerary_attraction` VALUES (21, 8, 173, 1, 3, '2026-01-15 01:42:09');
INSERT INTO `itinerary_attraction` VALUES (22, 9, 182, 1, 1, '2026-01-15 01:50:56');
INSERT INTO `itinerary_attraction` VALUES (23, 9, 181, 1, 2, '2026-01-15 01:50:57');
INSERT INTO `itinerary_attraction` VALUES (24, 9, 183, 1, 3, '2026-01-15 01:50:57');
INSERT INTO `itinerary_attraction` VALUES (25, 10, 213, 1, 1, '2026-01-15 02:26:45');
INSERT INTO `itinerary_attraction` VALUES (26, 10, 211, 1, 2, '2026-01-15 02:26:46');
INSERT INTO `itinerary_attraction` VALUES (27, 10, 224, 1, 3, '2026-01-15 02:26:46');
INSERT INTO `itinerary_attraction` VALUES (28, 11, 236, 1, 1, '2026-01-15 14:37:55');
INSERT INTO `itinerary_attraction` VALUES (29, 11, 243, 1, 2, '2026-01-15 14:37:58');
INSERT INTO `itinerary_attraction` VALUES (30, 11, 229, 1, 3, '2026-01-15 14:37:58');
INSERT INTO `itinerary_attraction` VALUES (31, 12, 319, 1, 1, '2026-01-15 16:48:17');
INSERT INTO `itinerary_attraction` VALUES (32, 12, 311, 1, 2, '2026-01-15 16:48:18');
INSERT INTO `itinerary_attraction` VALUES (33, 12, 318, 1, 3, '2026-01-15 16:48:19');
INSERT INTO `itinerary_attraction` VALUES (34, 13, 355, 1, 1, '2026-01-15 23:39:59');
INSERT INTO `itinerary_attraction` VALUES (35, 13, 358, 1, 2, '2026-01-15 23:40:00');
INSERT INTO `itinerary_attraction` VALUES (36, 13, 356, 1, 3, '2026-01-15 23:40:01');
INSERT INTO `itinerary_attraction` VALUES (37, 16, 500, 1, 1, '2026-01-16 02:02:05');
INSERT INTO `itinerary_attraction` VALUES (38, 17, 543, 1, 1, '2026-01-16 02:33:52');
INSERT INTO `itinerary_attraction` VALUES (39, 17, 542, 1, 2, '2026-01-16 02:33:53');
INSERT INTO `itinerary_attraction` VALUES (40, 18, 585, 1, 1, '2026-01-16 02:47:51');
INSERT INTO `itinerary_attraction` VALUES (41, 19, 600, 1, 2, '2026-01-16 03:10:34');
INSERT INTO `itinerary_attraction` VALUES (42, 19, 603, 1, 3, '2026-01-16 03:21:46');

-- ----------------------------
-- Table structure for itinerary_hotel
-- ----------------------------
DROP TABLE IF EXISTS `itinerary_hotel`;
CREATE TABLE `itinerary_hotel`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `itinerary_id` bigint NOT NULL,
  `hotel_id` bigint NOT NULL,
  `day_number` int NULL DEFAULT 1,
  `visit_order` int NOT NULL,
  `check_in_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `check_out_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_itinerary_id`(`itinerary_id` ASC) USING BTREE,
  INDEX `idx_hotel_id`(`hotel_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of itinerary_hotel
-- ----------------------------
INSERT INTO `itinerary_hotel` VALUES (1, 17, 119, 1, 1, NULL, NULL, '2026-01-16 02:33:28');
INSERT INTO `itinerary_hotel` VALUES (2, 18, 140, 1, 1, NULL, NULL, '2026-01-16 02:48:00');
INSERT INTO `itinerary_hotel` VALUES (3, 19, 147, 1, 1, NULL, NULL, '2026-01-16 03:10:47');

-- ----------------------------
-- Table structure for itinerary_restaurant
-- ----------------------------
DROP TABLE IF EXISTS `itinerary_restaurant`;
CREATE TABLE `itinerary_restaurant`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `itinerary_id` bigint NOT NULL,
  `restaurant_id` bigint NOT NULL,
  `day_number` int NULL DEFAULT 1,
  `visit_order` int NOT NULL,
  `meal_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_itinerary_id`(`itinerary_id` ASC) USING BTREE,
  INDEX `idx_restaurant_id`(`restaurant_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of itinerary_restaurant
-- ----------------------------
INSERT INTO `itinerary_restaurant` VALUES (1, 18, 181, 1, 1, '午餐', '2026-01-16 02:48:11');
INSERT INTO `itinerary_restaurant` VALUES (2, 19, 191, 1, 3, '午餐', '2026-01-16 03:10:57');

-- ----------------------------
-- Table structure for restaurant
-- ----------------------------
DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE `restaurant`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '长沙',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` decimal(10, 7) NOT NULL,
  `latitude` decimal(10, 7) NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `rating` decimal(2, 1) NULL DEFAULT 5.0,
  `avg_price` decimal(8, 2) NULL DEFAULT NULL,
  `open_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `specialties` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` tinyint NULL DEFAULT 1,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_city`(`city` ASC) USING BTREE,
  INDEX `idx_category`(`category` ASC) USING BTREE,
  INDEX `idx_rating`(`rating` ASC) USING BTREE,
  INDEX `idx_avg_price`(`avg_price` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 330 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of restaurant
-- ----------------------------
INSERT INTO `restaurant` VALUES (320, '天宝兄弟口味虾', '长沙著名的口味虾专门店，以新鲜小龙虾和独特配方闻名', '湘菜', '天心区', '长沙', '长沙市天心区人民西路', 112.9702250, 28.1740320, '0731-85778888', 'https://x0.ifengimg.com/ucms/2021_29/4F7D2202CDA063ECF8ED6649253B6E9A007099EF_size132_w1080_h722.jpg', 4.8, 128.00, '16:00-03:00', '口味虾,油爆虾,香辣虾', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `restaurant` VALUES (321, '虾小龙老长沙龙虾馆', '老长沙龙虾连锁品牌，深受本地人喜爱', '湘菜', '天心区', '长沙', '长沙市天心区坡子街', 112.9766610, 28.1912500, '0731-85868888', 'https://youimg1.c-ctrip.com/target/100617000001115q0F8CD.jpg', 4.6, 118.00, '11:00-02:00', '麻辣小龙虾,十三香龙虾,蒜蓉龙虾', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `restaurant` VALUES (322, '公交新村粉店', '长沙老字号米粉店，传统湖南米粉', '湘菜', '雨花区', '长沙', '长沙市雨花区公交新村', 113.0026070, 28.1666710, '0731-85658888', 'https://ts1.tc.mm.bing.net/th/id/R-C.1cd81f5474819c4eba1642a59eb3fac6?rik=fMaZx833HWeibw&riu=http%3a%2f%2fn.sinaimg.cn%2fsinakd10011%2f268%2fw641h427%2f20220116%2f210e-5df09134af6a2089e9f8fee307e42b43.jpg&ehk=dF3lzJrRuJkABprIVqLIdkb9FNwhldLBP6VKFmminXs%3d&risl=&pid=ImgRaw&r=0', 4.5, 25.00, '06:00-14:00', '牛肉粉,肉丝粉,腰花粉', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `restaurant` VALUES (323, '笨萝卜浏阳菜馆（太平街店）', '浏阳菜代表，以辣闻名，深受本地人喜爱', '湘菜', '天心区', '长沙', '长沙市天心区太平街', 112.9726560, 28.1936210, '', 'https://ts4.tc.mm.bing.net/th/id/OIP-C.i7uoFdGWAej8gFudN0OxaAAAAA?rs=1&pid=ImgDetMain&o=7&rm=3', 4.7, 58.00, '11:00-21:00', '浏阳蒸菜,剁椒鱼头,农家小炒肉', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `restaurant` VALUES (324, '四方坪三十栋饭店', '四方坪热门饭店，本地人常去', '湘菜', '开福区', '长沙', '长沙市开福区四方坪', 113.0098520, 28.2363120, '', 'https://ts2.tc.mm.bing.net/th/id/OIP-C.jOydyT9rP3zcAy98x7vI5gAAAA?rs=1&pid=ImgDetMain&o=7&rm=3', 4.5, 68.00, '11:00-21:00', '口味虾,红烧肉,小炒黄牛肉', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `restaurant` VALUES (325, '李易面馆（树木岭店）', '本地知名面馆，手工面条劲道', '湘菜', '雨花区', '长沙', '长沙市雨花区树木岭', 113.0219800, 28.1426710, '', 'https://ts1.tc.mm.bing.net/th/id/R-C.b8ef26d14372f50a743e2f935946ac8a?rik=rz5%2f9YtbXR2nyw&riu=http%3a%2f%2fn1.itc.cn%2fimg7%2fadapt%2fwb%2fsohulife%2f2017%2f04%2f15%2f149227081717572351_620_1000.JPEG&ehk=mmPzL%2fF5dt8UO8Xt3twteOo1Rfm5zlJUjpoXX1DR73w%3d&risl=&pid=ImgRaw&r=0', 4.4, 28.00, '07:00-15:00', '牛肉面,肉丝面,杂酱面', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `restaurant` VALUES (326, '星城饭局', '地道湘菜，价格实惠', '湘菜', '开福区', '长沙', '长沙市开福区星沙', 112.9985810, 28.2424040, '', 'https://dimg04.c-ctrip.com/images/1me6u12000q5oc5nlB28B.jpg_.webp?proc=source/tripcommunity&_fr=wc', 4.6, 72.00, '11:00-21:00', '农家小炒肉,剁椒鱼头,酸辣土豆丝', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `restaurant` VALUES (327, '老头子糖油粑粑', '老字号糖油粑粑，长沙特色小吃', '小吃', '岳麓区', '长沙', '长沙市岳麓区溁湾镇', 112.9452910, 28.1741920, '', 'https://ts2.tc.mm.bing.net/th/id/OIP-C.AqZENVK19yUVdlG1PvpX1AHaEc?rs=1&pid=ImgDetMain&o=7&rm=3', 4.3, 12.00, '09:00-22:00', '糖油粑粑,葱油饼', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `restaurant` VALUES (328, '宴东家', '浏阳菜馆，菜品丰富', '湘菜', '开福区', '长沙', '长沙市开福区芙蓉北路', 112.9566250, 28.2319910, '', 'https://pic4.zhimg.com/v2-cb6886e68ea0275b2fca20c41111f003_r.jpg', 4.5, 65.00, '11:00-21:00', '浏阳蒸菜,口味蛇,农家小炒肉', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `restaurant` VALUES (329, '胖冬瓜浏阳菜馆', '浏阳菜连锁品牌，分量足', '湘菜', '开福区', '长沙', '长沙市开福区芙蓉北路', 112.9801320, 28.2569360, '', 'https://ts4.tc.mm.bing.net/th/id/OIP-C.Q_b4sfH1HtLLzhFvuwoDKAHaFE?rs=1&pid=ImgDetMain&o=7&rm=3', 4.6, 55.00, '11:00-21:00', '浏阳蒸菜,剁椒鱼头,酸辣土豆丝', 1, '2026-01-16 15:01:04', '2026-01-16 15:01:04');

-- ----------------------------
-- Table structure for restaurant_review
-- ----------------------------
DROP TABLE IF EXISTS `restaurant_review`;
CREATE TABLE `restaurant_review`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `restaurant_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int NULL DEFAULT 0,
  `comments` int NULL DEFAULT 0,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_restaurant_id`(`restaurant_id` ASC) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_rating`(`rating` ASC) USING BTREE,
  CONSTRAINT `restaurant_review_chk_1` CHECK ((`rating` >= 1) and (`rating` <= 5))
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of restaurant_review
-- ----------------------------

-- ----------------------------
-- Table structure for review_comment
-- ----------------------------
DROP TABLE IF EXISTS `review_comment`;
CREATE TABLE `review_comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `review_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_review_id`(`review_id` ASC) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of review_comment
-- ----------------------------

-- ----------------------------
-- Table structure for review_like
-- ----------------------------
DROP TABLE IF EXISTS `review_like`;
CREATE TABLE `review_like`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `review_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_review_user`(`review_id` ASC, `user_id` ASC) USING BTREE,
  INDEX `idx_review_id`(`review_id` ASC) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of review_like
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (123, 'admin', '$2a$10$JVhKB.OMsBwaicy4DvWP5ecNK5dIjnPiGEK4BfLxjUUJ.bhS7FX/6', 'admin@tourism.com', NULL, 'ADMIN', '2026-01-16 15:01:04', '2026-01-16 15:01:04');
INSERT INTO `user` VALUES (124, 'user', '$2a$10$SIt1T1QOIcbX6p8AZs7l9u30nUmC73muRLvz.sG0xjYmCpScMv.f6', 'user@tourism.com', NULL, 'USER', '2026-01-16 15:01:04', '2026-01-16 15:01:04');

-- ----------------------------
-- Table structure for user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `user_favorite`;
CREATE TABLE `user_favorite`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `attraction_id` bigint NOT NULL,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_user_attraction`(`user_id` ASC, `attraction_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_favorite
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
