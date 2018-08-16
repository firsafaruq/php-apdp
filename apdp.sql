-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Agu 2018 pada 10.33
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `apdp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_warga`
--

CREATE TABLE IF NOT EXISTS `data_warga` (
  `id` varchar(11) NOT NULL,
  `nik` bigint(16) unsigned zerofill DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `no_kk` bigint(16) unsigned zerofill DEFAULT NULL,
  `jk` varchar(20) NOT NULL,
  `tempat_lhr` varchar(50) NOT NULL,
  `tanggal_lhr` date NOT NULL,
  `gol_dar` varchar(3) NOT NULL,
  `kewarganegaraan` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `status_nikah` varchar(20) NOT NULL,
  `status_keluarga` varchar(20) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `desa` varchar(20) NOT NULL,
  `rt` int(10) unsigned zerofill NOT NULL,
  `rw` int(10) unsigned zerofill NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_warga`
--

INSERT INTO `data_warga` (`id`, `nik`, `nama`, `no_kk`, `jk`, `tempat_lhr`, `tanggal_lhr`, `gol_dar`, `kewarganegaraan`, `agama`, `pendidikan`, `pekerjaan`, `status_nikah`, `status_keluarga`, `nama_ayah`, `nama_ibu`, `alamat`, `desa`, `rt`, `rw`) VALUES
('ID001', 0000000123123123, 'ecin', 0000000000213123, 'Laki - laki', 'sdsfdsf', '2018-08-17', 'O', 'WNI', 'Islam', 'Belum Tamat SD/Seder', 'Pensiunan', 'Belum Kawin', 'Kepala Keluarga', 'asdfs', 'sdfsdf', 'sdfsdf', 'Gunung Tandala', 0000000002, 0000000007);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelahiran`
--

CREATE TABLE IF NOT EXISTS `kelahiran` (
  `id_kelahiran` varchar(20) NOT NULL,
  `tempat_dilahirkan` varchar(100) NOT NULL,
  `pukul_lahir` time NOT NULL,
  `jenis_kelahiran` varchar(100) NOT NULL,
  `kelahiran_ke` varchar(10) NOT NULL,
  `penolong` varchar(100) NOT NULL,
  `nama_penolong` varchar(100) NOT NULL,
  `berat_bayi` int(20) NOT NULL,
  `panjang_bayi` int(20) NOT NULL,
  `id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelahiran`
--

INSERT INTO `kelahiran` (`id_kelahiran`, `tempat_dilahirkan`, `pukul_lahir`, `jenis_kelahiran`, `kelahiran_ke`, `penolong`, `nama_penolong`, `berat_bayi`, `panjang_bayi`, `id`) VALUES
('ID001', 'RS/RSB', '00:00:00', 'Pilih Jenis Kelahiran', '', 'Pilih Penolong', '', 0, 0, 'ID001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kematian`
--

CREATE TABLE IF NOT EXISTS `kematian` (
  `id_kematian` varchar(30) NOT NULL,
  `status_hidup` varchar(30) NOT NULL,
  `tanggal_wafat` date NOT NULL,
  `pukul_wafat` time NOT NULL,
  `sebab_kematian` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kematian`
--

INSERT INTO `kematian` (`id_kematian`, `status_hidup`, `tanggal_wafat`, `pukul_wafat`, `sebab_kematian`, `id`) VALUES
('IDK001', 'Mati', '2018-08-15', '22:22:00', 'Kecelakaan', 'ID001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendatang`
--

CREATE TABLE IF NOT EXISTS `pendatang` (
  `id_pendatang` varchar(11) NOT NULL,
  `tanggal_datang` date NOT NULL,
  `alamat_datang` text NOT NULL,
  `id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendatang`
--

INSERT INTO `pendatang` (`id_pendatang`, `tanggal_datang`, `alamat_datang`, `id`) VALUES
('ID001', '2018-08-07', 'Sukahurip', 'ID001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pindah`
--

CREATE TABLE IF NOT EXISTS `pindah` (
  `id_pindah` varchar(30) NOT NULL,
  `status_pindah` varchar(30) NOT NULL,
  `tanggal_pindah` date NOT NULL,
  `alamat_pindah` varchar(100) NOT NULL,
  `id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pindah`
--

INSERT INTO `pindah` (`id_pindah`, `status_pindah`, `tanggal_pindah`, `alamat_pindah`, `id`) VALUES
('IDP001', 'Pindah', '2018-08-15', 'Kamerun', 'ID001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` varchar(10) NOT NULL,
  `user` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `level` enum('admin-kelurahan','admin-kecamatan') NOT NULL,
  `blokir` enum('N','Y') NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `user`, `pass`, `nama`, `level`, `blokir`, `no_hp`) VALUES
('USR001', 'adminkel', 'adminkel', 'Rellita Fikka Rahajeng', 'admin-kelurahan', 'N', '+6282217063800'),
('USR005', 'adminkec', 'adminkec', 'R Rita Merjanti', 'admin-kecamatan', 'N', '+6282217063801'),
('USR006', 'firsafaruq', 'firsafaruq', 'Firsa Faruq Riyadi', 'admin-kelurahan', 'N', '+6282217063803');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_warga`
--
ALTER TABLE `data_warga`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `kelahiran`
--
ALTER TABLE `kelahiran`
 ADD PRIMARY KEY (`id_kelahiran`);

--
-- Indexes for table `kematian`
--
ALTER TABLE `kematian`
 ADD PRIMARY KEY (`id_kematian`), ADD KEY `id` (`id`);

--
-- Indexes for table `pendatang`
--
ALTER TABLE `pendatang`
 ADD PRIMARY KEY (`id_pendatang`);

--
-- Indexes for table `pindah`
--
ALTER TABLE `pindah`
 ADD PRIMARY KEY (`id_pindah`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
