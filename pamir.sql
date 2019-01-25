-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2019 at 01:56 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT
= 0;
START TRANSACTION;
SET time_zone
= "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pamir`
--

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations`
(
  `id` int
(5) NOT NULL,
  `title` varchar
(150) NOT NULL,
  `text` text NOT NULL,
  `thumbnail` varchar
(255) NOT NULL,
  `galleryLink` varchar
(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`
id`,
`title
`, `text`, `thumbnail`, `galleryLink`) VALUES
(1, 'Afghanistan', 'Afghanistan (/æfˈɡænɪstæn, æfˈɡɑːnɪstɑːn/ (About this soundlisten); Pashto/Dari: افغانستان‬, Pashto: Afġānistān [avɣɒnisˈtɒn, ab-], Dari: Afġānestān [avɣɒnesˈtɒn]), officially the Islamic Republic of Afghanistan, is a landlocked country located within South-Central Asia. Afghanistan is bordered by Pakistan in the south and east; Iran in the west; Turkmenistan, Uzbekistan, and Tajikistan in the north; and in the far northeast, China. Its territory covers 652,000 square kilometers (252,000 sq mi) and much of it is covered by the Hindu Kush mountain range, which experience very cold winters. The north consists of fertile plains, whilst the south-west consists of deserts where temperatures can get very hot in summers. Kabul serves as the capital and its largest city.\r\n\r\nHuman habitation in Afghanistan dates back to the Middle Paleolithic Era, and the country\'s strategic location along the Silk Road connected it to the cultures of the Middle East and other parts of Asia. The land has historically been home to various peoples and has witnessed numerous military campaigns, including those by Alexander the Great, Mauryas, Muslim Arabs, Mongols, British, Soviets, and since 2001 by the United States
with NATO-allied countries. It has been called \"unconquerable\" and nicknamed the \"graveyard of empires\".[17] The land also served as the source from which the Kushans, Hephthalites, Samanids, Saffarids, Ghaznavids, Ghorids, Khaljis, Mughals, Hotaks, Durranis, and others have risen to form major empires.', 'noen', 'none'),
(4, '123', '<p>asd</p>\n', '', ''),
(6, 'testing titel', '<p><br />\ntesting description</p>\n', '', ''),
(18, 'Iran', '<p>Iran
(About this soundlisten)), also called Persia and officially known as the Islamic Republic of Iran
(
Persian:
Ø¬Ù…Ù‡ÙˆØ±ÛŒ Ø§Ø³Ù„Ø§Ù…ÛŒ Ø§ÛŒØ±Ø§Ù† Jomhuri-ye Esl?mi-ye Ir?n
(About this soundlisten)),[16] is a country in Western Asia.[17][18]
With over 81 million inhabitants,[10] Iran is the world&#39;s 18th most populous country.[19] Comprising a land area of 1,648,195 km2
(636,372 sq mi), it is the second largest country in the Middle East and the 17th largest in the world. Iran is bordered to the northwest by Armenia and the Republic of Azerbaijan,[a] to the north by the Caspian Sea, to the northeast by Turkmenistan, to the east by Afghanistan and Pakistan, to the south by the Persian Gulf and the Gulf of Oman, and to the west by Turkey and Iraq. The country&#39;s central location in Eurasia and Western Asia, and its proximity to the Strait of Hormuz, give it geostrategic importance.[20] Tehran is the country&#39;s capital and largest city, as well as its leading economic and cultural center. Iran is home to one of the world&#39;s oldest civilizations,[21][22] beginning
with the formation of the Elamite kingdoms in the fourth millennium BCE. It was first unified by the Iranian Medes in the seventh century BCE,[23] reaching its greatest territorial size in the sixth century BCE, when Cyrus the Great founded the Achaemenid Empire, which stretched from Eastern Europe to the Indus Valley, becoming one of the largest empires in history.[24] The Iranian realm fell to Alexander the Great in the fourth century BCE and was divided into several Hellenistic states. An Iranian rebellion culminated in the establishment of the Parthian Empire, which was succeeded in the third century CE by the Sasanian Empire, a leading world power for the next four centuries.</p>\n', '', ''),
(22, 'once again', '<p>once again</p>\n\n<p>&nbsp;</p>\n', '', ''),
(23, 'KHALEQI', '', '', ''),
(24, 'zabih', '<p>zabih</p>\n', '', ''),
(25, 'test', '<p>test</p>\n', '', ''),
(26, 'Let\'s go', '', '', ''),
(27, 'adsfasdf', '<p>asdfasdf</p>\n', '', ''),
(28, 'adsfasdf', '<p>asdfasdf</p>\n', '', ''),
(29, 'ewarwerwerwer', '<p>asdfasdf asdfasdf asdfasd</p>\n', '', ''),
(30, 'ewarwerwerwer', '<p>asdfasdf asdfasdf asdfasd</p>\n', '', '');

-- --------------------------------------------------------



--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
ADD PRIMARY KEY
(`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int
(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
