-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2021 at 05:17 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flobamora`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(10) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anggota`
--

CREATE TABLE `tbl_anggota` (
  `username` varchar(30) NOT NULL,
  `password` text,
  `nama_anggota` varchar(30) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(14) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tgl_daftar` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`username`, `password`, `nama_anggota`, `alamat`, `telp`, `email`, `tgl_daftar`) VALUES
('yuni', '6b9d6ba55e4f27b1eb5ab5ca05d160a4', 'wahyuni', 'keben', '2424', 'wahyuniy968@gmail.com', '2021-01-09 23:39:41'),
('lian', 'c0114a5be10bd8b2e1e5a3006739c499', 'lian', 'keben ', '1342', 'indrarati1998@gmail.com', '2021-01-07 22:02:52'),
('angga', '8479c86c7afcb56631104f5ce5d6de62', 'angga', 'keben', '131334', 'indrarati1998@gmail.com', '2021-01-05 22:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(30) DEFAULT NULL,
  `id_kategori` int(10) DEFAULT NULL,
  `harga_barang` varchar(11) DEFAULT NULL,
  `jumlah_barang` int(4) DEFAULT NULL,
  `deskripsi` text,
  `foto` text,
  `dilihat` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga_barang`, `jumlah_barang`, `deskripsi`, `foto`, `dilihat`) VALUES
(39, 'Pisang Coklat', 11, '15000', 30, 'Kripik pisang yang enakm dan gurih ditambah coklat yang manis', 'img/barang/keripik-pisang-coklat.png', 0),
(40, 'Pisang Balado', 11, '15000', 29, 'Kripik pisang pedas manis', 'img/barang/balado.jpg', 3),
(41, 'Nangka Manis', 6, '10000', 37, 'Kripik buah nangka', 'img/barang/nangka.jpg', 13),
(42, 'Kripik Salak', 7, '10000', 27, 'Terbuat dari buah salak yang berkulitas', 'img/barang/images_(3).jpeg', 11),
(43, 'Nanas Madu', 12, '14000', 27, 'Kripik buah nanas dengan campuran madu alamai yang membuat kripik menjadi lebih nikmat dan manis', 'img/barang/images_(2).jpeg', 15),
(38, 'Pisang Manis', 11, '12000', 49, 'Kripik buah yang diolah dari buah pisang yang memiliki kualitas baik dan memiliki cita rasa yang sempurna', 'img/barang/kripik_pisang.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(10) NOT NULL,
  `nama_kategori` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(12, 'KRIPIK NANAS'),
(6, 'KRIPIK NANGKA'),
(7, 'KRIPIK SALAK'),
(11, 'KRIPIK PISANG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_keranjang`
--

CREATE TABLE `tbl_keranjang` (
  `id_keranjang` int(10) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `id_barang` int(10) DEFAULT NULL,
  `jumlah_dipesan` int(10) DEFAULT NULL,
  `tgl_keranjang` date DEFAULT NULL,
  `kd_pemesanan` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_keranjang`
--

INSERT INTO `tbl_keranjang` (`id_keranjang`, `username`, `id_barang`, `jumlah_dipesan`, `tgl_keranjang`, `kd_pemesanan`) VALUES
(20, 'yuni', 38, 1, '2021-01-11', '20210111034748YUNI'),
(17, 'angga', 41, 1, '2021-01-10', ''),
(16, 'yuni', 42, 1, '2021-01-09', '20210109055032YUNI'),
(15, 'lian', 41, 2, '2021-01-09', '20210108062009LIAN'),
(14, 'lian', 43, 1, '2021-01-07', '20210108062009LIAN'),
(11, 'angga', 43, 2, '2021-01-05', '20210105040101ANGGA'),
(12, 'angga', 42, 2, '2021-01-05', '20210105040101ANGGA'),
(13, 'angga', 40, 1, '2021-01-05', '20210105040101ANGGA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(74, 124, 'Rizal Faizal', '', ' terima  kasih  atas  perhatiannya   ', '2011-02-22', '20:38:30', 'Y'),
(76, 54, 'Rizal Faizal', '', ' gawatttttttttt   ', '2011-02-23', '23:36:53', 'Y'),
(77, 54, 'Rizal Faizal', '', ' fewfg   ', '2011-02-23', '23:39:46', 'Y'),
(78, 54, 'fff', '', ' ffffffffffff   ', '2011-02-23', '23:41:36', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemesanan`
--

CREATE TABLE `tbl_pemesanan` (
  `id_pemesanan` int(10) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `alamat` text,
  `kd_pemesanan` text,
  `jumlah_dipesan` int(10) DEFAULT NULL,
  `harga_barang` varchar(11) DEFAULT NULL,
  `jumlah_harga` varchar(11) DEFAULT NULL,
  `ongkir` varchar(11) DEFAULT NULL,
  `total` varchar(11) DEFAULT NULL,
  `tgl_pemesanan` datetime DEFAULT NULL,
  `foto` text,
  `konfirmasi` enum('sudah','belum') DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pemesanan`
--

INSERT INTO `tbl_pemesanan` (`id_pemesanan`, `username`, `alamat`, `kd_pemesanan`, `jumlah_dipesan`, `harga_barang`, `jumlah_harga`, `ongkir`, `total`, `tgl_pemesanan`, `foto`, `konfirmasi`, `status`) VALUES
(10, 'yuni', 'keben', '20210111034748YUNI', 1, '12000', '12000', '22000', '34000', '2021-01-11 21:50:12', 'img/bukti/student.png', 'belum', ''),
(9, 'yuni', 'keben', '20210109055032YUNI', 1, '10000', '10000', '22000', '32000', '2021-01-09 23:52:11', 'img/bukti/keripik-nangka-haitoms.jpeg', 'sudah', 'sukses'),
(8, 'lian', 'keben ', '20210108062009LIAN', 2, '10000', '24000', '22000', '46000', '2021-01-09 00:24:08', 'img/bukti/balado.jpg', 'belum', ''),
(7, 'angga', 'keben', '20210105040101ANGGA', 3, '15000', '39000', '22000', '61000', '2021-01-05 22:01:14', 'img/bukti/BTS_Dynamite_Global-Press-Conference_Group-Photo_2.jpg', 'sudah', 'sukses');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `total` int(20) NOT NULL,
  `tgl_penjualan` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`id_penjualan`, `id_anggota`, `total`, `tgl_penjualan`) VALUES
(2, 2, 4750000, '2020-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slide`
--

CREATE TABLE `tbl_slide` (
  `id_slide` int(11) NOT NULL,
  `foto` text,
  `judul` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slide`
--

INSERT INTO `tbl_slide` (`id_slide`, `foto`, `judul`) VALUES
(1, 'img/slide/12.jpg', 'Gambar 1'),
(2, 'img/slide/11-Recovered.jpg', 'Gambar 2'),
(3, 'img/slide/121.jpg', 'Gambar 3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_statistik`
--

CREATE TABLE `tbl_statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_statistik`
--

INSERT INTO `tbl_statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('127.0.0.1', '2011-01-23', 406, '1295797934'),
('127.0.0.1', '2011-01-22', 199, '1295712739'),
('127.0.0.1', '2011-01-20', 18, '1295484485'),
('127.0.0.1', '2011-01-19', 10, '1295452438'),
('127.0.0.1', '2011-01-25', 2, '1295961873'),
('127.0.0.1', '2011-01-26', 4, '1296050267'),
('127.0.0.1', '2011-01-27', 7, '1296110326'),
('127.0.0.1', '2011-01-28', 7, '1296233314'),
('127.0.0.1', '2011-01-29', 574, '1296320383'),
('127.0.0.1', '2011-01-30', 290, '1296393287'),
('127.0.0.1', '2011-01-31', 133, '1296493024'),
('127.0.0.1', '2011-02-01', 79, '1296521132'),
('110.138.43.143', '2011-02-01', 31, '1296540211'),
('66.249.71.118', '2011-02-01', 1, '1296528448'),
('67.195.115.24', '2011-02-01', 6, '1296538036'),
('125.161.211.231', '2011-02-01', 1, '1296529398'),
('222.124.98.187', '2011-02-01', 3, '1296531520'),
('66.249.71.77', '2011-02-01', 1, '1296532249'),
('66.249.71.20', '2011-02-01', 1, '1296534199'),
('117.20.62.233', '2011-02-01', 13, '1296537677'),
('110.137.200.121', '2011-02-01', 24, '1296540049'),
('127.0.0.1', '2011-02-16', 179, '1297875502'),
('127.0.0.1', '2011-02-17', 301, '1297961988'),
('127.0.0.1', '2011-02-18', 54, '1297990124'),
('127.0.0.1', '2011-02-22', 118, '1298393910'),
('127.0.0.1', '2011-02-23', 77, '1298479971'),
('127.0.0.1', '2011-02-24', 1, '1298510525'),
('127.0.0.1', '2011-03-13', 225, '1300027455'),
('127.0.0.1', '2011-03-14', 44, '1300115678'),
('127.0.0.1', '2011-03-15', 121, '1300195187'),
('127.0.0.1', '2011-03-16', 116, '1300292361'),
('127.0.0.1', '2011-03-17', 4, '1300331607'),
('127.0.0.1', '2011-03-18', 52, '1300422211'),
('127.0.0.1', '2011-03-27', 75, '1301234016'),
('127.0.0.1', '2011-03-28', 16, '1301307056'),
('127.0.0.1', '2011-03-29', 77, '1301409884'),
('127.0.0.1', '2012-10-11', 8, '1349939081'),
('127.0.0.1', '2012-10-18', 13, '1350574484'),
('127.0.0.1', '2012-10-21', 1, '1350796772'),
('127.0.0.1', '2012-10-22', 1, '1350878719'),
('127.0.0.1', '2012-10-23', 6, '1350984577'),
('127.0.0.1', '2012-10-25', 1, '1351146419'),
('127.0.0.1', '2012-10-28', 2, '1351441921'),
('127.0.0.1', '2012-11-02', 1, '1351875551'),
('127.0.0.1', '2012-11-03', 5, '1351876314'),
('127.0.0.1', '2012-12-10', 13, '1355156413'),
('127.0.0.1', '2012-12-11', 1, '1355173951'),
('127.0.0.1', '2012-12-14', 2, '1355431434'),
('127.0.0.1', '2013-01-08', 108, '1357627283'),
('127.0.0.1', '2013-01-11', 1, '1357879761'),
('127.0.0.1', '2013-01-13', 16, '1358090797'),
('127.0.0.1', '2013-02-23', 1, '1361582818'),
('127.0.0.1', '2013-03-10', 1, '1362920556'),
('127.0.0.1', '2013-03-18', 4, '1363581022'),
('127.0.0.1', '2013-03-19', 5, '1363666788'),
('127.0.0.1', '2013-04-26', 1, '1366985043'),
('127.0.0.1', '2013-04-29', 3, '1367201227'),
('127.0.0.1', '2013-05-07', 2, '1367943522'),
('127.0.0.1', '2013-05-15', 1, '1368596741'),
('127.0.0.1', '2013-05-19', 2, '1368974386'),
('127.0.0.1', '2013-06-05', 2, '1370438052'),
('127.0.0.1', '2013-06-10', 4, '1370833789'),
('127.0.0.1', '2013-06-13', 3, '1371094792'),
('127.0.0.1', '2013-06-16', 2, '1371399095'),
('127.0.0.1', '2013-07-28', 40, '1375030405'),
('127.0.0.1', '2013-07-29', 1, '1375031690'),
('127.0.0.1', '2013-10-04', 1, '1380895135'),
('127.0.0.1', '2013-10-30', 1, '1383069939'),
('127.0.0.1', '2013-11-29', 237, '1385709004'),
('127.0.0.1', '2013-11-30', 17, '1385783344'),
('127.0.0.1', '2013-12-01', 102, '1385882699'),
('127.0.0.1', '2013-12-02', 153, '1385999681'),
('127.0.0.1', '2013-12-03', 53, '1386027048'),
('::1', '2013-12-03', 54, '1386056497'),
('::1', '2013-12-04', 23, '1386132745'),
('127.0.0.1', '2013-12-04', 1, '1386125365'),
('::1', '2013-12-05', 68, '1386262659'),
('::1', '2013-12-06', 187, '1386301411'),
('::1', '2013-12-07', 84, '1386432534'),
('::1', '2013-12-09', 8, '1386607106'),
('::1', '2013-12-10', 4, '1386611074'),
('::1', '2020-06-10', 54, '1591736595'),
('::1', '2020-06-12', 36, '1591945295');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_keranjang`
--
ALTER TABLE `tbl_keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `tbl_pemesanan`
--
ALTER TABLE `tbl_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `tbl_slide`
--
ALTER TABLE `tbl_slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_keranjang`
--
ALTER TABLE `tbl_keranjang`
  MODIFY `id_keranjang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tbl_pemesanan`
--
ALTER TABLE `tbl_pemesanan`
  MODIFY `id_pemesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_slide`
--
ALTER TABLE `tbl_slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
