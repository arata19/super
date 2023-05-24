/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 5.5.68-MariaDB : Database - supadi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`supadi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `supadi`;

/*Table structure for table `arsip_file` */

DROP TABLE IF EXISTS `arsip_file`;

CREATE TABLE `arsip_file` (
  `id_arsip` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(25) NOT NULL,
  `id_klasifikasi` varchar(25) NOT NULL,
  `no_arsip` varchar(100) NOT NULL,
  `tgl_arsip` date NOT NULL,
  `keamanan` varchar(100) NOT NULL,
  `ket` tinytext NOT NULL,
  `file_arsip` tinytext NOT NULL,
  `tgl_upload` date NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id_arsip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `arsip_file` */

/*Table structure for table `arsip_sk` */

DROP TABLE IF EXISTS `arsip_sk`;

CREATE TABLE `arsip_sk` (
  `id_sk` int(11) NOT NULL AUTO_INCREMENT,
  `no_agenda` varchar(100) NOT NULL,
  `custom_noagenda` varchar(100) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `satker` varchar(11) NOT NULL,
  `no_sk` varchar(150) NOT NULL,
  `tgl_surat` date NOT NULL,
  `klasifikasi` varchar(10) NOT NULL,
  `pengolah` varchar(100) NOT NULL,
  `tujuan_surat` tinytext NOT NULL,
  `perihal` text NOT NULL,
  `ket` text NOT NULL,
  `file` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id_sk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `arsip_sk` */

/*Table structure for table `arsip_sk_kpa` */

DROP TABLE IF EXISTS `arsip_sk_kpa`;

CREATE TABLE `arsip_sk_kpa` (
  `id_sk` int(11) NOT NULL AUTO_INCREMENT,
  `no_agenda` varchar(100) NOT NULL,
  `custom_noagenda` varchar(100) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `satker` varchar(11) NOT NULL,
  `no_sk` varchar(150) NOT NULL,
  `tgl_surat` date NOT NULL,
  `klasifikasi` varchar(10) NOT NULL,
  `pengolah` varchar(100) NOT NULL,
  `tujuan_surat` tinytext NOT NULL,
  `perihal` text NOT NULL,
  `ket` text NOT NULL,
  `file` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id_sk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `arsip_sk_kpa` */

/*Table structure for table `arsip_sm` */

DROP TABLE IF EXISTS `arsip_sm`;

CREATE TABLE `arsip_sm` (
  `id_sm` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(100) NOT NULL,
  `no_sm` varchar(150) NOT NULL,
  `tgl_terima` date NOT NULL,
  `no_agenda` varchar(50) NOT NULL,
  `custom_noagenda` varchar(100) NOT NULL,
  `klasifikasi` varchar(10) NOT NULL,
  `tgl_surat` date NOT NULL,
  `pengirim` varchar(200) NOT NULL,
  `tujuan_surat` varchar(200) NOT NULL,
  `perihal` text NOT NULL,
  `ket` text NOT NULL,
  `file` tinytext NOT NULL,
  `view` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id_sm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `arsip_sm` */

/*Table structure for table `bagian` */

DROP TABLE IF EXISTS `bagian`;

CREATE TABLE `bagian` (
  `id_bag` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bagian` tinytext NOT NULL,
  `kepala` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id_bag`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `bagian` */

/*Table structure for table `email_setting` */

DROP TABLE IF EXISTS `email_setting`;

CREATE TABLE `email_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kop` varchar(15) NOT NULL,
  `layout` text NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'N',
  `ket` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `email_setting` */

insert  into `email_setting`(`id`,`id_kop`,`layout`,`status`,`ket`) values 
(11,'1','<p>Yth Bpk/Ibu :</p>\r\n<p><strong>=TembusanV=</strong></p>\r\n<p>Anda mendapat tembusan surat masuk baru dari <strong>=DisposisiOleh=</strong> dengan ket :<br /><br />Nomor agenda : <strong>=NoAgenda=</strong><br />Nomor surat : <strong>=NoSurat=</strong><br />Perihal surat : <strong>=Perihal=</strong><br />Surat Dari : <strong>=AsalSurat=</strong><br />Keterangan : <strong>=Keterangan=</strong><br />Tanggal surat : <strong>=TglSurat=</strong><br />Tanggal terima : <strong>=TglTerima=</strong><br />Tanggal ditembuskan: <strong>=TglDisposisi=</strong></p>\r\n<p>Terimakasih.</p>','Y','Format Email Penerima Tembusan Surat Masuk'),
(12,'2','<p>Yth Bapak/Ibu :<br /><strong>=TujuanSurat=</strong></p>\r\n<p>Anda mendapat surat masuk baru dari <strong>=AsalSurat=</strong> perihal <strong>=Perihal=</strong>. Surat diterima pada tanggal <strong>=TglTerima= </strong>yang diterima oleh <strong>=Penerima=</strong>&nbsp;dengan ket:</p>\r\n<p>Nomor agenda : <strong>=NoAgenda=</strong><br />Nomor surat : <strong>=NoSurat=</strong><br />Tanggal surat : <strong>=TglSurat=<br /></strong>keterangan&nbsp;:<strong> =Keterangan=<br /></strong></p>\r\n<p>Terimakasih.</p>','Y','Format Email Penerima Surat Masuk'),
(13,'3','<p>Yth Bapak/Ibu :<br /><strong>=Disposisi=</strong></p>\r\n<p>Anda mendapat disposisi surat masuk baru dari <strong>=DisposisiOleh=</strong> dengan ket :<br /><br />Nomor agenda : <strong>=NoAgenda=</strong><br />Nomor surat : <strong>=NoSurat=</strong><br />Perihal surat : <strong>=Perihal=</strong><br />Surat Dari : <strong>=AsalSurat=</strong><br />Keterangan : <strong>=Keterangan=</strong><br />Tanggal surat : <strong>=TglSurat=</strong><br />Tanggal terima : <strong>=TglTerima=</strong><br />Catatan disposisi : <br /><strong>=NoteDisposisi=</strong><br />Tanggal disposisi : <strong>=TglDisposisi=<br /></strong>Tembusan : <br /><strong>=TembusanV=<br /></strong>Surat Diteruskan ke:<br /><strong>=TujuanSurat=</strong><strong><br /></strong></p>\r\n<p>Terimakasih.</p>','Y','Format Email Penerima Disposisi Surat Masuk'),
(26,'4','<p>Yth Bpk/Ibu :</p>\r\n<p><strong>=TujuanMemo=</strong></p>\r\n<p>Anda mendapat memo baru perihal <strong>=PerihalMemo=</strong> pada tanggal <strong>=TglMemo=</strong> dengan ket sebagai berikut :<br /><br /><em>=IsiMemo=</em></p>\r\n<p>Terimakasih.</p>','Y','Format Email Penerima Memo');

/*Table structure for table `info` */

DROP TABLE IF EXISTS `info`;

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL AUTO_INCREMENT,
  `pengirim_info` varchar(50) NOT NULL,
  `tujuan_info` varchar(200) NOT NULL,
  `judul_info` varchar(150) NOT NULL,
  `ket_info` text NOT NULL,
  `file` varchar(200) NOT NULL,
  `tgl_info` datetime NOT NULL,
  PRIMARY KEY (`id_info`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `info` */

/*Table structure for table `klasifikasi` */

DROP TABLE IF EXISTS `klasifikasi`;

CREATE TABLE `klasifikasi` (
  `id_klas` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` date NOT NULL,
  PRIMARY KEY (`id_klas`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `klasifikasi` */

insert  into `klasifikasi`(`id_klas`,`kode`,`nama`,`updated`,`created`) values 
(36,'OT','ORGANISASI DAN TATA LAKASANA','2021-06-25 08:30:02','2021-06-25'),
(37,'HM','KEHUMASAN','2021-06-25 08:30:19','2021-06-25'),
(38,'KP','KEPEGAWAIAN','2021-06-25 08:30:29','2021-06-25'),
(39,'KU','KEUANGAN','2021-06-25 08:30:37','2021-06-25'),
(40,'KS','KESEKRETARIATAN','2021-06-25 08:31:20','2021-06-25'),
(41,'PL','PERLENGKAPAN','2021-06-25 08:31:27','2021-06-25'),
(42,'HK','HUKUM','2021-06-25 08:31:32','2021-06-25'),
(43,'PP','PENDIDIKAN DAN PELATIHAN','2021-06-25 08:31:43','2021-06-25'),
(44,'PB','PENELITIAN DAN PENGEMBANGAN','2021-06-25 08:32:03','2021-06-25'),
(45,'PS','PENGAWASAN','2021-06-25 08:32:11','2021-06-25');

/*Table structure for table `klasifikasi_arsip` */

DROP TABLE IF EXISTS `klasifikasi_arsip`;

CREATE TABLE `klasifikasi_arsip` (
  `id_klasifikasi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_klasifikasi` varchar(150) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` date NOT NULL,
  PRIMARY KEY (`id_klasifikasi`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `klasifikasi_arsip` */

insert  into `klasifikasi_arsip`(`id_klasifikasi`,`nama_klasifikasi`,`updated`,`created`) values 
(13,'ORGANISASI DAN TATA LAKASANA','2021-06-25 08:34:07','2021-06-25'),
(14,'KEHUMASAN','2021-06-25 08:34:12','2021-06-25'),
(15,'KEUANGAN','2021-06-25 08:34:18','2021-06-25'),
(16,'KEPEGAWAIAN','2021-06-25 08:34:24','2021-06-25'),
(17,'KESEKRETARIATAN','2021-06-25 08:34:31','2021-06-25'),
(18,'PERLENGKAPAN','2021-06-25 08:34:35','2021-06-25'),
(19,'HUKUM','2021-06-25 08:34:39','2021-06-25'),
(20,'PENDIDIKAN DAN PELATIHAN','2021-06-25 08:34:44','2021-06-25'),
(21,'PENELITIAN DAN PENGEMBANGAN','2021-06-25 08:34:48','2021-06-25'),
(22,'PENGAWASAN','2021-06-25 08:34:52','2021-06-25');

/*Table structure for table `klasifikasi_sk` */

DROP TABLE IF EXISTS `klasifikasi_sk`;

CREATE TABLE `klasifikasi_sk` (
  `id_klas` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` date NOT NULL,
  PRIMARY KEY (`id_klas`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

/*Data for the table `klasifikasi_sk` */

insert  into `klasifikasi_sk`(`id_klas`,`kode`,`nama`,`updated`,`created`) values 
(48,'OT','ORGANISASI DAN TATA LAKASANA','2021-06-25 08:32:34','2021-06-25'),
(49,'HM','KEHUMASAN','2021-06-25 08:32:44','2021-06-25'),
(50,'KP','KEPEGAWAIAN','2021-06-25 08:32:53','2021-06-25'),
(51,'KU','KEUANGAN','2021-06-25 08:33:00','2021-06-25'),
(52,'KS','KESEKRETARIATAN','2021-06-25 08:33:08','2021-06-25'),
(53,'PL','PERLENGKAPAN','2021-06-25 08:33:16','2021-06-25'),
(54,'HK','HUKUM','2021-06-25 08:33:21','2021-06-25'),
(55,'PP','PENDIDIKAN DAN PELATIHAN','2021-06-25 08:33:27','2021-06-25'),
(56,'PB','PENELITIAN DAN PENGEMBANGAN','2021-06-25 08:33:36','2021-06-25'),
(57,'PS','PENGAWASAN','2021-06-25 08:33:42','2021-06-25');

/*Table structure for table `kop_setting` */

DROP TABLE IF EXISTS `kop_setting`;

CREATE TABLE `kop_setting` (
  `idkop` int(11) NOT NULL,
  `kopdefault` enum('Y','N') NOT NULL DEFAULT 'Y',
  `layout` text NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'N',
  `ket` varchar(100) NOT NULL,
  PRIMARY KEY (`idkop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kop_setting` */

insert  into `kop_setting`(`idkop`,`kopdefault`,`layout`,`status`,`ket`) values 
(1,'Y','<p style=\"color: #000000; font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;<span style=\"font-size: x-large;\"><strong><u>TANDA TERIMA SURAT CUSTOM <br /></u></strong></span></p>\r\n<table style=\"border-collapse: collapse; width: 699px;\" border=\"1\" align=\"center\">\r\n<tbody>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Telah terima dari</td>\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.224px;\" nowrap=\"nowrap\">=AsalSurat=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Nomor Surat</td>\r\n<td style=\"padding: 5px; width: 338.224px;\">=NoSurat=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Nomor Agenda</td>\r\n<td style=\"padding: 5px; width: 338.224px;\">=NoAgenda=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Tanggal Surat</td>\r\n<td style=\"padding: 5px; width: 338.224px;\">=TglSurat=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Tujuan Surat</td>\r\n<td style=\"padding: 5px; width: 338.224px;\">=TujuanSurat=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Tanggal Terima</td>\r\n<td style=\"padding: 5px; width: 338.224px;\">=TglTerima=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Perihal</td>\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.224px;\">=Perihal=</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table style=\"border-collapse: collapse; width: 699px;\" border=\"1\" align=\"center\">\r\n<tbody>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; width: 340.622px; text-align: center;\" nowrap=\"nowrap\">Yang Menyerahkan<br /><br /><br /><br /><br /><br /><strong>=AsalSurat=</strong></td>\r\n<td style=\"padding: 5px; width: 336.378px; text-align: center;\" nowrap=\"nowrap\">Yang Menerima<br /><br /><br /><br /><br /><br /><strong>=Penerima=</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"color: #000000; font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<div id=\"container\" style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div id=\"row\">\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n</div>\r\n</div>','N','Tanda Terima Surat'),
(2,'Y','<h3 style=\"text-align: center;\">SURAT MASUK CUSTOM</h3>\r\n<table style=\"border-collapse: collapse;\" border=\"1\" width=\"700\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Surat Dari</td>\r\n<td style=\"padding: 5px; vertical-align: top; width: 250;\" nowrap=\"nowrap\">=AsalSurat=</td>\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Diterima Tanggal</td>\r\n<td style=\"padding: 5px; vertical-align: top; width: 225;\" nowrap=\"nowrap\">=TglTerima=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Tanggal Surat</td>\r\n<td style=\"padding: 5px; vertical-align: top;\">=TglSurat=</td>\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Nomor Agenda</td>\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">=NoAgenda=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Nomor Surat</td>\r\n<td style=\"padding: 5px;\">=NoSurat=</td>\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Tujuan Surat</td>\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">=TujuanSurat=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Perihal</td>\r\n<td style=\"padding: 5px; vertical-align: top;\">=Perihal=</td>\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Ket</td>\r\n<td style=\"padding: 5px; vertical-align: top;\">=Keterangan=</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>','N','Detail Surat'),
(3,'Y','<h2 id=\"mcetoc_1bd3u8rgs1\" style=\"text-align: center;\"><strong><u>Disposisi Surat Custom<br /></u></strong></h2>\r\n<table style=\"border-collapse: collapse; width: 696px;\" border=\"1\" cellspacing=\"5\" cellpadding=\"5\" align=\"center\">\r\n<tbody>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Surat Dari</td>\r\n<td style=\"width: 190px; height: 17px;\">=AsalSurat=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Tanggal Surat</td>\r\n<td style=\"width: 190px; height: 17px;\">=TglSurat=</td>\r\n</tr>\r\n<tr style=\"height: 45px;\">\r\n<td style=\"width: 180px; height: 45px;\">Nomor Surat</td>\r\n<td style=\"width: 190px; height: 45px;\">=NoSurat=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Diterima Tanggal</td>\r\n<td style=\"width: 190px; height: 17px;\">=TglTerima=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Perihal</td>\r\n<td style=\"width: 190px; height: 17px;\">=Perihal=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Nomor Agenda</td>\r\n<td style=\"width: 190px; height: 17px;\">=NoAgenda=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Tujuan Surat</td>\r\n<td style=\"width: 190px; height: 17px;\">=TujuanSurat=</td>\r\n</tr>\r\n<tr style=\"height: 70.84375px;\">\r\n<td style=\"width: 180px; height: 70.84375px;\">Disposisi dari/ke</td>\r\n<td style=\"width: 190px; height: 70.84375px;\"><strong>=DisposisiOleh=</strong> ke :<br />=Disposisi=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Tanggal Disposisi</td>\r\n<td style=\"width: 190px; height: 17px;\">=TglDisposisi=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Keterangan</td>\r\n<td style=\"width: 190px; height: 17px;\">=Keterangan=</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;</p>\r\n<table style=\"border-collapse: collapse; width: 700px;\" border=\"1\" cellspacing=\"5\" cellpadding=\"5\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 330.026px;\" nowrap=\"nowrap\">Tembusan:&nbsp;</td>\r\n<td style=\"width: 355.974px;\" nowrap=\"nowrap\">Catatan Disposisi:</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 330.026px;\">=TembusanV=</td>\r\n<td style=\"width: 355.974px;\">=NoteDisposisi=</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 686px;\" colspan=\"2\">Ditindak lanjuti oleh Kasie/Kasubbag, TU kepada Kasubsi/kaur:</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>','Y','Disposisi');

/*Table structure for table `kop_variabel` */

DROP TABLE IF EXISTS `kop_variabel`;

CREATE TABLE `kop_variabel` (
  `variabel` varchar(100) NOT NULL,
  `ket` tinytext NOT NULL,
  `id_kop` varchar(10) NOT NULL,
  PRIMARY KEY (`variabel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kop_variabel` */

insert  into `kop_variabel`(`variabel`,`ket`,`id_kop`) values 
('=AsalSurat=','Asal surat/pengirim surat ','1,2,3'),
('=Disposisi=','Surat didisposisikan ke','3'),
('=DisposisiOleh=','Yang Memberikan Disposisi','3'),
('=IsiMemo=','Isi Memo/Pesan Singkat','4'),
('=Keterangan=','Keterangan surat','1,2,3'),
('=KetSuratEdaran=','Keterangan Surat Edaran','5'),
('=NoAgenda=','Nomor agenda surat masuk','1,2,3'),
('=NoSurat=','Nomor surat masuk','1,2,3'),
('=NoSuratEdaran=','Nomor Surat Edaran','5'),
('=NoteDisposisi=','Catatan disposisi','3'),
('=Penerima=','Konseptor Surat','1,2'),
('=PengirimEdaran=','Pengirim Surat Edaran','5'),
('=Perihal=','Perihal surat','1,2,3'),
('=PerihalEdaran=','Perihal Surat Edaran','5'),
('=PerihalMemo=','Perihal Memo/Pesna Singkat','4'),
('=TembusanH=','Tembusan surat (tampil tampil sebaris)','3'),
('=TembusanV=','Tembusan surat (tampil per baris)','3'),
('=TglDisposisi=','Tanggal surat didisposisi','3'),
('=TglMemo=','Tanggal memo','4'),
('=TglSurat=','Tanggal surat Masuk','1,2,3'),
('=TglSuratEdaran=','Tanggal Surat Edaran','5'),
('=TglTerima=','Tanggal terima Surat','1,2,3'),
('=TujuanEdaran=','Tujuan Surat Edaran','5'),
('=TujuanMemo=','Tujuan Memo','4'),
('=TujuanSurat=','Tujuan Surat Masuk','1,2,3');

/*Table structure for table `memo` */

DROP TABLE IF EXISTS `memo`;

CREATE TABLE `memo` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(50) NOT NULL,
  `id_sm` varchar(200) NOT NULL,
  `disposisi` varchar(100) NOT NULL,
  `tembusan` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `tgl` datetime NOT NULL,
  `ref` varchar(6) NOT NULL,
  `file_memo` tinytext NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `memo` */

/*Table structure for table `pengaturan` */

DROP TABLE IF EXISTS `pengaturan`;

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `deskripsi` tinytext NOT NULL,
  `logo` varchar(200) NOT NULL,
  `no_agenda_sm_start` varchar(100) NOT NULL,
  `no_agenda_sm` varchar(100) NOT NULL,
  `no_agenda_sk_start` varchar(100) NOT NULL,
  `no_agenda_sk` varchar(100) NOT NULL,
  `no_agenda_sk_kapolda_start` varchar(100) NOT NULL,
  `no_agenda_kapolda_sk` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass_email` varchar(100) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pengaturan` */

insert  into `pengaturan`(`id`,`title`,`deskripsi`,`logo`,`no_agenda_sm_start`,`no_agenda_sm`,`no_agenda_sk_start`,`no_agenda_sk`,`no_agenda_sk_kapolda_start`,`no_agenda_kapolda_sk`,`email`,`pass_email`,`updated`) values 
(1,'SUPER - SURAT PERADILAN','SUPER - SURAT PERADILAN','KOP_05-03-2021_09-39-55.png','1','=KodeSurat=/SuratMasuk/=Tahun=','1','=KodeSurat=/SuratKeluar/=Tahun=','1','KAPOLDA/=KodeSurat=/=Bulan=/KKA/=Tahun=','','','2023-05-17 11:11:30');

/*Table structure for table `status_surat` */

DROP TABLE IF EXISTS `status_surat`;

CREATE TABLE `status_surat` (
  `id_status` int(15) NOT NULL AUTO_INCREMENT,
  `id_sm` varchar(15) NOT NULL,
  `statsurat` char(1) NOT NULL,
  `id_user` varchar(15) NOT NULL,
  `ket` tinytext NOT NULL,
  `file_progress` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `status_surat` */

/*Table structure for table `surat_read` */

DROP TABLE IF EXISTS `surat_read`;

CREATE TABLE `surat_read` (
  `id_sm` varchar(15) NOT NULL,
  `id_user` varchar(11) NOT NULL,
  `kode` varchar(8) NOT NULL,
  PRIMARY KEY (`id_sm`,`id_user`,`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `surat_read` */

insert  into `surat_read`(`id_sm`,`id_user`,`kode`) values 
('1','19','INFO'),
('1','31','DIS'),
('1','45','SM'),
('1','85','INFO'),
('1','85','SM'),
('10','73','INFO'),
('11','1','CC'),
('11','1','SM'),
('11','49','CC'),
('11','49','DIS'),
('12','18','SM'),
('13','60','SM'),
('14','60','SM'),
('14','72','DIS'),
('16','90','SM'),
('2','1','CC'),
('2','1','SM'),
('2','106','DIS'),
('2','106','INFO'),
('2','19','DIS'),
('2','19','INFO'),
('2','44','SM'),
('2','46','DIS'),
('2','47','SM'),
('3','1','SM'),
('3','19','INFO'),
('3','19','SM'),
('3','46','DIS'),
('4','19','DIS'),
('4','44','SM'),
('4','46','DIS'),
('4','47','SM'),
('5','106','SM'),
('5','19','SM'),
('5','46','DIS'),
('5','48','SM'),
('6','44','DIS'),
('6','44','SM'),
('6','47','SM'),
('6','60','INFO'),
('7','72','INFO'),
('8','1','SM'),
('8','60','INFO'),
('9','72','INFO');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `satker` varchar(10) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `upass` varchar(150) NOT NULL,
  `rule_disposisi` tinytext NOT NULL,
  `level` varchar(100) NOT NULL,
  `jabatan` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `picture` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id_user`,`nik`,`nama`,`satker`,`uname`,`upass`,`rule_disposisi`,`level`,`jabatan`,`email`,`picture`) values 
(1,'123','Administrator','27','admin','21232f297a57a5a743894a0e4a801fc3','null','Admin',57,'','picture.jpg'),
(6,'196008081984031005','Ahmad Bisri, S.H., M.H.','','196008081984031005','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(7,'196507261992031001','Drs. Azhar Mayang, M.H.I.','','196507261992031001','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(8,'196411291992031004','Drs. H. Muhammad Anwar Saleh, S.H., M.H.','','196411291992031004','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(9,'196602161992031002','Drs. Ifdal, S.H.','','196602161992031002','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(10,'196503101993031002','Drs. H. Syakhrani','','196503101993031002','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(11,'196611191993032002','Dra. Hj. St. Nadirah, M.H.','','196611191993032002','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(12,'196508211993031006','Drs. Muhammad Zen, M.H.','','196508211993031006','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(13,'196806181993032007','Dra. Hj. Ida Sariani, S.H., M.H.I.','','196806181993032007','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(14,'196812181994032003','Dra. Mulathifah, M.H.','','196812181994032003','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(15,'196812311994032020','Dra. Siarah, M.H.','','196812311994032020','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(16,'196908031994031003','Drs. Agus Abdullah, M.H.','','196908031994031003','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(17,'196508171994031006','Dr. Muhammad Thamrin A., M.H.','','196508171994031006','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(18,'197002101994032003','Dra. Hj.Raodhawiah, S.H.','','197002101994032003','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(19,'195907141990031001','Drs. H. Ace Ma`Mun, M.H.','','195907141990031001','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(20,'196012081983031004','M.Sahri, S.H., M.H.','','196012081983031004','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(21,'196009241991032001','Dra.Hj. Rogayah, M.H.','','196009241991032001','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(22,'197201062001122002','Hj. Ira Puspita Sari, S.H., M.H.','','197201062001122002','827ccb0eea8a706c4c34a16891f84e7b','','',4,'','sekretaris.png'),
(23,'197305062002121006','Rifa`I, S.H., M.H.','','197305062002121006','827ccb0eea8a706c4c34a16891f84e7b','','',7,'','sekretaris.png'),
(24,'196812051989021001','Ruslan, S.H., M.H.','','196812051989021001','827ccb0eea8a706c4c34a16891f84e7b','','',8,'','sekretaris.png'),
(25,'197507182000032001','Aisyah Thalib, S.Ag.','','197507182000032001','827ccb0eea8a706c4c34a16891f84e7b','','',9,'','sekretaris.png'),
(26,'196604221992032001','Animar','','196604221992032001','827ccb0eea8a706c4c34a16891f84e7b','','',12,'','sekretaris.png'),
(27,'196505211990031007','Djuhdan Muharom, S.H.','','196505211990031007','827ccb0eea8a706c4c34a16891f84e7b','','',11,'','sekretaris.png'),
(28,'198008012009121003','Achmad Mubarok, S.H.I.','','198008012009121003','827ccb0eea8a706c4c34a16891f84e7b','','',13,'','sekretaris.png'),
(29,'197409141999032005','Noni Salmy, S.H.','','197409141999032005','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(30,'197109021992031002','Endang Bahtiar, S.H., M.H.','','197109021992031002','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(31,'197307112003122001','Runie Handayani, S.H., M.H.','','197307112003122001','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(32,'197802272006042011','Susilowati, S.H.I., M.H.','','197802272006042011','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(33,'197805302002121006','Ikbal Basry, S.H., M.H.','','197805302002121006','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(34,'196610111989031001','Muhamad Fahat, S.H.','','196610111989031001','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(35,'196803081991031005','Imron Rosyidi, S.H.','','196803081991031005','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(36,'198507252008051001','Amrullah, S.H.I.','','198507252008051001','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(37,'198403222009042004','Etik Korniawati, S.H., M.H.','','198403222009042004','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(38,'198209032009041003','Hisni Mubarok, S.H.I., M.H.','','198209032009041003','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(39,'198406052006042002','Nur Holia, S.H., M.H.','','198406052006042002','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(40,'198505242006042001','Sujiati, S.H., M.H.','','198505242006042001','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(41,'197701262006042003','Rita Susanti, S.H.','','197701262006042003','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(42,'198603142006042003','Budy Setyo Rini, S.H.','','198603142006042003','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(43,'198210122005012001','Inayatus Salisya, S.H., M.H.','','198210122005012001','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(44,'197804132009121003','Mochamad Taufik, S.Ag.','','197804132009121003','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(45,'198204182009122003','Nengceu Siti Rohimah, S.H.I.','','198204182009122003','827ccb0eea8a706c4c34a16891f84e7b','','',10,'','sekretaris.png'),
(46,'196711301989031003','Zainal Arifin','','196711301989031003','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(47,'197006161998031003','Ombang Hasyim Ashari, S.Ag.','','197006161998031003','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(48,'198508222009041001','Agus Wiyono, A.Md.','','198508222009041001','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(49,'199609192019031003','Rezza Rijki Adiputra, A.Md.T.','','199609192019031003','827ccb0eea8a706c4c34a16891f84e7b','[\"28\",\"87\",\"48\",\"6\",\"25\",\"60\",\"5\",\"84\",\"76\",\"36\",\"26\",\"73\",\"82\",\"42\",\"89\",\"27\",\"17\",\"13\",\"11\",\"18\",\"14\",\"15\",\"21\",\"16\",\"7\",\"19\",\"8\",\"10\",\"9\",\"12\",\"2\",\"71\",\"75\",\"79\",\"30\",\"37\",\"62\",\"3\",\"81\",\"51\",\"38\",\"22\",\"85\",\"33\",\"86\",\"35\",\"43\",\"69\",\"56\",\"74\",\"20\",\"65\",\"','',14,'','sekretaris.png'),
(50,'198304042006041002','Sanjaya Langgeng Santoso','','198304042006041002','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(51,'198807072011011004','Handika Imom, S.Kom., M.H.','','198807072011011004','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(52,'198212252009041004','Yuri Ditya Putra Fernanda, A.Md.','','198212252009041004','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(53,'198109022003122001','Rina Marlina, S.E.','','198109022003122001','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(54,'196702151991031005','Sudiono','','196702151991031005','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(55,'197007022006041002','Raden Yadi Sumiadi W','','197007022006041002','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(56,'197010042014081001','Ismail','','197010042014081001','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(57,'197111031993031002','Sabar Kuswanto','','197111031993031002','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(58,'198511162011012016','Winahya Vembriarsi, A.Md.','','198511162011012016','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(59,'198709102009122007','Monika Septi Indriyani, A.Md.','','198709102009122007','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(60,'197109222006041004','Aji Djuanda Rachmad','','197109222006041004','827ccb0eea8a706c4c34a16891f84e7b','','',14,'','sekretaris.png'),
(61,'198603172019031007','Sehudin, S.H.','','198603172019031007','827ccb0eea8a706c4c34a16891f84e7b','','',15,'','sekretaris.png'),
(62,'199506252019032010','Evi Setyowati, S.Sos.','','199506252019032010','827ccb0eea8a706c4c34a16891f84e7b','','',15,'','sekretaris.png'),
(63,'199605042019032006','Sitti Avania Rizki, S.I.A.','','199605042019032006','827ccb0eea8a706c4c34a16891f84e7b','','',18,'','sekretaris.png'),
(64,'199405122021012001','Meita Dwi Ciptaningtias, S.Kom.','','199405122021012001','827ccb0eea8a706c4c34a16891f84e7b','','',19,'','sekretaris.png'),
(65,'196505161991032001','Marhamah','','196505161991032001','827ccb0eea8a706c4c34a16891f84e7b','','',20,'','sekretaris.png'),
(66,'199109042022032007','Triana Nurhasanah, A.Md','','199109042022032007','827ccb0eea8a706c4c34a16891f84e7b','','',21,'','sekretaris.png'),
(67,'199611112022032014','Nailah Ummi Huwaina, SH','','199611112022032014','827ccb0eea8a706c4c34a16891f84e7b','','',22,'','sekretaris.png'),
(68,'198512132020122002','Sri Maryati, A.Md.','','198512132020122002','827ccb0eea8a706c4c34a16891f84e7b','','',21,'','sekretaris.png'),
(69,'199512162020121004','Irvan Riditya Fauzi, A.Md.','','199512162020121004','827ccb0eea8a706c4c34a16891f84e7b','','',24,'','sekretaris.png'),
(70,'00001','Syahrullah, SH','','PPNPN01','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(71,'00002','Eka Yuniartie, S.Sos','','PPNPN02','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(72,'00003','Meicy Masyithoh, A.Md','','PPNPN03','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(73,'00004','Anjar Supriyanto','','PPNPN04','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(74,'00005','Jaja','','PPNPN05','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(75,'00006','Eko Sugiono','','PPNPN06','e10adc3949ba59abbe56e057f20f883e','','',17,'','sekretaris.png'),
(76,'00007','Ambo Tuwo','','PPNPN07','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(77,'00008','Timin','','PPNPN08','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(78,'00009','Syahrial','','PPNPN09','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(79,'00010','Endah','','PPNPN10','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(80,'00011','Uswatun Khasanah, S.IP','','PPNPN11','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(81,'00012','Hafsa Khairani Harahap, SH','','PPNPN12','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(82,'00013','Austriono','','PPNPN13','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(83,'00014','Titis Tri Alfani, A.Md','','PPNPN14','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(84,'00015','Ali Imron','','PPNPN15','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(85,'00016','Ijmal Alwan','','PPNPN16','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(86,'00017','Ilham Ramadhan','','PPNPN17','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(87,'00018','Achmad Rahimat','','PPNPN18','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(88,'00019','Muthia Rahmah','','PPNPN19','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(89,'00020','Canih','','PPNPN20','827ccb0eea8a706c4c34a16891f84e7b','','',17,'','sekretaris.png'),
(5,'196609301992021001','Akhmad Sahid, S.H.','','196609301992021001','827ccb0eea8a706c4c34a16891f84e7b','','',5,'','sekretaris.png'),
(4,'196901111991031003','Suhendra, S.Sos., M.M.','','196901111991031003','827ccb0eea8a706c4c34a16891f84e7b','','',6,'','sekretaris.png'),
(3,'197312311998031008','H. Ridwan Fauzi, S.Ag., M.H.','','197312311998031008','827ccb0eea8a706c4c34a16891f84e7b','','',3,'','sekretaris.png'),
(2,'196803041994031003','Drs.H. Subhan Fauzi, S.H., M.H.','','196803041994031003','827ccb0eea8a706c4c34a16891f84e7b','','',2,'','sekretaris.png');

/*Table structure for table `user_jabatan` */

DROP TABLE IF EXISTS `user_jabatan`;

CREATE TABLE `user_jabatan` (
  `id_jab` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_jab`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `user_jabatan` */

insert  into `user_jabatan`(`id_jab`,`nama_jabatan`,`created`,`updated`) values 
(3,'Wakil Ketua','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(4,'Hakim','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(5,'Panitera','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(6,'Sekretaris','2023-05-17 08:00:00','2023-05-17 09:47:07'),
(7,'Panitera Muda Hukum','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(8,'Panitera Muda Gugatan','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(9,'Panitera Muda Permohonan','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(10,'Panitera Pengganti','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(11,'Kepala Sub Bagian Perencanaan Teknologi Informasi, Dan Pelaporan','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(12,'Kepala Sub Bagian Umum dan Keuangan','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(13,'Kepala Sub Bagian Kepegawaian, Organisasi, Dan Tata Laksana','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(14,'Juru Sita','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(15,'Juru Sita Pengganti','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(16,'Staf','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(17,'PPNPN','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(1,'ICT','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(2,'Ketua','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(18,'Analis Kepegawaian Pertama','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(19,'Pranata Komputer Ahli Pertama','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(20,'Pengadministrasi Persuratan','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(21,'Pengelola Perkara','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(22,'Analis Perkara Peradilan','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(23,'Pengelola Perkara','2023-05-17 08:00:00','2023-05-17 08:00:00'),
(24,'Pengelola Barang Milik Negara','2023-05-17 08:00:00','2023-05-17 08:00:00');

/*Table structure for table `user_level` */

DROP TABLE IF EXISTS `user_level`;

CREATE TABLE `user_level` (
  `id_user` int(11) NOT NULL,
  `sm` char(1) NOT NULL DEFAULT 'N',
  `sk` char(1) NOT NULL DEFAULT 'N',
  `arsip` char(1) NOT NULL DEFAULT 'N',
  `cari_surat_masuk` char(1) NOT NULL DEFAULT 'N',
  `cari_surat_keluar` char(1) NOT NULL DEFAULT 'N',
  `template_surat` char(1) NOT NULL DEFAULT 'N',
  `atur_noagenda` char(1) NOT NULL DEFAULT 'N',
  `atur_layout` char(1) NOT NULL DEFAULT 'N',
  `report_dispo` char(1) NOT NULL DEFAULT 'N',
  `atur_klasifikasi_sm` char(1) NOT NULL DEFAULT 'N',
  `atur_klasifikasi_sk` char(1) NOT NULL DEFAULT 'N',
  `atur_klasifikasi_arsip` char(1) NOT NULL DEFAULT 'N',
  `atur_user` char(1) NOT NULL DEFAULT 'N',
  `atur_infoapp` char(1) NOT NULL DEFAULT 'N',
  `report_sm` char(1) DEFAULT 'N',
  `report_sk` char(1) NOT NULL DEFAULT 'N',
  `report_arsip` char(1) NOT NULL DEFAULT 'N',
  `report_progress` char(1) NOT NULL DEFAULT 'N',
  `info` char(1) NOT NULL DEFAULT 'N',
  `atur_tujuan_sk` char(1) NOT NULL DEFAULT 'N',
  `edaran` char(1) NOT NULL,
  `report_edaran` char(1) NOT NULL,
  `log_user` char(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_level` */

insert  into `user_level`(`id_user`,`sm`,`sk`,`arsip`,`cari_surat_masuk`,`cari_surat_keluar`,`template_surat`,`atur_noagenda`,`atur_layout`,`report_dispo`,`atur_klasifikasi_sm`,`atur_klasifikasi_sk`,`atur_klasifikasi_arsip`,`atur_user`,`atur_infoapp`,`report_sm`,`report_sk`,`report_arsip`,`report_progress`,`info`,`atur_tujuan_sk`,`edaran`,`report_edaran`,`log_user`) values 
(1,'W','W','W','N','N','N','N','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','W','','Y'),
(2,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(3,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(4,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(5,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(6,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(7,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(8,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(9,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(10,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(11,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(12,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(13,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(14,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(15,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(16,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(17,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(18,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(19,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(20,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(21,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(22,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(23,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(24,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(25,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(26,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(27,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(28,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(29,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(30,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(31,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(32,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(33,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(34,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(35,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(36,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(37,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(38,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(39,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(40,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(41,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(42,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(43,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(44,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(45,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(46,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(47,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(48,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(49,'R','R','R','N','N','N','N','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','N','','',''),
(50,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(51,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(52,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(53,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(54,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(55,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(56,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(57,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(58,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(59,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(60,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(61,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(62,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(63,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(64,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(65,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(66,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(67,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(68,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(69,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(70,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(71,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(72,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(73,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(74,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(75,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(76,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(77,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(78,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(79,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(80,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(81,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(82,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(83,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(84,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(85,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(86,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(87,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(88,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','',''),
(89,'R','R','R','N','N','N','N','','','','','','','N','','','','','Y','N','','','');

/*Table structure for table `user_log` */

DROP TABLE IF EXISTS `user_log`;

CREATE TABLE `user_log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `browser` varchar(25) NOT NULL,
  `url` varchar(150) NOT NULL,
  `keterangan` tinytext NOT NULL,
  `tgl_akses` datetime NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_log` */

/*Table structure for table `user_satker` */

DROP TABLE IF EXISTS `user_satker`;

CREATE TABLE `user_satker` (
  `id_satker` int(11) NOT NULL AUTO_INCREMENT,
  `nama_satker` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_satker`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

/*Data for the table `user_satker` */

insert  into `user_satker`(`id_satker`,`nama_satker`,`created`,`updated`) values 
(27,'ICT','2018-07-22 15:48:09','2018-07-22 15:48:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
