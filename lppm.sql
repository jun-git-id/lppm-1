-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2018 at 10:49 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lppm`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori_berita` int(11) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `nama_berita` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori_berita`, `slug_berita`, `nama_berita`, `keterangan`, `jenis_berita`, `status_berita`, `gambar`, `tanggal_post`, `tanggal`) VALUES
(6, 3, 1, 'internet-positif-untuk-indonesia', 'Internet Positif Untuk Indonesia', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mattis volutpat iaculis. Sed id tortor nec ex vulputate varius vel ac ante. Duis porttitor sit amet magna et dapibus. In hac habitasse platea dictumst. Nullam volutpat gravida sem sit amet rhoncus. Vivamus fringilla arcu massa, vitae iaculis nunc ornare ut. Aliquam erat volutpat. Nam viverra tellus quis magna sodales malesuada. Etiam fringilla vel leo a eleifend. Nullam dui augue, placerat in turpis sit amet, pulvinar vehicula libero. Cras ligula nunc, iaculis sit amet justo sed, tincidunt aliquet dui.</p>\r\n<p>Vivamus tempus, leo nec congue efficitur, est turpis tincidunt libero, non suscipit elit urna quis metus. Sed fringilla felis non enim volutpat molestie. Vivamus hendrerit nulla in leo tristique, id pharetra diam egestas. Ut vitae ligula quam. Fusce erat leo, iaculis sed luctus ac, suscipit vel mi. Nam volutpat luctus blandit. Sed ullamcorper facilisis est. Maecenas velit neque, lacinia sed dolor eget, cursus ullamcorper nulla. Nam interdum nisi vitae hendrerit posuere. Nullam vel feugiat diam, et venenatis risus. Vivamus vitae hendrerit dui. Duis vehicula pretium nisl eu volutpat. Duis a pulvinar diam, a suscipit neque.</p>\r\n<p>Sed at eros tortor. Nulla justo erat, ultricies a eros sed, bibendum pretium lectus. Maecenas lobortis condimentum odio, non scelerisque enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam suscipit lacus arcu, at tristique sapien aliquam ut. Praesent cursus, lorem nec sollicitudin consectetur, nisl est pulvinar neque, at bibendum leo libero ac metus. Nam posuere sit amet augue quis sagittis. Nunc facilisis, orci nec facilisis ullamcorper, erat nibh semper erat, id cursus arcu felis eget urna. Nulla blandit turpis quis augue ornare elementum. Sed imperdiet posuere dolor, ultrices eleifend diam viverra sit amet. Sed accumsan, orci sit amet aliquam dictum, augue elit suscipit eros, ut pretium lorem nulla nec ante. Pellentesque sed justo eget libero volutpat accumsan.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed pulvinar dolor in ipsum dictum tristique. Phasellus id vehicula velit, id fringilla sem. Etiam elit libero, bibendum ac gravida et, feugiat non nisl. Nullam egestas et nunc id mollis. Maecenas hendrerit quam massa, eget ultricies nunc pretium viverra. Sed et mi malesuada, sodales nunc id, feugiat lectus. Pellentesque leo ipsum, malesuada ac nulla sed, dapibus hendrerit ipsum. Sed id nisl mollis, luctus augue et, scelerisque tortor. Quisque fermentum sem metus, id iaculis odio faucibus in. Curabitur nec bibendum magna. Nunc condimentum id orci id eleifend. In lobortis blandit finibus. Pellentesque id sem quis justo tincidunt pretium. Etiam ultricies dolor quis sapien vulputate tempus. Duis nec dolor egestas, mattis nunc eu, ullamcorper lectus.</p>\r\n<p>Nulla eget elit ultricies, pellentesque ligula dapibus, rhoncus tortor. Praesent ac lacus lacinia, tempus lorem eu, ornare diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam a eros mauris. Morbi tempor vehicula ipsum, sit amet tincidunt orci sollicitudin in. Nam a sagittis diam, eget euismod massa. Quisque bibendum ac orci in varius. Nam eu fringilla eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ornare eu arcu quis tempus. Nullam vehicula ac turpis nec dictum. Pellentesque in pellentesque nulla, eu feugiat mi. Aliquam a feugiat arcu. Etiam volutpat dolor a lacinia viverra. Nam dapibus placerat semper.</p>', 'Berita', 'Publish', 'Koala.jpg', '2018-07-07 08:00:02', '2018-07-07 06:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `hibah`
--

CREATE TABLE `hibah` (
  `hibah_id` int(11) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `hibah_judul` varchar(255) NOT NULL,
  `hibah_file` varchar(255) NOT NULL,
  `hibah_keterangan` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibah`
--

INSERT INTO `hibah` (`hibah_id`, `id_user`, `hibah_judul`, `hibah_file`, `hibah_keterangan`, `tanggal`) VALUES
(6, '3', 'Test Hibah', 'CLOUD_SIM_AKADEMIK-UG_Administrator.pdf', '', '2018-08-01 08:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `id_kategori_berita` int(11) NOT NULL,
  `slug_kategori_berita` varchar(255) NOT NULL,
  `nama_kategori_berita` varchar(255) NOT NULL,
  `keterangan` text,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_berita`
--

INSERT INTO `kategori_berita` (`id_kategori_berita`, `slug_kategori_berita`, `nama_kategori_berita`, `keterangan`, `urutan`) VALUES
(1, 'ekonomi', 'Ekonomi', 'Ekonomi', 1),
(2, 'bisnis-ukm', 'Bisnis UKM', 'Bisnis UKM', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_jurnal`
--

CREATE TABLE `kategori_jurnal` (
  `id_kategori_jurnal` int(11) NOT NULL,
  `slug_kategori_jurnal` varchar(255) NOT NULL,
  `nama_kategori_jurnal` varchar(255) NOT NULL,
  `keterangan` text,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_jurnal`
--

INSERT INTO `kategori_jurnal` (`id_kategori_jurnal`, `slug_kategori_jurnal`, `nama_kategori_jurnal`, `keterangan`, `urutan`) VALUES
(3, 'komputer', 'Komputer', 'Jurnal Ilmu Komputer', 1),
(4, 'desain', 'Desain', 'Jurnal Desain', 2),
(5, 'teknik', 'Teknik', 'Jurnal Teknik', 3);

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `home_setting` varchar(20) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` varchar(500) DEFAULT NULL,
  `gambar` text,
  `video` varchar(50) DEFAULT NULL,
  `yacht` text NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` varchar(400) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google_map` text,
  `judul_1` varchar(200) DEFAULT NULL,
  `pesan_1` varchar(200) DEFAULT NULL,
  `judul_2` varchar(200) DEFAULT NULL,
  `pesan_2` varchar(200) DEFAULT NULL,
  `judul_3` varchar(200) DEFAULT NULL,
  `pesan_3` varchar(200) DEFAULT NULL,
  `judul_4` varchar(200) DEFAULT NULL,
  `pesan_4` varchar(200) DEFAULT NULL,
  `judul_5` varchar(200) DEFAULT NULL,
  `pesan_5` varchar(200) NOT NULL,
  `judul_6` varchar(200) DEFAULT NULL,
  `pesan_6` varchar(200) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `home_setting`, `namaweb`, `tagline`, `tentang`, `gambar`, `video`, `yacht`, `website`, `email`, `alamat`, `telepon`, `hp`, `fax`, `logo`, `icon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `google_map`, `judul_1`, `pesan_1`, `judul_2`, `pesan_2`, `judul_3`, `pesan_3`, `judul_4`, `pesan_4`, `judul_5`, `pesan_5`, `judul_6`, `pesan_6`, `id_user`, `tanggal`) VALUES
(1, 'Image', 'LPPM NPU', 'Nusa Putra University', 'Nusa Putra University', 'Seven_Seas_Upper_Deck1.jpg', 'fsH_KhUWfho', '<p>Through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard. In order to build a shared view of what can be improved, to experience a profound paradigm shift, that will indubitably lay the firm foundations for any leading company. Exploitation of core competencies as an essential enabler, exploiting the productive lifecycle by moving executive focus from lag financial indicators to more actionable lead indicators.</p>\r\n<p>An investment program where cash flows exactly match shareholders\' preferred time patterns of consumption defensive reasoning, the doom loop and doom zoom highly motivated participants contributing to a valued-added outcome. In order to build a shared view of what can be improved, in a collaborative, forward-thinking venture brought together through the merging of like minds. Combined with optimal use of human resources, from binary cause and effect to complex patterns, working through a top-down, bottom-up approach. Maximization of shareholder wealth through separation of ownership from management measure the process, not the people. While those at the coal face don\'t have sufficient view of the overall goals.</p>\r\n<p>Whenever single-loop learning strategies go wrong, to focus on improvement, not cost, in order to build a shared view of what can be improved. An important ingredient of business process reengineering that will indubitably lay the firm foundations for any leading company the new golden rule gives enormous power to those individuals and units. Whenever single-loop learning strategies go wrong, building a dynamic relationship between the main players. Organizations capable of double-loop learning, through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard.</p>\r\n<p>To ensure that non-operating cash outflows are assessed. An important ingredient of business process reengineering big is no longer impregnable to experience a profound paradigm shift. The new golden rule gives enormous power to those individuals and units, while those at the coal face don\'t have sufficient view of the overall goals. Taking full cognizance of organizational learning parameters and principles, working through a top-down, bottom-up approach, an investment program where cash flows exactly match shareholders\' preferred time patterns of consumption. Big is no longer impregnable in a collaborative, forward-thinking venture brought together through the merging of like minds.</p>\r\n<p>Through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard. The three cs - customers, competition and change - have created a new world for business motivating participants and capturing their expectations, organizations capable of double-loop learning. To focus on improvement, not cost, exploiting the productive lifecycle taking full cognizance of organizational learning parameters and principles. Presentation of the process flow should culminate in idea generation, the balanced scorecard, like the executive dashboard, is an essential tool quantitative analysis of all the key ratios has a vital role to play in this.</p>\r\n<p> </p>', 'http://nusaputra.ac.id', 'info@nusaputra.ac.id', 'Jl. Raya Cibolang No.21 Kec. Cisaat Kabupaten Sukabumi Jawabarat', '021-xxxxxxx', '08xxxxxxxxx', ' 021-xxxxxxx', 'logo_npu_100x100.png', 'logo_npu_100x1001.png', 'LPPM Nusa Putra University', '', '', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15843.503828732131!2d106.8736254!3d-6.9054335!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x619b6e8271f232cc!2sNusa+Putra+University!5e0!3m2!1sen!2sid!4v1533101200291\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'MEMBANGUN BUDAYA PERUSAHAAN', 'BUDAYA', 'MEMBANGUN BUDAYA PELAYANAN', 'TEPAT WAKTU', 'MENINGKATKAN PELAYANAN CALL CENTER', 'HEMAT', 'PROGRAM PENDIDIKAN KHUSUS', 'MURAH', 'PROGRAM SEMITAINMENT TRAINING', 'DIJAMIN BISA', 'JUNGGLE SURVIVAL TRAINING', 'YA SUDAHLAH', 3, '2018-08-01 05:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`) VALUES
(3, 'Ikhsan Thohir', 'ikhsan.thohir@gmail.com', 'ikhsan', '67a7872c5aeb341d482f955cd8ff9b951a26e74e', 'Admin'),
(4, 'Anggy Pradiftha', 'mr.pradiftha@gmail.com', '0425068502', '38c6ce9db74666bf51c702fda7cbcc253df2ba56', 'Dosen'),
(5, 'DEBBY RAHMAWATI, S.T.,M.T', '', '0404069001', 'cd809d6264ce10705e4ca70bef38323901bd669e', 'Dosen'),
(6, 'ANDRIJANTO', '', '0405036803', 'b619659e0329c083a6b13b3b52748b2353b43fb7', 'Dosen'),
(7, 'RADIUS PRANOTO', '', '0406068804', 'fbe970b583febceac5459277930727ac84457d80', 'Dosen'),
(8, 'HASAN BASRI MAULANA, S.T.,M.T', '', '0408088901', 'fbf13d9e1d6371b3d6b372ccdf0d6a28aa654e7f', 'Dosen'),
(9, 'FITRI SONDANG', '', '0412078304', '9b0fd6a14da5352a96accdbcf92e77e01f06c211', 'Dosen'),
(10, 'DEWI SARTIKA T', '', '0413128903', '2994f768df637ccdbf442fefaf8c4b2113fef41e', 'Dosen'),
(11, 'FITRIA AGUSTIN', '', '0417088003', 'e8c79e999710428684a956bfb74fb3a012058d09', 'Dosen'),
(12, 'RICO SIHOTANG, S.T.,M.T', '', '0418099001', '69fe95481692ff37f70480a796367cf294fb2bf5', 'Dosen'),
(13, 'YUSONAPIADI', '', '0419047601', '234a7dd8f97a059a7c9079bd5b7f03c6189d1c2a', 'Dosen'),
(14, 'MUHAMMAD AMMAR', '', '0423049001', '001c63b7a8f17e7ea83578882bb1e254953e6f37', 'Dosen'),
(15, 'ADI CANDRA MAULANA', '', '9904019950', '886a9cdc33b3b8eebe468da15d21a3d668d363da', 'Dosen'),
(16, 'PAIKUN', '', '9904202251', '68738c0702f825567b9ffb0e8bcd3ec2a8206d47', 'Dosen'),
(17, 'DIENA MULIAARI SUKIRMAN', '', '9904202289', '3e98305f30f1ae89cb2f4bbe1dfb6c62f04d1b7b', 'Dosen'),
(18, 'MARINA ARTIYASA', '', '0403127308', '0a285da52bebd1d2a2dbc9baeae4d9a0d2ac349b', 'Dosen'),
(19, 'EDWINANTO', '', '0410076903', '1a6bf3caaea829145d9add68d39f70a16f68bdb2', 'Dosen'),
(20, 'YUDHA PUTRA', '', '0410078207', '96ec14d74f0061ddd3817a221741ab11e97b7d11', 'Dosen'),
(21, 'FERDY FERDIAN', '', '0411068302', '84bcf9dfb722f29475bb541d2cfe0f57a2e6eda8', 'Dosen'),
(22, 'HERU YANUAR KRISDIANTO', '', '0413018302', '06b2bb26bce76f229655b4b1b97aefb84f7c12fc', 'Dosen'),
(23, 'YUFRIANA IMAMULHAK', '', '0420038101', 'e56a74de096130e627591dadb6344378fab23da4', 'Dosen'),
(24, 'MIA ARMA DESIMA', '', '0420068103', '90077944947f7453b1a4f96b32923d52dbdb1f14', 'Dosen'),
(25, 'AGUS YULIANTO', '', '0425067704', 'a98016047ea4839f74a5b5ebbd90cc45f80d5b6d', 'Dosen'),
(26, 'HILMAN TAUFIQ', '', '0425087506', '794a1ac83a04b82cbc2454c0c091c4d33ba52cb7', 'Dosen'),
(27, 'KAMDAN', '', '9904000811', '1e4c2ee61ecae0db8ae4ec9ee86ca74896af751b', 'Dosen'),
(28, 'KUSWARA', '', '0403047903', 'fbe0265da8dcf8d7d985c35e15c88280e5f4d9b5', 'Dosen'),
(29, 'RULLY HUSNI', '', '0407057404', 'd81716acd663cb82861ca29247c1d4cf5394a1f0', 'Dosen'),
(30, 'ANANG SURYANA', '', '0407098009', '43d5b9ab10b02c49e162cffd3841dab594f5c149', 'Dosen'),
(31, 'ANNIS DANAR SUNARSO', '', '0412058101', '099be98d6dc9a5f7fe95a4e17c52b465043f97a2', 'Dosen'),
(32, 'KHARISMA', '', '0412118403', 'bf4daa52773dad665e605ff31d6bb6e3d0581bac', 'Dosen'),
(33, 'YUDI NATA', '', '0414087003', '03c8f550bcdd9a4a7412a7a9ea762d5ed614d4cc', 'Dosen'),
(34, 'ANDI RINALDI HASAN', '', '0417118205', '147d9540194e7168ec02a5499e3a3d05c7962c8d', 'Dosen'),
(35, 'FITRINA LESTARI', '', '0420028304', 'f21680fcf40f1667093f2d01eb1829a0a15ba00d', 'Dosen'),
(36, 'HEPPI FAMILIANA', '', '0422098102', 'f90c0a1bb9f340b9d28871131376d63a09ba600b', 'Dosen'),
(37, 'ARIES KARYADI', '', '0424038703', '735036cf52b2e133e79bc57f9646ab4f2c1d13de', 'Dosen'),
(38, 'OSCAR HARIS', '', '0426047805', '38ec20f57177024145616a9ac898d92878029170', 'Dosen'),
(39, 'AGUSTAMI SITORUS', '', '0428118903', 'e100bde3b0fde8fe30d7435f019212cb7f05e923', 'Dosen'),
(40, 'DEDED ALHABIB', '', '9904012004', 'dae0abba00f9b9e3ca6cdc4a8d957d986020d943', 'Dosen'),
(41, 'SRIYONO', '', '9904020037', '395a3e69baf585c19fb1cec46adcc838c30110ee', 'Dosen'),
(42, 'IYUS MAULANA', '', '9904201694', 'e61d9c8879bfee8fe41f58272da4d12352c31851', 'Dosen'),
(43, 'ACHMAD DAYARI', '', '0401108905', 'fe7a80454136c5d37459623d1d715cea89bae0c2', 'Dosen'),
(44, 'IRWAN JAMALLUDIN', '', '0404067403', '9ba136796c98a3e61a3395fee7d7376e70b8aaa1', 'Dosen'),
(45, 'DEDE PAMUNGKAS', '', '0405069301', 'b00083f4a5789980d220fff486f9914a218833e7', 'Dosen'),
(46, 'GUMILAR PRATAMA', '', '0407118602', 'e3a3da106d5ed5498b47c1ae9fdcc04749dfdb62', 'Dosen'),
(47, 'AAN SETIAWATI', '', '0407128602', 'daee022014df720e6aa7af5e77d51b848a704c62', 'Dosen'),
(48, 'GESNIDA YUNITA', '', '0408068805', '0eaf4b56bc8c46bdd8529721039b6afb3fc7b35a', 'Dosen'),
(49, 'ASEP WAHYUDIN', '', '0409077901', 'ba0e1501bb53a67742258bb5447fb18416135410', 'Dosen'),
(50, 'ICUH KOMALA', '', '0409107907', '3f595429a8c15fd16272ce27bae736c393d83888', 'Dosen'),
(51, 'DINDA ANDIANA', '', '0419078905', 'e6131df176c91851d18a3e7b221678db034c511b', 'Dosen'),
(52, 'PRAWIRA YUDHA MAPPALAHERE', '', '0419128603', 'cea160be4a25bbf1c4803360e31e4c458162a224', 'Dosen'),
(53, 'ARIEF JOHARI', '', '0422018105', '2c2037a7787ba189d18f09c4351d95bccaf871e9', 'Dosen'),
(54, 'SONI REFFALI', '', '0422068903', '778ea5bb87365829b8e1232023fd428e32a2122a', 'Dosen'),
(55, 'MELSYA FIRTIKASARI', '', '0423058902', '6bdee239482dc00d8fcfdb5ee72f56c473744fde', 'Dosen'),
(56, 'AGUS DARMAWAN', '', '0431088506', '265130f2bd31def5f93cd5638fad2f89531d2535', 'Dosen'),
(57, 'M. ANDRI JUNIANSYAH', '', '0402068703', '8a2022450851ca9e924d621f2612b3179f10409e', 'Dosen'),
(58, 'RIAN HIDAYAT', '', '0402078803', '79ba3d91caefe6ac178a1fd298075b1c778943e3', 'Dosen'),
(59, 'VIDYA NURINA', '', '0404128405', '1e975638a9601c2958e24e047b5e014a82df3614', 'Dosen'),
(60, 'NUNIK DESTRIA ARIANTI', '', '0404128502', '2787cea0062e4f607df5c06cd6ea43334489d5e8', 'Dosen'),
(61, 'DUDIH GUSTIAN', '', '0405088001', 'c6c32dbcf0da5be9a0668fe14e1e628fcc9169cd', 'Dosen'),
(62, 'WISUDA JATMIKO', '', '0410058403', '7b83c5132422da297e3ccf47687e8d8825296fd3', 'Dosen'),
(63, 'KURNIAWAN', '', '0410087407', 'f672ed59065fa1a205582820b3a0791ed92830b8', 'Dosen'),
(64, 'NANAN SUNANDAR', '', '0410128303', 'c1ecad54ff0f40abe31055120234723e1abd9929', 'Dosen'),
(65, 'LA DONO', '', '0411038804', '0f6f98efd872dbddea589e0506d88b2d955aa1f9', 'Dosen'),
(66, 'MUPAAT', '', '0414027906', '366e294835533b165f37e391244dfe4e7843279b', 'Dosen'),
(67, 'SUDIN SAEPUDIN', '', '0414088608', '093fd2f0d3f8d25a1390f92e4499e2571dde7410', 'Dosen'),
(68, 'EDI PURWANA', '', '0423058004', 'a1fca4f40f387f0d1703599040542ffc5cffcc85', 'Dosen'),
(69, 'BAGJA RAHMA PUTRA', '', '0424108603', '2eeb62070da6b81941dca8ddbac1c83813648d80', 'Dosen'),
(70, 'MUHAMAD MUSLIH', '', '0429038601', '0357022e355d8766d4597688108dfc0bf6001fc0', 'Dosen'),
(71, 'AHMAD HUSEN', '', '9904202285', 'd6fefe618394d6b53163ed5ee3e8bfb5c6ae702a', 'Dosen'),
(72, 'CARTI IRAWAN', '', '9904202288', 'd2adc58defc2aa9932ce4ab04e34439389250e18', 'Dosen'),
(73, 'NUGRAHA', '', '9904202314', '1590409d1b94c0b872c8249202e383e5b7320e2f', 'Dosen'),
(74, 'IRFAN SOFIAN', '', '9904212353', '32ec2e24525f5146e96dd9e07e76dd7e4d465ad5', 'Dosen'),
(75, 'DEDI SUPARDI', '', '0401037203', 'd968ca196f0923a5fd95cf89046a0bb43712800f', 'Dosen'),
(76, 'MUHAMMAD MAHMUD', '', '0402106604', '7d50986aadcac673a05c53db82f1830b107572fd', 'Dosen'),
(77, 'SAMSUL PAHMI', '', '0403048803', '75d81614e9e2d40960120c8ede7f839ff61fed35', 'Dosen'),
(78, 'DENI HASMAN', '', '0410016703', '85cd993e33050b458bab02a999c14ab86620b851', 'Dosen'),
(79, 'DEDE CAHYADI', '', '0413077706', 'a07981d598de4be9416c908c4f17e4edfd0c9df1', 'Dosen'),
(80, 'IRWAN HERMAWAN', '', '0428047904', '8ee68f1e25af9248e425520fba7ed56fe0fd7748', 'Dosen'),
(81, 'ADRIAN REZA', '', '0428078801', '80f1d066776e30c286f103acb8b5f06643a616cb', 'Dosen'),
(82, 'Admin LPPM', 'lppm@nusaputra.ac.id', 'adminLPPM', '917796043ffa3b8a3be95dd2ea3d0e09373c4f1d', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `posisi` varchar(20) NOT NULL,
  `keterangan` text,
  `video` varchar(200) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `posisi`, `keterangan`, `video`, `urutan`, `id_user`, `tanggal`) VALUES
(1, 'Internship Indonesia', 'Homepage', NULL, 'tqRrTu_7C08', 2, 82, '2018-08-01 08:40:36'),
(2, 'Nusa Putra University', 'Homepage', NULL, '0wHBV_UiPU0', 1, 82, '2018-08-01 08:40:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `hibah`
--
ALTER TABLE `hibah`
  ADD PRIMARY KEY (`hibah_id`);

--
-- Indexes for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id_kategori_berita`);

--
-- Indexes for table `kategori_jurnal`
--
ALTER TABLE `kategori_jurnal`
  ADD PRIMARY KEY (`id_kategori_jurnal`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hibah`
--
ALTER TABLE `hibah`
  MODIFY `hibah_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id_kategori_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori_jurnal`
--
ALTER TABLE `kategori_jurnal`
  MODIFY `id_kategori_jurnal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
