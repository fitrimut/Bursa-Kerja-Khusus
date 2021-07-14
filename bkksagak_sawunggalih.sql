-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2021 at 08:19 PM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bkksagak_sawunggalih`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_agenda`
--

CREATE TABLE `tb_agenda` (
  `evt_id` int(11) NOT NULL,
  `evt_name` varchar(100) DEFAULT NULL,
  `evt_tempat` varchar(200) DEFAULT NULL,
  `evt_time` varchar(20) DEFAULT NULL,
  `evt_date` date DEFAULT NULL,
  `evt_main` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_agenda`
--

INSERT INTO `tb_agenda` (`evt_id`, `evt_name`, `evt_tempat`, `evt_time`, `evt_date`, `evt_main`) VALUES
(8, 'PT. INDAH CARGO YOGYAKARTA', 'SMKN 1 PURWOREJO', '02:00', '2021-02-03', '<p>Mengunakan pakaian sopan, dan membawa peralatan tulis sendiri Wajib</p>'),
(9, 'CV. SETIA ABADI', 'Kantor BKK Karya Saga Pusat', '09:30', '2021-01-27', '<p>adsdadasdas</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_alumni`
--

CREATE TABLE `tb_alumni` (
  `alumni_id` int(11) NOT NULL,
  `alumni_nama` varchar(100) DEFAULT NULL,
  `alumni_jurusan` varchar(50) DEFAULT NULL,
  `alumni_sekolah` varchar(100) DEFAULT NULL,
  `alumni_posisi` varchar(100) DEFAULT NULL,
  `alumni_corp` varchar(200) NOT NULL,
  `alumni_masuk` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_alumni`
--

INSERT INTO `tb_alumni` (`alumni_id`, `alumni_nama`, `alumni_jurusan`, `alumni_sekolah`, `alumni_posisi`, `alumni_corp`, `alumni_masuk`) VALUES
(7, 'Windi Apriani', 'Akuntansi', 'SMK YPE Sawunggalih Kutoarjo', 'Manager', 'PT. Prima Abadi Tbk', '2021-01-20'),
(8, 'Ela Agustin', 'Administrasi Perkantoran', 'SMK YPE Sawunggalih Kutoarjo', 'Kepala Cabang', 'PT. Prima Abadi Tbk', '2021-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `tb_company`
--

CREATE TABLE `tb_company` (
  `co_id` int(11) NOT NULL,
  `co_nama` varchar(100) DEFAULT NULL,
  `co_email` varchar(100) DEFAULT NULL,
  `co_password` varchar(50) DEFAULT NULL,
  `co_telepon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_company`
--

INSERT INTO `tb_company` (`co_id`, `co_nama`, `co_email`, `co_password`, `co_telepon`) VALUES
(1, 'asdadhg', 't@gmail.com', '11111', '1238726'),
(2, 'PT. Prima Abadi Tbk', 'tony.hardyanto28@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '081818556143'),
(3, 'Perusahaan ASTRA', 'Tianafitri15@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0834567387656');

-- --------------------------------------------------------

--
-- Table structure for table `tb_history`
--

CREATE TABLE `tb_history` (
  `his_id` int(11) NOT NULL,
  `his_nik` varchar(16) DEFAULT NULL,
  `his_nama` varchar(50) DEFAULT NULL,
  `his_jurusan` varchar(30) DEFAULT NULL,
  `his_sekolah` varchar(100) DEFAULT NULL,
  `his_telepon` varchar(15) DEFAULT NULL,
  `his_company` varchar(100) DEFAULT NULL,
  `his_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_history`
--

INSERT INTO `tb_history` (`his_id`, `his_nik`, `his_nama`, `his_jurusan`, `his_sekolah`, `his_telepon`, `his_company`, `his_date`) VALUES
(1, '5566552277888878', 'M.Yusuf', 'Teknik Sepeda Motor', 'SMKN 1 Purworejo', '0877665522776', 'PT. MENCARI CINTA SEJATI', '2021-01-13'),
(2, '3864926424028476', 'Toni Hardianto', 'IPA', 'Yang Jelas Bukan SMK', '0863526245734', 'PT. INDAH CARGO', '2021-01-08'),
(3, '7470264024602864', 'Windi Apriani', 'IPA', 'Yang Jelas Bukan SMK', '086352725164', 'PT. INDAH CARGO YOGYAKARTA', '2021-01-11'),
(4, '7470264024602864', 'Windi Apriani', 'IPA', 'Yang Jelas Bukan SMK', '086352725164', 'PT. MENCARI CINTA SEJATI JILID II', '2021-01-05'),
(5, '7470264024602864', 'Windi Apriani', 'IPA', 'Yang Jelas Bukan SMK', '086352725164', 'PT. ASTRA HONDA MOTOR', '2021-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info`
--

CREATE TABLE `tb_info` (
  `info_id` int(11) NOT NULL,
  `info_nama` varchar(100) DEFAULT NULL,
  `info_tanggal` date DEFAULT NULL,
  `info_isi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_info`
--

INSERT INTO `tb_info` (`info_id`, `info_nama`, `info_tanggal`, `info_isi`) VALUES
(2, 'Selamat Datang', '2021-01-07', 'Selamt datang para pencari kerja :)');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `jur_id` int(11) NOT NULL,
  `jur_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`jur_id`, `jur_nama`) VALUES
(1, 'Akuntansi'),
(2, 'Teknik Sepeda Motor'),
(3, 'Teknik Komputer dan Jaringan'),
(4, 'Adminitrasi Perkantoran'),
(5, 'Tata Busana'),
(6, 'Pemasaran');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(20) DEFAULT NULL,
  `kelas_jur_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`kelas_id`, `kelas_nama`, `kelas_jur_id`) VALUES
(1, 'AK1', 1),
(2, 'AK2', 1),
(3, 'AK3', 1),
(4, 'AK4', 1),
(5, 'TSM1', 2),
(6, 'TSM2', 2),
(7, 'TSM3', 2),
(8, 'TSM4', 2),
(9, 'TKJ1', 3),
(10, 'TKJ2', 3),
(11, 'TKJ3', 3),
(12, 'TKJ4', 3),
(13, 'AP1', 4),
(14, 'AP2', 4),
(15, 'AP3', 4),
(16, 'AP4', 4),
(17, 'PMS1', 6),
(18, 'PMS2', 6),
(19, 'PMS3', 6),
(20, 'PMS4', 6),
(21, 'TB1', 5),
(22, 'TB2', 5),
(23, 'TB3', 5),
(24, 'TB4', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lamaran`
--

CREATE TABLE `tb_lamaran` (
  `lamaran_id` int(11) NOT NULL,
  `lamaran_nama` varchar(100) DEFAULT NULL,
  `lamaran_tempat` varchar(100) DEFAULT NULL,
  `lamaran_lahir` date DEFAULT NULL,
  `lamaran_tb` varchar(3) DEFAULT NULL,
  `lamaran_bb` varchar(3) DEFAULT NULL,
  `lamaran_alamat` varchar(200) DEFAULT NULL,
  `lamaran_kk` varchar(16) DEFAULT NULL,
  `lamaran_nik` varchar(16) DEFAULT NULL,
  `lamaran_jurusan` varchar(100) DEFAULT NULL,
  `lamaran_sekolah` varchar(100) DEFAULT NULL,
  `lamaran_bkk` varchar(100) DEFAULT NULL,
  `lamaran_hp` varchar(15) DEFAULT NULL,
  `lamaran_email` varchar(100) DEFAULT NULL,
  `lamaran_berkas` varchar(100) DEFAULT NULL,
  `lamaran_loker_id` int(11) DEFAULT NULL,
  `lamaran_loker_nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_lamaran`
--

INSERT INTO `tb_lamaran` (`lamaran_id`, `lamaran_nama`, `lamaran_tempat`, `lamaran_lahir`, `lamaran_tb`, `lamaran_bb`, `lamaran_alamat`, `lamaran_kk`, `lamaran_nik`, `lamaran_jurusan`, `lamaran_sekolah`, `lamaran_bkk`, `lamaran_hp`, `lamaran_email`, `lamaran_berkas`, `lamaran_loker_id`, `lamaran_loker_nama`) VALUES
(1, 'M.Yusuf', 'Batang', '1998-02-15', '175', '55', 'DS. Katerban RT 03/ RW 03 Purworejo', '6565545645477888', '5566552277888878', 'Teknik Sepeda Motor', 'SMKN 1 Purworejo', 'BKK KARYA SAGA', '0877665522776', 'tianafitri15@gmail.com', 'db861b2d936222d0ea8afbbc97e050d52.zip', 8, 'PT. MENCARI CINTA SEJATI'),
(2, 'Toni Hardianto', 'OKU Timur', '2021-01-28', '174', '55', 'Sleman, Yogyakarta', '3824692648462764', '3864926424028476', 'IPA', 'Yang Jelas Bukan SMK', 'BKK ANU', '0863526245734', 'tony.hardyanto28@gmail.com', '22ba7f2fa2caf98b1835d4e6547794a83.zip', 8, 'PT. INDAH CARGO'),
(3, 'Windi Apriani', 'OKU Timur', '2021-01-21', '165', '50', 'Palembang', '2849753975975973', '7470264024602864', 'IPA', 'Yang Jelas Bukan SMK', 'BKK KARYA SAWUNGGALIH', '086352725164', 'toni.hardyanto28@gmail.com', '22ba7f2fa2caf98b1835d4e6547794a84.zip', 8, 'PT. INDAH CARGO YOGYAKARTA'),
(4, 'Windi Apriani', 'OKU Timur', '2021-01-21', '165', '50', 'Palembang', '2849753975975973', '7470264024602864', 'IPA', 'Yang Jelas Bukan SMK', 'BKK KARYA SAWUNGGALIH', '086352725164', 'toni.hardyanto28@gmail.com', 'db861b2d936222d0ea8afbbc97e050d53.zip', 9, 'PT. MENCARI CINTA SEJATI JILID II'),
(5, 'Windi Apriani', 'OKU Timur', '2021-01-21', '165', '50', 'Palembang', '2849753975975973', '7470264024602864', 'IPA', 'Yang Jelas Bukan SMK', 'BKK KARYA SAWUNGGALIH', '086352725164', 'toni.hardyanto28@gmail.com', '22ba7f2fa2caf98b1835d4e6547794a85.zip', 12, 'PT. ASTRA HONDA MOTOR');

-- --------------------------------------------------------

--
-- Table structure for table `tb_loker`
--

CREATE TABLE `tb_loker` (
  `loker_id` int(11) NOT NULL,
  `loker_judul` varchar(50) DEFAULT NULL,
  `loker_tgl_buka` varchar(50) DEFAULT NULL,
  `loker_posisi` varchar(100) DEFAULT NULL,
  `loker_status` varchar(50) DEFAULT 'Aktif',
  `loker_detail` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_loker`
--

INSERT INTO `tb_loker` (`loker_id`, `loker_judul`, `loker_tgl_buka`, `loker_posisi`, `loker_status`, `loker_detail`) VALUES
(8, 'PT. INDAH CARGO YOGYAKARTA', '01/23/2021 - 01/23/2021', 'Kepala Cabang', 'Nonaktif', '<p style=\"outline: 0px; font-family: Hind, sans-serif; color: rgb(106, 122, 140); font-size: 14px;\"><b>PERSYARATAN :</b></p><p style=\"outline: 0px; font-family: Hind, sans-serif; color: rgb(106, 122, 140); font-size: 14px;\">- LAKI-LAKI & PEREMPUAN</p><p style=\"outline: 0px; font-family: Hind, sans-serif; color: rgb(106, 122, 140); font-size: 14px;\">- TINGKAT PENDIDIKAN S1 JURUSAN TEKHNIK SEPEDA MOTOR, ADM PERKANTORAN DAN PPKN</p><p style=\"outline: 0px; font-family: Hind, sans-serif; color: rgb(106, 122, 140); font-size: 14px;\">- DAPAT BERKOMUNIKASI DENGAN BAIK</p><p style=\"outline: 0px; font-family: Hind, sans-serif; color: rgb(106, 122, 140); font-size: 14px;\">- BERPRILAKU BAIK</p>'),
(9, 'PT. MENCARI CINTA SEJATI JILID II', '01/05/2021 - 02/18/2021', 'Manager', 'Nonaktif', 'Ini adalah contoh detail lowongan pekerjaan'),
(10, 'PT. INDOFOOD', '01/13/2021 - 02/19/2021', 'Operator', 'aktif', '<p><span style=\"color: rgb(33, 37, 41);\">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine</span><br></p>'),
(12, 'PT. ASTRA HONDA MOTOR', '01/07/2021 - 02/17/2021', 'Management Service', 'aktif', '<p><span style=\"color: rgb(33, 37, 41);\">There is a problem that we need to fix. A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mitra`
--

CREATE TABLE `tb_mitra` (
  `mitra_id` int(11) NOT NULL,
  `mitra_nama` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mitra`
--

INSERT INTO `tb_mitra` (`mitra_id`, `mitra_nama`) VALUES
(1, 'PT. Otomotif Cikarang'),
(2, 'PT. Sami Jepara'),
(3, 'PT. Elektronik Cikarang'),
(4, 'Perusahaan Group Astra'),
(5, 'Solaria Restauran'),
(6, 'PT. Ungaran Sari Garment');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelamar`
--

CREATE TABLE `tb_pelamar` (
  `lamar_id` int(11) NOT NULL,
  `lamar_password` varchar(100) DEFAULT NULL,
  `lamar_nik` varchar(16) DEFAULT NULL,
  `lamar_no_kk` varchar(16) DEFAULT NULL,
  `lamar_nama` varchar(100) DEFAULT NULL,
  `lamar_tempat_lahir` varchar(50) DEFAULT NULL,
  `lamar_tgl_lahir` date DEFAULT NULL,
  `lamar_tb` varchar(3) DEFAULT NULL,
  `lamar_bb` varchar(3) DEFAULT NULL,
  `lamar_jk` varchar(25) DEFAULT NULL,
  `lamar_agama` varchar(20) DEFAULT NULL,
  `lamar_jurusan` varchar(50) DEFAULT NULL,
  `lamar_asal_sekolah` varchar(100) DEFAULT NULL,
  `lamar_alamat` varchar(200) DEFAULT NULL,
  `lamar_hp` varchar(15) DEFAULT NULL,
  `lamar_email` varchar(50) DEFAULT NULL,
  `lamar_bkk_pengirim` varchar(100) DEFAULT NULL,
  `lamar_status` varchar(25) DEFAULT 'Verified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pelamar`
--

INSERT INTO `tb_pelamar` (`lamar_id`, `lamar_password`, `lamar_nik`, `lamar_no_kk`, `lamar_nama`, `lamar_tempat_lahir`, `lamar_tgl_lahir`, `lamar_tb`, `lamar_bb`, `lamar_jk`, `lamar_agama`, `lamar_jurusan`, `lamar_asal_sekolah`, `lamar_alamat`, `lamar_hp`, `lamar_email`, `lamar_bkk_pengirim`, `lamar_status`) VALUES
(1, 'zCZtHsRi', '5566552277888878', '6565545645477888', 'M.Yusuf', 'Batang', '1998-02-15', '175', '55', 'Laki-laki', 'Islam', 'Teknik Sepeda Motor', 'SMKN 1 Purworejo', 'DS. Katerban RT 03/ RW 03 Purworejo', '0877665522776', 'tianafitri15@gmail.com', 'BKK KARYA SAGA', 'Verified'),
(2, '3DTQJvS2', '3864926424028476', '3824692648462764', 'Toni Hardianto', 'Ogan Komering Ulu Timur', '2021-01-28', '174', '55', 'Laki-laki', 'Islam', 'IPA', 'Yang Jelas Bukan SMK', 'Sleman, Yogyakarta', '0863526245734', 'tony.hardyanto28@gmail.com', 'BKK ANU', 'Verified'),
(3, '9bS1ivAZ', '3306152204890001', '3306011819180201', 'RIZA DWI SURACHMAN', 'Purworejo', '1989-04-22', '175', '55', 'Laki-laki', 'Islam', 'Nautika', 'Smk n 4 purworejo', 'Bandung rt 01 rw 01 kutoarjo purworejo', '085643315516', 'rizad6@gmail.com', 'BKK Karya', 'Verified'),
(4, 'wKilGCZ1', '7470264024602864', '2849753975975973', 'Windi Apriani', 'OKU Timur', '2021-01-21', '165', '50', 'Perempuan', 'Islam', 'IPA', 'Yang Jelas Bukan SMK', 'Palembang', '086352725164', 'toni.hardyanto28@gmail.com', 'BKK KARYA SAWUNGGALIH', 'Verified'),
(6, 'sgEhpeV4', '6773767637463437', '8888888888899999', 'Fitri M', 'Magelang', '2021-01-04', '165', '50', 'Perempuan', 'Islam', 'Akuntansi', 'SMK YPE Sawunggalih Kutoarjo', 'Kutoarjo', '0876546787646', 'tony.hardyanto28@gmail.com', 'BKK KARYA SAWUNGGALIH', 'Verified');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nik` varchar(16) DEFAULT NULL,
  `siswa_no_kk` varchar(16) DEFAULT NULL,
  `siswa_nama` varchar(50) DEFAULT NULL,
  `siswa_tempat_lahir` varchar(50) DEFAULT NULL,
  `siswa_tgl_lahir` date DEFAULT NULL,
  `siswa_jenis_kelamin` varchar(15) DEFAULT NULL,
  `siswa_agama` varchar(10) DEFAULT NULL,
  `siswa_jur_id` int(11) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_alamat` varchar(100) DEFAULT NULL,
  `siswa_status` varchar(20) DEFAULT NULL,
  `siswa_last_update` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`siswa_id`, `siswa_nik`, `siswa_no_kk`, `siswa_nama`, `siswa_tempat_lahir`, `siswa_tgl_lahir`, `siswa_jenis_kelamin`, `siswa_agama`, `siswa_jur_id`, `siswa_kelas_id`, `siswa_alamat`, `siswa_status`, `siswa_last_update`) VALUES
(18, '1608082801980001', '6586583488583853', 'Toni Hardianto', 'Jakarta', '1998-01-28', 'Laki-laki', 'Islam', 1, 1, 'Sleman, Yogyakarta', 'Aktif', '2020-11-25 13:27:36'),
(21, '5654315355357143', '6235648528645734', 'Fitri Mutiana', 'Magelang', '1998-01-15', 'Perempuan', 'Islam', 1, 3, 'Sleman, Yogyakarta', 'Aktif', '2020-11-26 11:17:38'),
(22, '1683475581538657', '1827316768615623', 'Mei Diana', 'Purworejo', '1998-05-15', 'Perempuan', 'Islam', 1, 2, 'Sleman, Yogyakarta', 'Aktif', '2020-11-26 12:36:05'),
(23, '1604673645635647', '1640359740912838', 'Sarmila', 'Kutoarjo', '1998-04-04', 'Perempuan', 'Islam', 3, 9, 'Kutoarjo', 'Aktif', '2020-11-26 12:38:04'),
(26, '1602763656376767', '1693536578297392', 'Mita Fauziah', 'Cilacap', '1998-09-05', 'Perempuan', 'Islam', 4, 14, 'Cilacap, Jawa Tengah', 'Aktif', '2020-11-27 06:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `tb_site`
--

CREATE TABLE `tb_site` (
  `site_id` int(11) NOT NULL,
  `site_judul` varchar(50) DEFAULT 'null',
  `site_desc` longtext DEFAULT 'null',
  `site_head` varchar(100) DEFAULT 'null',
  `site_text` longtext DEFAULT 'null',
  `site_content_title` varchar(200) DEFAULT NULL,
  `site_content_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_site`
--

INSERT INTO `tb_site` (`site_id`, `site_judul`, `site_desc`, `site_head`, `site_text`, `site_content_title`, `site_content_value`) VALUES
(1, 'BKK KARYA SAGA', '<p>Website ini merupakan situs resmi dari Bursa Kerja Khusus Karya Sawunggalih.&nbsp;</p>', 'JOIN WITH US !', '<p>BKK Karya SAGA</p>', 'Bursa Kerja Khusus (BKK) SMK YPE Sawunggalih Kutoarjo', '<p><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:\r\n150%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">Bursa Kerja Khusus (BKK) SMK YPE Sawunggalih\r\nKutoarjo di bentuk sejak 2006 dengan nama BKK Karya Sawunggalih. Sekolah\r\nMenengah Kejuruan (SMK) sebagai sub sistem pendidikan nasional yang\r\nbertanggungjawab dalam penyiapan SDM tingkat menengah yang handal, berorientasi\r\nkepada kebutuhan pasar harus mampu mengembangkan inovasi untuk mempengaruhi\r\nperubahan kebutuhan pasar sehingga dapat mewujudkan kepuasan pencari kerja.&nbsp;</span></p><p><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:\r\n150%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\"><span style=\"font-size: 12pt; line-height: 150%;\">Bursa Kerja Khusus (BKK) SMK YPE Sawunggalih Kutoarjo\r\nmemiliki banyak kerja sama dengan perusahan-perusahaan lain untuk menyalurkan\r\nsiswa/siswi dan alumi yang sudah siap untuk bekerja.&nbsp;</span><br></span></p><p class=\"MsoNormal\" style=\"text-indent:0cm\"><span lang=\"EN-US\" style=\"mso-bidi-font-size:\r\n12.0pt;line-height:150%;mso-bidi-font-family:&quot;Times New Roman&quot;\">Tujuan bursa\r\nkerja khusus (BKK) SMK YPE Sawunggalih Kutoarjo<o:p></o:p></span></p><p class=\"MsoListParagraph\" style=\"margin-left:36.0pt;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"mso-bidi-font-size:12.0pt;line-height:150%;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"EN-US\" style=\"mso-bidi-font-size:12.0pt;line-height:150%;mso-bidi-font-family:\r\n&quot;Times New Roman&quot;\">Sebagai wadah dalam mempertemukan tamatan dengan pencari\r\nkerja.<o:p></o:p></span></p><p class=\"MsoListParagraph\" style=\"margin-left:36.0pt;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"mso-bidi-font-size:12.0pt;line-height:150%;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"EN-US\" style=\"mso-bidi-font-size:12.0pt;line-height:150%;mso-bidi-font-family:\r\n&quot;Times New Roman&quot;\">Memberikan layanan kepada tamatan sesuai dengan tugas dan\r\nfungsi masing-masing seksi yang ada dalam BKK.<o:p></o:p></span></p><p class=\"MsoListParagraph\" style=\"margin-left:36.0pt;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"mso-bidi-font-size:12.0pt;line-height:150%;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"EN-US\" style=\"mso-bidi-font-size:12.0pt;line-height:150%;mso-bidi-font-family:\r\n&quot;Times New Roman&quot;\">Sebagai wadah dalam pelatihan tamatan yang sesuai dengan\r\npermintaan pencari kerja<o:p></o:p></span></p><p class=\"MsoListParagraph\" style=\"margin-left:36.0pt;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"mso-bidi-font-size:12.0pt;line-height:150%;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"EN-US\" style=\"mso-bidi-font-size:12.0pt;line-height:150%;mso-bidi-font-family:\r\n&quot;Times New Roman&quot;\">Sebagai wadah untuk menanamkan jiwa wirausaha bagi tamatan\r\nmelalui pelatihan.<o:p></o:p></span></p><p><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:\r\n150%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_test`
--

CREATE TABLE `tb_test` (
  `test_file` varchar(100) DEFAULT NULL,
  `test_file1` varchar(100) DEFAULT NULL,
  `test_file2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_test`
--

INSERT INTO `tb_test` (`test_file`, `test_file1`, `test_file2`) VALUES
('09101_1489_abstraksi.pdf', '9a5727e08b7019a79bd899614510844a.pdf', '96f16261e40b396c1fa6f72221d76b25.pdf'),
('28-Article_Text-186-1-10-20180124.pdf', '9812-10065-1-SM.pdf', '09101_1489_abstraksi.pdf'),
('fcd15cbd44d1f9c56e0baeccae5ff9f3.pdf', '1e1912bf9318dafe2b68c12e2ff10451.pdf', '09101_1489_abstraksi.pdf'),
('agfdasd@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `user_username` varchar(20) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_fullname` varchar(50) DEFAULT NULL,
  `user_alamat` varchar(100) DEFAULT NULL,
  `user_phone` varchar(15) DEFAULT NULL,
  `user_mail` varchar(50) DEFAULT NULL,
  `user_level` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_username`, `user_password`, `user_fullname`, `user_alamat`, `user_phone`, `user_mail`, `user_level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Mutiana', 'Yogyakarta', '081234567890', 'th@gmail.com', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  ADD PRIMARY KEY (`evt_id`);

--
-- Indexes for table `tb_alumni`
--
ALTER TABLE `tb_alumni`
  ADD PRIMARY KEY (`alumni_id`);

--
-- Indexes for table `tb_company`
--
ALTER TABLE `tb_company`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `tb_history`
--
ALTER TABLE `tb_history`
  ADD PRIMARY KEY (`his_id`);

--
-- Indexes for table `tb_info`
--
ALTER TABLE `tb_info`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`jur_id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`kelas_id`),
  ADD KEY `FK_tb_kelas` (`kelas_jur_id`);

--
-- Indexes for table `tb_lamaran`
--
ALTER TABLE `tb_lamaran`
  ADD PRIMARY KEY (`lamaran_id`);

--
-- Indexes for table `tb_loker`
--
ALTER TABLE `tb_loker`
  ADD PRIMARY KEY (`loker_id`);

--
-- Indexes for table `tb_mitra`
--
ALTER TABLE `tb_mitra`
  ADD PRIMARY KEY (`mitra_id`);

--
-- Indexes for table `tb_pelamar`
--
ALTER TABLE `tb_pelamar`
  ADD PRIMARY KEY (`lamar_id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`siswa_id`),
  ADD KEY `FK_tb_siswa1` (`siswa_kelas_id`),
  ADD KEY `FK_tb_siswa` (`siswa_jur_id`);

--
-- Indexes for table `tb_site`
--
ALTER TABLE `tb_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  MODIFY `evt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_alumni`
--
ALTER TABLE `tb_alumni`
  MODIFY `alumni_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_company`
--
ALTER TABLE `tb_company`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_history`
--
ALTER TABLE `tb_history`
  MODIFY `his_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_info`
--
ALTER TABLE `tb_info`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `jur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_lamaran`
--
ALTER TABLE `tb_lamaran`
  MODIFY `lamaran_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_loker`
--
ALTER TABLE `tb_loker`
  MODIFY `loker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_mitra`
--
ALTER TABLE `tb_mitra`
  MODIFY `mitra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_pelamar`
--
ALTER TABLE `tb_pelamar`
  MODIFY `lamar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD CONSTRAINT `FK_tb_kelas` FOREIGN KEY (`kelas_jur_id`) REFERENCES `tb_jurusan` (`jur_id`);

--
-- Constraints for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `FK_tb_siswa` FOREIGN KEY (`siswa_jur_id`) REFERENCES `tb_jurusan` (`jur_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_siswa1` FOREIGN KEY (`siswa_kelas_id`) REFERENCES `tb_kelas` (`kelas_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
