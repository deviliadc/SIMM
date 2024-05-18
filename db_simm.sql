-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 07:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `ID_ADMIN` int(11) NOT NULL,
  `NAMA_ADMIN` varchar(150) NOT NULL,
  `EMAIL_ADMIN` varchar(150) NOT NULL,
  `USERNAME` varchar(150) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`ID_ADMIN`, `NAMA_ADMIN`, `EMAIL_ADMIN`, `USERNAME`, `PASSWORD`) VALUES
(1, 'Ervina Rosa Aulia', 'ervinarosaaulia@gmail.com', 'admin1', 'admin001');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kehadiran`
--

CREATE TABLE `tb_kehadiran` (
  `ID_KEHADIRAN` int(11) NOT NULL,
  `ID_MAHASISWA` int(11) NOT NULL,
  `TANGGAL` date NOT NULL,
  `ID_KODE_KEHADIRAN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kode_kehadiran`
--

CREATE TABLE `tb_kode_kehadiran` (
  `ID_KODE_KEHADIRAN` int(11) NOT NULL,
  `KODE_KEHADIRAN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kode_kehadiran`
--

INSERT INTO `tb_kode_kehadiran` (`ID_KODE_KEHADIRAN`, `KODE_KEHADIRAN`) VALUES
(1, 'Hadir'),
(2, 'Izin'),
(3, 'Tanpa Keterangan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_logbook`
--

CREATE TABLE `tb_logbook` (
  `ID_LOGBOOK` int(11) NOT NULL,
  `ID_MAHASISWA` int(11) NOT NULL,
  `TANGGAL` date NOT NULL,
  `KEGIATAN` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_lokasi_penempatan`
--

CREATE TABLE `tb_lokasi_penempatan` (
  `ID_LOKASI` int(11) NOT NULL,
  `NAMA_LOKASI` varchar(250) NOT NULL,
  `ALAMAT_LOKASI` varchar(350) NOT NULL,
  `KUOTA` int(11) NOT NULL,
  `KUOTA_TERISI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_lokasi_penempatan`
--

INSERT INTO `tb_lokasi_penempatan` (`ID_LOKASI`, `NAMA_LOKASI`, `ALAMAT_LOKASI`, `KUOTA`, `KUOTA_TERISI`) VALUES
(1, 'KEMENAG : Kepegawaian', 'Jl. Masjid Al-AkbarTimur No.4', 6, 6),
(2, 'KEMENAG : PTSP ', 'Jl. Masjid Al-AkbarTimur No.4', 10, 0),
(3, 'KEMENAG : Umum ', 'Jl. Masjid Al-AkbarTimur No.4', 6, 0),
(4, 'KEMENAG : Perencana', 'Jl. Masjid Al-AkbarTimur No.4', 5, 0),
(5, 'KEMENAG : PHU', 'Jl. Masjid Al-AkbarTimur No.4', 0, 0),
(6, 'KEMENAG : Arsiparis', 'Jl. Masjid Al-AkbarTimur No.4', 1, 0),
(7, 'KEMENAG : Keuangan', 'Jl. Masjid Al-AkbarTimur No.4', 0, 0),
(8, 'KEMENAG : BIMAS Islam', 'Jl. Masjid Al-AkbarTimur No.4', 0, 0),
(9, 'KEMENAG : Zakat Wakaf', 'Jl. Masjid Al-AkbarTimur No.4', 0, 0),
(10, 'KEMENAG : PAIS', 'Jl. Masjid Al-AkbarTimur No.4', 0, 0),
(11, 'KEMENAG : Pendma', 'Jl. Masjid Al-AkbarTimur No.4', 0, 0),
(12, 'KEMENAG : PD. Pontren', 'Jl. Masjid Al-AkbarTimur No.4', 1, 0),
(13, 'KUA SEMAMPIR', 'Jl. Wonokusumo Tengah No. 53', 0, 0),
(14, 'KUA PABEAN CANTIAN', 'Jl. Teluk Sampit No. 2', 0, 0),
(15, 'KUA KREMBANGAN', 'Jl. Ikan Lumba-lumba No. 66', 0, 0),
(16, 'KUA BUBUTAN', 'Jl. Demak Barat I/03', 0, 0),
(17, 'KUA TANDES', 'Bibis Tama No. 1', 0, 0),
(18, 'KUA WONOKROMO', 'Jl. Gajah Mada Trem No. 1', 0, 0),
(19, 'KUA WONOCOLO', 'Jl. Margorejo Indah No. 30', 4, 4),
(20, 'KUA KARANG PILANG', 'Jl. Mastrip No. 50', 0, 0),
(21, 'KUA TEGALSARI', 'Jl. Kupang Segunting 3/09', 0, 0),
(22, 'KUA SAWAHAN', 'Jl. Dukuh Kupang Timur X/08', 0, 0),
(23, 'KUA GENTENG', 'Jl. Genteng Kali No.59', 0, 0),
(24, 'KUA GUBENG', 'Jl. Pasar Burung No.01', 0, 0),
(25, 'KUA TAMBAKSARI', 'Jl. Mendut No.07', 0, 0),
(26, 'KUA SIMOKERTO', 'Jl. Taman Tambak Segaran No.02', 0, 0),
(27, 'KUA SUKOLILO', 'Jl. Gebang Putih No.08', 0, 0),
(28, 'KUA RUNGKUT', 'Jl. Rungkut Asri Utara I/04', 2, 2),
(29, 'KUA KENJERAN', 'Jl. Bulak Banteng Lor Masjid No.07', 0, 0),
(30, 'KUA BENOWO', 'Jl. Tengger No.17', 0, 0),
(31, 'KUA LAKARSANTRI', 'Jl. Lontar Lidah Kulon No.19', 0, 0),
(32, 'KUA TENGGILIS MEJOYO', 'Jl. Prapen Indah No.02', 0, 0),
(33, 'KUA GUNUNG ANYAR', 'Jl. Rungkut Menanggal Harapan T/31', 4, 4),
(34, 'KUA MULYOREJO', 'Jl. Wisma Permai I/98', 0, 0),
(35, 'KUA ASEMROWO', 'Jl. Tambak Dalam Baru 1', 0, 0),
(36, 'KUA SUKOMANUNGGAL', 'Jl. Simo Mulyo I/59', 0, 0),
(37, 'KUA DUKUH PAKIS', 'Jl. Dukuh Kupang Barat No.284', 0, 0),
(38, 'KUA WIYUNG', ' Jl. Gogor Kali No.18', 0, 0),
(39, 'KUA JAMBANGAN', 'Jl. KebonSari Elveka IV/54', 0, 0),
(40, 'KUA GAYUNGAN', 'Jl. Cipta  Menanggal III.A/01', 0, 0),
(41, 'KUA BULAK', 'Jl. Memet Sastrowiryo No.85', 0, 0),
(45, 'KUA SAMBIKEREP', 'Jl. Raya Made Utara No.16', 1, 0),
(46, 'KUA PAKAL', 'Jl. RayaRaci Benowo No.24', 0, 0),
(47, 'KEMENAG (Not Specific)', 'Jl. Masjid Al-AkbarTimur No.4', 150, 108);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `ID_MAHASISWA` int(11) NOT NULL,
  `USERNAME` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(30) DEFAULT NULL,
  `ID_LOKASI` int(11) NOT NULL,
  `NAMA_MAHASISWA` varchar(150) NOT NULL,
  `NIS` varchar(30) NOT NULL,
  `ALAMAT_MAHASISWA` varchar(200) NOT NULL,
  `NO_TELP` varchar(15) NOT NULL,
  `ID_SEKOLAH_PT` int(150) NOT NULL,
  `JURUSAN` varchar(150) NOT NULL,
  `DOSEN_GURU_PEMBIMBING` varchar(100) DEFAULT NULL,
  `KONTAK_PEMBIMBING` varchar(17) DEFAULT NULL,
  `MULAI_MAGANG` date DEFAULT NULL,
  `SELESAI_MAGANG` date DEFAULT NULL,
  `ID_STATUS` int(200) NOT NULL,
  `ID_NILAI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`ID_MAHASISWA`, `USERNAME`, `PASSWORD`, `ID_LOKASI`, `NAMA_MAHASISWA`, `NIS`, `ALAMAT_MAHASISWA`, `NO_TELP`, `ID_SEKOLAH_PT`, `JURUSAN`, `DOSEN_GURU_PEMBIMBING`, `KONTAK_PEMBIMBING`, `MULAI_MAGANG`, `SELESAI_MAGANG`, `ID_STATUS`, `ID_NILAI`) VALUES
(1, NULL, NULL, 47, 'ENIS CANTIKA RAMADHANI', '-', '-', '-', 2, '-', 'Moch. Isbachuddin, ST', '-', '2024-01-08', '2024-04-07', 2, 2),
(2, NULL, NULL, 47, 'CANTIKA RESTU PALUPI', '-', '-', '-', 2, '-', 'Moch. Isbachuddin, ST', '-', '2024-01-08', '2024-04-07', 2, 3),
(3, NULL, NULL, 47, 'CANTIKA CITRA AMANDA', '-', '-', '-', 2, '-', 'Moch. Isbachuddin, ST', '-', '2024-01-08', '2024-04-07', 2, 2),
(4, NULL, NULL, 47, 'MARETA WARDHANI', '-', '-', '-', 2, '-', 'Moch. Isbachuddin, ST', '-', '2024-01-08', '2024-04-07', 2, 3),
(5, NULL, NULL, 47, 'MUSDALIFFATUS SOFIANI', '-', '-', '-', 2, '-', 'Moch. Isbachuddin, ST', '-', '2024-01-08', '2024-04-07', 2, 2),
(6, NULL, NULL, 47, 'SAVA XAVIER NUR RAYA AZIZAH', '-', '-', '-', 2, '-', 'Moch. Isbachuddin, ST', '-', '2024-01-08', '2024-04-07', 2, 1),
(7, '12637/026.111', '12637/026.111', 47, 'ANASTASYA ABABIL', '12637/026.111', '-', '-', 3, '-', 'Endah maslachah, S.pd', '-', '0000-00-00', '0000-00-00', 1, 1),
(8, '12641/030.111', '12641/030.111', 47, 'ARDANU BIMO NUR C', '12641/030.111', '-', '-', 3, '-', 'Endah maslachah, S.pd', '-', '0000-00-00', '0000-00-00', 1, 1),
(9, '12820/018.098', '12820/018.098', 47, 'AULIA INDI RIANTI', '12820/018.098', '-', '-', 3, '-', 'Endah maslachah, S.pd', '-', '0000-00-00', '0000-00-00', 1, 1),
(10, '12888/086.098', '12888/086.098', 47, 'NAILA PUTRI RAMADHANI', '12888/086.098', '-', '-', 3, '-', 'Endah maslachah, S.pd', '-', '0000-00-00', '0000-00-00', 1, 1),
(11, '2020270116', '2020270116', 19, 'NURUL HIDAYAH', '2020270116', '-', '-', 4, '-', 'Imas Setiawan, SHI.,S.PdI.,MH', '-', NULL, NULL, 2, 1),
(12, '2019270103', '2019270103', 19, 'RICA ARVIN FEBRIAN', '2019270103', '-', '-', 4, '-', 'Imas Setiawan, SHI.,S.PdI.,MH', '-', NULL, NULL, 2, 1),
(13, '2022270108', '2022270108', 19, 'SAKRONI', '2022270108', '-', '-', 4, '-', 'Imas Setiawan, SHI.,S.PdI.,MH', '-', NULL, NULL, 2, 1),
(14, '2021270118', '2021270118', 47, 'ADIB GIBRANUL W', '2021270118', '-', '-', 4, '-', 'Imas Setiawan, SHI.,S.PdI.,MH', '-', '0000-00-00', '0000-00-00', 1, 2),
(15, '4020320019', '4020320019', 28, 'ANISA ZAHWA ZULFIANI NI\'AM', '4020320019', '-', '-', 5, '-', 'Dr. Moch. Choirul arif, S.Ag', '-', NULL, NULL, 1, 1),
(16, '4040320086', '4040320086', 28, 'INTAN FARIHATUL MASRUROH', '4040320086', '-', '-', 5, '-', 'Dr. Moch. Choirul arif, S.Ag', '-', NULL, NULL, 1, 1),
(17, '4040420083', '4040420083', 47, 'NABILAH', '4040420083', '-', '-', 5, '-', 'Dr. Moch. Choirul arif, S.Ag', '-', NULL, NULL, 1, 1),
(18, '7.043/2.341.100', '7.043/2.341.100', 47, 'ERINA APRILIA ASIH', '7.043/2.341.100', '-', '-', 6, '-', 'Agung Nugroho, SE., M.M.', '-', NULL, NULL, 2, 1),
(19, '7.055/2.353.100', '7.055/2.353.100', 47, 'REYDINA AUGISTIRA', '7.055/2.353.100', '-', '-', 6, '-', 'Agung Nugroho, SE., M.M.', '-', NULL, NULL, 2, 1),
(20, '7.049/2.347.100', '7.049/2.347.100', 47, 'MOCH. ANANDA MAULANA', '7.049/2.347.100', '-', '-', 6, '-', 'Agung Nugroho, SE., M.M.', '-', NULL, NULL, 2, 1),
(21, '3020221066', '3020221066', 47, 'QUEEN TAMALLA HASAN', '3020221066', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(22, '3020221042', '3020221042', 47, 'DEFIRA SYAWALIANTA', '3020221042', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(23, '3020221040', '3020221040', 47, 'CAERLINA ADELIA PUTRI', '3020221040', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(24, '3020221077', '3020221077', 47, 'ZONNI BAHAUDDIN HILMI', '3020221077', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(25, '3040221103', '3040221103', 47, 'M. ARDIKA AKBAR BESTARI', '3040221103', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(26, '3020121061', '3020121061', 47, 'MUSTABSYIRATUL FAJRIHYATI', '3020121061', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(27, '3040121112', '3040121112', 47, 'NOVIRA ARIYANTI', '3040121112', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(28, '3040121114', '3040121114', 47, 'NUR WATI DHARMA IKA SETIANINGRUM', '3040121114', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(29, '3040121099', '3040121099', 47, 'AYU SIWI WENING NURAHNIS', '3040121099', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(30, '3040121110', '3040121110', 47, 'MUHAMMAD NAUFAL NURFIRDAUS', '3040121110', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(31, '3040121084', '3040121084', 47, 'ABDURRAHMAN AHMAD', '3040121084', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(32, '3040121087', '3040121087', 47, 'AKBAR IQBAL UMAMI', '3040121087', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(33, '3010121017', '3010121017', 47, 'FADLAN AMIN SUNARTO', '3010121017', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(34, '3040121111', '3040121111', 47, 'MUZAKKI ABDURRAHMAN', '3040121111', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M.Ag.', '-', NULL, NULL, 1, 1),
(35, '11040120119', '11040120119', 47, 'MAULIDIYAH KAMILAH RAHMAWATI', '11040120119', '-', '-', 5, '-', 'Dr. Phil. Khoirun Niam', '-', NULL, NULL, 2, 1),
(36, '5010521006', '5010521006', 47, 'ATHAILAH NURUL IMAM', '5010521006', '-', '-', 5, '-', 'Dr. Hj. Suqiyah Musafa\'ah, M.Ag.', '-', NULL, NULL, 1, 1),
(37, '501521008', '501521008', 47, 'FADLAN SYAUQI', '501521008', '-', '-', 5, '-', 'Dr. Hj. Suqiyah Musafa\'ah, M.Ag.', '-', NULL, NULL, 1, 1),
(38, '5020521021', '5020521021', 47, 'ELIYA AMIRHOTUL FAUZIAH', '5020521021', '-', '-', 5, '-', 'Dr. Hj. Suqiyah Musafa\'ah, M.Ag.', '-', NULL, NULL, 1, 1),
(39, '5020521020', '5020521020', 47, 'EDY SETIAWAN', '5020521020', '-', '-', 5, '-', 'Dr. Hj. Suqiyah Musafa\'ah, M.Ag.', '-', NULL, NULL, 1, 1),
(40, '5020521038', '5020521038', 47, 'VANIA ADYUTA HARDATI', '5020521038', '-', '-', 5, '-', 'Dr. Hj. Suqiyah Musafa\'ah, M.Ag.', '-', NULL, NULL, 1, 1),
(41, '20201551008', '20201551008', 29, 'ATIKA AGUSTINA TARIK', '20201551008', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(42, '20201551013', '20201551013', 29, 'NAUFAL SIRHAN', '20201551013', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(43, '20201551005', '20201551005', 29, 'MAULANA FERNANDA', '20201551005', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(44, '20201551006', '20201551006', 29, 'MUHAMMAD FAKHRI SAJIDAN', '20201551006', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(45, '20201551021', '20201551021', 29, 'RAHMAT KHAIRULLAH', '20201551021', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(46, '20201551017', '20201551017', 22, 'SHINTA SALWA RAMADHANI', '20201551017', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(47, '20201551022', '20201551022', 22, 'FIQANDA TAUFIQ HIDAYAT', '20201551022', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(48, '20201551007', '20201551007', 22, 'MUHAMMAD ROICHAN CHOIRON', '20201551007', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(49, '20201551010', '20201551010', 22, 'SYAMSUL ARIFIN', '20201551010', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(50, '20201551026', '', 22, 'RIFQI IZZUL IRHAMI', '20201551026', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(51, '20201551023', '20201551023', 13, '', '20201551023', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(52, '20201551025', '20201551025', 13, 'ANI TANTOWI', '20201551025', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(53, '20201551012', '20201551012', 13, 'MOH. DIFA\' IS\'AF SYAIFULLAH', '20201551012', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(54, '20201551014', '20201551014', 13, 'ROBI ALWAFA', '20201551014', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(55, '20201551032', '20201551032', 13, 'ARIFIA ALMANAR ASFANDIYAR', '20201551032', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(56, '20201551028', '20201551028', 34, 'ATIM HARIYANTO', '20201551028', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(57, '20201551029', '20201551029', 34, 'KHALIL AHMAD NAUFAL', '20201551029', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(58, '20201551030', '20201551030', 34, 'SANDI SATIAN', '20201551030', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(59, '20201551016', '20201551016', 34, 'NAVA APRILLIA', '20201551016', '-', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(60, '20201551018', '20201551018', 34, 'RICKY PUTRA PERMANA', '20201551018', '', '-', 7, '-', 'Thbat Stiawan, M.H.I', '-', NULL, NULL, 2, 1),
(61, '4040420060', '4040420060', 47, 'AULIA LAILA RAMADHANI', '4040420060', '-', '-', 5, '-', 'Dr. Moch. Choirul arif, S.Ag, M.Fil.I.', '-', NULL, NULL, 1, 1),
(62, '2213121009', '2213121009', 47, 'DIAH AYU PUSPITA', '2213121009', '-', '-', 8, '-', 'Bagas Ananda Kurniawan, S.A.P, M.A.P', '-', NULL, NULL, 1, 1),
(63, '2213111018', '2213111018', 47, 'ANGGIE AUDIANI PUTRI SUGIONO', '2213111018', '-', '-', 8, '-', 'Bagas Ananda Kurniawan, S.A.P, M.A.P', '-', NULL, NULL, 1, 1),
(64, '2213121111014', '2213121111014', 47, 'FEBIOLA ANDINI PUTRI', '2213121111014', '-', '-', 8, '-', 'Bagas Ananda Kurniawan, S.A.P, M.A.P', '-', NULL, NULL, 1, 1),
(65, '6.621/994.064', '6.621/994.064', 47, 'AKBAR WAHYU PRIYANTO', '6.621/994.064', '-', '-', 6, '-', 'Agung Nugroho, SE., M.M.', '-', NULL, NULL, 1, 1),
(66, '6.648/1.021.064', '6.648/1.021.064', 47, 'RASYA ANANDA', '6.648/1.021.064', '-', '-', 6, '-', 'Agung Nugroho, SE., M.M.', '-', NULL, NULL, 1, 1),
(67, '6.626/999.064', '6.626/999.064', 47, 'ARFA EKO KURNIAWAN', '6.626/999.064', '-', '-', 6, '-', 'Agung Nugroho, SE., M.M.', '-', NULL, NULL, 1, 1),
(68, '72011133017', '72011133017', 47, 'VIOLETA DWI OCTAVIA', '72011133017', '-', '-', 9, '-', 'Prof. Dr. H. Jusuf Irianto, Drs., M.Com.', '-', NULL, NULL, 1, 1),
(69, '72011133057', '72011133057', 47, 'NAZHIFAH NAJLA NARINDRA', '72011133057', '-', '-', 9, '-', 'Prof. Dr. H. Jusuf Irianto, Drs., M.Com.', '-', NULL, NULL, 1, 1),
(70, '72011133073', '72011133073', 47, 'VIONA AJENG PANGESTI', '72011133073', '-', '-', 9, '-', 'Prof. Dr. H. Jusuf Irianto, Drs., M.Com.', '-', NULL, NULL, 1, 1),
(71, '720111333103', '720111333103', 47, 'LYDIA PATRICIA ELISABETH', '720111333103', '-', '-', 9, '-', 'Prof. Dr. H. Jusuf Irianto, Drs., M.Com.', '-', NULL, NULL, 1, 1),
(72, '72011133111', '72011133111', 47, 'BIAS VILOSA', '72011133111', '-', '-', 9, '-', 'Prof. Dr. H. Jusuf Irianto, Drs., M.Com.', '-', NULL, NULL, 1, 1),
(73, '320121052', '320121052', 47, 'MOCH. HANIF BAGUS ASHAR', '320121052', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M. Ag', '-', NULL, NULL, 1, 1),
(74, '3040121101', '3040121101', 47, 'DAFFA FISABILILLAH WASKITO', '3040121101', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M. Ag', '-', NULL, NULL, 1, 1),
(75, '3040120183', '3040120183', 47, 'ABDUL MUIZ', '3040120183', '-', '-', 5, '-', 'Dr. H. Mohammad Kurjum, M. Ag', '-', NULL, NULL, 1, 1),
(76, '4040121092', '4040121092', 47, 'FIKA NUR FAIDDATUN NAJAH', '4040121092', '-', '-', 5, '-', 'Dr. Moch. Choirul Arif, S. Ag, M. Fil.I.', '-', NULL, NULL, 1, 1),
(77, '40401121093', '40401121093', 47, 'FIRA DWI FERNANDA', '40401121093', '-', '-', 5, '-', 'Dr. Moch. Choirul Arif, S. Ag, M. Fil.I.', '-', NULL, NULL, 1, 1),
(78, '9040621068', '9040621068', 47, 'MUHAMMAD FARHAT MU\'AFY', '9040621068', '-', '-', 5, '-', 'Dr. Moh. Hafiyusholeh, M.Si., M.Pmat.', '-', NULL, NULL, 1, 1),
(79, '9010621006', '9010621006', 47, 'ARYA ADI PRATAMA PUTRA', '9010621006', '-', '-', 5, '-', 'Dr. Moh. Hafiyusholeh, M.Si., M.Pmat.', '-', NULL, NULL, 1, 1),
(80, '9020621024', '9020621024', 47, 'ANDHIKA ACHMAD FAHREZA', '9020621024', '-', '-', 5, '-', 'Dr. Moh. Hafiyusholeh, M.Si., M.Pmat.', '-', NULL, NULL, 1, 1),
(81, '9040621060', '9040621060', 47, 'MOHAMMAD ADAM MALIK', '9040621060', '-', '-', 5, '-', 'Dr. Moh. Hafiyusholeh, M.Si., M.Pmat.', '-', NULL, NULL, 1, 1),
(82, '9020621047', '9020621047', 47, 'SYAIFU NURRACHMAN FADILLAH', '9020621047', '-', '-', 5, '-', 'Dr. Moh. Hafiyusholeh, M.Si., M.Pmat.', '-', NULL, NULL, 1, 1),
(83, '7040121089', '7040121089', 47, 'MUHAMMAD FAJAR HIDAYATULLOH', '7040121089', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 2, 1),
(84, '7040121098', '7040121098', 47, 'ZOGA WISNUDINATA', '7040121098', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 2, 1),
(85, '7040121093', '7040121093', 47, 'NIKISA ICHOBANA RHASAKI', '7040121093', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 2, 1),
(86, '7040121091', '7040121091', 47, 'MUHAMMAD IBNU ATHOILLAH', '7040121091', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 2, 1),
(87, '7020121057', '7020121057', 47, 'WANDA RHENATA', '7020121057', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 2, 1),
(88, '7020121048', '7020121048', 47, 'MUHAMMAD YASIR ALFAN', '7020121048', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 2, 1),
(89, '7020121058', '7020121058', 47, 'YELIENA SALSABILA PUTRI YUDA', '7020121058', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 2, 1),
(90, '7010121014', '7010121014', 47, 'NEZA NOVELIA', '7010121014', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 2, 1),
(91, '7020121050', '7020121050', 47, 'RIKO SETIYAWAN', '7020121050', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 2, 1),
(92, '7030121066', '7030121066', 47, 'PUTRA SYAWAL HIDAYATULLAH', '7030121066', '', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 2, 1),
(93, '4040121109', '4040121109', 47, 'NADIYA NUR ROSYIDAH', '4040121109', '-', '-', 5, '-', 'Dr. Moch. Choirul arif, S.Ag', '-', NULL, NULL, 1, 1),
(94, '4040121110', '4040121110', 1, 'NAHDYAH FUZIAH', '4040121110', '-', '-', 5, '-', 'Dr. Moch. Choirul arif, S.Ag', '-', '0000-00-00', '0000-00-00', 1, 1),
(95, '4040121124', '4040121124', 47, 'SU\'AIDA MAULANI', '4040121124', '-', '-', 5, '-', 'Dr. Moch. Choirul arif, S.Ag', '-', NULL, NULL, 1, 1),
(96, '4040121126', '4040121126', 47, 'VERDEA EKA DINE ZAHRA', '4040121126', '-', '-', 5, '-', 'Dr. Moch. Choirul arif, S.Ag', '-', NULL, NULL, 1, 1),
(97, '4040121129', '4040121129', 47, 'ZAHRATUL QOLBI', '4040121129', '-', '-', 5, '-', 'Dr. Moch. Choirul arif, S.Ag', '-', NULL, NULL, 1, 1),
(98, '7040121080', '7040121080', 47, 'KHUSNIA EVI SAFITRI', '7040121080', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 1, 1),
(99, '7040121082', '7040121082', 47, 'M. AINUL ROFIK', '7040121082', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 1, 1),
(100, '7040121084', '7040121084', 47, 'M. KHUSNUL KHULUQ', '7040121084', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 1, 1),
(101, '7040121085', '7040121085', 47, 'M. RIZQI BAGUS KURNIAWAN', '7040121085', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 1, 1),
(102, '7020121035', '7020121035', 47, 'DIAN DANIATI', '7020121035', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 1, 1),
(103, '7040121086', '7040121086', 47, 'MOCH. DWIKY PUTRA NUGRAHA', '7040121086', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 1, 1),
(104, '7040121080', '7040121080', 47, 'HOSI DIANA AGUSTINA', '7040121080', '-', '-', 5, '-', 'Abdul Kadir Riyadi', '-', NULL, NULL, 1, 1),
(105, '4040121118', '4040121118', 47, 'SAILA SALSABILA FARADISA', '4040121118', '-', '-', 5, '-', 'Dr. Moch. Choirul arif, S.Ag', '-', NULL, NULL, 1, 1),
(106, '4040121122', '4040121122', 47, 'SITI ZAKKIYATUS SHOLEHAH', '4040121122', '-', '-', 5, '-', 'Dr. Moch. Choirul arif, S.Ag', '-', NULL, NULL, 1, 1),
(107, '4040121104', '4040121104', 47, 'MUHAMMAD BIMBIM DIVAIO NUR RAMADHAN', '4040121104', '-', '-', 5, '-', 'Dr. Moch. Choirul arif, S.Ag', '-', NULL, NULL, 1, 1),
(108, '4040121115', '4040121115', 47, 'RICHA AMELIA RAHMANI', '4040121115', '-', '-', 5, '-', 'Dr. Moch. Choirul arif, S.Ag', '-', NULL, NULL, 1, 1),
(109, '7020521040', '7020521040', 47, 'MAULIDA LAILI FAJRIN', '7020521040', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(110, '7020521057', '7020521057', 47, 'SITI VIDITYAS', '7020521057', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(111, '7020521053', '7020521053', 47, 'RAHMASARI ZHAVIRA SASIKIRANA', '7020521053', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(112, '7020521036', '7020521036', 47, 'JUMADIL RACHMAN AKBAR', '7020521036', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(113, '7020521037', '7020521037', 47, 'KHAIRUL ANWAR', '7020521037', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(114, '7010321015', '7010321015', 47, 'MUHAMMAD MARWAN', '7010321015', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(115, '7020321065', '7020321065', 47, 'MUHAMMAD TARUNA KUDUMA HAKIM', '7020321065', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(116, '7040321121', '7040321121', 47, 'MUHAMMAD HIDAYAT MULYAWAN', '7040321121', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(117, '7010321014', '7010321014', 47, 'PRAMUDIA ANANTA', '7010321014', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(118, '7040321127', '7040321127', 47, 'RAHMAD SANJAYA', '7040321127', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(119, '6040320080', '6040320080', 47, 'FILDZA MAULIDA KUSTANTYA', '6040320080', '-', '-', 5, '-', 'Husniyatus Salamah Zainiyati', '-', NULL, NULL, 1, 1),
(120, '5010221010', '5010221010', 47, 'LAILATUL ROHMAH', '5010221010', '-', '-', 5, '-', 'Dr. Hj. Suqiyah Musafa\'ah, M.Ag.', '-', NULL, NULL, 1, 1),
(121, '5010221012', '5010221012', 47, 'MEGANANDA ARUNA DEWANTY', '5010221012', '-', '-', 5, '-', 'Dr. Hj. Suqiyah Musafa\'ah, M.Ag.', '-', NULL, NULL, 1, 1),
(122, '5010221018', '5010221018', 47, 'NADIAH PUTRI NUR A', '5010221018', '-', '-', 5, '-', 'Dr. Hj. Suqiyah Musafa\'ah, M.Ag.', '-', NULL, NULL, 1, 1),
(123, '5010221019', '5010221019', 47, 'NATHANIA ALWI RAMDHANI', '5010221019', '-', '-', 5, '-', 'Dr. Hj. Suqiyah Musafa\'ah, M.Ag.', '-', NULL, NULL, 1, 1),
(124, '5010221027', '5010221027', 47, 'TIARA MAHARANI RAMADHANISA', '5010221027', '-', '-', 5, '-', 'Dr. Hj. Suqiyah Musafa\'ah, M.Ag.', '-', NULL, NULL, 1, 1),
(125, '5010221037', '5010221037', 47, 'AMY DWI KURNAINI', '5010221037', '-', '-', 5, '-', 'Dr. Hj. Suqiyah Musafa\'ah, M.Ag.', '-', NULL, NULL, 1, 1),
(126, '7010221002', '7010221002', 47, 'ADZANIA FILAIL', '7010221002', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(127, '7020221021', '7020221021', 47, 'BOBBY BAGUS SAPUTRA', '7020221021', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(128, '7010221004', '7010221004', 47, 'IKA LUTFIANA SABILA', '7010221004', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(129, '7020221034', '7020221034', 33, 'MA\'RIFATUS ZAKKIYAH SHABRINA', '7020221034', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(130, '7020221032', '7020221032', 33, 'LAILATUL FAZERIA', '7020221032', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(131, '7040221069', '7040221069', 33, 'LAILATUL MAGHFIROH', '7040221069', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(132, '7020221040', '7020221040', 33, 'NUR AFIFATUL HIDAYAH', '7020221040', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(133, '21081194006', '21081194006', 47, 'MARIZKA DEVITA SARI', '21081194006', '-', '-', 10, '-', 'Dr. H. Moch. Khoirul Anwar, S.Ag.,M.E.I.', '-', NULL, NULL, 1, 1),
(134, '21081194052', '21081194052', 47, 'YENI APRILIYANA', '21081194052', '-', '-', 10, '-', 'Dr. H. Moch. Khoirul Anwar, S.Ag.,M.E.I.', '-', NULL, NULL, 1, 1),
(135, '21081194062', '21081194062', 47, 'ROZIINA SALMA AFIFAH', '21081194062', '-', '-', 10, '-', 'Dr. H. Moch. Khoirul Anwar, S.Ag.,M.E.I.', '-', NULL, NULL, 1, 1),
(136, '7040321126', '7040321126', 19, 'PUTRI NURUL HIDAYAH', '7040321126', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(137, '7020321082', '7020321082', 19, 'SOFIATUN NIKMA', '7020321082', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(138, '7010321020', '7010321020', 19, 'NURAISYAH PERMATASAR', '7010321020', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(139, 'P27824420172', 'P27824420172', 47, 'MULINDA RAHMA WULANDIKA', 'P27824420172', '-', '-', 11, '-', 'Dwi Wahyu Wulan Sulistyowati S.ST, M.keb', '-', NULL, NULL, 1, 1),
(140, '5020221044', '5020221044', 47, 'DHIAUR ROHMAH', '5020221044', '-', '-', 5, '-', 'Dr. Hj. Suqiyah Musafa\'ah, M.Ag.', '-', NULL, NULL, 1, 1),
(141, '5040221121', '5040221121', 47, 'MOCH RURI AZHARI T.Z', '5040221121', '-', '-', 5, '-', 'Dr. Hj. Suqiyah Musafa\'ah, M.Ag.', '-', NULL, NULL, 1, 1),
(142, '7020221045', '7020221045', 47, 'TRI RIZKA UTAMININGSIH', '7020221045', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(143, '7020221043', '7020221043', 47, 'SITI MAGHFIROTUN NIKMAH', '7020221043', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(144, '7020221044', '7020221044', 47, 'SRI ENDAH WAHYUNI', '7020221044', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(145, '7010221013', '7010221013', 47, 'SITI LINATUR ROSIDAH', '7010221013', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(146, '7040221063', '7040221063', 47, 'SYAHRA PUTRI RAHAYU', '7040221063', '-', '-', 5, '-', 'Prof. Abdul Kadir Riyadi, Ph.D', '-', NULL, NULL, 1, 1),
(147, '21081194002', '21081194002', 47, 'EVA ZUNIA KHOIRIYAH', '21081194002', '-', '-', 10, '-', 'Dr. H. Moch. Khoirul Anwar, S.Ag.,M.E.I.', '-', NULL, NULL, 1, 1),
(148, '21081194046', '21081194046', 47, 'MUSAIDATUL MAULIDIYAH', '21081194046', '-', '-', 10, '-', 'Dr. H. Moch. Khoirul Anwar, S.Ag.,M.E.I.', '-', NULL, NULL, 1, 1),
(149, '21081194066', '21081194066', 47, 'ALIZA SALSA NABILA', '21081194066', '-', '-', 10, '-', 'Dr. H. Moch. Khoirul Anwar, S.Ag.,M.E.I.', '-', '0000-00-00', '0000-00-00', 1, 1),
(150, '4040420084', '4040420084', 47, 'NOVITA NUZULUL ILMI', '4040420084', '-', '-', 5, '-', 'Dr. H. Moch. Khoirul Anwar, S.Ag.,M.E.I.', '-', '0000-00-00', '0000-00-00', 1, 1),
(151, NULL, NULL, 47, 'MOCHAMAD JUNEO FEGI FIRNANDA', '-', '-', '-', 3, '-', 'Endah maslachah, S.pd', '-', '0000-00-00', '0000-00-00', 1, 1),
(152, NULL, NULL, 47, 'RAHMAD JULIAN', '-', '-', '-', 3, '-', 'Endah maslachah, S.pd', '-', '0000-00-00', '0000-00-00', 1, 1),
(153, NULL, NULL, 47, 'RUMAYSYAH AQILLLAH', '-', '-', '-', 3, '-', 'Endah maslachah, S.pd', '-', '0000-00-00', '0000-00-00', 1, 1),
(154, NULL, NULL, 47, 'SALWA PUTRI VALENCA', '-', '-', '-', 3, '-', 'Endah maslachah, S.pd', '-', '0000-00-00', '0000-00-00', 1, 1),
(155, NULL, NULL, 47, 'REYNANDA NUR SHOBIRIN', '-', '-', '-', 3, '-', 'Endah maslachah, S.pd', '-', '0000-00-00', '0000-00-00', 1, 1),
(156, NULL, NULL, 1, 'VITA RAHMA WATI', '-', '-', '-', 3, '-', 'Endah maslachah, S.pd', '-', '0000-00-00', '0000-00-00', 1, 1),
(157, NULL, NULL, 1, 'NURLINA KASLAN', '-', '-', '-', 3, '-', 'Endah maslachah, S.pd', '-', '0000-00-00', '0000-00-00', 1, 1),
(158, '21082010098', '2108201009804032024', 1, 'DEVILIA DWI CANDRA', '21082010098', 'Rungkut', '085607111358', 1, 'Sistem Informasi', 'Anindo Saka Fitri S.Kom., M.Kom.', '085649908178', '2024-03-04', '2024-05-03', 1, 1),
(159, '21082010116', '2108201011604032024', 1, 'LINA WARDANI', '21082010116', 'Rungkut', '085894570872', 1, 'Sistem Informasi', 'Anindo Saka Fitri S.Kom., M.Kom.', '085649908178', '2024-03-04', '2024-05-03', 1, 1),
(160, '21082010118', '2108201011804032024', 1, 'ERVINA ROSA AULIA', '21082010118', 'Rungkut, Surabaya', '087882191868', 1, 'Sistem Informasi', 'Anindo Saka Fitri, S.Kom, M.Kom', '085649908178', '2024-03-04', '2024-05-03', 1, 1);

--
-- Triggers `tb_mahasiswa`
--
DELIMITER $$
CREATE TRIGGER `after_delete_mahasiswa` AFTER DELETE ON `tb_mahasiswa` FOR EACH ROW BEGIN
	UPDATE tb_lokasi_penempatan
    SET KUOTA_TERISI = KUOTA_TERISI - 1
    WHERE ID_LOKASI = OLD.ID_LOKASI;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `kurangi_kuota_terisi` AFTER UPDATE ON `tb_mahasiswa` FOR EACH ROW IF OLD.`ID_STATUS` <> NEW.`ID_STATUS` THEN
	IF NEW.`ID_STATUS` != 1 THEN
        UPDATE `tb_lokasi_penempatan`
        SET `KUOTA_TERISI` = `KUOTA_TERISI` - 1
		WHERE `ID_LOKASI` = NEW.`ID_LOKASI`;
	END IF;
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah_kuota_Terisi` AFTER INSERT ON `tb_mahasiswa` FOR EACH ROW UPDATE `tb_lokasi_penempatan` 
SET `KUOTA_TERISI` = `KUOTA_TERISI` + 1 
WHERE `ID_LOKASI` = NEW.`ID_LOKASI`
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `ID_NILAI` int(11) NOT NULL,
  `NILAI` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`ID_NILAI`, `NILAI`) VALUES
(1, 'Belum Dinilai'),
(2, 'Sangat Baik'),
(3, 'Baik'),
(4, 'Cukup'),
(6, 'Kurang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendidikan`
--

CREATE TABLE `tb_pendidikan` (
  `ID_PENDIDIKAN` int(11) NOT NULL,
  `TINGKAT_PENDIDIKAN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pendidikan`
--

INSERT INTO `tb_pendidikan` (`ID_PENDIDIKAN`, `TINGKAT_PENDIDIKAN`) VALUES
(1, 'Sekolah Kejuruan'),
(2, 'Perguruan Tinggi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sekolah_pt`
--

CREATE TABLE `tb_sekolah_pt` (
  `ID_SEKOLAH_PT` int(11) NOT NULL,
  `NAMA_SEKOLAH_PT` varchar(225) NOT NULL,
  `ID_PENDIDIKAN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_sekolah_pt`
--

INSERT INTO `tb_sekolah_pt` (`ID_SEKOLAH_PT`, `NAMA_SEKOLAH_PT`, `ID_PENDIDIKAN`) VALUES
(1, 'UPNVJT', 2),
(2, 'SMK KARTIKA 1 SURABAYA', 1),
(3, 'SMK YPM 3 TAMAN', 1),
(4, 'STAI \"TARUNA\" SURABAYA', 2),
(5, 'UINSA', 2),
(6, 'SMK KETINTANG SURABAYA', 1),
(7, 'UM Surabaya', 2),
(8, 'UBHARA Surabaya', 2),
(9, 'UNAIR', 2),
(10, 'UNESA', 2),
(11, 'KEMENTERIAN KESEHATAN RI', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `ID_STATUS` int(11) NOT NULL,
  `STATUS` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`ID_STATUS`, `STATUS`) VALUES
(1, 'Aktif'),
(2, 'Selesai'),
(3, 'Batal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`ID_ADMIN`);

--
-- Indexes for table `tb_kehadiran`
--
ALTER TABLE `tb_kehadiran`
  ADD PRIMARY KEY (`ID_KEHADIRAN`),
  ADD KEY `ID_KODE_KEHADIRAN` (`ID_KODE_KEHADIRAN`),
  ADD KEY `ID_MAHASISWA` (`ID_MAHASISWA`);

--
-- Indexes for table `tb_kode_kehadiran`
--
ALTER TABLE `tb_kode_kehadiran`
  ADD PRIMARY KEY (`ID_KODE_KEHADIRAN`);

--
-- Indexes for table `tb_logbook`
--
ALTER TABLE `tb_logbook`
  ADD PRIMARY KEY (`ID_LOGBOOK`),
  ADD KEY `ID_MAHASISWA` (`ID_MAHASISWA`);

--
-- Indexes for table `tb_lokasi_penempatan`
--
ALTER TABLE `tb_lokasi_penempatan`
  ADD PRIMARY KEY (`ID_LOKASI`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`ID_MAHASISWA`),
  ADD KEY `ID_LOKASI` (`ID_LOKASI`),
  ADD KEY `ID_STATUS` (`ID_STATUS`),
  ADD KEY `NILAI` (`ID_NILAI`),
  ADD KEY `ID_NILAI` (`ID_NILAI`),
  ADD KEY `ID_SEKOLAH_PT` (`ID_SEKOLAH_PT`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`ID_NILAI`);

--
-- Indexes for table `tb_pendidikan`
--
ALTER TABLE `tb_pendidikan`
  ADD PRIMARY KEY (`ID_PENDIDIKAN`);

--
-- Indexes for table `tb_sekolah_pt`
--
ALTER TABLE `tb_sekolah_pt`
  ADD PRIMARY KEY (`ID_SEKOLAH_PT`),
  ADD KEY `ID_PENDIDIKAN` (`ID_PENDIDIKAN`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`ID_STATUS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `ID_ADMIN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_kehadiran`
--
ALTER TABLE `tb_kehadiran`
  MODIFY `ID_KEHADIRAN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kode_kehadiran`
--
ALTER TABLE `tb_kode_kehadiran`
  MODIFY `ID_KODE_KEHADIRAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_logbook`
--
ALTER TABLE `tb_logbook`
  MODIFY `ID_LOGBOOK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_lokasi_penempatan`
--
ALTER TABLE `tb_lokasi_penempatan`
  MODIFY `ID_LOKASI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `ID_MAHASISWA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `ID_NILAI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_pendidikan`
--
ALTER TABLE `tb_pendidikan`
  MODIFY `ID_PENDIDIKAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_sekolah_pt`
--
ALTER TABLE `tb_sekolah_pt`
  MODIFY `ID_SEKOLAH_PT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `ID_STATUS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_kehadiran`
--
ALTER TABLE `tb_kehadiran`
  ADD CONSTRAINT `tb_kehadiran_ibfk_2` FOREIGN KEY (`ID_KODE_KEHADIRAN`) REFERENCES `tb_kode_kehadiran` (`ID_KODE_KEHADIRAN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tb_kehadiran_ibfk_3` FOREIGN KEY (`ID_MAHASISWA`) REFERENCES `tb_mahasiswa` (`ID_MAHASISWA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_logbook`
--
ALTER TABLE `tb_logbook`
  ADD CONSTRAINT `tb_logbook_ibfk_1` FOREIGN KEY (`ID_MAHASISWA`) REFERENCES `tb_mahasiswa` (`ID_MAHASISWA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD CONSTRAINT `tb_mahasiswa_ibfk_1` FOREIGN KEY (`ID_LOKASI`) REFERENCES `tb_lokasi_penempatan` (`ID_LOKASI`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tb_mahasiswa_ibfk_2` FOREIGN KEY (`ID_STATUS`) REFERENCES `tb_status` (`ID_STATUS`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tb_mahasiswa_ibfk_4` FOREIGN KEY (`ID_NILAI`) REFERENCES `tb_nilai` (`ID_NILAI`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tb_mahasiswa_ibfk_5` FOREIGN KEY (`ID_SEKOLAH_PT`) REFERENCES `tb_sekolah_pt` (`ID_SEKOLAH_PT`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_sekolah_pt`
--
ALTER TABLE `tb_sekolah_pt`
  ADD CONSTRAINT `tb_sekolah_pt_ibfk_1` FOREIGN KEY (`ID_PENDIDIKAN`) REFERENCES `tb_pendidikan` (`ID_PENDIDIKAN`) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `UpdateStatusMahasiswa` ON SCHEDULE EVERY 1 SECOND STARTS '2024-03-15 09:02:33' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
                        -- Update ID_STATUS menjadi 2 jika SELESAI_MAGANG sama dengan tanggal saat ini
                        UPDATE tb_mahasiswa
                        SET ID_STATUS = 2
                        WHERE SELESAI_MAGANG = CURDATE();
                    END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
