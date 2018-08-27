-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Agu 2018 pada 13.09
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
  `rt` int(3) unsigned zerofill NOT NULL,
  `rw` int(3) unsigned zerofill NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_warga`
--

INSERT INTO `data_warga` (`id`, `nik`, `nama`, `no_kk`, `jk`, `tempat_lhr`, `tanggal_lhr`, `gol_dar`, `kewarganegaraan`, `agama`, `pendidikan`, `pekerjaan`, `status_nikah`, `status_keluarga`, `nama_ayah`, `nama_ibu`, `alamat`, `desa`, `rt`, `rw`) VALUES
('ID003', 0000000000003213, 'wewrw', 0000000000002424, 'Laki - laki', 'sdfdf', '2018-08-14', 'AB', 'WNI', 'Kristen', 'Belum Tamat SD/Seder', 'Pensiunan', 'Cerai Hidup', 'Istri', 'sdsdf', 'dfsdf', 'sfds', 'prwotu', 022, 012),
('ID004', 7324982374927902, 'Jack', 8683868328932732, 'Laki - laki', 'Solo', '0175-09-08', 'A', 'WNI', 'Kristen', 'Diploma IV/Strata I', 'Wiraswasta', 'Kawin', 'Kepala Keluarga', 'Danil', 'Rosmi', 'Cilolohan ', 'Tawang', 001, 002),
('ID005', 98394820480230942, 'Rampi', 84798234802989248, 'Laki - laki', 'Jonggol', '1991-05-02', 'O', 'WNI', 'Islam', 'Diploma IV/Strata I', 'PNS', 'Kawin', 'Kepala Keluarga', 'Ikhsan', 'Nurul', 'Cikalang', 'Lembang', 005, 007),
('ID006', 8349280292830849, 'ida', 8683868328932732, 'Perempuan', 'ancol', '1989-04-09', 'O', 'WNI', 'Islam', 'SMA/Sederajat', 'Wiraswasta', 'Kawin', 'Istri', 'jeje', 'eti', 'jonggol', 'Lembang', 001, 010);

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
  `berat_bayi` int(5) NOT NULL,
  `panjang_bayi` int(5) NOT NULL,
  `id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelahiran`
--

INSERT INTO `kelahiran` (`id_kelahiran`, `tempat_dilahirkan`, `pukul_lahir`, `jenis_kelahiran`, `kelahiran_ke`, `penolong`, `nama_penolong`, `berat_bayi`, `panjang_bayi`, `id`) VALUES
('IDL003', 'Lainnya', '23:04:00', 'Kembar 2', 'sfdf', 'Bidan', 'qewe', 2, 2, 'ID003'),
('IDL004', 'Pilih Tempat', '00:00:00', 'Pilih Jenis Kelahiran', '', 'Pilih Penolong', '', 0, 0, 'ID004'),
('IDL005', 'Pilih Tempat', '00:00:00', 'Pilih Jenis Kelahiran', '', 'Pilih Penolong', '', 0, 0, 'ID005'),
('IDL006', 'Pilih Tempat', '00:00:00', 'Pilih Jenis Kelahiran', '', 'Pilih Penolong', '', 0, 0, 'ID006');

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
('IDK002', 'Mati', '2018-08-20', '21:03:00', 'Sakit', 'ID003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendatang`
--

CREATE TABLE IF NOT EXISTS `pendatang` (
  `id_pendatang` varchar(11) NOT NULL,
  `tanggal_datang` date NOT NULL,
  `alamat_datang` text NOT NULL,
  `id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendatang`
--

INSERT INTO `pendatang` (`id_pendatang`, `tanggal_datang`, `alamat_datang`, `id`) VALUES
('IDP002', '2018-08-14', 'wewr', 'ID003'),
('IDP003', '0000-00-00', '', 'ID004'),
('IDP004', '2018-08-21', 'Dago ', 'ID005'),
('IDP005', '0000-00-00', '', 'ID006');

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
('IDP002', 'Tetap', '2018-08-20', 'DFGFDG', 'ID003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keterangan`
--

CREATE TABLE IF NOT EXISTS `surat_keterangan` (
  `id_surat_keterangan` varchar(40) NOT NULL,
  `tanggal` date NOT NULL,
  `masa_berlaku` text NOT NULL,
  `pernyataan` text NOT NULL,
  `keperluan` text NOT NULL,
  `keterangan` text NOT NULL,
  `id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_keterangan`
--

INSERT INTO `surat_keterangan` (`id_surat_keterangan`, `tanggal`, `masa_berlaku`, `pernyataan`, `keperluan`, `keterangan`, `id`) VALUES
('23/KE/08/18/0001', '2018-08-27', '08/25/2018 - 08/25/2018', 'sdfsdf', 'sad', 'sdfsdf', 'ID003'),
('23/KE/08/18/0002', '2018-08-25', '08/25/2018 - 08/25/2018', 'sdfsdf', 'hvh', 'SDFSDF', 'ID004');

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
 ADD PRIMARY KEY (`id_pendatang`), ADD KEY `id` (`id`);

--
-- Indexes for table `pindah`
--
ALTER TABLE `pindah`
 ADD PRIMARY KEY (`id_pindah`);

--
-- Indexes for table `surat_keterangan`
--
ALTER TABLE `surat_keterangan`
 ADD PRIMARY KEY (`id_surat_keterangan`), ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
