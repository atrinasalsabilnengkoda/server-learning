-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 17, 2022 at 06:29 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_arab`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `id_answer` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_question` varchar(255) DEFAULT NULL,
  `the_answer` text,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_answer`),
  KEY `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id_answer`, `id_user`, `id_question`, `the_answer`, `grade`) VALUES
(3, 21, 'A1', '{\"I_Apel\":[{\"id\":\"cfd843dc-d00d-4491-b8f5-6ba340147baf\",\"content\":\"/ilustrasi/I_Apel.png\",\"kata\":\"I_Apel\"}]}', 1),
(4, 21, 'B1', '{\"V_Matahari\":[{\"id\":\"935fbe4e-4889-44f0-859a-f425ca874370\",\"content\":\"/ilustrasi/I_Matahari.png\",\"kata\":\"V_Matahari\"}]}', 1),
(5, 24, 'B1', '{\"V_Matahari\":[{\"id\":\"4ee64ff9-0d81-495a-9aa2-01d84d46a524\",\"content\":\"/ilustrasi/I_Matahari.png\",\"kata\":\"V_Matahari\"}]}', 1),
(6, 24, 'B2', '{\"V_Jeruk\":[{\"id\":\"601d9794-942b-4e19-a1fd-50e8c70d7034\",\"content\":\"/ilustrasi/I_Jeruk.png\",\"kata\":\"V_Jeruk\"}]}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `attendees_no` int(11) DEFAULT NULL,
  `class` varchar(11) DEFAULT NULL,
  `role` enum('1','2') DEFAULT NULL,
  `image` varchar(255) DEFAULT '',
  `poin` int(11) DEFAULT '0',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `name`, `attendees_no`, `class`, `role`, `image`, `poin`) VALUES
(5, 'admin@gmail.com', '$2b$10$KpXBbbPeaYlEJME9u4gTgu/isWGVxhYJ3K3JHHV4AXcDWd0lyJVV2', 'Admin', NULL, NULL, '1', NULL, NULL),
(6, 'user1@gmail.com', '$2b$10$FH4qNu75kYvZEjnR/SaNSe3D.yCaZpuokKEZ9vVmsJftpSyGbHhJO', 'user1', NULL, NULL, '2', 'test.png', 1500),
(7, 'user2@gmail.com', '$2b$10$7wSl6rwWKzIOzLGqPM5...Sp462nO550c0tYAMn4FiBy1Bttx2Fdy', 'user2', NULL, NULL, '2', 'test.png', 1500),
(8, 'user3@gmail.com', '$2b$10$n1dW4jth/Hd1Cn3cv0uQDe.SqBPDfyfuGqCbEHPiTwalUaZX0sAAu', 'user3', NULL, NULL, '2', 'test.png', 1500),
(9, 'user4@gmail.com', '$2b$10$KH6hgflwto53016Vj8q9Gu2ErfImKC2tGwTi1tGu32.mrW9EvMRJ.', 'user4', NULL, NULL, '2', 'test.png', 1500),
(10, 'user5@gmail.com', '$2b$10$6twpmw8/KtGv3gC8pNagq.8FLejq52Y4tFQGXQg2hDu7kF1ahvwZS', 'user5', NULL, NULL, '2', 'test.png', 1500),
(11, 'user6@gmail.com', '$2b$10$lXLMFAxcY5Wjg5kQe5zaceW.mMv2VLDSQNIGZ88lUly8t1BolhzbK', 'user6', NULL, NULL, '2', 'test.png', 1500),
(12, 'user7@gmail.com', '$2b$10$7yTAthT5JZHRXoCg.aR6w.AIJFjWHVxefMpazZ92dXpD8uv1qFJaS', 'user7', NULL, NULL, '2', 'test.png', 1500),
(13, 'user8@gmail.com', '$2b$10$DX79Pa5TYP/xB6tmSGwVwuARArw50T95Adss6SVKZ9Yuvf1GNuWo2', 'user8', NULL, NULL, '2', 'test.png', 1500),
(21, 'fahmi@gmail.com', '$2b$10$V8KH8R6JEdK7r.OFfqecB.wLZ8As4s611.NED5.TX9PXIyfqbAr6W', 'Fahmi', NULL, NULL, '1', NULL, NULL),
(22, 'user@gmail.com', '$2b$10$oKn9gTaT7SpQaqJle0XLcuyzwjXsQv0F5VgKl7pfaanq7VkZMC9Pe', 'User', NULL, NULL, '1', NULL, NULL),
(23, 'admin@gmail.com', '$2b$10$ByxD7PQ/3rvAoRVHv1h4NeMQ1/btvjS8oan9QmoI.hVM1h6QgUjdK', 'Jum\"at', NULL, NULL, '1', NULL, NULL),
(24, 'Atrina06', '$2b$10$nAMxI1KLjL9OWIC1c4x5Ae.4cMZwkV.quQRhC.Jv9bYSDgWaQz0N.', 'Atrina Salsabil', NULL, NULL, '1', 'cewe.png', 1500),
(26, 'Abid01', '$2b$10$Lb.dAeqa52EIUj1Ww7zqUOmdKkHHjNIVyaI91Ik8RqXVscf6VVac6', 'Abid Dwi Karana', 1, '3C', '2', 'cowo.png', 0),
(27, 'Fadhil02', '$2b$10$62yToyavbsQnuDNH0zgn5OOoAaf9tQq1uFO7ELIUqBkxmbmpxbB9S', 'Abid Fadhil Abyan', 2, '3C', '2', 'cowo.png', 0),
(28, 'Ahmad03', '$2b$10$v2AsMndmzZ.7pSayhwDtM.j334kJdgro/MPt3JzD/nTJHcvpDL9He', 'Ahmad Basarah Aziz', 3, '3C', '2', 'cowo.png', 0),
(29, 'Najih04', '$2b$10$inUQJizELFRyc/yhiat7qO3FhQ.hHKQaAzMO7Nd6uiNS0xO7QbXQm', 'Ahmad Najih Kamil', 4, '3C', '2', 'cowo.png', 0),
(30, 'Taufiqul05', '$2b$10$PPZ8waOy4IdlOBEWvPWxSO8m1Es8xAKcylX6goE37dacoB33CMgya', 'Ahmad Taufiqul Aziz', 5, '3C', '2', 'cowo.png', 0),
(31, 'Aika06', '$2b$10$HFpw5gcHu/wjJ/RSnz2s.e6RKtdBSfPuiJyfu2c3Rbk7sBr.Bkl9C', 'Aika Tsabita Raihana', 6, '3C', '2', 'cewe.png', 0),
(32, 'Akhmad07', '$2b$10$sRz8OuexsEqu3qnQetc.BOcTh/ytk/NOs5FZKVvLZaby3r6/S5VGS', 'Akhmad Fathi Masruri', 7, '3C', '2', 'cowo.png', 0),
(33, 'Akmal08', '$2b$10$HeKkXoomqmNyGeVGt3eWW.Qwc48Edu9z6lYwOFxUSMSnOgh3JTecG', 'Akmal Syahmi Esalistya', 8, '3C', '2', 'cowo.png', 0),
(34, 'Alifya09', '$2b$10$9Y3CMCetTzV9L1ProOP2yuKqO/ccb3svEoggtz36vBKD5jY0rWkIy', 'Alifya Aqila Razit Yusuf', 9, '3C', '2', 'cewe.png', 0),
(35, 'Anifa10', '$2b$10$nWLGhurKc2JI6IYFdpNAlO85dG7XJvda3ZRp26DqO90tvYK55rMfC', 'Anifa Sri Wahyuni Putri', 10, '3C', '2', 'cewe.png', 0),
(36, 'Atiqoh11', '$2b$10$A38LvPl9kUrnxTS3jZUvJuYp.s31Aek7wPATVTKVpR49/2PqRVo5i', 'Atiqoh Eksa Tsurayya', 11, '3C', '2', 'cewe.png', 0),
(37, 'Aulia12', '$2b$10$pTspBBaehlrBpY9IaTRUG.jliSXmxxg9TEazjl9WD8C.gHju8FuVC', 'Aulia Hawa Dwi Putrimam', 12, '3C', '2', 'cewe.png', 0),
(38, 'Azmi13', '$2b$10$XnDJmV.DqUXBcHbnq34KNO.53oELMxYYNmhRwbu2hFA1Lu5UHQlK.', 'Azmi Dzaka Syakir', 13, '3C', '2', 'cowo.png', 0),
(39, 'Azka14', '$2b$10$dcrfg0LDXEBn9628Oc/mh.ZUfFPAbUcuFsQhFYb.1RV7CgKBAHVh6', 'Azka Farizah Azalia', 14, '3C', '2', 'cewe.png', 0),
(40, 'Dhafin15', '$2b$10$sBdURAVlpzpLrr.0cB0dxu97IEHQ.2Z3InUkFI/m8yUM/9YNocDvO', 'Dhafin Athallah F', 15, '3C', '2', 'cowo.png', 0),
(41, 'Fajrin16', '$2b$10$0YFaeeLwB04Rc6/Py9nvqewOxiD6aiG3utUOb1UKuUqdpQ0ijQCYW', 'Fajrin Al Arof', 16, '3C', '2', 'cowo.png', 0),
(42, 'Kalingga17', '$2b$10$v4U0p6TNfe6JgMEQcAzR6O4IyxnP7ZCsGqWIoN6Hz9nNgm9kZPny6', 'Kalingga Paramarta', 17, '3C', '2', 'cowo.png', 0),
(43, 'Laquisa18', '$2b$10$5iEmFOQNsNfrAM6jExktEuBPVdPtqC3MBl6taq0rTcUJxpH7n8x5.', 'Laquisa Nayara', 18, '3C', '2', 'cewe.png', 0),
(44, 'Amrulloh19', '$2b$10$YfVC/T10VcD/6eJ9VxSm/utb.zRIPyypXu7UDSQtZAAMRJn8REhF.', 'M. Amrulloh Farid Kurniawana', 19, '3C', '2', 'cowo.png', 0),
(45, 'Evan20', '$2b$10$j4RfBpcBBkeVxTg/3KtVu.GLhPgGub4MHK31qcNwfe8aG7q9KQKbC', 'M. Evan Adyatma', 20, '3C', '2', 'cowo.png', 0),
(46, 'Ismail21', '$2b$10$VvLDDqAwb16DthwdAg8Mr.QFX.6aiidAmyYlWZS6CHEwLkDnGzY8i', 'M. Ismail Hasan', 21, '3C', '2', 'cowo.png', 0),
(47, 'Labibul22', '$2b$10$PpQqKmFt/L7e/F13pHlQQe6y9Z6GYIOq7KEnMQl6sewOx0IuN0le6', 'M. Labibul Fikri El-Kafi', 22, '3C', '2', 'cowo.png', 0),
(48, 'Machlusil23', '$2b$10$JfuuLdZTODXvnYvLdM.n0e3QSH85FHcHPNH0vL4q8tAryU0QUFu.S', 'Machlusil Husna', 23, '3C', '2', 'cewe.png', 0),
(49, 'Medelin24', '$2b$10$JfGlljQGhQVOgmJTMc7SIu3hMOSN835zZ3tuN6HnpgmcZry.YLIjG', 'Medelin Rienfi Putriansyah', 24, '3C', '2', 'cewe.png', 0),
(50, 'Muhammad25', '$2b$10$cchQPX2Z6pcR3kyiQPqI9euxemMRTQ1vdXLXcwRX9WdS0aClvKmVO', 'Muhammad Bisma Julian R', 25, '3C', '2', 'cowo.png', 0),
(51, 'Faizin26', '$2b$10$jiGTIclRGLb8f.qPbxhWmOEPY8cYhoPLJTjuHWxv8K0TQFBjzTKR6', 'Muhammad Fa\'izin Saputra', 26, '3C', '2', 'cowo.png', 0),
(52, 'Irsyad27', '$2b$10$TyX1ad1A3VQ7BbO0wwvdM.kUKONf8zBR67IZwnAgxQiqlgrZMypBu', 'Muhammad Irsyad Ab', 27, '3C', '2', 'cowo.png', 0),
(53, 'Irsyadul28', '$2b$10$1AADxEZ48zwDRCXVRydCNOOF87H8u9Kaa9/E8HLK50NOrWoANjocS', 'Muhammad Irsyadul Ibad', 28, '3C', '2', 'cowo.png', 0),
(54, 'Octa29', '$2b$10$vyg/AUu0er8hyiDc9b/K8u8FU7kS5HSZHdcLOBriJtscE.i8mq3Bm', 'Muhammad Octa Eza S', 29, '3C', '2', 'cowo.png', 0),
(55, 'Nafis30', '$2b$10$0mOWySeBhdTMygv1zVQEjuaOky.gH45UcRhWan/nIpWkDjj0WpBzi', 'Nafis Shinta Humairoh', 30, '3C', '2', 'cewe.png', 0),
(56, 'Putri31', '$2b$10$3ggApVkZ97sj669FUzk0fOSpCGrf4UCijblDRQhfYBwAr0g.9oQw2', 'Putri Alya Rahma', 31, '3C', '2', 'cewe.png', 0),
(57, 'Ryan32', '$2b$10$wCeYZDXQojfYPrry1NZZQusNg7tQM9XUiui5MHi2FlIx3AUVsyTdu', 'Ryan Pratama Putranto', 32, '3C', '2', 'cowo.png', 0),
(58, 'Sultan33', '$2b$10$u5/alfwcZx.WUvny7DG/T.Dy9KiuyPYcEUlbYf5HQg9ZCpN5OaXxm', 'Sultan Damar Aldikno', 33, '3C', '2', 'cowo.png', 0),
(59, 'Zahrah34', '$2b$10$zgPPJGCabm84vynT6Xp.OepZB6eO7.SgO3O3eIjNQcXhFJF3NxuCS', 'Zahrah Aisyah Faiha M', 34, '3C', '2', 'cewe.png', 0),
(60, 'Zaskia35', '$2b$10$.eYnq.GUixtFJJohGgzp3ObDdW9pbu1VlrYGPATAY8Wjo6Y.nLm6.', 'Zaskia Zuhro', 35, '3C', '2', 'cewe.png', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
