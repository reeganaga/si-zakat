-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 25 Feb 2017 pada 15.13
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_evav`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(10) NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `no_rekening`) VALUES
(1, 'BRI', '8272772'),
(2, 'BNI', '8282828'),
(3, 'BC', '22828'),
(4, '', ''),
(5, 'kategori', ''),
(6, 'nama', 'desk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `judul_berita` varchar(200) DEFAULT NULL,
  `isi_berita` text,
  `tgl_input` date DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `kategori`, `judul_berita`, `isi_berita`, `tgl_input`, `gambar`) VALUES
(78, '1', 's', 's', '2016-08-07', '21477_2754_7.jpg'),
(79, '1', 'bnbn', 'bnbnbn', '2016-08-07', '143602_8eea_7.jpg'),
(80, '1', 'sgf', 'gdfgdfg', '2016-08-07', '11412252_1068210573193186_3691749994502409433_n.jpg'),
(81, '1', 'asdasda', 'asdasd', '2016-08-07', '11412252_1068210573193186_3691749994502409433_n.jpg'),
(82, '1', 'asdasda', 'asdasd', '2016-08-07', '11412252_1068210573193186_3691749994502409433_n.jpg'),
(91, '1', 'berita 2', 'isi berita', '2017-02-25', 'Screenshot from 2017-02-02 23-40-41.png'),
(90, '1', 'berita', 'isi berita', '2017-02-25', 'Screenshot from 2017-02-20 19-10-27.png'),
(89, '1', 'contoh', 'contoh', '2017-02-25', 'Screenshot from 2017-02-13 22-33-49.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi`
--

CREATE TABLE `donasi` (
  `id_donasi` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_donatur` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_bank` int(11) NOT NULL,
  `bukti_konfirmasi` varchar(100) NOT NULL,
  `an_rekening` varchar(100) NOT NULL,
  `bank_asal` varchar(20) NOT NULL,
  `jml_kirim` int(11) NOT NULL,
  `tgl_proses` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donasi`
--

INSERT INTO `donasi` (`id_donasi`, `jumlah`, `id_donatur`, `id_kategori`, `id_bank`, `bukti_konfirmasi`, `an_rekening`, `bank_asal`, `jml_kirim`, `tgl_proses`) VALUES
(15, 0, 0, 0, 0, 'Screenshot from 2017-02-23 22-50-49.png', 'REGA', 'mandiri', 112121, '0000-00-00 00:00:00'),
(16, 150000, 6, 1, 1, 'Screenshot from 2017-02-23 22-50-49.png', 'REGA', 'mandiri', 112121, '2017-02-16 04:08:24'),
(17, 160000, 6, 2, 3, '', '', '', 0, '2017-02-25 01:15:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `donatur`
--

CREATE TABLE `donatur` (
  `id_donatur` int(10) NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(30) NOT NULL,
  `no_telp` int(15) NOT NULL,
  `sapaan` enum('bapak','ibu','saudara','saudari') NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donatur`
--

INSERT INTO `donatur` (`id_donatur`, `username`, `password`, `email`, `no_telp`, `sapaan`, `nama_lengkap`, `alamat`) VALUES
(1, 'nuhu', 'donatur', '', 0, 'bapak', '', ''),
(2, 'waris', 'qwer', 'asas', 2121, 'bapak', '', ''),
(3, 'waris', 'qwer', 'asas', 2121, 'bapak', '', ''),
(4, 'as', 'as', 'as', 0, 'bapak', '', ''),
(5, 'waris', 'Imsaiko6', 'email@gmail.com', 9898765, 'bapak', '', ''),
(6, 'rega', 'rega', 'rega.blank@gmail.com', 9191919, 'bapak', 'rega', 'alamat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(3) UNSIGNED NOT NULL,
  `nama_kategori` varchar(30) NOT NULL DEFAULT '',
  `deskripsi` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `deskripsi`) VALUES
(1, 'umum', 'untuk semua kategori berita'),
(2, 'kateouuuu', '77777');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `id_kategori_berita` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_berita`
--

INSERT INTO `kategori_berita` (`id_kategori_berita`, `nama`, `deskripsi`) VALUES
(1, 'kategori', 'deskrisp'),
(2, 'berita penting', 'deskripsi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `kategori` (`kategori`);

--
-- Indexes for table `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`id_donasi`),
  ADD UNIQUE KEY `product_code` (`jumlah`);

--
-- Indexes for table `donatur`
--
ALTER TABLE `donatur`
  ADD PRIMARY KEY (`id_donatur`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id_kategori_berita`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `donasi`
--
ALTER TABLE `donasi`
  MODIFY `id_donasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `donatur`
--
ALTER TABLE `donatur`
  MODIFY `id_donatur` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id_kategori_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
