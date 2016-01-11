/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : proje

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-01-11 09:57:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adresler
-- ----------------------------
DROP TABLE IF EXISTS `adresler`;
CREATE TABLE `adresler` (
  `adresID` int(11) NOT NULL AUTO_INCREMENT,
  `musteriID` int(11) DEFAULT NULL,
  `adresBaslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `postaKodu` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ilce` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `il` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`adresID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of adresler
-- ----------------------------
INSERT INTO `adresler` VALUES ('4', '2', 'is', 'Cumhuriyet Mah. Nergis Sk. No:20/11', '34920', 'K.Cekmece', 'Istanbul', '2016-01-06 11:11:13');

-- ----------------------------
-- Table structure for anket
-- ----------------------------
DROP TABLE IF EXISTS `anket`;
CREATE TABLE `anket` (
  `anket_id` int(11) NOT NULL,
  `durum` tinyint(1) NOT NULL,
  `oy` int(11) NOT NULL,
  `tarih` date NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of anket
-- ----------------------------
INSERT INTO `anket` VALUES ('3', '1', '0', '2016-01-07', 'Oldu mu');
INSERT INTO `anket` VALUES ('4', '1', '0', '2016-01-07', 'asdasda');
INSERT INTO `anket` VALUES ('5', '1', '0', '2016-01-07', 'asdasda');
INSERT INTO `anket` VALUES ('6', '1', '0', '2016-01-07', 'Deneme');
INSERT INTO `anket` VALUES ('7', '1', '0', '2016-01-07', 'heyy');
INSERT INTO `anket` VALUES ('10', '1', '0', '2016-01-07', 'asa');
INSERT INTO `anket` VALUES ('11', '1', '0', '2016-01-07', 'tatatattttttt');
INSERT INTO `anket` VALUES ('12', '1', '0', '2016-01-07', 'Guncelleme Oldu Mu');
INSERT INTO `anket` VALUES ('13', '1', '0', '2016-01-07', 'Oldumuki?');
INSERT INTO `anket` VALUES ('14', '1', '0', '2016-01-07', 'asddddd');
INSERT INTO `anket` VALUES ('15', '1', '0', '2016-01-07', 'sdsdsf');
INSERT INTO `anket` VALUES ('16', '1', '0', '2016-01-07', 'gdfggd');
INSERT INTO `anket` VALUES ('17', '1', '0', '2016-01-07', 'Anket Kaydi');
INSERT INTO `anket` VALUES ('18', '1', '0', '2016-01-07', 'Denemedi Demem');

-- ----------------------------
-- Table structure for begeniyonetim
-- ----------------------------
DROP TABLE IF EXISTS `begeniyonetim`;
CREATE TABLE `begeniyonetim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `musteri_id` int(11) DEFAULT NULL,
  `urun_id` int(11) DEFAULT NULL,
  `puan` int(11) DEFAULT NULL,
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `urun_ID` (`urun_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of begeniyonetim
-- ----------------------------
INSERT INTO `begeniyonetim` VALUES ('1', '1', '2', '3', '2016-01-05 12:34:40');
INSERT INTO `begeniyonetim` VALUES ('2', '1', '3', '2', '2016-01-05 12:34:50');
INSERT INTO `begeniyonetim` VALUES ('3', '2', '4', '3', '2016-01-05 12:35:08');

-- ----------------------------
-- Table structure for duyurular
-- ----------------------------
DROP TABLE IF EXISTS `duyurular`;
CREATE TABLE `duyurular` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durum` tinyint(1) NOT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `detay` text COLLATE utf8_turkish_ci NOT NULL,
  `tarih` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `baslik` (`baslik`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of duyurular
-- ----------------------------
INSERT INTO `duyurular` VALUES ('34', '1', 'Yeni Sezon Indirimi Basladi', '<p>Lorem Ipsum</p>\r\n', '2016-01-06 16:02:29');
INSERT INTO `duyurular` VALUES ('35', '1', 'Tüm Magazalarimizda SR-5645 Nolu Urun Satilmaya Baslanacaktir', '<p>Lorem Ipsum</p>\r\n', '2016-01-06 16:04:18');
INSERT INTO `duyurular` VALUES ('36', '0', '1 Ocak Tatil Edilmistir', '<p>Lorem Ipsum</p>\r\n', '2016-01-06 16:05:01');

-- ----------------------------
-- Table structure for galeriler
-- ----------------------------
DROP TABLE IF EXISTS `galeriler`;
CREATE TABLE `galeriler` (
  `galeriID` int(11) NOT NULL AUTO_INCREMENT,
  `galeriAdi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `galeriAciklamasi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `galeriDurumu` tinyint(1) DEFAULT NULL,
  `olusturulmaTarihi` date DEFAULT NULL,
  PRIMARY KEY (`galeriID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of galeriler
-- ----------------------------
INSERT INTO `galeriler` VALUES ('36', 'utyu', 'utyut', '1', '2016-01-06');
INSERT INTO `galeriler` VALUES ('38', 'Bursa', 'Bursa Tarhi', '0', '2016-01-06');

-- ----------------------------
-- Table structure for galeri_resimleri
-- ----------------------------
DROP TABLE IF EXISTS `galeri_resimleri`;
CREATE TABLE `galeri_resimleri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urun_id` int(11) NOT NULL,
  `adi` varchar(500) COLLATE utf8_bin NOT NULL,
  `klasor` varchar(500) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of galeri_resimleri
-- ----------------------------
INSERT INTO `galeri_resimleri` VALUES ('56', '38', '38_61981491 (11).jpg', '38');
INSERT INTO `galeri_resimleri` VALUES ('57', '38', '38_228373071 (12).jpg', '38');
INSERT INTO `galeri_resimleri` VALUES ('52', '38', '38_119789981 (7).jpg', '38');
INSERT INTO `galeri_resimleri` VALUES ('53', '38', '38_70375691 (8).jpg', '38');
INSERT INTO `galeri_resimleri` VALUES ('54', '38', '38_152252781 (9).jpg', '38');
INSERT INTO `galeri_resimleri` VALUES ('55', '38', '38_28058701 (10).jpg', '38');
INSERT INTO `galeri_resimleri` VALUES ('50', '38', '38_133781321 (4).jpg', '38');
INSERT INTO `galeri_resimleri` VALUES ('51', '38', '38_129495011 (6).jpg', '38');
INSERT INTO `galeri_resimleri` VALUES ('49', '38', '38_294578501 (5).jpg', '38');
INSERT INTO `galeri_resimleri` VALUES ('46', '38', '38_35839551 (1).jpg', '38');
INSERT INTO `galeri_resimleri` VALUES ('47', '38', '38_114668491 (2).jpg', '38');
INSERT INTO `galeri_resimleri` VALUES ('48', '38', '38_195333381 (3).jpg', '38');
INSERT INTO `galeri_resimleri` VALUES ('58', '36', '36_131235821 (8).jpg', '36');

-- ----------------------------
-- Table structure for havale
-- ----------------------------
DROP TABLE IF EXISTS `havale`;
CREATE TABLE `havale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of havale
-- ----------------------------
INSERT INTO `havale` VALUES ('1', '<p>asddd</p>\r\n');

-- ----------------------------
-- Table structure for icerik
-- ----------------------------
DROP TABLE IF EXISTS `icerik`;
CREATE TABLE `icerik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durum` tinyint(5) DEFAULT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kisaAciklama` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `detay` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of icerik
-- ----------------------------
INSERT INTO `icerik` VALUES ('1', '1', 'Hakkimizda', 'hakkımızda', 'SADGV', '2016-01-19 09:20:56');
INSERT INTO `icerik` VALUES ('2', '1', 'Sorular', 'AFDWD', '<p>WAEFWQRT</p>\r\n', '2016-01-07 09:23:12');
INSERT INTO `icerik` VALUES ('3', '1', 'Kosullar', 'asd', 'ad', '2016-01-07 14:40:02');

-- ----------------------------
-- Table structure for kargo
-- ----------------------------
DROP TABLE IF EXISTS `kargo`;
CREATE TABLE `kargo` (
  `kargo_id` int(11) NOT NULL AUTO_INCREMENT,
  `kargo_adi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ucreti` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`kargo_id`),
  UNIQUE KEY `kargoAd` (`kargo_adi`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of kargo
-- ----------------------------
INSERT INTO `kargo` VALUES ('1', 'MNG Kargo', '4.00', '2016-01-06 13:13:51');
INSERT INTO `kargo` VALUES ('2', 'Aras Kargo', '6.00', '2016-01-06 13:14:07');
INSERT INTO `kargo` VALUES ('6', 'Yurtici Kargo', '4.00', '2016-01-06 21:50:18');
INSERT INTO `kargo` VALUES ('9', 'Surat Kargo', '5.00', '2016-01-06 21:57:00');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `katID` int(11) NOT NULL AUTO_INCREMENT,
  `ustKat` int(11) NOT NULL,
  `katAdi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `katTarih` datetime NOT NULL,
  PRIMARY KEY (`katID`),
  UNIQUE KEY `katAdi` (`katAdi`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES ('1', '0', 'Beyaz Eşya', '2016-01-04 06:12:24');
INSERT INTO `kategori` VALUES ('2', '0', 'Tekstil', '2016-01-04 06:12:24');
INSERT INTO `kategori` VALUES ('3', '0', 'Çocuk', '2016-01-04 10:37:52');
INSERT INTO `kategori` VALUES ('42', '0', 'Ayakkabi', '2016-01-04 11:51:10');
INSERT INTO `kategori` VALUES ('44', '1', 'Televizyon', '2016-01-04 12:43:23');
INSERT INTO `kategori` VALUES ('45', '2', 'Kazak', '2016-01-04 12:57:30');

-- ----------------------------
-- Table structure for kullanici
-- ----------------------------
DROP TABLE IF EXISTS `kullanici`;
CREATE TABLE `kullanici` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `seviye` varchar(32) COLLATE utf8_turkish_ci NOT NULL COMMENT '0 ise kullanici, 1 ise admin',
  `adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `soyadi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of kullanici
-- ----------------------------
INSERT INTO `kullanici` VALUES ('1', 'admin@admin.com', '827ccb0eea8a706c4c34a16891f84e7b', 'c4ca4238a0b923820dcc509a6f75849b', 'Ayşe', 'Bilmem', '2015-12-30 05:21:26');

-- ----------------------------
-- Table structure for musteriler
-- ----------------------------
DROP TABLE IF EXISTS `musteriler`;
CREATE TABLE `musteriler` (
  `musteriID` int(11) NOT NULL AUTO_INCREMENT,
  `musteriAdi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `musteriSoyadi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ban` tinyint(5) DEFAULT NULL,
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`musteriID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of musteriler
-- ----------------------------
INSERT INTO `musteriler` VALUES ('2', 'Pinar', 'Ulku', 'pinar@pinar.com', null, '5555555', '0', '2016-01-06 11:05:36');
INSERT INTO `musteriler` VALUES ('3', 'Asd', 'Fgh', 'asd@asd.com', null, '1234567', '0', '2016-01-06 11:22:39');
INSERT INTO `musteriler` VALUES ('4', 'Ali', 'Bilmem', 'ali@ali.com', 'c6f057b86584942e415435ffb1fa93d4', '5555555', '0', '2016-01-06 13:07:53');

-- ----------------------------
-- Table structure for reklamlar
-- ----------------------------
DROP TABLE IF EXISTS `reklamlar`;
CREATE TABLE `reklamlar` (
  `reklam_id` int(11) NOT NULL AUTO_INCREMENT,
  `reklam_adi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `reklam_aciklama` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kalan_gosterim` int(11) DEFAULT NULL,
  `yukseklik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `genislik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `konum` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`reklam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of reklamlar
-- ----------------------------
INSERT INTO `reklamlar` VALUES ('7', 'çakma iphone', 'sonysityu', '45', '56', '44', '6');
INSERT INTO `reklamlar` VALUES ('10', 'sony', 'sonysityu', '45', '56', '77', '6');
INSERT INTO `reklamlar` VALUES ('12', 'çakma nokya', 'çok ucuz', '44', '400', '500', '7');
INSERT INTO `reklamlar` VALUES ('14', 'aypon', 'qwrqw', '44', '22', '11', '5');
INSERT INTO `reklamlar` VALUES ('15', 'asfna ', 'ads dkl', '111', 'dasd', 'qwd', '5');
INSERT INTO `reklamlar` VALUES ('16', 'vestel', 'vestel', '44', '34', '43', '5');
INSERT INTO `reklamlar` VALUES ('17', 'citroen', 'efendim abi !', '21', '333', '242', '5');
INSERT INTO `reklamlar` VALUES ('18', 'ads', 'asdwq', '11', 'd21', 'dw', '3');

-- ----------------------------
-- Table structure for secenekler
-- ----------------------------
DROP TABLE IF EXISTS `secenekler`;
CREATE TABLE `secenekler` (
  `secenek_id` int(11) NOT NULL,
  `secenek` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `anket_id` int(11) NOT NULL,
  `oy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of secenekler
-- ----------------------------
INSERT INTO `secenekler` VALUES ('9', 'Oldu', '3', '0');
INSERT INTO `secenekler` VALUES ('20', 'g', '16', '0');
INSERT INTO `secenekler` VALUES ('21', 'f', '16', '0');
INSERT INTO `secenekler` VALUES ('22', 'Oldu', '12', '0');
INSERT INTO `secenekler` VALUES ('23', 'tttt', '11', '0');
INSERT INTO `secenekler` VALUES ('24', 'Olustu', '17', '0');
INSERT INTO `secenekler` VALUES ('25', 'Olusmadi', '17', '0');
INSERT INTO `secenekler` VALUES ('26', 'aaaa', '18', '0');

-- ----------------------------
-- Table structure for slayt
-- ----------------------------
DROP TABLE IF EXISTS `slayt`;
CREATE TABLE `slayt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` varchar(32) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of slayt
-- ----------------------------
INSERT INTO `slayt` VALUES ('1', 'a', 'dfsaf', 'http://localhost:8080/Proje/admin/slayt.jsp', '2016-01-05 12:47:41');
INSERT INTO `slayt` VALUES ('7', 'c', 'd', 'http://localhost:8080/Proje/admin/slayt.jsp', '2016-01-05 16:16:38');
INSERT INTO `slayt` VALUES ('8', 'e', 'r', 'http://localhost:8080/Proje/admin/slayt.jsp', '2016-01-05 16:17:01');
INSERT INTO `slayt` VALUES ('9', 't', 'y', 'http://localhost:8080/Proje/admin/slayt.jsp', '2016-01-05 16:17:09');
INSERT INTO `slayt` VALUES ('10', 'h', 'h', 'http://localhost:8080/Proje/admin/slayt.jsp', '2016-01-05 16:36:14');
INSERT INTO `slayt` VALUES ('11', 'zcvcz', 'e', 'v', '2016-01-05 17:16:55');
INSERT INTO `slayt` VALUES ('12', 'dene', 'deneme aciklama', 'https://www.google.com.tr/?gws_rd=ssl', '2016-01-06 09:20:31');

-- ----------------------------
-- Table structure for slayt_resimleri
-- ----------------------------
DROP TABLE IF EXISTS `slayt_resimleri`;
CREATE TABLE `slayt_resimleri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slaytID` int(11) DEFAULT NULL,
  `adi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `klasor` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of slayt_resimleri
-- ----------------------------
INSERT INTO `slayt_resimleri` VALUES ('2', '1', '1_8676137resim1.jpg', '1');
INSERT INTO `slayt_resimleri` VALUES ('6', '7', '7_16735346resim2.jpg', '7');
INSERT INTO `slayt_resimleri` VALUES ('7', '8', '8_18107779resim3.jpg', '8');
INSERT INTO `slayt_resimleri` VALUES ('8', '9', '9_17435866resim4.jpg', '9');
INSERT INTO `slayt_resimleri` VALUES ('9', '10', '10_22689506resim5.jpg', '10');
INSERT INTO `slayt_resimleri` VALUES ('10', '7', '7_11001627resim1.jpg', '7');
INSERT INTO `slayt_resimleri` VALUES ('11', '11', '11_16187572resim3.jpg', '11');
INSERT INTO `slayt_resimleri` VALUES ('12', '12', '12_1526785504.jpg', '12');

-- ----------------------------
-- Table structure for ureticiler
-- ----------------------------
DROP TABLE IF EXISTS `ureticiler`;
CREATE TABLE `ureticiler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uretici_adi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of ureticiler
-- ----------------------------
INSERT INTO `ureticiler` VALUES ('2', 'sony', '2016-01-20 07:05:26');
INSERT INTO `ureticiler` VALUES ('5', 'samsung', '2016-01-07 21:07:41');
INSERT INTO `ureticiler` VALUES ('9', 'lenovo', '2016-01-07 21:40:12');

-- ----------------------------
-- Table structure for urunler
-- ----------------------------
DROP TABLE IF EXISTS `urunler`;
CREATE TABLE `urunler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `katID` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `kisaAciklama` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `gununUrunu` tinyint(255) DEFAULT NULL,
  `haftaninUrunu` tinyint(255) DEFAULT NULL,
  `kampanyaliUrun` tinyint(255) DEFAULT NULL,
  `detay` text COLLATE utf8_turkish_ci NOT NULL,
  `piyasaFiyati` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `gecerliFiyat` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `gosterim` tinyint(4) NOT NULL,
  `tarih` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `baslik` (`baslik`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of urunler
-- ----------------------------
INSERT INTO `urunler` VALUES ('4', '45', 'sadfsdf', 'sdfs', '0', '0', '0', '<p style=\"text-align:center\">fdfg<em><strong>dfgd fg</strong></em>dfgd</p>\r\n\r\n<p>aksljdaks jdaksd klasj dkals</p>\r\n', '12', '21', '0', '2016-01-05 09:56:55');
INSERT INTO `urunler` VALUES ('5', '1', 'televizyon', 'tele aç?klama', '0', '0', '0', '<p>televizyon</p>\r\n', '3100', '2999', '0', '2016-01-05 10:32:42');

-- ----------------------------
-- Table structure for urun_fotograflari
-- ----------------------------
DROP TABLE IF EXISTS `urun_fotograflari`;
CREATE TABLE `urun_fotograflari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urun_id` int(11) NOT NULL,
  `adi` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `klasor` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `album_adi` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of urun_fotograflari
-- ----------------------------
INSERT INTO `urun_fotograflari` VALUES ('177', '7', '7_25496995fwfwfwe.jpg', 'reklam_7', 'reklam');
INSERT INTO `urun_fotograflari` VALUES ('179', '17', '17_143829181849_1110120095665443_5667148853601179176_n.jpg', 'reklam_17', 'reklam');
INSERT INTO `urun_fotograflari` VALUES ('171', '7', '7_234438831849_1110120095665443_5667148853601179176_n.jpg', 'reklam_7', 'reklam');
INSERT INTO `urun_fotograflari` VALUES ('172', '10', '10_11217067ffwfe.jpg', 'reklam_10', 'reklam');
INSERT INTO `urun_fotograflari` VALUES ('173', '12', '12_38752fwfwfwe.jpg', 'reklam_12', 'reklam');
INSERT INTO `urun_fotograflari` VALUES ('178', '14', '14_21901682fwefwe.jpg', 'reklam_14', 'reklam');
INSERT INTO `urun_fotograflari` VALUES ('175', '15', '15_6554411fwfwfwe.jpg', 'reklam_15', 'reklam');
INSERT INTO `urun_fotograflari` VALUES ('176', '16', '16_17993050imagdwdwes.jpg', 'reklam_16', 'reklam');

-- ----------------------------
-- Table structure for urun_resimleri
-- ----------------------------
DROP TABLE IF EXISTS `urun_resimleri`;
CREATE TABLE `urun_resimleri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urun_id` int(11) NOT NULL,
  `adi` varchar(500) COLLATE utf8_bin NOT NULL,
  `klasor` varchar(500) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of urun_resimleri
-- ----------------------------
INSERT INTO `urun_resimleri` VALUES ('17', '4', '4_994706Tulips.jpg', '4');
INSERT INTO `urun_resimleri` VALUES ('18', '4', '4_3092407Koala.jpg', '4');
INSERT INTO `urun_resimleri` VALUES ('19', '4', '4_21216073Penguins.jpg', '4');
INSERT INTO `urun_resimleri` VALUES ('20', '5', '5_17674658Desert.jpg', '5');
INSERT INTO `urun_resimleri` VALUES ('21', '5', '5_22817309Chrysanthemum.jpg', '5');

-- ----------------------------
-- Table structure for videolar
-- ----------------------------
DROP TABLE IF EXISTS `videolar`;
CREATE TABLE `videolar` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `video_baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_iFrame` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_kategori` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_detay` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of videolar
-- ----------------------------
INSERT INTO `videolar` VALUES ('8', 'Berker', '<iframe width=\"420\" height=\"315\" src=\"https://www.youtube.com/embed/2fu8gqFN3XE\" frameborder=\"0\" allowfullscreen></iframe>', 'korku', '<p>G&uuml;zel şarkı</p>\r\n');
INSERT INTO `videolar` VALUES ('9', 'Fenerbahçe', '<iframe width=\"420\" height=\"315\" src=\"https://www.youtube.com/embed/t95D9k8R64s\" frameborder=\"0\" allowfullscreen></iframe>', 'korku', '<p>&Ouml;ğrenilmiş &Ccedil;aresizlik</p>\r\n');
INSERT INTO `videolar` VALUES ('10', '6-0 Koydular', '<iframe width=\"420\" height=\"315\" src=\"https://www.youtube.com/embed/oF4WVn567U0\" frameborder=\"0\" allowfullscreen></iframe>', 'Komedi', '<p>yetmedi 6-0 koydular</p>\r\n');
INSERT INTO `videolar` VALUES ('11', 'irem derici', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tuAYyDO5fEs\" frameborder=\"0\" allowfullscreen></iframe>', 'Spor', '<p>ne s&ouml;lemiş beeeee</p>\r\n');

-- ----------------------------
-- Table structure for video_kategori
-- ----------------------------
DROP TABLE IF EXISTS `video_kategori`;
CREATE TABLE `video_kategori` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kategoriAdi` varchar(111) CHARACTER SET utf8 NOT NULL,
  `kategoriAciklama` varchar(111) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of video_kategori
-- ----------------------------
INSERT INTO `video_kategori` VALUES ('24', 'Spor', 'Spor videolar');
INSERT INTO `video_kategori` VALUES ('27', 'Korku', 'gerilim');
INSERT INTO `video_kategori` VALUES ('28', 'Komedi', 'komik');
INSERT INTO `video_kategori` VALUES ('29', 'Macera', 'Soluksuz izlenecek videolar.');
