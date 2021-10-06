/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.17-MariaDB : Database - db_diagnosacovid
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_diagnosacovid` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_diagnosacovid`;

/*Table structure for table `tb_gejala` */

DROP TABLE IF EXISTS `tb_gejala`;

CREATE TABLE `tb_gejala` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `tb_gejala` */

insert  into `tb_gejala`(`id`,`kode`,`gejala`) values 
(1,'G001','Pernah berpergian di daerah yang berzona merah'),
(2,'G002','Pernah kontak secara langsung dengan pasien covid 19'),
(3,'G003','Demam dengan temperatur di atas 38 derajat\r\n'),
(4,'G004','Mengalami penurunan kesadaran\r\n'),
(5,'G005','Merasa nafas pendek dan sesak nafas'),
(6,'G006','Memiliki ruam di tubuh\r\n'),
(7,'G007','Mual dan muntah\r\n'),
(8,'G008','Merasa nyeri di bagian belakang mata'),
(9,'G009','Sendi bengkak'),
(10,'G010','Denyut jantung meningkat atau menurun'),
(11,'G011','Tekanan darah rendah\r\n'),
(12,'G012','Batuk dan berdahak yang kental\r\n'),
(13,'G013','Hidung tersumbat dan berair'),
(14,'G014','Sakit tenggorokkan\r\n'),
(15,'G015','Hilang penciuman dan pengecapan\r\n'),
(16,'G016','Nyeri perut bagian atas\r\n'),
(17,'G017','Kejang\r\n'),
(18,'G018','Sesaak di bagian dada\r\n'),
(19,'G019','Sakit kepala\r\n'),
(20,'G020','Bersin-bersin\r\n');

/*Table structure for table `tb_penyakit` */

DROP TABLE IF EXISTS `tb_penyakit`;

CREATE TABLE `tb_penyakit` (
  `id` int(5) NOT NULL,
  `penyakit` varchar(50) DEFAULT NULL,
  `info` longtext NOT NULL,
  `solusi` longtext NOT NULL,
  KEY `id` (`id`),
  CONSTRAINT `tb_penyakit_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_rule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_penyakit` */

insert  into `tb_penyakit`(`id`,`penyakit`,`info`,`solusi`) values 
(1,'Anda terdiagnosis Campak bukan Covid 19','Campak adalah penyakit menular dan ditandai munculnya ruam kemerahan di seluruh tubuh akibat infeksi virus','Istirahat yang cukup, perbanyak minum air putih, minum obat penurun demam dan perda sakit.'),
(2,'Anda terdiagnosis Alergi Debu bukan Covid 19','Alergi debu salah satu jenis rinitis alergi yang paling umum. Kondisi ini terjadi karena sistem kekebalan tubuh bereaksi secara berlebihan terhadap zat-zat asing yang ada di dalam debu.','Lakukan gaya hidup sehat dan upaya mengurangi alergen di dalam rumah.Apabila cara alami tidak cukup ampuh, Anda dapat berkonsultasi dengan dokter untuk mendapatkan pengobatan yang sesuai.'),
(3,'Anda terdiagnosis Flu bukan Covid 19','Flu disebabkan oleh infeksi virus yang menyerang hidung, tenggorokan, dan paru-paru.','Cukup istirahat, minum obat flu,perbanyak minum air putih.'),
(4,'Anda terdiagnosis Flu bukan Covid 19','Flu disebabkan oleh infeksi virus yang menyerang hidung, tenggorokan, dan paru-paru.','Berikan obat pereda demam, jika demam tinggi.\r\nJika dalam 2-3 hari gejala semakin memburuk segeralah dibawa ke rumah sakit atau fasilitas pelayanan kesehatan terdekat untuk ditangani lebih lanjut.'),
(5,'Anda terdiagnosis Tipes bukan Covid 19','Tipes disebabkan oleh infeksi bakteri Salmonella typhii','Membutuhkan pengobatan selama 1–2 minggu dengan tablet antibiotik.'),
(6,'Anda terdiagnosis DBD bukan Covid 19','DBD merupakan penyakit mudah menular yang berasal dari gigitan nyamuk Aedes aegypti dan Aedes albopictus.','Berikan obat pereda demam, jika demam tinggi'),
(7,'Anda terdiagnosis DBD bukan Covid 19','DBD merupakan penyakit mudah menular yang berasal dari gigitan nyamuk Aedes aegypti dan Aedes albopictus.','Rawat Inap di Rumah Sakit'),
(8,'Anda terdiagnosis Demam Chikunguya bukan Covid 19','Demam Chikunguya adalah penyakit yang disebabkan infeksi virus chikungunya (CHIKV) yang ditularkan ke manusia melalui gigitan nyamuk Aedes yang terinfeksi.','Tidak ada pengobatan khusus untuk menyembuhkan chikungunya, karena penderita akan sembuh dengan sendirinya. Dalam banyak kasus, gejala akan mereda dalam seminggu. Meski demikian, nyeri sendi dapat berlangsung hingga beberapa bulan.'),
(9,'Anda terdiagnosis Emfesima bukan Covid 19','Emfesima adalah penyakit paru-paru yang menyebabkan sesak napas sehingga seseorang sulit untuk bernapas.','Lakukan pemeriksaan ke dokter jika Anda mengalami sesak napas tanpa sebab yang terjadi dalam jangka panjang, terutama jika sudah mengganggu aktivitas sehari-hari atau jika Anda termasuk yang berisiko menderita emfisema. Pemeriksaan dini dapat mencegah kondisi yang lebih serius.'),
(10,'Anda terdiagnosis Pneumonia Komuniti bukan Covid 1','Pneumonia merupakan sebuah infeksi akut parenkim paru pada pasien yang telah mendapatkan infeksi di masyarakat.','pengidap perlu dirawat inap di rumah sakit untuk mendapatkan pengobatan medis.'),
(11,'Anda terdiagnosis Covid 19 Tanpa Gejala','Covid 19 tanpa gejala terpapar virus corona namun penderita tidak merasakan gejala Covid 19.','Isolasi mandiri.'),
(12,'Anda terdiagnosis Covid 19 Tanpa Gejala','Covid 19 tanpa gejala terpapar virus corona namun penderita tidak merasakan gejala Covid 19.','Isolasi Mandiri.'),
(13,'Anda terdiagnosis Covid 19 Ringan','Covid 19 Ringan memiliki gejala klinis, tapi tidak disertai sesak napas, tanpa pneumonia atau hipoksia.','Isolasi mandiri di rumah bagi yang memenuhi persyaratan obat atau suplemen yang diperlukan adalah oseltamivir atau  favipiravir, azitromisin, vitamin C, D dan Zinc - Lama perawatan 10 hari isolasi sejak timbul gejala dan minimal 3 hari bebas gejala.'),
(14,'Anda terdiagnosis Covid 19 Ringan','Covid 19 Ringan memiliki gejala klinis, tapi tidak disertai sesak napas, tanpa pneumonia atau hipoksia.','Isolasi mandiri di rumah bagi yang memenuhi persyaratan obat atau suplemen yang diperlukan adalah oseltamivir atau  favipiravir, azitromisin, vitamin C, D dan Zinc - Lama perawatan 10 hari isolasi sejak timbul gejala dan minimal 3 hari bebas gejala.'),
(15,'Anda terdiagnosis Covid 19 Sedang','Covid 19 Sedang ini pasien sudah mengalami masalah pada paru-parunya dan bisa dilihat dari frekuensi napas pasien.','Mendapatkan perawatan di RS lapangan, RS Darurat Covid-19, RS Non Rujukan, RS Rujukan ,mengonsumsi Obat atau suplemen vitamin C, D dan zinc,antikoagulan LMWH/UFH berdasarkan evaluasi dokter penanggungjawab, pengobatan komobid bila ada, terapi O2 secara non invasif dengan arus sedang sampai tinggi.'),
(16,'Anda terdiagnosis Covid 19 Sedang','Covid 19 Sedang ini pasien sudah mengalami masalah pada paru-parunya dan bisa dilihat dari frekuensi napas pasien.','Mendapatkan perawatan di RS lapangan, RS Darurat Covid-19, RS Non Rujukan, RS Rujukan ,mengonsumsi Obat atau suplemen vitamin C, D dan zinc,antikoagulan LMWH/UFH berdasarkan evaluasi dokter penanggungjawab, pengobatan komobid bila ada, terapi O2 secara non invasif dengan arus sedang sampai tinggi.'),
(17,'Anda terdiagnosis Covid 19 Berat','Covid 19 Berat ini pasien mengalami gejala berat, saturasi oksigennya berada di bawah 93 persen atau frekuensi napasnya lebih dari 30 kali per menit.','Pasien harus segera mendapatkan perawatan dokter di rumah sakit,terapi infus, pemberian oksigen, serta pemberian obat-obatan antivirus untuk COVID, memberikan obat-obatan lain, seperti antibiotik, imunosupresan, atau kortikosteroid, jika diperlukan.'),
(18,'Anda terdiagnosis Covid 19 Berat','Covid 19 Berat ini pasien mengalami gejala berat, saturasi oksigennya berada di bawah 93 persen atau frekuensi napasnya lebih dari 30 kali per menit.','Pasien harus segera mendapatkan perawatan dokter di rumah sakit,terapi infus, pemberian oksigen, serta pemberian obat-obatan antivirus untuk COVID, memberikan obat-obatan lain, seperti antibiotik, imunosupresan, atau kortikosteroid, jika diperlukan.'),
(19,'Anda terdiagnosis Covid 19 Kritis','Covid 19 Kritis ketika pasien memasuki kondisi acute respiratory distress syndrome (ARDS), sepsis, dan syok sepsis.','Mendapatkan perawatan di Unit Perawatan Intensif (ICU) rumah sakit sampai kondisi membaik. menggunakan alat bantu pernapasan melalui mesin ventilator dan pengobatan lain.'),
(20,'Anda terdiagnosis Covid 19 Kritis','Covid 19 Kritis ketika pasien memasuki kondisi acute respiratory distress syndrome (ARDS), sepsis, dan syok sepsis.','Mendapatkan perawatan di Unit Perawatan Intensif (ICU) rumah sakit sampai kondisi membaik. menggunakan alat bantu pernapasan melalui mesin ventilator dan pengobatan lain.');

/*Table structure for table `tb_rule` */

DROP TABLE IF EXISTS `tb_rule`;

CREATE TABLE `tb_rule` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL,
  `G012` tinyint(1) DEFAULT NULL,
  `G013` tinyint(1) DEFAULT NULL,
  `G014` tinyint(1) DEFAULT NULL,
  `G015` tinyint(1) DEFAULT NULL,
  `G016` tinyint(1) DEFAULT NULL,
  `G017` tinyint(1) DEFAULT NULL,
  `G018` tinyint(1) DEFAULT NULL,
  `G019` tinyint(1) DEFAULT NULL,
  `G020` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `tb_rule` */

insert  into `tb_rule`(`id`,`G001`,`G002`,`G003`,`G004`,`G005`,`G006`,`G007`,`G008`,`G009`,`G010`,`G011`,`G012`,`G013`,`G014`,`G015`,`G016`,`G017`,`G018`,`G019`,`G020`) values 
(1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1),
(3,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1),
(4,0,0,1,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,1,1),
(5,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,1,0),
(6,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0),
(7,0,0,1,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,1,0),
(8,0,0,1,0,0,1,1,0,1,0,0,0,0,0,0,0,0,0,1,0),
(9,0,0,0,0,1,0,0,0,0,1,0,1,0,1,0,0,0,1,0,0),
(10,0,0,1,0,1,0,1,0,0,0,0,1,0,0,0,1,0,1,0,0),
(11,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(12,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,1,0),
(13,0,0,1,0,0,0,1,0,0,0,0,0,0,1,1,0,0,0,1,0),
(14,1,1,1,0,0,0,1,0,0,0,0,0,0,1,1,0,0,0,0,0),
(15,0,1,1,0,1,0,0,0,0,0,0,0,0,1,1,0,0,1,0,0),
(16,1,1,1,0,1,0,0,0,0,0,0,0,0,1,1,0,0,1,0,0),
(17,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0),
(18,0,1,1,1,1,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0),
(19,1,1,1,1,1,0,0,0,0,1,1,0,0,0,1,0,1,1,1,0),
(20,0,1,1,1,1,0,0,0,0,1,1,0,0,0,1,0,1,1,0,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
