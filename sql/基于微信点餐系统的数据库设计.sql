/*
 Navicat Premium Data Transfer

 Source Server         : edkso.cn
 Source Server Type    : MySQL
 Source Server Version : 50642
 Source Host           : edkso.cn:3306
 Source Schema         : candiandian

 Target Server Type    : MySQL
 Target Server Version : 50642
 File Encoding         : 65001

 Date: 18/05/2019 10:20:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详单id',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单id',
  `product_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品id',
  `product_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `product_price` decimal(10, 2) NOT NULL COMMENT '商品单价',
  `product_num` int(11) NOT NULL COMMENT '商品数量',
  `product_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('1552006059878562725', '1552006059859407964', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1552006060301588506', '1552006060283123849', '2', '小份黄焖鸡', 8.00, 5, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1552008369815185046', '1552008369797707927', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1552008369858240810', '1552008369797707927', '3', '鸡蛋炒刀削', 7.00, 2, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1552008580650224989', '1552008580632999749', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1552008580683149226', '1552008580632999749', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1552008704431645486', '1552008704415742943', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1552008704465578476', '1552008704415742943', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1552008704517157162', '1552008704500209265', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1552010533208305325', '1552010533191240191', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1552010698920262416', '1552010698905732737', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1552010712962193872', '1552010712946148093', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1552021494441563863', '1552021494425641365', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1552021494474311893', '1552021494425641365', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1552021494522460995', '1552021494507528037', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1552098056632199192', '1552098056612345580', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1552185292672657393', '1552185292650781389', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1552185411548529510', '1552185411432569378', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1552206233284756370', '1552206233225781324', '4', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1552206415963829646', '1552206415942770876', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1552273027004573879', '1552273026953508485', '3', '鸡蛋炒刀削', 7.00, 2, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1552273027114879564', '1552273026953508485', '1', '大骨汤面', 5.00, 2, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1552283192390388001', '1552283192367563542', '4', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1552287553482227638', '1552287553448789254', '5', '沙拉烤肉饭', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kaoroufan.png');
INSERT INTO `order_detail` VALUES ('1552287553592106922', '1552287553562979597', '6', '麻辣香锅（清香）', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1552287553699611379', '1552287553660270522', '4', '陕西裤带面', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1552287553808852936', '1552287553787174488', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1552287553880765798', '1552287553787174488', '3', '鸡蛋炒刀削', 7.00, 2, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1552287553966295660', '1552287553946246020', '2', '小份黄焖鸡', 8.00, 4, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1552305756538449125', '1552305756515160020', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1552305756588918707', '1552305756515160020', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1552305756656923977', '1552305756636891982', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1552305756721212386', '1552305756699321539', '4', '陕西裤带面', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1552305860915240812', '1552305860888600955', '2', '小份黄焖鸡', 8.00, 2, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1552305860996350129', '1552305860969654548', '4', '陕西裤带面', 7.00, 2, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1552305946579622563', '1552305946558302313', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1552305946619996383', '1552305946558302313', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1552305946679694146', '1552305946660553728', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1552305946741148368', '1552305946721315099', '4', '陕西裤带面', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1552306591923896111', '1552306591894636377', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1552306591986717895', '1552306591894636377', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1552306592075667138', '1552306592048617447', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1552456938084681938', '1552456938057891166', '4', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1552567747359639293', '1552567747263552397', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1552567747559753207', '1552567747263552397', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1553674891711577342', '1553674891664713552', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1553676276154140050', '1553676276137696236', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1553676276202919547', '1553676276185613275', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1553676276232351638', '1553676276185613275', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1553676298952484298', '1553676298937303117', '6', '麻辣香锅（清香）', 19.90, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1553676449070304816', '1553676449053767711', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1553676449118534041', '1553676449102985310', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1553676449151856702', '1553676449102985310', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1553676472057478934', '1553676472041899320', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1553676472112784547', '1553676472096124879', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1553695001180771313', '1553695001163876356', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1553695001223596628', '1553695001163876356', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1553695001281362765', '1553695001265487948', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1553695021496227171', '1553695021480353947', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1553695021544153461', '1553695021528923283', '4', '陕西裤带面', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1553698414117765259', '1553698414094472382', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1553698414178774155', '1553698414159489163', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1553698414217186719', '1553698414159489163', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1553701808816350954', '1553701808796366800', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1553701808855312810', '1553701808796366800', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1553701808915553295', '1553701808895418260', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1553701828722859670', '1553701828703853336', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1553701828787596144', '1553701828761666931', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1554098120505538605', '1554098120435681656', '4', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1554224686961524261', '1554224686925599433', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1554224687176184226', '1554224687145487723', '4', '陕西裤带面', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1554224687599297669', '1554224687573692076', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1554224687677254190', '1554224687651876997', '4', '陕西裤带面', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1554960904771483961', '1554960904728231375', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1554960905350295637', '1554960905308818456', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1554964799202961333', '1554964799166618411', '4', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1554964802361846382', '1554964802325769128', '4', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1554964825971776614', '1554964825935504744', '4', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1554964851062671598', '1554964851026915091', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1554964851133185771', '1554964851026915091', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1554964851239797336', '1554964851204734762', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1554964852006222167', '1554964851970611681', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1554964852076370971', '1554964851970611681', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1554964852185401054', '1554964852148642403', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1554964897089301392', '1554964897047475861', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1554967073488448180', '1554967073446465131', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1554967077190470325', '1554967077149341602', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1554967077274673110', '1554967077149341602', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1554967100751915055', '1554967100706251766', '4', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1554967101429309167', '1554967101385188757', '4', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1554967115209903986', '1554967115166489846', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1554967115298247740', '1554967115166489846', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1554967122005259467', '1554967121963680992', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1554967143138801078', '1554967143093250725', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1554967164704434603', '1554967164663560812', '4', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1555210919846256118', '1555210919828419086', '2', '小份黄焖鸡', 8.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555210920458178795', '1555210920439342824', '2', '小份黄焖鸡', 8.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555211054967376570', '1555211054946442785', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555211453379742938', '1555211453361339453', '4', '陕西裤带面', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1555211453452438680', '1555211453435855700', '5', '沙拉烤肉饭', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kaoroufan.png');
INSERT INTO `order_detail` VALUES ('1555211552038587403', '1555211552020205467', '6', '麻辣香锅（清香）', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555391141330518674', '1555391141306793774', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555391141415603702', '1555391141394234528', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555416499467388439', '1555416499444895476', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555417471767910094', '1555417471746210046', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555419547104705743', '1555419547084606042', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555419873474861953', '1555419873455578609', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555420108293384682', '1555420108275623837', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555420108462564730', '1555420108442504986', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555517198268246152', '1555517198225694149', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555517198363224963', '1555517198225694149', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1555570855375749533', '1555570855342246619', '6', '麻辣香锅（清香）', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555579845935461330', '1555579845913787664', '1555332066798234387', '水饺', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/2019041520410621092.jpg');
INSERT INTO `order_detail` VALUES ('1555579845993372257', '1555579845913787664', '4', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1555579884557436081', '1555579884537186756', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555593537440371377', '1555593537419557652', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555593567724752942', '1555593567700235944', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555593567783378779', '1555593567764193772', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555593567842472626', '1555593567822468107', '4', '陕西裤带面', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1555593672464742896', '1555593672443918550', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555597396504220863', '1555597396485563337', '1555332066798234387', '水饺', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/2019041520410621092.jpg');
INSERT INTO `order_detail` VALUES ('1555597396547239900', '1555597396485563337', '4', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1555597427924246892', '1555597427905434128', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555597703834866720', '1555597703816723963', '1', '大骨汤面', 5.00, 2, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555597825520702243', '1555597825501807703', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555597904391834252', '1555597904374234496', '1', '大骨汤面', 5.00, 2, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555597948346479597', '1555597948328434636', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555599408316122588', '1555599408294751480', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555599448128850522', '1555599448108582562', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555599448190750587', '1555599448169680035', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555599460621845284', '1555599460599162262', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555599460684739470', '1555599460661514453', '2', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555683112664345402', '1555683112642271002', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555683688452533581', '1555683688430804774', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555683709050867964', '1555683709029807985', '4', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1555683745535545703', '1555683745512205125', '1', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555683745578339579', '1555683745512205125', '3', '鸡蛋炒刀削', 7.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png');
INSERT INTO `order_detail` VALUES ('1555726381734994391', '1555726381728295649', '1555724504032849808', '老碗牛肉面', 8.00, 1, 'https://s2.ax1x.com/2019/04/20/ECPi5j.th.png');
INSERT INTO `order_detail` VALUES ('1555726381741794487', '1555726381728295649', '1555725038230767675', '老碗排骨面', 10.00, 1, 'https://s2.ax1x.com/2019/04/20/ECPxY9.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726381747168549', '1555726381728295649', '1555725378229535808', '老碗酸菜面', 7.00, 1, 'https://s2.ax1x.com/2019/04/20/ECixHS.th.png');
INSERT INTO `order_detail` VALUES ('1555726405296813733', '1555726405284358284', '1555724504032849808', '老碗牛肉面', 8.00, 5, 'https://s2.ax1x.com/2019/04/20/ECPi5j.th.png');
INSERT INTO `order_detail` VALUES ('1555726422650429749', '1555726422643926975', '1555725038230767675', '老碗排骨面', 10.00, 9, 'https://s2.ax1x.com/2019/04/20/ECPxY9.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726422656613673', '1555726422643926975', '1555724504032849808', '老碗牛肉面', 8.00, 4, 'https://s2.ax1x.com/2019/04/20/ECPi5j.th.png');
INSERT INTO `order_detail` VALUES ('1555726422664369451', '1555726422643926975', '1555725378229535808', '老碗酸菜面', 7.00, 3, 'https://s2.ax1x.com/2019/04/20/ECixHS.th.png');
INSERT INTO `order_detail` VALUES ('1555726446328987795', '1555726446318898779', '1555725378229535808', '老碗酸菜面', 7.00, 3, 'https://s2.ax1x.com/2019/04/20/ECixHS.th.png');
INSERT INTO `order_detail` VALUES ('1555726446334587077', '1555726446318898779', '1555725038230767675', '老碗排骨面', 10.00, 4, 'https://s2.ax1x.com/2019/04/20/ECPxY9.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726468347751446', '1555726468342500579', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555726468356287015', '1555726468353247812', '1555693943066164016', '麻辣香锅', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555726468364256186', '1555726468361932903', '1555693943066164014', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555726468372578199', '1555726468370136951', '1555726025261266451', '招牌烧包鸭', 11.00, 1, 'https://s2.ax1x.com/2019/04/20/ECAefJ.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726471380600997', '1555726471369635748', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555726471388305150', '1555726471386169021', '1555693943066164016', '麻辣香锅', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555726471397461968', '1555726471394123105', '1555693943066164014', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555726471405422405', '1555726471403166200', '1555726025261266451', '招牌烧包鸭', 11.00, 1, 'https://s2.ax1x.com/2019/04/20/ECAefJ.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726472524618728', '1555726472517281618', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555726472533327016', '1555726472531597258', '1555693943066164016', '麻辣香锅', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555726472547461736', '1555726472543712084', '1555693943066164014', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555726472557487986', '1555726472554303668', '1555726025261266451', '招牌烧包鸭', 11.00, 1, 'https://s2.ax1x.com/2019/04/20/ECAefJ.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726474443763980', '1555726474432181964', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555726474451540651', '1555726474449771667', '1555693943066164016', '麻辣香锅', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555726474462320045', '1555726474458581608', '1555693943066164014', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555726474470105147', '1555726474467230066', '1555726025261266451', '招牌烧包鸭', 11.00, 1, 'https://s2.ax1x.com/2019/04/20/ECAefJ.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726475430799564', '1555726475422557092', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555726475438523022', '1555726475436349116', '1555693943066164016', '麻辣香锅', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555726475447391797', '1555726475444639195', '1555693943066164014', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555726475455696963', '1555726475452591372', '1555726025261266451', '招牌烧包鸭', 11.00, 1, 'https://s2.ax1x.com/2019/04/20/ECAefJ.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726476358880690', '1555726476346234691', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555726476367494723', '1555726476364760532', '1555693943066164016', '麻辣香锅', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555726476375528305', '1555726476373470690', '1555693943066164014', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555726476383849384', '1555726476381862983', '1555726025261266451', '招牌烧包鸭', 11.00, 1, 'https://s2.ax1x.com/2019/04/20/ECAefJ.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726486432915399', '1555726486423578668', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555726486440762995', '1555726486437470098', '1555693943066164016', '麻辣香锅', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555726486448213836', '1555726486446877221', '1555693943066164014', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555726486457507000', '1555726486454728707', '1555726025261266451', '招牌烧包鸭', 11.00, 1, 'https://s2.ax1x.com/2019/04/20/ECAefJ.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726487414912500', '1555726487391816073', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555726487434655351', '1555726487432617327', '1555693943066164016', '麻辣香锅', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555726487443454257', '1555726487440988560', '1555693943066164014', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555726487451375739', '1555726487448901358', '1555726025261266451', '招牌烧包鸭', 11.00, 1, 'https://s2.ax1x.com/2019/04/20/ECAefJ.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726500126194550', '1555726500119287766', '1555724504032849808', '老碗牛肉面', 8.00, 6, 'https://s2.ax1x.com/2019/04/20/ECPi5j.th.png');
INSERT INTO `order_detail` VALUES ('1555726501939306865', '1555726501931451381', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555726501948935490', '1555726501945329816', '1555693943066164016', '麻辣香锅', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555726501956905503', '1555726501954594207', '1555693943066164014', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555726501965698188', '1555726501962976279', '1555726025261266451', '招牌烧包鸭', 11.00, 1, 'https://s2.ax1x.com/2019/04/20/ECAefJ.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726504338910524', '1555726504325267384', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555726504349380517', '1555726504344953383', '1555693943066164016', '麻辣香锅', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555726504358403731', '1555726504355887991', '1555693943066164014', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555726504366421484', '1555726504364803576', '1555726025261266451', '招牌烧包鸭', 11.00, 1, 'https://s2.ax1x.com/2019/04/20/ECAefJ.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726525377170220', '1555726525353457649', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555726525386280162', '1555726525383824325', '1555693943066164016', '麻辣香锅', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555726525401612754', '1555726525392248726', '1555693943066164014', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555726525409522470', '1555726525407158122', '1555726025261266451', '招牌烧包鸭', 11.00, 1, 'https://s2.ax1x.com/2019/04/20/ECAefJ.th.jpg');
INSERT INTO `order_detail` VALUES ('1555726526341626026', '1555726526331653243', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555726526350479750', '1555726526347908553', '1555693943066164016', '麻辣香锅', 19.90, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png');
INSERT INTO `order_detail` VALUES ('1555726526359332633', '1555726526356396707', '1555693943066164014', '小份黄焖鸡', 8.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png');
INSERT INTO `order_detail` VALUES ('1555726526367951695', '1555726526364171320', '1555726025261266451', '招牌烧包鸭', 11.00, 1, 'https://s2.ax1x.com/2019/04/20/ECAefJ.th.jpg');
INSERT INTO `order_detail` VALUES ('1555727686054255833', '1555727686051881141', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555727712418397020', '1555727712415356564', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555727712423533942', '1555727712415356564', '1555724504032849808', '老碗牛肉面', 8.00, 1, 'https://s2.ax1x.com/2019/04/20/ECPi5j.th.png');
INSERT INTO `order_detail` VALUES ('1555727733456448939', '1555727733452929393', '1155569394306616401', '大骨汤面', 5.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555727733462865807', '1555727733452929393', '1555724504032849808', '老碗牛肉面', 8.00, 0, 'https://s2.ax1x.com/2019/04/20/ECPi5j.th.png');
INSERT INTO `order_detail` VALUES ('1555727733467747994', '1555727733452929393', '1555725038230767675', '老碗排骨面', 10.00, 0, 'https://s2.ax1x.com/2019/04/20/ECPxY9.th.jpg');
INSERT INTO `order_detail` VALUES ('1555727733472326437', '1555727733452929393', '1555725378229535808', '老碗酸菜面', 7.00, 0, 'https://s2.ax1x.com/2019/04/20/ECixHS.th.png');
INSERT INTO `order_detail` VALUES ('1555727772180282742', '1555727772177984058', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555738754433962837', '1555738754428572838', '1555693943066164012', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1555738781957509843', '1555738781952752605', '1555725038230767675', '老碗排骨面', 10.00, 3, 'https://s2.ax1x.com/2019/04/20/ECPxY9.th.jpg');
INSERT INTO `order_detail` VALUES ('1555738799324854965', '1555738799318468602', '1555725378229535808', '老碗酸菜面', 7.00, 1, 'https://s2.ax1x.com/2019/04/20/ECixHS.th.png');
INSERT INTO `order_detail` VALUES ('1555738801342980312', '1555738801338673899', '1155569394306616401', '大骨汤面', 5.00, 1, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png');
INSERT INTO `order_detail` VALUES ('1555738801347438873', '1555738801338673899', '1555724504032849808', '老碗牛肉面', 8.00, 1, 'https://s2.ax1x.com/2019/04/20/ECPi5j.th.png');
INSERT INTO `order_detail` VALUES ('1555738990977147273', '1555738990974683393', '1555693943066164012', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1555738991857611219', '1555738991854394600', '1555693943066164012', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');
INSERT INTO `order_detail` VALUES ('1555739019434494411', '1555739019426907405', '1555724504032849808', '老碗牛肉面', 8.00, 1, 'https://s2.ax1x.com/2019/04/20/ECPi5j.th.png');
INSERT INTO `order_detail` VALUES ('1555739019439969300', '1555739019426907405', '1555725038230767675', '老碗排骨面', 10.00, 1, 'https://s2.ax1x.com/2019/04/20/ECPxY9.th.jpg');
INSERT INTO `order_detail` VALUES ('1555739020323331229', '1555739020320474724', '1555724504032849808', '老碗牛肉面', 8.00, 1, 'https://s2.ax1x.com/2019/04/20/ECPi5j.th.png');
INSERT INTO `order_detail` VALUES ('1555739020328673970', '1555739020320474724', '1555725038230767675', '老碗排骨面', 10.00, 1, 'https://s2.ax1x.com/2019/04/20/ECPxY9.th.jpg');
INSERT INTO `order_detail` VALUES ('1555739056425834309', '1555739056422602761', '1555725378229535808', '老碗酸菜面', 7.00, 1, 'https://s2.ax1x.com/2019/04/20/ECixHS.th.png');
INSERT INTO `order_detail` VALUES ('1555739056433358909', '1555739056422602761', '1555725038230767675', '老碗排骨面', 10.00, 1, 'https://s2.ax1x.com/2019/04/20/ECPxY9.th.jpg');
INSERT INTO `order_detail` VALUES ('1555739062654234011', '1555739062650640513', '1555724504032849808', '老碗牛肉面', 8.00, 1, 'https://s2.ax1x.com/2019/04/20/ECPi5j.th.png');
INSERT INTO `order_detail` VALUES ('1555739062660591230', '1555739062650640513', '1555725038230767675', '老碗排骨面', 10.00, 1, 'https://s2.ax1x.com/2019/04/20/ECPxY9.th.jpg');
INSERT INTO `order_detail` VALUES ('1555740839540373869', '1555740839533537059', '1555693943066164012', '陕西裤带面', 7.00, 0, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg');

-- ----------------------------
-- Table structure for order_master
-- ----------------------------
DROP TABLE IF EXISTS `order_master`;
CREATE TABLE `order_master`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单id',
  `restaurant_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '餐厅id',
  `restaurant_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '餐厅logo',
  `store_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺id',
  `store_number` int(11) NOT NULL,
  `store_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buyer_openid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '购买者openid',
  `total_price` decimal(10, 2) NOT NULL COMMENT '总价',
  `linkman` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货联系人',
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  `order_status` tinyint(5) NULL DEFAULT 0 COMMENT '0新订单（默认） 1已接单 2配送中 3已完成 4已取消',
  `pay_status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0未支付 （默认） 1已支付',
  `order_type` tinyint(2) NOT NULL COMMENT '0点餐 1外卖 2买单',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `updata_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '订单更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_master
-- ----------------------------
INSERT INTO `order_master` VALUES ('1552006059859407964', '3', NULL, '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 7.00, NULL, NULL, NULL, '', 4, 1, 0, '2019-03-08 08:47:42', '2019-03-08 08:47:42');
INSERT INTO `order_master` VALUES ('1552006060283123849', '3', NULL, '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 40.00, NULL, NULL, NULL, '', 4, 1, 0, '2019-03-08 08:47:42', '2019-03-08 08:47:42');
INSERT INTO `order_master` VALUES ('1552008369797707927', '3', NULL, '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 19.00, NULL, NULL, NULL, '', 4, 1, 0, '2019-03-08 09:26:12', '2019-03-08 09:26:12');
INSERT INTO `order_master` VALUES ('1552008580632999749', '3', NULL, '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, NULL, NULL, NULL, '', 4, 1, 0, '2019-03-08 09:29:43', '2019-03-08 09:29:43');
INSERT INTO `order_master` VALUES ('1552008704415742943', '3', NULL, '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-08 09:31:46', '2019-03-08 09:31:46');
INSERT INTO `order_master` VALUES ('1552008704500209265', '3', NULL, '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-08 09:31:47', '2019-03-08 09:31:47');
INSERT INTO `order_master` VALUES ('1552010533191240191', '3', NULL, '1', 0, '', 'oD2B75VFYOLgZ2wZAKZ5yWi4S8gA', 5.00, NULL, NULL, NULL, '', 4, 1, 0, '2019-03-08 10:02:15', '2019-03-08 10:02:15');
INSERT INTO `order_master` VALUES ('1552010698905732737', '3', NULL, '1', 0, '', 'oD2B75VFYOLgZ2wZAKZ5yWi4S8gA', 5.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-08 10:05:01', '2019-03-08 10:05:01');
INSERT INTO `order_master` VALUES ('1552010712946148093', '3', NULL, '2', 0, '', 'oD2B75VFYOLgZ2wZAKZ5yWi4S8gA', 8.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-08 10:05:15', '2019-03-08 10:05:15');
INSERT INTO `order_master` VALUES ('1552021494425641365', '3', NULL, '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-08 13:04:57', '2019-03-08 13:04:57');
INSERT INTO `order_master` VALUES ('1552021494507528037', '3', NULL, '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-08 13:04:57', '2019-03-08 13:04:57');
INSERT INTO `order_master` VALUES ('1552098056612345580', '3', NULL, '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-09 10:20:57', '2019-03-09 10:20:57');
INSERT INTO `order_master` VALUES ('1552185292650781389', '3', NULL, '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-03-10 10:34:54', '2019-03-11 20:14:50');
INSERT INTO `order_master` VALUES ('1552287553448789254', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '4', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-11 14:59:14', '2019-03-11 14:59:14');
INSERT INTO `order_master` VALUES ('1552287553562979597', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 19.90, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-11 14:59:14', '2019-03-11 14:59:14');
INSERT INTO `order_master` VALUES ('1552287553660270522', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 7.00, NULL, NULL, NULL, '', 3, 1, 0, '2019-03-11 14:59:14', '2019-03-11 20:15:15');
INSERT INTO `order_master` VALUES ('1552287553787174488', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 19.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-11 14:59:14', '2019-03-11 14:59:14');
INSERT INTO `order_master` VALUES ('1552287553946246020', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 32.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-11 14:59:14', '2019-03-11 14:59:14');
INSERT INTO `order_master` VALUES ('1552305756515160020', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-11 20:02:37', '2019-03-11 20:02:37');
INSERT INTO `order_master` VALUES ('1552305756636891982', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-11 20:02:37', '2019-03-11 20:02:37');
INSERT INTO `order_master` VALUES ('1552305756699321539', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 7.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-11 20:02:37', '2019-03-11 20:02:37');
INSERT INTO `order_master` VALUES ('1552305860888600955', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 16.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-03-11 20:04:21', '2019-03-11 20:04:21');
INSERT INTO `order_master` VALUES ('1552305860969654548', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 14.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-03-11 20:04:21', '2019-03-11 20:04:21');
INSERT INTO `order_master` VALUES ('1552305946558302313', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 0, 1, 1, '2019-03-11 20:05:47', '2019-03-11 20:05:47');
INSERT INTO `order_master` VALUES ('1552305946660553728', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 0, 1, 1, '2019-03-11 20:05:47', '2019-03-11 20:05:47');
INSERT INTO `order_master` VALUES ('1552305946721315099', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 7.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 0, 1, 1, '2019-03-11 20:05:47', '2019-03-11 20:05:47');
INSERT INTO `order_master` VALUES ('1552306591894636377', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-11 20:16:32', '2019-03-11 20:16:32');
INSERT INTO `order_master` VALUES ('1552306592048617447', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-11 20:16:32', '2019-03-11 20:16:32');
INSERT INTO `order_master` VALUES ('1552456938057891166', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 11.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-03-13 14:02:19', '2019-04-01 13:41:04');
INSERT INTO `order_master` VALUES ('1552567747263552397', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-14 20:49:09', '2019-03-14 20:49:09');
INSERT INTO `order_master` VALUES ('1553674891664713552', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 7.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-27 16:21:32', '2019-03-27 16:21:32');
INSERT INTO `order_master` VALUES ('1553676276137696236', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-27 16:44:36', '2019-03-27 16:44:36');
INSERT INTO `order_master` VALUES ('1553676276185613275', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-27 16:44:36', '2019-03-27 16:44:36');
INSERT INTO `order_master` VALUES ('1553676298937303117', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 2, '黄焖鸡米饭', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-03-27 16:44:59', '2019-04-01 13:41:01');
INSERT INTO `order_master` VALUES ('1553676449053767711', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-27 16:47:29', '2019-03-27 16:47:29');
INSERT INTO `order_master` VALUES ('1553676449102985310', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-27 16:47:29', '2019-03-27 16:47:29');
INSERT INTO `order_master` VALUES ('1553676472041899320', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 0, 0, 1, '2019-03-27 16:47:52', '2019-03-27 16:47:52');
INSERT INTO `order_master` VALUES ('1553676472096124879', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 0, 0, 1, '2019-03-27 16:47:52', '2019-03-27 16:47:52');
INSERT INTO `order_master` VALUES ('1553676491586957515', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '6', 1, '陕西裤带面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-03-27 16:48:11', '2019-04-01 13:40:59');
INSERT INTO `order_master` VALUES ('1553695001163876356', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-27 21:56:42', '2019-03-27 21:56:42');
INSERT INTO `order_master` VALUES ('1553695001265487948', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-27 21:56:42', '2019-03-27 21:56:42');
INSERT INTO `order_master` VALUES ('1553695021480353947', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-27 21:57:02', '2019-03-27 21:57:02');
INSERT INTO `order_master` VALUES ('1553695021528923283', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 7.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-27 21:57:02', '2019-03-27 21:57:02');
INSERT INTO `order_master` VALUES ('1553698414094472382', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-27 22:53:35', '2019-03-27 22:53:35');
INSERT INTO `order_master` VALUES ('1553698414159489163', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, NULL, NULL, NULL, '', 2, 1, 0, '2019-03-27 22:53:35', '2019-03-27 22:53:35');
INSERT INTO `order_master` VALUES ('1553701808796366800', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-27 23:50:09', '2019-03-27 23:50:09');
INSERT INTO `order_master` VALUES ('1553701808895418260', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-03-27 23:50:09', '2019-03-27 23:50:09');
INSERT INTO `order_master` VALUES ('1553701828703853336', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 0, 1, 1, '2019-03-27 23:50:28', '2019-03-27 23:50:28');
INSERT INTO `order_master` VALUES ('1553701828761666931', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 0, '', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 7.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 0, 1, 1, '2019-03-27 23:50:28', '2019-03-27 23:50:28');
INSERT INTO `order_master` VALUES ('1554098120435681656', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 10.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-01 13:55:20', '2019-04-01 13:55:20');
INSERT INTO `order_master` VALUES ('1554224686925599433', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75UXJ3fBhGGudLLzGbS6xkF8', 5.00, NULL, NULL, NULL, '流量', 4, 1, 0, '2019-04-03 01:04:48', '2019-04-03 01:04:48');
INSERT INTO `order_master` VALUES ('1554224687145487723', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75UXJ3fBhGGudLLzGbS6xkF8', 7.00, NULL, NULL, NULL, '流量', 4, 1, 0, '2019-04-03 01:04:48', '2019-04-03 01:04:48');
INSERT INTO `order_master` VALUES ('1554224687573692076', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75UXJ3fBhGGudLLzGbS6xkF8', 5.00, NULL, NULL, NULL, '流量', 0, 1, 0, '2019-04-03 01:04:48', '2019-04-03 01:04:48');
INSERT INTO `order_master` VALUES ('1554224687651876997', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75UXJ3fBhGGudLLzGbS6xkF8', 7.00, NULL, NULL, NULL, '流量', 0, 1, 0, '2019-04-03 01:04:48', '2019-04-03 01:04:48');
INSERT INTO `order_master` VALUES ('1554960904728231375', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, '2234556', '2234556', '2234556', '', 4, 1, 1, '2019-04-11 13:35:05', '2019-04-11 13:35:05');
INSERT INTO `order_master` VALUES ('1554960905308818456', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, '2234556', '2234556', '2234556', '', 4, 1, 1, '2019-04-11 13:35:05', '2019-04-11 13:35:05');
INSERT INTO `order_master` VALUES ('1554964799166618411', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 20.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-11 14:39:59', '2019-04-11 14:39:59');
INSERT INTO `order_master` VALUES ('1554964802325769128', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 20.00, NULL, NULL, NULL, NULL, 3, 0, 2, '2019-04-11 14:40:02', '2019-04-11 14:40:02');
INSERT INTO `order_master` VALUES ('1554964825935504744', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 25.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-11 14:40:26', '2019-04-11 14:40:26');
INSERT INTO `order_master` VALUES ('1554964851026915091', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 12.00, NULL, NULL, NULL, '', 4, 1, 0, '2019-04-11 14:40:51', '2019-04-11 14:40:51');
INSERT INTO `order_master` VALUES ('1554964851204734762', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 4, 1, 0, '2019-04-11 14:40:51', '2019-04-11 14:40:51');
INSERT INTO `order_master` VALUES ('1554964851970611681', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 12.00, NULL, NULL, NULL, '', 4, 1, 0, '2019-04-11 14:40:52', '2019-04-11 14:40:52');
INSERT INTO `order_master` VALUES ('1554964852148642403', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 4, 1, 0, '2019-04-11 14:40:52', '2019-04-11 14:40:52');
INSERT INTO `order_master` VALUES ('1554964897047475861', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 4, 1, 0, '2019-04-11 14:41:37', '2019-04-11 14:41:37');
INSERT INTO `order_master` VALUES ('1554967073446465131', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-04-11 15:17:53', '2019-04-11 15:17:53');
INSERT INTO `order_master` VALUES ('1554967077149341602', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-04-11 15:17:57', '2019-04-11 15:17:57');
INSERT INTO `order_master` VALUES ('1554967100706251766', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 20.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-11 15:18:21', '2019-04-11 15:18:21');
INSERT INTO `order_master` VALUES ('1554967101385188757', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 20.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-11 15:18:21', '2019-04-11 15:18:21');
INSERT INTO `order_master` VALUES ('1554967115166489846', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 0, 1, 1, '2019-04-11 15:18:35', '2019-04-11 15:18:35');
INSERT INTO `order_master` VALUES ('1554967121963680992', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75VFYOLgZ2wZAKZ5yWi4S8gA', 5.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-04-11 15:18:42', '2019-04-11 15:18:42');
INSERT INTO `order_master` VALUES ('1554967143093250725', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 7.00, '陈州陈州高级中学&amp;lt;新淮中&amp;gt;', '陈州陈州高级中学&amp;lt;新淮中&amp;gt;', '陈州陈州高级中学&amp;lt;新淮中&amp;gt;', '', 0, 0, 1, '2019-04-11 15:19:03', '2019-04-11 15:19:03');
INSERT INTO `order_master` VALUES ('1554967164663560812', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 10.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-11 15:19:25', '2019-04-11 15:19:25');
INSERT INTO `order_master` VALUES ('1555210919828419086', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 10.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-14 11:02:00', '2019-04-14 11:02:00');
INSERT INTO `order_master` VALUES ('1555210920439342824', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 10.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-14 11:02:01', '2019-04-14 11:02:01');
INSERT INTO `order_master` VALUES ('1555211054946442785', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, '六号楼336', '六号楼336', '六号楼336', '', 0, 1, 1, '2019-04-14 11:04:15', '2019-04-14 11:04:15');
INSERT INTO `order_master` VALUES ('1555211453361339453', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 7.00, '6号楼336', '6号楼336', '6号楼336', '', 0, 1, 1, '2019-04-14 11:10:54', '2019-04-14 11:10:54');
INSERT INTO `order_master` VALUES ('1555211453435855700', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '4', 4, '烤肉饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, '6号楼336', '6号楼336', '6号楼336', '', 4, 1, 1, '2019-04-14 11:10:54', '2019-04-14 11:10:54');
INSERT INTO `order_master` VALUES ('1555211552020205467', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, '1', '1', '1', '', 0, 1, 1, '2019-04-14 11:12:32', '2019-04-14 11:12:32');
INSERT INTO `order_master` VALUES ('1555391141306793774', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, '陈州陈州高级中学&amp;lt;新淮中&amp;gt;', '陈州陈州高级中学&amp;lt;新淮中&amp;gt;', '陈州陈州高级中学&amp;lt;新淮中&amp;gt;', '', 3, 1, 1, '2019-04-16 13:05:41', '2019-04-16 13:05:41');
INSERT INTO `order_master` VALUES ('1555391141394234528', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, '陈州陈州高级中学&amp;lt;新淮中&amp;gt;', '陈州陈州高级中学&amp;lt;新淮中&amp;gt;', '陈州陈州高级中学&amp;lt;新淮中&amp;gt;', '', 0, 1, 1, '2019-04-16 13:05:41', '2019-04-16 13:05:41');
INSERT INTO `order_master` VALUES ('1555416499444895476', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-16 20:08:19', '2019-04-16 20:08:19');
INSERT INTO `order_master` VALUES ('1555417471746210046', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-16 20:24:32', '2019-04-16 20:24:32');
INSERT INTO `order_master` VALUES ('1555419547084606042', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-16 20:59:07', '2019-04-16 20:59:07');
INSERT INTO `order_master` VALUES ('1555419873455578609', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-16 21:04:33', '2019-04-16 21:04:33');
INSERT INTO `order_master` VALUES ('1555420108275623837', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-16 21:08:28', '2019-04-16 21:08:28');
INSERT INTO `order_master` VALUES ('1555420108442504986', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-16 21:08:28', '2019-04-16 21:08:28');
INSERT INTO `order_master` VALUES ('1555517198225694149', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 785.00, '新港中路397号', '新港中路397号', '新港中路397号', '', 3, 1, 1, '2019-04-18 00:09:57', '2019-04-19 23:36:41');
INSERT INTO `order_master` VALUES ('1555570855342246619', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, '6号楼336', '6号楼336', '6号楼336', '', 1, 1, 1, '2019-04-18 15:04:14', '2019-04-18 15:04:14');
INSERT INTO `order_master` VALUES ('1555579845913787664', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 10.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-18 17:34:04', '2019-04-18 17:34:04');
INSERT INTO `order_master` VALUES ('1555579884537186756', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-18 17:34:43', '2019-04-18 17:34:43');
INSERT INTO `order_master` VALUES ('1555593537419557652', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 1, 1, 1, '2019-04-18 21:22:16', '2019-04-18 21:22:16');
INSERT INTO `order_master` VALUES ('1555593567700235944', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-18 21:22:46', '2019-04-18 21:22:46');
INSERT INTO `order_master` VALUES ('1555593567764193772', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-18 21:22:46', '2019-04-18 21:22:46');
INSERT INTO `order_master` VALUES ('1555593567822468107', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 7.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-04-18 21:22:46', '2019-04-18 21:22:46');
INSERT INTO `order_master` VALUES ('1555593672443918550', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-18 21:24:31', '2019-04-18 21:24:31');
INSERT INTO `order_master` VALUES ('1555597396485563337', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-18 22:26:35', '2019-04-18 22:26:35');
INSERT INTO `order_master` VALUES ('1555597427905434128', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-18 22:27:06', '2019-04-18 22:27:06');
INSERT INTO `order_master` VALUES ('1555597703816723963', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 10.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-18 22:31:42', '2019-04-18 22:31:42');
INSERT INTO `order_master` VALUES ('1555597825501807703', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-18 22:33:44', '2019-04-18 22:33:44');
INSERT INTO `order_master` VALUES ('1555597904374234496', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 10.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-18 22:35:03', '2019-04-18 22:35:03');
INSERT INTO `order_master` VALUES ('1555597948328434636', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-18 22:35:47', '2019-04-18 22:35:47');
INSERT INTO `order_master` VALUES ('1555599408294751480', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-18 23:00:07', '2019-04-18 23:00:07');
INSERT INTO `order_master` VALUES ('1555599448108582562', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-18 23:00:47', '2019-04-18 23:00:47');
INSERT INTO `order_master` VALUES ('1555599448169680035', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-18 23:00:47', '2019-04-18 23:00:47');
INSERT INTO `order_master` VALUES ('1555599460599162262', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-18 23:00:59', '2019-04-18 23:00:59');
INSERT INTO `order_master` VALUES ('1555599460661514453', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 8.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-18 23:00:59', '2019-04-18 23:00:59');
INSERT INTO `order_master` VALUES ('1555683112642271002', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-19 22:11:52', '2019-04-19 22:11:52');
INSERT INTO `order_master` VALUES ('1555683688430804774', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-19 22:21:28', '2019-04-19 22:21:28');
INSERT INTO `order_master` VALUES ('1555683709029807985', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 10.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-19 22:21:49', '2019-04-19 22:21:49');
INSERT INTO `order_master` VALUES ('1555683745512205125', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 12.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 1, 1, 1, '2019-04-19 22:22:25', '2019-04-19 22:22:25');
INSERT INTO `order_master` VALUES ('1555726381728295649', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75VFYOLgZ2wZAKZ5yWi4S8gA', 25.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-20 10:13:01', '2019-04-20 10:13:01');
INSERT INTO `order_master` VALUES ('1555726405284358284', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 40.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-20 10:13:25', '2019-04-20 10:13:25');
INSERT INTO `order_master` VALUES ('1555726422643926975', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75VFYOLgZ2wZAKZ5yWi4S8gA', 143.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-20 10:13:42', '2019-04-20 10:13:42');
INSERT INTO `order_master` VALUES ('1555726446318898779', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 61.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 3, 1, 1, '2019-04-20 10:14:06', '2019-04-20 10:14:06');
INSERT INTO `order_master` VALUES ('1555726468342500579', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:28', '2019-04-20 10:14:28');
INSERT INTO `order_master` VALUES ('1555726468353247812', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:28', '2019-04-20 10:14:28');
INSERT INTO `order_master` VALUES ('1555726468361932903', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:28', '2019-04-20 10:14:28');
INSERT INTO `order_master` VALUES ('1555726468370136951', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '8', 8, '烧包鸭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 11.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:28', '2019-04-20 10:14:28');
INSERT INTO `order_master` VALUES ('1555726471369635748', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:31', '2019-04-20 10:14:31');
INSERT INTO `order_master` VALUES ('1555726471386169021', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:31', '2019-04-20 10:14:31');
INSERT INTO `order_master` VALUES ('1555726471394123105', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:31', '2019-04-20 10:14:31');
INSERT INTO `order_master` VALUES ('1555726471403166200', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '8', 8, '烧包鸭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 11.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:31', '2019-04-20 10:14:31');
INSERT INTO `order_master` VALUES ('1555726472517281618', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:32', '2019-04-20 10:14:32');
INSERT INTO `order_master` VALUES ('1555726472531597258', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:32', '2019-04-20 10:14:32');
INSERT INTO `order_master` VALUES ('1555726472543712084', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:32', '2019-04-20 10:14:32');
INSERT INTO `order_master` VALUES ('1555726472554303668', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '8', 8, '烧包鸭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 11.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:32', '2019-04-20 10:14:32');
INSERT INTO `order_master` VALUES ('1555726474432181964', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:34', '2019-04-20 10:14:34');
INSERT INTO `order_master` VALUES ('1555726474449771667', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:34', '2019-04-20 10:14:34');
INSERT INTO `order_master` VALUES ('1555726474458581608', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:34', '2019-04-20 10:14:34');
INSERT INTO `order_master` VALUES ('1555726474467230066', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '8', 8, '烧包鸭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 11.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:34', '2019-04-20 10:14:34');
INSERT INTO `order_master` VALUES ('1555726475422557092', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:35', '2019-04-20 10:14:35');
INSERT INTO `order_master` VALUES ('1555726475436349116', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:35', '2019-04-20 10:14:35');
INSERT INTO `order_master` VALUES ('1555726475444639195', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:35', '2019-04-20 10:14:35');
INSERT INTO `order_master` VALUES ('1555726475452591372', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '8', 8, '烧包鸭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 11.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:35', '2019-04-20 10:14:35');
INSERT INTO `order_master` VALUES ('1555726476346234691', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:36', '2019-04-20 10:14:36');
INSERT INTO `order_master` VALUES ('1555726476364760532', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:36', '2019-04-20 10:14:36');
INSERT INTO `order_master` VALUES ('1555726476373470690', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:36', '2019-04-20 10:14:36');
INSERT INTO `order_master` VALUES ('1555726476381862983', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '8', 8, '烧包鸭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 11.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:36', '2019-04-20 10:14:36');
INSERT INTO `order_master` VALUES ('1555726486423578668', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:46', '2019-04-20 10:14:46');
INSERT INTO `order_master` VALUES ('1555726486437470098', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:46', '2019-04-20 10:14:46');
INSERT INTO `order_master` VALUES ('1555726486446877221', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:46', '2019-04-20 10:14:46');
INSERT INTO `order_master` VALUES ('1555726486454728707', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '8', 8, '烧包鸭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 11.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:46', '2019-04-20 10:14:46');
INSERT INTO `order_master` VALUES ('1555726487391816073', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:47', '2019-04-20 10:14:47');
INSERT INTO `order_master` VALUES ('1555726487432617327', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:47', '2019-04-20 10:14:47');
INSERT INTO `order_master` VALUES ('1555726487440988560', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:47', '2019-04-20 10:14:47');
INSERT INTO `order_master` VALUES ('1555726487448901358', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '8', 8, '烧包鸭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 11.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:14:47', '2019-04-20 10:14:47');
INSERT INTO `order_master` VALUES ('1555726500119287766', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75VFYOLgZ2wZAKZ5yWi4S8gA', 48.00, '郑州轻工业大学科学校区', '郑州轻工业大学科学校区', '郑州轻工业大学科学校区', '', 0, 1, 1, '2019-04-20 10:15:00', '2019-04-20 10:15:00');
INSERT INTO `order_master` VALUES ('1555726501931451381', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:01', '2019-04-20 10:15:01');
INSERT INTO `order_master` VALUES ('1555726501945329816', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:01', '2019-04-20 10:15:01');
INSERT INTO `order_master` VALUES ('1555726501954594207', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:01', '2019-04-20 10:15:01');
INSERT INTO `order_master` VALUES ('1555726501962976279', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '8', 8, '烧包鸭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 11.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:02', '2019-04-20 10:15:02');
INSERT INTO `order_master` VALUES ('1555726504325267384', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:04', '2019-04-20 10:15:04');
INSERT INTO `order_master` VALUES ('1555726504344953383', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:04', '2019-04-20 10:15:04');
INSERT INTO `order_master` VALUES ('1555726504355887991', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:04', '2019-04-20 10:15:04');
INSERT INTO `order_master` VALUES ('1555726504364803576', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '8', 8, '烧包鸭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 11.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:04', '2019-04-20 10:15:04');
INSERT INTO `order_master` VALUES ('1555726525353457649', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:25', '2019-04-20 10:15:25');
INSERT INTO `order_master` VALUES ('1555726525383824325', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:25', '2019-04-20 10:15:25');
INSERT INTO `order_master` VALUES ('1555726525392248726', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:25', '2019-04-20 10:15:25');
INSERT INTO `order_master` VALUES ('1555726525407158122', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '8', 8, '烧包鸭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 11.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:25', '2019-04-20 10:15:25');
INSERT INTO `order_master` VALUES ('1555726526331653243', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75QIml3KVkmyReUX-KPz5emE', 5.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:26', '2019-04-20 10:15:26');
INSERT INTO `order_master` VALUES ('1555726526347908553', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '5', 5, '麻辣香锅', 'oD2B75QIml3KVkmyReUX-KPz5emE', 19.90, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:26', '2019-04-20 10:15:26');
INSERT INTO `order_master` VALUES ('1555726526356396707', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '2', 2, '黄焖鸡米饭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 8.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:26', '2019-04-20 10:15:26');
INSERT INTO `order_master` VALUES ('1555726526364171320', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '8', 8, '烧包鸭', 'oD2B75QIml3KVkmyReUX-KPz5emE', 11.00, NULL, NULL, NULL, '', 0, 0, 0, '2019-04-20 10:15:26', '2019-04-20 10:15:26');
INSERT INTO `order_master` VALUES ('1555727686051881141', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-20 10:34:46', '2019-04-20 10:34:46');
INSERT INTO `order_master` VALUES ('1555727712415356564', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 13.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 0, 1, 1, '2019-04-20 10:35:12', '2019-04-20 10:35:12');
INSERT INTO `order_master` VALUES ('1555727733452929393', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 10.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-20 10:35:33', '2019-04-20 10:35:33');
INSERT INTO `order_master` VALUES ('1555727772177984058', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 5.00, NULL, NULL, NULL, '', 0, 1, 0, '2019-04-20 10:36:12', '2019-04-20 10:36:12');
INSERT INTO `order_master` VALUES ('1555738754428572838', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 10.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-20 13:39:14', '2019-04-20 13:39:14');
INSERT INTO `order_master` VALUES ('1555738781952752605', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 30.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 1, 1, 1, '2019-04-20 13:39:41', '2019-04-20 13:39:41');
INSERT INTO `order_master` VALUES ('1555738799318468602', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75VFYOLgZ2wZAKZ5yWi4S8gA', 7.00, '郑州轻工业大学科学校区', '郑州轻工业大学科学校区', '郑州轻工业大学科学校区', '', 1, 1, 1, '2019-04-20 13:39:59', '2019-04-20 13:39:59');
INSERT INTO `order_master` VALUES ('1555738801338673899', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 13.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-20 13:40:01', '2019-04-20 13:40:01');
INSERT INTO `order_master` VALUES ('1555738990974683393', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 10.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-20 13:43:10', '2019-04-20 13:43:10');
INSERT INTO `order_master` VALUES ('1555738991854394600', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75VFYOLgZ2wZAKZ5yWi4S8gA', 10.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-20 13:43:11', '2019-04-20 13:43:11');
INSERT INTO `order_master` VALUES ('1555739019426907405', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 18.00, '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '科学大道郑州轻工业大学三号公寓楼', '', 1, 1, 1, '2019-04-20 13:43:39', '2019-04-20 13:43:39');
INSERT INTO `order_master` VALUES ('1555739020320474724', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75VFYOLgZ2wZAKZ5yWi4S8gA', 18.00, '郑州轻工业大学科学校区', '郑州轻工业大学科学校区', '郑州轻工业大学科学校区', '', 3, 1, 1, '2019-04-20 13:43:40', '2019-04-20 13:43:40');
INSERT INTO `order_master` VALUES ('1555739056422602761', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75bPiaBaM9NI1xvxtgjEaaIw', 17.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-20 13:44:16', '2019-04-20 13:44:16');
INSERT INTO `order_master` VALUES ('1555739062650640513', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '1', 1, '陕西老碗面', 'oD2B75VFYOLgZ2wZAKZ5yWi4S8gA', 18.00, NULL, NULL, NULL, '', 1, 1, 0, '2019-04-20 13:44:22', '2019-04-20 13:44:22');
INSERT INTO `order_master` VALUES ('1555740839533537059', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', '3', 3, '陕西裤带面', 'oD2B75VFYOLgZ2wZAKZ5yWi4S8gA', 10.00, NULL, NULL, NULL, NULL, 3, 1, 2, '2019-04-20 14:13:59', '2019-04-20 14:13:59');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品id\r\n',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品图标',
  `sale` int(32) NULL DEFAULT 0 COMMENT '销售量',
  `stock` int(5) NULL DEFAULT 0 COMMENT '商品库存',
  `price` decimal(10, 2) NOT NULL COMMENT '销售价格',
  `store_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商家id\r\n',
  `sales_volume` int(255) NULL DEFAULT 0 COMMENT '销售量',
  `status` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '未上架' COMMENT '上架状态',
  `descript` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1155569394306616401', '大骨汤面', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/dagumian.png', 44, 811, 5.00, '1', 44, '已上架', NULL);
INSERT INTO `product` VALUES ('1555693943066164012', '陕西裤带面', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kudaimian.jpg', 2, 876, 7.00, '3', 2, '已上架', NULL);
INSERT INTO `product` VALUES ('1555693943066164013', '鸡蛋炒刀削', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/chaodaoxiao.png', 8, 831, 7.00, '7', 8, '已上架', NULL);
INSERT INTO `product` VALUES ('1555693943066164014', '小份黄焖鸡', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/huangmenji.png', 16, 8771, 8.00, '2', 16, '已上架', NULL);
INSERT INTO `product` VALUES ('1555693943066164015', '沙拉烤肉饭', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/kaoroufan.png', 0, 884, 8.00, '4', 7, '已上架', NULL);
INSERT INTO `product` VALUES ('1555693943066164016', '麻辣香锅', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/malaxiangguo.png', 22, 872, 19.90, '5', 22, '已上架', NULL);
INSERT INTO `product` VALUES ('1555693943066164017', '煲仔饭', 'https://s2.ax1x.com/2019/04/20/E9LjmR.th.png', 0, 999, 10.00, '4', 0, '上架', '好吃的煲仔饭');
INSERT INTO `product` VALUES ('1555724504032849808', '老碗牛肉面', 'https://s2.ax1x.com/2019/04/20/ECPi5j.th.png', 21, 978, 8.00, '1', 21, '上架', '好吃的老碗牛肉面');
INSERT INTO `product` VALUES ('1555725038230767675', '老碗排骨面', 'https://s2.ax1x.com/2019/04/20/ECPxY9.th.jpg', 21, 978, 10.00, '1', 21, '上架', '美味老碗排骨面');
INSERT INTO `product` VALUES ('1555725378229535808', '老碗酸菜面', 'https://s2.ax1x.com/2019/04/20/ECixHS.th.png', 9, 990, 7.00, '1', 9, '上架', '好吃');
INSERT INTO `product` VALUES ('1555725774768507858', '广东炒河粉', 'https://s2.ax1x.com/2019/04/20/ECk8Rs.th.png', 0, 999, 7.00, '6', 0, '上架', '好吃');
INSERT INTO `product` VALUES ('1555726025261266451', '招牌烧包鸭', 'https://s2.ax1x.com/2019/04/20/ECAefJ.th.jpg', 12, 987, 11.00, '8', 12, '上架', '好吃的烧包鸭');
INSERT INTO `product` VALUES ('1555726240732518169', '土豆粉砂锅', 'https://s2.ax1x.com/2019/04/20/ECAOj1.th.jpg', 0, 999, 9.00, '9', 0, '上架', '砂锅老李家');

-- ----------------------------
-- Table structure for restaurant
-- ----------------------------
DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE `restaurant`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `linkman` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0营业 1休息 2关闭',
  `start_time` time(0) NOT NULL DEFAULT '08:00:00' COMMENT '开始营业时间',
  `end_time` time(0) NOT NULL DEFAULT '22:00:00' COMMENT '结束营业时间',
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lng` double(13, 8) NOT NULL COMMENT '经度',
  `lat` double(13, 8) NOT NULL COMMENT '维度',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_time` int(3) NULL DEFAULT 30 COMMENT '单位为分钟',
  `send_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '配送费',
  `notice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of restaurant
-- ----------------------------
INSERT INTO `restaurant` VALUES ('1', '清大餐厅', '1', '1', 1, '08:00:00', '22:00:00', '无', '1', 1.00000000, 1.00000000, '', 30, 0.00, NULL);
INSERT INTO `restaurant` VALUES ('2', '馨园餐厅', '18848827276', '幸子', 1, '08:00:00', '22:00:00', '河南省郑州市中原区', '郑州轻工业大学', 113.50942000, 34.81087000, '', 30, 0.00, NULL);
INSERT INTO `restaurant` VALUES ('3', '湘鄂情餐厅', '17737119409', '幸子', 1, '10:00:00', '22:00:00', '河南省郑州市中原区', '郑州轻工业大学', 113.79532239, 34.78128508, 'https://edkso.mynatapp.cc/candiandian/img/restrurant/avatar/zhouleshan.jpg', 30, 0.00, '乐善好施，东西便宜');

-- ----------------------------
-- Table structure for restaurant_img
-- ----------------------------
DROP TABLE IF EXISTS `restaurant_img`;
CREATE TABLE `restaurant_img`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `restaurant_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of restaurant_img
-- ----------------------------
INSERT INTO `restaurant_img` VALUES ('1', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/img/xiaoxiecanting1.jpg');
INSERT INTO `restaurant_img` VALUES ('2', '3', 'https://edkso.mynatapp.cc/candiandian/img/restrurant/img/xiaoxiecanting2.jpg');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺id',
  `number` int(11) NULL DEFAULT NULL COMMENT '店铺号',
  `username` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码（md5）',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺名',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `linkman` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0未开通（默认） 1开通',
  `restaurant_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '餐厅编号',
  `register_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES ('1', 1, '1', 'c4ca4238a0b923820dcc509a6f75849b', '陕西老碗面', '110', '李三金', 1, '3', '2019-04-11 20:28:33');
INSERT INTO `store` VALUES ('2', 2, '2', 'c81e728d9d4c2f636f067f89cc14862c', '黄焖鸡米饭', '110', '郭凯为', 1, '3', '2019-04-11 20:28:33');
INSERT INTO `store` VALUES ('3', 3, '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '陕西裤带面', '3', '3', 1, '3', '2019-04-11 20:28:33');
INSERT INTO `store` VALUES ('4', 4, '4', 'a87ff679a2f3e71d9181a67b7542122c', '烤肉饭', '4', '4', 1, '3', '2019-04-11 20:28:33');
INSERT INTO `store` VALUES ('5', 5, '5', 'e4da3b7fbbce2345d7772b0674a318d5', '麻辣香锅', '5', '5', 1, '3', '2019-04-11 20:28:33');
INSERT INTO `store` VALUES ('6', 6, '6', '1679091c5a880faf6fb5e6087eb1b2dc', '炒河粉', '6', '6', 1, '3', '2019-04-11 20:28:33');
INSERT INTO `store` VALUES ('7', 7, '7', '8f14e45fceea167a5a36dedd4bea2543', '山西刀削面', '7', '7', 1, '3', '2019-04-11 20:28:33');
INSERT INTO `store` VALUES ('8', 8, '8', 'c9f0f895fb98ab9159f51fd0297e236d', '烧包鸭', '8', '8', 1, '3', '2019-04-11 20:28:33');
INSERT INTO `store` VALUES ('9', 9, '9', '45c48cce2e2d7fbdea1afc51c7c6ad26', '老李砂锅', '9', '9', 1, '3', '2019-04-11 20:28:33');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `open_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户微信标识',
  `nick_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信昵称',
  `avatar_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信头像',
  `gender` tinyint(3) NULL DEFAULT NULL COMMENT '性别',
  `country` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家',
  `province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `authen_code` tinyint(3) NOT NULL DEFAULT 0 COMMENT '认证状态（0未认证，1认证中，2认证成功）',
  `aimg1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生证正面照片',
  `aimg2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生证反面照片',
  `profit` decimal(10, 0) NULL DEFAULT 0 COMMENT '收益',
  PRIMARY KEY (`open_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('edkso', '乌苏', NULL, 1, '中国', '河南省', '郑州市', 0, NULL, NULL, 0);
INSERT INTO `user` VALUES ('edkso2', NULL, NULL, 2, NULL, NULL, NULL, 0, NULL, NULL, 0);
INSERT INTO `user` VALUES ('oD2B75aPSJkYGMuBnYN0hH0Zv_HQ', 'A古一', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIwOTsYEooKMZKBHqviab2dYaQgRsxibwZFoVIxTqZNPAVfJVawynneCooR16Y1I86TSgSv2FrzK0Fw/132', 1, 'China', 'Henan', 'Zhengzhou', 0, NULL, NULL, 0);
INSERT INTO `user` VALUES ('oD2B75bPiaBaM9NI1xvxtgjEaaIw', '1112', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eorlRs6xXZLs4Of6HQT4YL2G9fYGRhL2Udk1eC5zSOdbP8z1nou5Nia6quUgqxWmooBKl29RdoCDNg/132', 1, 'China', 'Henan', 'Zhengzhou', 0, NULL, NULL, 0);
INSERT INTO `user` VALUES ('oD2B75QIml3KVkmyReUX-KPz5emE', '翩翩少年', 'https://wx.qlogo.cn/mmopen/vi_32/g2EeSDdHytSzM2vLngbEeT2Ye3GMplql2lA6JpgnfqqIbuyxXGh8RypBxtVmfbZtibU918VFjNq4UicfSpI38Mxg/132', 0, '', '', '', 0, NULL, NULL, 0);
INSERT INTO `user` VALUES ('oD2B75UXJ3fBhGGudLLzGbS6xkF8', '郭凯威', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKgNQbtic3oYSUFnIRzDsGMbibw7tgbiaGM0B0RQg9Zq5FiaB0iaLwr6pqpSYp6ptFxMPtwrVnKajFVLAg/132', 1, 'China', 'Henan', 'Zhoukou', 0, NULL, NULL, 0);
INSERT INTO `user` VALUES ('oD2B75VFYOLgZ2wZAKZ5yWi4S8gA', '吹衣', 'https://wx.qlogo.cn/mmopen/vi_32/6gRNnc6ibDHxnbqfmWVM7ePSsqlguqlFanAMWEEBbJWdUkofaMfEB47RYUPmLuKNUJmmiaMdicOGib95IDgK7ZmZJw/132', 1, 'Andorra', '', '', 0, NULL, NULL, 0);
INSERT INTO `user` VALUES ('oD2B75Wo_cfk8zGzTPOlfSPYVObU', '江月', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKtuib49VssclE1s2mvTc0VT2ibX9fpNdLCHymwj0z5g3HTQv519Cy3uyq6jYCicB1O6aibNZrYPGIiatA/132', 1, 'China', 'Henan', 'Xinyang', 0, NULL, NULL, 0);
INSERT INTO `user` VALUES ('oD2B75YXrem_WC-CsqJaZAPXgwBY', '不染', 'https://wx.qlogo.cn/mmopen/vi_32/IwtibgD5j5q1ibwR3E0fX4woe6RicUkicicicSc4HuHzTrjaRB4s9JDqSicgdBR1thJBLqibeNwWQAXBZmNTAa54ibLV7KQ/132', 1, 'China', 'Henan', 'Zhengzhou', 0, NULL, NULL, 0);
INSERT INTO `user` VALUES ('oD2B75ZSW8YM3r-EVJIVHzmBJ4T8', '泡沫', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq8Pu4XpTRQ9iaurPdYRGH1sWcApYfSH4ORpxkepzV31cwlpssxU71xsuW5Rh0tLlKNpELRfYqrjZg/132', 1, 'Poland', '', '', 0, NULL, NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
