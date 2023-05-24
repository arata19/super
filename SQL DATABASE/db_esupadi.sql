-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2021 at 08:29 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_supadi`
--

-- --------------------------------------------------------

--
-- Table structure for table `arsip_file`
--

CREATE TABLE `arsip_file` (
  `id_arsip` int(11) NOT NULL,
  `id_user` varchar(25) NOT NULL,
  `id_klasifikasi` varchar(25) NOT NULL,
  `no_arsip` varchar(100) NOT NULL,
  `tgl_arsip` date NOT NULL,
  `keamanan` varchar(100) NOT NULL,
  `ket` tinytext NOT NULL,
  `file_arsip` tinytext NOT NULL,
  `tgl_upload` date NOT NULL,
  `created` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arsip_sk`
--

CREATE TABLE `arsip_sk` (
  `id_sk` int(11) NOT NULL,
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
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arsip_sk_kpa`
--

CREATE TABLE `arsip_sk_kpa` (
  `id_sk` int(11) NOT NULL,
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
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arsip_sm`
--

CREATE TABLE `arsip_sm` (
  `id_sm` int(11) NOT NULL,
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
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arsip_sm`
--

INSERT INTO `arsip_sm` (`id_sm`, `id_user`, `no_sm`, `tgl_terima`, `no_agenda`, `custom_noagenda`, `klasifikasi`, `tgl_surat`, `pengirim`, `tujuan_surat`, `perihal`, `ket`, `file`, `view`, `created`) VALUES
(2, '1', '123', '2021-03-08', '1', '0001/123/SM/2021', '35', '2021-03-05', 'Badilag', '[\"1\"]', 'Pengelolaan ICT', 'Segera', 'SM_08-03-2021_pengelolaan-ict_05-03-2021_09-22-16.pdf', 0, '2021-03-05 09:22:16'),
(3, '1', '12356', '2021-03-05', '2', '0002/123/SM/2021', '35', '2021-03-05', 'Badilag', '[\"1\"]', 'ujian', '', '', 0, '2021-03-05 09:27:25'),
(4, '1', '3456', '2021-03-05', '3', '0003/123/SM/2021', '35', '2021-03-04', 'Badilag', '[\"92\"]', 'adsasa', '', '', 0, '2021-03-05 09:35:47'),
(5, '1', '12356', '2021-03-06', '0004/123/SM/2021', '0004/123/SM/2021', '35', '2021-03-05', 'admin', '[\"106\"]', 'lembur', '', '', 0, '2021-03-06 12:30:52'),
(6, '1', '666666', '2021-03-06', '5', '0005/123/SM/2021', '35', '2021-03-05', 'admin', '[\"106\"]', 'cek lembur', '1234', '', 0, '2021-03-06 12:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id_bag` int(11) NOT NULL,
  `nama_bagian` tinytext NOT NULL,
  `kepala` varchar(100) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_setting`
--

CREATE TABLE `email_setting` (
  `id` int(11) NOT NULL,
  `id_kop` varchar(15) NOT NULL,
  `layout` text NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'N',
  `ket` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_setting`
--

INSERT INTO `email_setting` (`id`, `id_kop`, `layout`, `status`, `ket`) VALUES
(11, '1', '<p>Yth Bpk/Ibu :</p>\r\n<p><strong>=TembusanV=</strong></p>\r\n<p>Anda mendapat tembusan surat masuk baru dari <strong>=DisposisiOleh=</strong> dengan ket :<br /><br />Nomor agenda : <strong>=NoAgenda=</strong><br />Nomor surat : <strong>=NoSurat=</strong><br />Perihal surat : <strong>=Perihal=</strong><br />Surat Dari : <strong>=AsalSurat=</strong><br />Keterangan : <strong>=Keterangan=</strong><br />Tanggal surat : <strong>=TglSurat=</strong><br />Tanggal terima : <strong>=TglTerima=</strong><br />Tanggal ditembuskan: <strong>=TglDisposisi=</strong></p>\r\n<p>Terimakasih.</p>', 'Y', 'Format Email Penerima Tembusan Surat Masuk'),
(12, '2', '<p>Yth Bapak/Ibu :<br /><strong>=TujuanSurat=</strong></p>\r\n<p>Anda mendapat surat masuk baru dari <strong>=AsalSurat=</strong> perihal <strong>=Perihal=</strong>. Surat diterima pada tanggal <strong>=TglTerima= </strong>yang diterima oleh <strong>=Penerima=</strong>&nbsp;dengan ket:</p>\r\n<p>Nomor agenda : <strong>=NoAgenda=</strong><br />Nomor surat : <strong>=NoSurat=</strong><br />Tanggal surat : <strong>=TglSurat=<br /></strong>keterangan&nbsp;:<strong> =Keterangan=<br /></strong></p>\r\n<p>Terimakasih.</p>', 'Y', 'Format Email Penerima Surat Masuk'),
(13, '3', '<p>Yth Bapak/Ibu :<br /><strong>=Disposisi=</strong></p>\r\n<p>Anda mendapat disposisi surat masuk baru dari <strong>=DisposisiOleh=</strong> dengan ket :<br /><br />Nomor agenda : <strong>=NoAgenda=</strong><br />Nomor surat : <strong>=NoSurat=</strong><br />Perihal surat : <strong>=Perihal=</strong><br />Surat Dari : <strong>=AsalSurat=</strong><br />Keterangan : <strong>=Keterangan=</strong><br />Tanggal surat : <strong>=TglSurat=</strong><br />Tanggal terima : <strong>=TglTerima=</strong><br />Catatan disposisi : <br /><strong>=NoteDisposisi=</strong><br />Tanggal disposisi : <strong>=TglDisposisi=<br /></strong>Tembusan : <br /><strong>=TembusanV=<br /></strong>Surat Diteruskan ke:<br /><strong>=TujuanSurat=</strong><strong><br /></strong></p>\r\n<p>Terimakasih.</p>', 'Y', 'Format Email Penerima Disposisi Surat Masuk'),
(26, '4', '<p>Yth Bpk/Ibu :</p>\r\n<p><strong>=TujuanMemo=</strong></p>\r\n<p>Anda mendapat memo baru perihal <strong>=PerihalMemo=</strong> pada tanggal <strong>=TglMemo=</strong> dengan ket sebagai berikut :<br /><br /><em>=IsiMemo=</em></p>\r\n<p>Terimakasih.</p>', 'Y', 'Format Email Penerima Memo');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL,
  `pengirim_info` varchar(50) NOT NULL,
  `tujuan_info` varchar(200) NOT NULL,
  `judul_info` varchar(150) NOT NULL,
  `ket_info` text NOT NULL,
  `file` varchar(200) NOT NULL,
  `tgl_info` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id_info`, `pengirim_info`, `tujuan_info`, `judul_info`, `ket_info`, `file`, `tgl_info`) VALUES
(2, '1', '[\"106\"]', 'evaluasi', 'cek PPMZI', '', '2021-03-06 12:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi`
--

CREATE TABLE `klasifikasi` (
  `id_klas` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klasifikasi`
--

INSERT INTO `klasifikasi` (`id_klas`, `kode`, `nama`, `updated`, `created`) VALUES
(35, '123', 'Surat Rahasia', '2021-03-05 02:21:26', '2021-03-05');

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi_arsip`
--

CREATE TABLE `klasifikasi_arsip` (
  `id_klasifikasi` int(11) NOT NULL,
  `nama_klasifikasi` varchar(150) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi_sk`
--

CREATE TABLE `klasifikasi_sk` (
  `id_klas` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kop_setting`
--

CREATE TABLE `kop_setting` (
  `idkop` int(11) NOT NULL,
  `kopdefault` enum('Y','N') NOT NULL DEFAULT 'Y',
  `layout` text NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'N',
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kop_setting`
--

INSERT INTO `kop_setting` (`idkop`, `kopdefault`, `layout`, `status`, `ket`) VALUES
(1, 'Y', '<p style=\"color: #000000; font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;<span style=\"font-size: x-large;\"><strong><u>TANDA TERIMA SURAT CUSTOM <br /></u></strong></span></p>\r\n<table style=\"border-collapse: collapse; width: 699px;\" border=\"1\" align=\"center\">\r\n<tbody>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Telah terima dari</td>\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.224px;\" nowrap=\"nowrap\">=AsalSurat=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Nomor Surat</td>\r\n<td style=\"padding: 5px; width: 338.224px;\">=NoSurat=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Nomor Agenda</td>\r\n<td style=\"padding: 5px; width: 338.224px;\">=NoAgenda=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Tanggal Surat</td>\r\n<td style=\"padding: 5px; width: 338.224px;\">=TglSurat=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Tujuan Surat</td>\r\n<td style=\"padding: 5px; width: 338.224px;\">=TujuanSurat=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Tanggal Terima</td>\r\n<td style=\"padding: 5px; width: 338.224px;\">=TglTerima=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.776px;\" nowrap=\"nowrap\">Perihal</td>\r\n<td style=\"padding: 5px; vertical-align: top; width: 338.224px;\">=Perihal=</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table style=\"border-collapse: collapse; width: 699px;\" border=\"1\" align=\"center\">\r\n<tbody>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; width: 340.622px; text-align: center;\" nowrap=\"nowrap\">Yang Menyerahkan<br /><br /><br /><br /><br /><br /><strong>=AsalSurat=</strong></td>\r\n<td style=\"padding: 5px; width: 336.378px; text-align: center;\" nowrap=\"nowrap\">Yang Menerima<br /><br /><br /><br /><br /><br /><strong>=Penerima=</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"color: #000000; font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<div id=\"container\" style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div id=\"row\">\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n</div>\r\n</div>', 'N', 'Tanda Terima Surat'),
(2, 'Y', '<h3 style=\"text-align: center;\">SURAT MASUK CUSTOM</h3>\r\n<table style=\"border-collapse: collapse;\" border=\"1\" width=\"700\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Surat Dari</td>\r\n<td style=\"padding: 5px; vertical-align: top; width: 250;\" nowrap=\"nowrap\">=AsalSurat=</td>\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Diterima Tanggal</td>\r\n<td style=\"padding: 5px; vertical-align: top; width: 225;\" nowrap=\"nowrap\">=TglTerima=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Tanggal Surat</td>\r\n<td style=\"padding: 5px; vertical-align: top;\">=TglSurat=</td>\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Nomor Agenda</td>\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">=NoAgenda=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Nomor Surat</td>\r\n<td style=\"padding: 5px;\">=NoSurat=</td>\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Tujuan Surat</td>\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">=TujuanSurat=</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Perihal</td>\r\n<td style=\"padding: 5px; vertical-align: top;\">=Perihal=</td>\r\n<td style=\"padding: 5px; vertical-align: top;\" nowrap=\"nowrap\">Ket</td>\r\n<td style=\"padding: 5px; vertical-align: top;\">=Keterangan=</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'N', 'Detail Surat'),
(3, 'Y', '<h2 id=\"mcetoc_1bd3u8rgs1\" style=\"text-align: center;\"><strong><u>Disposisi Surat Custom<br /></u></strong></h2>\r\n<table style=\"border-collapse: collapse; width: 696px;\" border=\"1\" cellspacing=\"5\" cellpadding=\"5\" align=\"center\">\r\n<tbody>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Surat Dari</td>\r\n<td style=\"width: 190px; height: 17px;\">=AsalSurat=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Tanggal Surat</td>\r\n<td style=\"width: 190px; height: 17px;\">=TglSurat=</td>\r\n</tr>\r\n<tr style=\"height: 45px;\">\r\n<td style=\"width: 180px; height: 45px;\">Nomor Surat</td>\r\n<td style=\"width: 190px; height: 45px;\">=NoSurat=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Diterima Tanggal</td>\r\n<td style=\"width: 190px; height: 17px;\">=TglTerima=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Perihal</td>\r\n<td style=\"width: 190px; height: 17px;\">=Perihal=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Nomor Agenda</td>\r\n<td style=\"width: 190px; height: 17px;\">=NoAgenda=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Tujuan Surat</td>\r\n<td style=\"width: 190px; height: 17px;\">=TujuanSurat=</td>\r\n</tr>\r\n<tr style=\"height: 70.84375px;\">\r\n<td style=\"width: 180px; height: 70.84375px;\">Disposisi dari/ke</td>\r\n<td style=\"width: 190px; height: 70.84375px;\"><strong>=DisposisiOleh=</strong> ke :<br />=Disposisi=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Tanggal Disposisi</td>\r\n<td style=\"width: 190px; height: 17px;\">=TglDisposisi=</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 180px; height: 17px;\">Keterangan</td>\r\n<td style=\"width: 190px; height: 17px;\">=Keterangan=</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;</p>\r\n<table style=\"border-collapse: collapse; width: 700px;\" border=\"1\" cellspacing=\"5\" cellpadding=\"5\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 330.026px;\" nowrap=\"nowrap\">Tembusan:&nbsp;</td>\r\n<td style=\"width: 355.974px;\" nowrap=\"nowrap\">Catatan Disposisi:</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 330.026px;\">=TembusanV=</td>\r\n<td style=\"width: 355.974px;\">=NoteDisposisi=</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 686px;\" colspan=\"2\">Ditindak lanjuti oleh Kasie/Kasubbag, TU kepada Kasubsi/kaur:</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'Y', 'Disposisi');

-- --------------------------------------------------------

--
-- Table structure for table `kop_variabel`
--

CREATE TABLE `kop_variabel` (
  `variabel` varchar(100) NOT NULL,
  `ket` tinytext NOT NULL,
  `id_kop` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kop_variabel`
--

INSERT INTO `kop_variabel` (`variabel`, `ket`, `id_kop`) VALUES
('=AsalSurat=', 'Asal surat/pengirim surat ', '1,2,3'),
('=Disposisi=', 'Surat didisposisikan ke', '3'),
('=DisposisiOleh=', 'Yang Memberikan Disposisi', '3'),
('=IsiMemo=', 'Isi Memo/Pesan Singkat', '4'),
('=Keterangan=', 'Keterangan surat', '1,2,3'),
('=KetSuratEdaran=', 'Keterangan Surat Edaran', '5'),
('=NoAgenda=', 'Nomor agenda surat masuk', '1,2,3'),
('=NoSurat=', 'Nomor surat masuk', '1,2,3'),
('=NoSuratEdaran=', 'Nomor Surat Edaran', '5'),
('=NoteDisposisi=', 'Catatan disposisi', '3'),
('=Penerima=', 'Konseptor Surat', '1,2'),
('=PengirimEdaran=', 'Pengirim Surat Edaran', '5'),
('=Perihal=', 'Perihal surat', '1,2,3'),
('=PerihalEdaran=', 'Perihal Surat Edaran', '5'),
('=PerihalMemo=', 'Perihal Memo/Pesna Singkat', '4'),
('=TembusanH=', 'Tembusan surat (tampil tampil sebaris)', '3'),
('=TembusanV=', 'Tembusan surat (tampil per baris)', '3'),
('=TglDisposisi=', 'Tanggal surat didisposisi', '3'),
('=TglMemo=', 'Tanggal memo', '4'),
('=TglSurat=', 'Tanggal surat Masuk', '1,2,3'),
('=TglSuratEdaran=', 'Tanggal Surat Edaran', '5'),
('=TglTerima=', 'Tanggal terima Surat', '1,2,3'),
('=TujuanEdaran=', 'Tujuan Surat Edaran', '5'),
('=TujuanMemo=', 'Tujuan Memo', '4'),
('=TujuanSurat=', 'Tujuan Surat Masuk', '1,2,3');

-- --------------------------------------------------------

--
-- Table structure for table `memo`
--

CREATE TABLE `memo` (
  `id_status` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `id_sm` varchar(200) NOT NULL,
  `disposisi` varchar(100) NOT NULL,
  `tembusan` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `tgl` datetime NOT NULL,
  `ref` varchar(6) NOT NULL,
  `file_memo` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memo`
--

INSERT INTO `memo` (`id_status`, `id_user`, `id_sm`, `disposisi`, `tembusan`, `note`, `tgl`, `ref`, `file_memo`) VALUES
(1, '1', '2', '[\"106\"]', '[\"1\"]', 'selesaikan', '2021-03-06 13:13:59', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

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
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `title`, `deskripsi`, `logo`, `no_agenda_sm_start`, `no_agenda_sm`, `no_agenda_sk_start`, `no_agenda_sk`, `no_agenda_sk_kapolda_start`, `no_agenda_kapolda_sk`, `email`, `pass_email`, `updated`) VALUES
(1, 'E-SUPADI - ELEKTRONIK SURAT DAN  PENGELOLAAN NASKAH DINAS', 'E-SUPADI - ELEKTRONIK SURAT DAN  PENGELOLAAN NASKAH DINAS', 'KOP_05-03-2021_09-39-55.png', '1', '=KodeSurat=/SM/=Tahun=', '1', 'B/=KodeSurat=/=Bulan=/KKA/=Tahun=', '1', 'KAPOLDA/=KodeSurat=/=Bulan=/KKA/=Tahun=', '', '', '2021-03-06 05:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `status_surat`
--

CREATE TABLE `status_surat` (
  `id_status` int(15) NOT NULL,
  `id_sm` varchar(15) NOT NULL,
  `statsurat` char(1) NOT NULL,
  `id_user` varchar(15) NOT NULL,
  `ket` tinytext NOT NULL,
  `file_progress` varchar(100) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_surat`
--

INSERT INTO `status_surat` (`id_status`, `id_sm`, `statsurat`, `id_user`, `ket`, `file_progress`, `created`) VALUES
(5, '2', '1', '1', 'Akan ditindaklanjuti', '', '2021-03-06 13:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `surat_read`
--

CREATE TABLE `surat_read` (
  `id_sm` varchar(15) NOT NULL,
  `id_user` varchar(11) NOT NULL,
  `kode` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_read`
--

INSERT INTO `surat_read` (`id_sm`, `id_user`, `kode`) VALUES
('1', '19', 'INFO'),
('1', '31', 'DIS'),
('1', '45', 'SM'),
('1', '85', 'INFO'),
('1', '85', 'SM'),
('10', '73', 'INFO'),
('11', '1', 'CC'),
('11', '1', 'SM'),
('11', '49', 'CC'),
('11', '49', 'DIS'),
('12', '18', 'SM'),
('13', '60', 'SM'),
('14', '60', 'SM'),
('14', '72', 'DIS'),
('16', '90', 'SM'),
('2', '1', 'CC'),
('2', '1', 'SM'),
('2', '106', 'DIS'),
('2', '106', 'INFO'),
('2', '19', 'DIS'),
('2', '19', 'INFO'),
('2', '44', 'SM'),
('2', '46', 'DIS'),
('2', '47', 'SM'),
('3', '1', 'SM'),
('3', '19', 'INFO'),
('3', '19', 'SM'),
('3', '46', 'DIS'),
('4', '19', 'DIS'),
('4', '44', 'SM'),
('4', '46', 'DIS'),
('4', '47', 'SM'),
('5', '106', 'SM'),
('5', '19', 'SM'),
('5', '46', 'DIS'),
('5', '48', 'SM'),
('6', '44', 'DIS'),
('6', '44', 'SM'),
('6', '47', 'SM'),
('6', '60', 'INFO'),
('7', '72', 'INFO'),
('8', '1', 'SM'),
('8', '60', 'INFO'),
('9', '72', 'INFO');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `satker` varchar(10) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `upass` varchar(150) NOT NULL,
  `rule_disposisi` tinytext NOT NULL,
  `level` varchar(100) NOT NULL,
  `jabatan` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `picture` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nik`, `nama`, `satker`, `uname`, `upass`, `rule_disposisi`, `level`, `jabatan`, `email`, `picture`) VALUES
(1, '123', 'Administrator', '27', 'admin', '21232f297a57a5a743894a0e4a801fc3', '[\"106\"]', 'Admin', 57, '', 'picture.jpg'),
(106, '199506252019032010', 'EVI SETYOWATI, S.Sos.', '', '199506252019032010', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 254, '', 'sekretaris.png'),
(104, '197507182000032001', 'AISYAH THALIB, S.Ag.', '', '197507182000032001', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 245, '', 'sekretaris.png'),
(105, '196905251989031006', 'Suroyo, S.H.', '', '196905251989031006', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 252, '', 'sekretaris.png'),
(103, '197812282001122002', 'Hj.QURRATUL `AINI WARA HASTUTI, S.Ag., M.Hum.', '', '197812282001122002', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 248, '', 'sekretaris.png'),
(102, '198008012009121003', 'ACHMAD MUBAROK, S.H.I.', '', '198008012009121003', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 251, '', 'sekretaris.png'),
(100, '196505211990031007', 'DJUHDAN MUHAROM, S.H.', '', '196505211990031007', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 249, '', 'sekretaris.png'),
(101, '196604221992032001', 'ANIMAR', '', '196604221992032001', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 250, '', 'sekretaris.png'),
(99, '197305062002121006', 'RIFA`I, S.H., M.H.', '', '197305062002121006', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 247, '', 'sekretaris.png'),
(98, '196812051989021001', 'RUSLAN, S.H., M.H.', '', '196812051989021001', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 246, '', 'sekretaris.png'),
(97, '196407051992031002', 'H. Fauzan, S.H., M.H., M.M.', '', '196407051992031002', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 244, '', 'sekretaris.png'),
(96, '196609301992021001', 'Akhmad Sahid, S.H', '', '196609301992021001', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 243, '', 'sekretaris.png'),
(95, '196507261992031001', 'Drs. AZHAR MAYANG, M.H.I.', '', '196507261992031001', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 242, '', 'sekretaris.png'),
(93, '196804011994031005', 'Dr. Drs. H. SUPADI, M.H.', '', '196804011994031005', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 240, '', 'sekretaris.png'),
(94, '196504051992031006', 'Dr. H. FAUZAN, S.H., M.M., M.H.', '', '196504051992031006', '827ccb0eea8a706c4c34a16891f84e7b', 'null', '', 241, '', 'sekretaris.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_jabatan`
--

CREATE TABLE `user_jabatan` (
  `id_jab` int(11) NOT NULL,
  `nama_jabatan` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_jabatan`
--

INSERT INTO `user_jabatan` (`id_jab`, `nama_jabatan`, `created`, `updated`) VALUES
(57, 'ICT', '2018-07-22 15:47:47', '2018-07-22 08:47:47'),
(255, 'PPNPN', '2021-03-06 11:54:14', '2021-03-06 04:54:14'),
(254, 'Staf', '2021-03-06 11:53:57', '2021-03-06 04:53:57'),
(253, 'Jurusita Pengganti', '2021-03-06 11:53:46', '2021-03-06 04:53:46'),
(252, 'Jurusita', '2021-03-06 11:53:30', '2021-03-06 04:53:30'),
(251, 'Kepala Sub Bagian Kepegawaian, Organisasi dan Tata Laksana', '2021-03-06 11:53:01', '2021-03-06 04:53:01'),
(250, 'Kepala Sub Bagian Umum dan Keuangan', '2021-03-06 11:52:54', '2021-03-06 04:52:54'),
(249, 'Kepala Sub Bagian Perencanaan, Teknologi Informasi', '2021-03-06 11:52:45', '2021-03-06 04:52:45'),
(248, 'Panitera Pengganti', '2021-03-06 11:52:33', '2021-03-06 04:52:33'),
(247, 'Panitera Muda Permohonan', '2021-03-06 11:52:22', '2021-03-06 04:52:22'),
(246, 'Panitera Muda Gugatan', '2021-03-06 11:52:14', '2021-03-06 04:52:14'),
(245, 'Panitera Muda Hukum', '2021-03-06 11:52:06', '2021-03-06 04:52:06'),
(244, 'Sekretaris', '2021-03-06 11:51:40', '2021-03-06 04:51:40'),
(243, 'Panitera', '2021-03-06 11:51:35', '2021-03-06 04:51:35'),
(242, 'Hakim', '2021-03-06 11:51:22', '2021-03-06 04:51:22'),
(241, 'Wakil Ketua', '2021-03-06 11:51:18', '2021-03-06 04:51:18'),
(240, 'Ketua', '2021-03-06 11:51:11', '2021-03-06 04:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

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
  `log_user` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id_user`, `sm`, `sk`, `arsip`, `cari_surat_masuk`, `cari_surat_keluar`, `template_surat`, `atur_noagenda`, `atur_layout`, `report_dispo`, `atur_klasifikasi_sm`, `atur_klasifikasi_sk`, `atur_klasifikasi_arsip`, `atur_user`, `atur_infoapp`, `report_sm`, `report_sk`, `report_arsip`, `report_progress`, `info`, `atur_tujuan_sk`, `edaran`, `report_edaran`, `log_user`) VALUES
(1, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'W', '', 'Y'),
(2, 'R', 'R', 'R', 'N', 'N', 'N', 'N', '', 'Y', '', 'N', '', '', 'N', 'Y', 'Y', 'Y', '', 'N', '', '', '', ''),
(3, 'W', 'W', 'W', 'Y', 'Y', 'W', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', 'W', 'Y', ''),
(9, 'R', 'R', 'R', 'N', 'N', 'N', 'N', '', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', '', '', '', ''),
(10, 'R', 'R', 'R', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', ''),
(11, 'R', 'R', 'R', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', ''),
(12, '', '', '', 'N', 'N', 'N', 'N', '', '', '', 'N', '', '', 'N', '', '', '', '', 'N', '', '', '', ''),
(17, 'W', 'W', '', 'N', 'N', 'N', 'N', '', '', '', '', '', '', 'N', '', '', '', '', '', 'N', '', '', ''),
(18, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(19, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(20, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(21, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(22, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(23, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(24, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(25, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(26, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(27, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(28, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(29, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(30, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(31, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(32, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(33, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(34, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(35, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(36, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(37, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(38, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(39, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(40, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(41, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(42, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(43, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(44, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(45, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(46, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(47, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(48, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', '', '', ''),
(50, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'N'),
(51, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'N'),
(52, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', '', '', 'N'),
(53, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(54, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(55, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(56, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(57, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(58, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(59, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(60, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(61, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(62, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(63, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(64, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(65, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(66, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(67, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(68, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(69, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(70, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(71, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', 'N'),
(72, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(73, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(74, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(75, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(76, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(77, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(78, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(79, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(80, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(81, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(82, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(83, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(84, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(85, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'Y'),
(86, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', '', '', 'N'),
(87, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', '', '', 'N'),
(88, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'N'),
(89, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', 'N'),
(90, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', '', '', 'N'),
(93, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(94, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(95, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(96, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(97, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(98, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(99, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(100, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(101, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(102, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(103, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(104, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(105, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', ''),
(106, 'W', 'W', 'W', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `id_log` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `browser` varchar(25) NOT NULL,
  `url` varchar(150) NOT NULL,
  `keterangan` tinytext NOT NULL,
  `tgl_akses` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_satker`
--

CREATE TABLE `user_satker` (
  `id_satker` int(11) NOT NULL,
  `nama_satker` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_satker`
--

INSERT INTO `user_satker` (`id_satker`, `nama_satker`, `created`, `updated`) VALUES
(27, 'ICT', '2018-07-22 15:48:09', '2018-07-22 08:48:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arsip_file`
--
ALTER TABLE `arsip_file`
  ADD PRIMARY KEY (`id_arsip`);

--
-- Indexes for table `arsip_sk`
--
ALTER TABLE `arsip_sk`
  ADD PRIMARY KEY (`id_sk`);

--
-- Indexes for table `arsip_sk_kpa`
--
ALTER TABLE `arsip_sk_kpa`
  ADD PRIMARY KEY (`id_sk`);

--
-- Indexes for table `arsip_sm`
--
ALTER TABLE `arsip_sm`
  ADD PRIMARY KEY (`id_sm`);

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id_bag`);

--
-- Indexes for table `email_setting`
--
ALTER TABLE `email_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `klasifikasi`
--
ALTER TABLE `klasifikasi`
  ADD PRIMARY KEY (`id_klas`);

--
-- Indexes for table `klasifikasi_arsip`
--
ALTER TABLE `klasifikasi_arsip`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indexes for table `klasifikasi_sk`
--
ALTER TABLE `klasifikasi_sk`
  ADD PRIMARY KEY (`id_klas`);

--
-- Indexes for table `kop_setting`
--
ALTER TABLE `kop_setting`
  ADD PRIMARY KEY (`idkop`);

--
-- Indexes for table `kop_variabel`
--
ALTER TABLE `kop_variabel`
  ADD PRIMARY KEY (`variabel`);

--
-- Indexes for table `memo`
--
ALTER TABLE `memo`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_surat`
--
ALTER TABLE `status_surat`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `surat_read`
--
ALTER TABLE `surat_read`
  ADD PRIMARY KEY (`id_sm`,`id_user`,`kode`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_jabatan`
--
ALTER TABLE `user_jabatan`
  ADD PRIMARY KEY (`id_jab`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `user_satker`
--
ALTER TABLE `user_satker`
  ADD PRIMARY KEY (`id_satker`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arsip_file`
--
ALTER TABLE `arsip_file`
  MODIFY `id_arsip` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arsip_sk`
--
ALTER TABLE `arsip_sk`
  MODIFY `id_sk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arsip_sk_kpa`
--
ALTER TABLE `arsip_sk_kpa`
  MODIFY `id_sk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arsip_sm`
--
ALTER TABLE `arsip_sm`
  MODIFY `id_sm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id_bag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email_setting`
--
ALTER TABLE `email_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `klasifikasi`
--
ALTER TABLE `klasifikasi`
  MODIFY `id_klas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `klasifikasi_arsip`
--
ALTER TABLE `klasifikasi_arsip`
  MODIFY `id_klasifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `klasifikasi_sk`
--
ALTER TABLE `klasifikasi_sk`
  MODIFY `id_klas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `memo`
--
ALTER TABLE `memo`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status_surat`
--
ALTER TABLE `status_surat`
  MODIFY `id_status` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `user_jabatan`
--
ALTER TABLE `user_jabatan`
  MODIFY `id_jab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user_satker`
--
ALTER TABLE `user_satker`
  MODIFY `id_satker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
