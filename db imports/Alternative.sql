-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 19, 2019 at 03:05 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iaevange`
--

-- --------------------------------------------------------

--
-- Table structure for table `Alternative`
--

CREATE TABLE `Alternative` (
  `answerId` int(11) NOT NULL,
  `answer` text,
  `score` int(11) DEFAULT NULL,
  `questionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Alternative`
--

INSERT INTO `Alternative` (`answerId`, `answer`, `score`, `questionId`) VALUES
(1, 'Liverpool', 1, 6),
(2, 'Manchester City', 1, 6),
(3, 'Manchester United', 1, 6),
(4, 'Totteham Hotspur', 1, 6),
(5, 'Arsenal', 1, 6),
(6, 'Chelsea', 1, 6),
(7, 'Burnley', 2, 6),
(8, 'Southampton', 2, 6),
(9, 'Leicester', 2, 6),
(10, 'Brighton Hove Albion', 3, 6),
(11, 'Everton', 1, 6),
(12, 'Newcastle', 2, 6),
(13, 'Cardiff City', 3, 6),
(14, 'Bournemouth', 2, 6),
(15, 'Huddersfield', 3, 6),
(16, 'Fulham', 3, 6),
(17, 'Crystal Palace', 2, 6),
(18, 'West Ham', 2, 6),
(19, 'Watford', 2, 6),
(20, 'Wolverhampton', 3, 6),
(21, 'Arctic Ocean', 2, 1),
(22, 'North Atlantic Ocean', 2, 1),
(23, 'South Atlantic Ocean', 2, 1),
(24, 'Indian Ocean', 1, 1),
(25, 'North Pacific Ocean', 1, 1),
(26, 'South Pacific Ocean', 1, 1),
(27, 'Antarctic Ocean', 3, 1),
(28, 'ghanistan', 1, 2),
(29, 'Albania', 1, 2),
(30, 'Algeria', 1, 2),
(31, 'Andorra', 2, 2),
(32, 'Angola', 2, 2),
(33, 'Antigua and Barbuda', 3, 2),
(34, 'Argentina', 1, 2),
(35, 'Armenia', 1, 2),
(36, 'Australia', 1, 2),
(37, 'Austria', 1, 2),
(38, 'Azerbaijan', 2, 2),
(39, 'Tajikistan', 3, 3),
(40, 'Thailand', 1, 3),
(41, 'The former Yugoslav Republic of Macedonia', 3, 3),
(42, 'Timor-Leste', 3, 3),
(43, 'Togo', 2, 3),
(44, 'Tonga', 2, 3),
(45, 'Trinidad and Tobago', 2, 3),
(46, 'Tunisa', 1, 3),
(47, 'Turkey', 1, 3),
(48, 'Turkmenistan', 1, 3),
(49, 'Tuvalu', 3, 3),
(50, 'Nile', 1, 4),
(51, 'Amazon', 1, 4),
(52, 'Yangtze', 3, 4),
(53, 'Mississippi', 1, 4),
(54, 'Yenisei', 3, 4),
(55, 'Yellow River', 1, 4),
(56, 'Ob', 3, 4),
(57, 'Rio de la Plata', 2, 4),
(58, 'Congo', 2, 4),
(59, 'Amur', 2, 4),
(60, 'Tokyo', 1, 5),
(61, 'Shanghai', 1, 5),
(62, 'Jakarta', 2, 5),
(63, 'Delhi', 1, 5),
(64, 'Seoul', 1, 5),
(65, 'Guangzhou', 2, 5),
(66, 'Beijing', 1, 5),
(67, 'Manila', 1, 5),
(68, 'Mumbai', 1, 5),
(69, 'New York', 1, 5),
(70, 'Shenzhen', 1, 5),
(71, 'Sao Paulo', 1, 5),
(72, 'Mexico City', 1, 5),
(73, 'Lagos', 1, 5),
(74, 'Kyoto', 1, 5),
(75, 'Cairo', 1, 5),
(76, 'Wuhan', 3, 5),
(77, 'Los Angeles', 1, 5),
(78, 'Dhaka', 2, 5),
(79, 'Chengdu', 3, 5),
(80, 'Moscow', 1, 5),
(81, 'Chongqing', 3, 5),
(82, 'Karachi', 3, 5),
(83, 'Bangkok', 1, 5),
(84, 'Tianjin', 2, 5),
(85, 'Istanbul', 1, 5),
(86, 'Kolkata', 3, 5),
(87, 'Tehran', 2, 5),
(88, 'London', 1, 5),
(89, 'Buenos Aires', 1, 5),
(90, 'Hangzhou', 2, 5),
(91, 'Rio de Janeiro', 1, 5),
(92, 'Xian', 3, 5),
(93, 'Paris', 1, 5),
(94, 'Changzhou', 2, 5),
(95, 'Kinshasa', 3, 5),
(96, 'Lahore', 3, 5),
(97, 'Shantou', 3, 5),
(98, 'Nanjing', 2, 5),
(99, 'Bangalore', 1, 5),
(100, 'Jinan', 2, 5),
(101, 'Chennai', 2, 5),
(102, 'Harbin', 2, 5),
(103, 'Bogota', 3, 5),
(104, 'Nagoya', 3, 5),
(105, 'Lima', 1, 5),
(106, 'Harald Hårfagre', 1, 24),
(107, 'Olav Tryggvason', 1, 24),
(108, 'Eirik Blodøks', 2, 24),
(109, 'Håkon Sigurdsson', 3, 24),
(110, 'Harald Gråfell', 3, 24),
(111, 'Håkon den Gode', 2, 24),
(112, 'John F Kennedy', 1, 7),
(113, 'Abraham Lincoln', 2, 7),
(114, 'James Garfield', 3, 7),
(115, 'William McKinley', 3, 7),
(116, 'Bush', 1, 8),
(117, 'Obama', 1, 8),
(118, 'Trump', 1, 8),
(119, 'Nixon', 2, 8),
(120, 'Ford', 2, 8),
(121, 'Grant', 3, 8),
(122, 'Buren', 3, 8),
(123, 'Tyler', 3, 8),
(124, 'Polk', 3, 8),
(125, 'Hayes', 3, 8),
(126, 'Taft', 3, 8),
(127, 'Einar Gerhardsen', 1, 9),
(128, 'Gro Harlem Brundtland', 1, 9),
(129, 'Jens Stoltenberg', 1, 9),
(130, 'Kjell-Magne Bondevik', 2, 9),
(131, 'Trygve Bratteli', 3, 9),
(132, 'Harald', 1, 10),
(133, 'Olav', 1, 10),
(134, 'Haakon', 1, 10),
(135, 'Karl', 2, 10),
(136, 'Christian Fredrik', 3, 10),
(137, 'Oscar', 3, 10),
(138, 'Christianity', 1, 17),
(139, 'Islam', 1, 17),
(140, 'Hinduism', 2, 17),
(141, 'Chinese folklore', 3, 17),
(142, 'Buddhism', 2, 17),
(143, 'Nord univeristet', 3, 23),
(144, 'Norges miljø- og biovitenskapelige univeristet', 3, 23),
(145, 'Norges teknisk naturvitenskapelig univeristet', 1, 23),
(146, 'Oslomet', 2, 23),
(147, 'Universitetet i Agder', 1, 23),
(148, 'Universitetet i Bergen', 2, 23),
(149, 'Universitetet i Oslo', 1, 23),
(150, 'Universitetet i Stavanger', 2, 23),
(151, 'Universitetet i Søtøst-Norge', 3, 23),
(152, 'Universitetet i Tromsø', 3, 23),
(158, 'Arbeiderpartiet Ap eller A', 1, 18),
(159, 'Fremskrittspartiet Frp', 1, 18),
(160, 'Høyre H', 1, 18),
(161, 'Kristelig folkeparti KrF', 3, 18),
(162, 'Miljøpartiet De Grønne MDG', 3, 18),
(163, 'Rødt R', 3, 18),
(164, 'Senterpartiet Sp', 2, 18),
(165, 'Sosialistisk venstreparti SV', 3, 18),
(166, 'Venstre V', 2, 18),
(167, 'France', 1, 19),
(168, 'Belgium', 2, 19),
(169, 'slovenia', 3, 19),
(170, 'Macedonia', 3, 19),
(171, 'Montenegro', 3, 19),
(172, 'serbia', 3, 19),
(173, 'Netherlands', 2, 19),
(174, 'Switzerland', 1, 19),
(175, 'egypt', 2, 19),
(176, 'Russia', 1, 19),
(177, 'Tunisia', 3, 19),
(178, 'Norway', 1, 20),
(179, 'Sweden', 1, 20),
(180, 'Finland', 2, 20),
(181, 'Russia', 3, 20),
(182, 'Albanian', 2, 21),
(183, 'Armenian', 3, 21),
(184, 'aromunsk', 3, 21),
(185, 'Azerbaijani', 3, 21),
(186, 'Avaric', 3, 21),
(187, 'balkarsk', 3, 21),
(188, 'Bashkir', 3, 21),
(189, 'Basque', 3, 21),
(190, 'Bosnian', 3, 21),
(191, 'Breton', 3, 21),
(192, 'Bulgarian', 2, 21),
(193, 'Danish', 1, 21),
(194, 'Alsatian', 3, 21),
(195, 'Swedish', 1, 21),
(196, 'Finnish', 1, 21),
(197, 'French', 1, 21),
(198, 'Frisian', 2, 21),
(199, 'Albanian', 3, 21),
(200, 'Armenian', 3, 21),
(201, 'aromunsk', 3, 21),
(202, 'Azerbaijani', 1, 21),
(203, 'Avaric', 3, 21),
(204, 'balkarsk', 2, 21),
(205, 'Bashkir', 3, 21),
(206, 'Basque', 1, 21),
(207, 'Bosnian', 3, 21),
(208, 'Breton', 3, 21),
(209, 'Bulgarian', 3, 21),
(210, 'Danish', 3, 21),
(211, 'Alsatian', 3, 21),
(212, 'Swedish', 3, 21),
(213, 'Finnish', 2, 21),
(214, 'French', 3, 21),
(215, 'Frisian', 3, 21),
(216, 'Albanian', 3, 21),
(217, 'Armenian', 2, 21),
(218, 'aromunsk', 3, 21),
(219, 'Azerbaijani', 3, 21),
(220, 'Avaric', 3, 21),
(221, 'balkarsk', 3, 21),
(222, 'Bashkir', 3, 21),
(223, 'Basque', 2, 21),
(224, 'Bosnian', 3, 21),
(225, 'Breton', 3, 21),
(226, 'Bulgarian', 1, 21),
(227, 'Danish', 2, 21),
(228, 'Alsatian', 2, 21),
(229, 'Swedish', 2, 21),
(230, 'Finnish', 2, 21),
(231, 'French', 2, 21),
(232, 'Frisian', 3, 21),
(233, 'Albanian', 1, 21),
(234, 'Armenian', 3, 21),
(235, 'aromunsk', 2, 21),
(236, 'Azerbaijani', 3, 21),
(237, 'Avaric', 3, 21),
(238, 'balkarsk', 3, 21),
(239, 'Bashkir', 2, 21),
(240, 'Basque', 3, 21),
(241, 'Bosnian', 2, 21),
(242, 'Breton', 3, 21),
(243, 'Bulgarian', 3, 21),
(244, 'Belarus', 2, 22),
(245, 'moldova', 3, 22),
(246, 'Lithuania', 1, 22),
(247, 'Russia', 1, 22),
(248, 'romania', 2, 22),
(249, 'Ukraine', 1, 22),
(250, 'andorra', 3, 22),
(251, 'Hungary', 2, 22),
(252, 'Czech Republic', 2, 22),
(253, 'Slovakia', 3, 22),
(254, 'Portugal', 2, 22),
(255, 'Miami Heat', 3, 26),
(256, 'Cleveland Cavaliers', 2, 26),
(259, 'Los Angeles Lakers', 1, 26),
(261, 'kido', 1, 25),
(262, 'Araki-ryu', 3, 25),
(263, 'Bajutsu', 3, 25),
(264, 'Battojutsu', 3, 25),
(265, 'Bojutsu', 3, 25),
(266, 'Bujinkan', 3, 25),
(267, 'Chito-ryu', 3, 25),
(268, 'Daito-ryu', 3, 25),
(269, 'aiki-jujutsu', 3, 25),
(270, 'Genseiryu', 3, 25),
(271, 'Goju-ryu', 3, 25),
(272, 'Hakko-ryu', 3, 25),
(273, 'Hojojutsu', 3, 25),
(274, 'Hojutsu', 3, 25),
(275, 'Iaido', 3, 25),
(276, 'Iaijutsu', 3, 25),
(277, 'Isshin-ryu', 3, 25),
(278, 'Jodo', 1, 25),
(279, 'Japanese kickboxing', 1, 25),
(280, 'Judo', 1, 25),
(281, 'Jukendo', 3, 25),
(282, 'Jiujitsu', 2, 25),
(283, 'Juttejutsu', 3, 25),
(284, 'Karate', 1, 25),
(285, 'Kendo', 2, 25),
(286, 'Kenjutsu', 1, 25),
(287, 'Kenpo', 2, 25),
(288, 'Kosho Shorei Ryu Kempo', 3, 25),
(289, 'Kudo', 3, 25),
(290, 'Kusarigamajutsu', 3, 25),
(291, 'Kyudo', 3, 25),
(292, 'Kyujutsu', 3, 25),
(293, 'Naginatajutsu', 3, 25),
(294, 'Maniwa Nen-ryu', 3, 25),
(295, 'Ninjutsu', 2, 25),
(296, 'Nippon Kempo', 3, 25),
(297, 'Okinawan kobudo', 3, 25),
(298, 'Seishinkai', 3, 25),
(299, 'Shindo jinen-ryu', 3, 25),
(300, 'Shito-ryu)', 3, 25),
(301, 'Shoot Boxing', 3, 25),
(302, 'Shoot wrestling', 2, 25),
(303, 'Shootfighting', 2, 25),
(304, 'Shorin-ryu', 3, 25),
(305, 'Shorinji Kempo', 3, 25),
(306, 'Shorinji-Ryu', 3, 25),
(307, 'Shotokan-ryu', 3, 25),
(308, 'Shudokan', 3, 25),
(309, 'Shukokai', 3, 25),
(310, 'Shurikenjutsu', 3, 25),
(311, 'Sojutsu', 3, 25),
(312, 'Sosuishi-ryu', 3, 25),
(313, 'Suijutsu', 3, 25),
(314, 'Sumo', 3, 25),
(315, 'Taido', 3, 25),
(316, 'Taijutsu', 3, 25),
(317, 'Takeda Ryu Nakamura Ha', 3, 25),
(318, 'Takenouchi-ryu', 3, 25),
(319, 'Tantojutsu', 3, 25),
(320, 'Tegumi', 3, 25),
(321, 'Tenshin Shoden Katori Shinto', 3, 25),
(322, 'Tessenjutsu', 3, 25),
(323, 'Togakure-ryu', 3, 25),
(324, 'Toyama-ryu', 3, 25),
(325, 'Uechi-ryu', 3, 25),
(326, 'Wado-ryu', 3, 25),
(327, 'Yabusame', 3, 25),
(328, 'Yagyu Shingan', 3, 25),
(329, 'Yoseikan Budo', 3, 25),
(330, 'Yoseikan-ryu', 3, 25),
(331, 'doc', 3, 27),
(332, 'grumpy', 1, 27),
(333, 'happy', 1, 27),
(334, 'sleepy', 1, 27),
(335, 'dopey', 2, 27),
(336, 'bashful', 3, 27),
(337, 'sneezy', 2, 27),
(338, 'kylie', 2, 28),
(339, 'rob', 3, 28),
(340, 'kendall', 2, 28),
(341, 'kourtney', 1, 28),
(342, 'khloe', 1, 28),
(343, 'brandon', 3, 28);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Alternative`
--
ALTER TABLE `Alternative`
  ADD PRIMARY KEY (`answerId`),
  ADD KEY `questionId` (`questionId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Alternative`
--
ALTER TABLE `Alternative`
  MODIFY `answerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Alternative`
--
ALTER TABLE `Alternative`
  ADD CONSTRAINT `Alternative_ibfk_1` FOREIGN KEY (`questionId`) REFERENCES `Question` (`questionId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
