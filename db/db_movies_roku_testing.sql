-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 11, 2020 at 10:43 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies_roku_testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

CREATE TABLE `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

CREATE TABLE `tbl_cast` (
  `cast_id` mediumint(8) UNSIGNED NOT NULL,
  `cast_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(36, 'Amy Adams'),
(26, 'Andrew Garfield'),
(8, 'Aneurin Barnard'),
(42, 'Anna Kendrick'),
(14, 'Boyd Holbrook'),
(5, 'Bradley Cooper'),
(1, 'Chris Pratt'),
(19, 'Colm Hill'),
(13, 'Dafne Keen'),
(7, 'Damien Bonnard'),
(22, 'Dan Stevens'),
(30, 'Darcy Bryce'),
(3, 'Dave Bautista'),
(33, 'Ed Skrein'),
(21, 'Emma Watson'),
(6, 'Fionn Whitehead'),
(38, 'Forest Whitaker'),
(46, 'Harrison Ford'),
(11, 'Hugh Jackman'),
(28, 'Jacob Warner'),
(10, 'James Bloor'),
(37, 'Jeremy Renner'),
(45, 'Joseph Gordon-Levitt'),
(24, 'Josh Gad'),
(32, 'Karan Soni'),
(20, 'Kathryn Kirkpatrick'),
(25, 'Kevin Kline'),
(9, 'Lee Armstrong'),
(43, 'Leonardo DiCaprio'),
(23, 'Luke Evans'),
(40, 'Mark OBrien'),
(34, 'Michael Benyaer'),
(18, 'Michael Mitton'),
(39, 'Michael Stuhlbarg'),
(47, 'Miles Teller'),
(29, 'Milo Gibson'),
(12, 'Patrick Stewart'),
(27, 'Richard Pyros'),
(31, 'Ryan Reynolds'),
(52, 'Sandra Bullock'),
(44, 'Saoirse Ronan'),
(17, 'Sheena Kamal'),
(35, 'Stefan Kapicic'),
(15, 'Stephen Merchant'),
(53, 'Suraj Sharma'),
(16, 'Tilda Swinton'),
(41, 'Tom Costello'),
(4, 'Vin Diesel'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` smallint(3) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Albania'),
(2, 'Algeria'),
(3, 'Andorra'),
(4, 'Angola'),
(5, 'Anguilla'),
(6, 'Antarctica'),
(7, 'Antigua'),
(8, 'Antilles'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Aruba'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Azerbaijan'),
(15, 'Bahamas'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Belarus'),
(19, 'Belgium'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bermuda'),
(23, 'Bhutan'),
(24, 'Bolivia'),
(25, 'Bosnia'),
(26, 'Botswana'),
(27, 'Brazil'),
(28, 'Brunei'),
(29, 'Bulgaria'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Cayman Islands'),
(37, 'Central Africa'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Colombia'),
(42, 'Comoros'),
(43, 'Congo'),
(44, 'Cook Islands'),
(45, 'Costa Rica'),
(46, 'Cote D\'Ivoire'),
(47, 'Croatia'),
(48, 'Cuba'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Rep.'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Eritrea'),
(59, 'Estonia'),
(60, 'Ethiopia'),
(61, 'Fiji'),
(62, 'Finland'),
(63, 'Falkland Islands'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Gibraltar'),
(71, 'Greece'),
(72, 'Greenland'),
(73, 'Grenada'),
(74, 'Guam'),
(75, 'Guatemala'),
(76, 'Guiana'),
(77, 'Guinea'),
(78, 'Guyana'),
(79, 'Haiti'),
(80, 'Hondoras'),
(81, 'Hong Kong'),
(82, 'Hungary'),
(83, 'Iceland'),
(84, 'India'),
(85, 'Indonesia'),
(86, 'Iran'),
(87, 'Iraq'),
(88, 'Ireland'),
(89, 'Israel'),
(90, 'Italy'),
(91, 'Jamaica'),
(92, 'Japan'),
(93, 'Jordan'),
(94, 'Kazakhstan'),
(95, 'Kenya'),
(96, 'Kiribati'),
(97, 'Korea'),
(98, 'Kyrgyzstan'),
(99, 'Lao'),
(100, 'Latvia'),
(101, 'Lesotho'),
(102, 'Liberia'),
(103, 'Liechtenstein'),
(104, 'Lithuania'),
(105, 'Luxembourg'),
(106, 'Macau'),
(107, 'Macedonia'),
(108, 'Madagascar'),
(109, 'Malawi'),
(110, 'Malaysia'),
(111, 'Maldives'),
(112, 'Mali'),
(113, 'Malta'),
(114, 'Marshal Islands'),
(115, 'Martinique'),
(116, 'Mauritania'),
(117, 'Mauritius'),
(118, 'Mayotte'),
(119, 'Mexico'),
(120, 'Micronesia'),
(121, 'Moldova'),
(122, 'Monaco'),
(123, 'Mongolia'),
(124, 'Montserrat'),
(125, 'Morocco'),
(126, 'Mozambique'),
(127, 'Myanmar'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Caledonia'),
(133, 'New Guinea'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Nigeria'),
(137, 'Niue'),
(138, 'Norfolk Island'),
(139, 'Norway'),
(140, 'Palau'),
(141, 'Panama'),
(142, 'Paraguay'),
(143, 'Peru'),
(144, 'Puerto'),
(145, 'Philippines'),
(146, 'Poland'),
(147, 'Polynesia'),
(148, 'Portugal'),
(149, 'Romania'),
(150, 'Russia'),
(151, 'Rwanda'),
(152, 'Saint Lucia'),
(153, 'Samoa'),
(154, 'San Marino'),
(155, 'Senegal'),
(156, 'Seychelles'),
(157, 'Sierra Leone'),
(158, 'Singapore'),
(159, 'Slovakia'),
(160, 'Slovenia'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'St. Helena'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tokelau'),
(177, 'Tonga'),
(178, 'Trinidad'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'Virgin Islands'),
(191, 'Yugoslavia'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_decade`
--

CREATE TABLE `tbl_decade` (
  `decade_id` tinyint(3) NOT NULL,
  `decade_name` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_decade`
--

INSERT INTO `tbl_decade` (`decade_id`, `decade_name`) VALUES
(1, '50s'),
(2, '60s'),
(3, '70s'),
(4, '80s'),
(5, '90s'),
(6, '2010s');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

CREATE TABLE `tbl_director` (
  `director_id` smallint(5) UNSIGNED NOT NULL,
  `director_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'James Gunn'),
(2, 'Christopher Nolan'),
(3, 'James Mangold'),
(4, 'Joon-ho Bong'),
(5, 'Bill Condon'),
(6, 'Mel Gibson'),
(7, 'Tim Miller'),
(8, 'Denis Villeneuve '),
(9, 'Dexter Fletcher'),
(10, 'Mike Mitchell'),
(11, 'Walt Dohrn'),
(12, 'Alejandro Gonzalez Inarritu'),
(13, 'John Crowley '),
(14, 'Robert Zemeckis'),
(15, 'Florian Gallenberger '),
(16, 'J.J. Abrams'),
(17, 'Damien Chazelle'),
(18, 'Joseph Gordon-Levitt '),
(19, 'Alfonso Cuaron'),
(20, 'Ang Lee'),
(21, 'David O. Russell');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` smallint(5) UNSIGNED NOT NULL,
  `lang_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`) VALUES
(1, 'Abkhaz'),
(2, 'Afar'),
(3, 'Afrikaans'),
(4, 'Akan'),
(5, 'Albanian'),
(6, 'Amharic'),
(7, 'Arabic'),
(8, 'Aragonese'),
(9, 'Armenian'),
(10, 'Assamese'),
(11, 'Avaric'),
(12, 'Avestan'),
(13, 'Aymara'),
(14, 'Azerbaijani'),
(15, 'Bambara'),
(16, 'Bashkir'),
(17, 'Basque'),
(18, 'Belarusian'),
(19, 'Bengali'),
(20, 'Bihari'),
(21, 'Bislama'),
(22, 'Bosnian'),
(23, 'Breton'),
(24, 'Bulgarian'),
(25, 'Burmese'),
(26, 'Catalan'),
(27, 'Valencian'),
(28, 'Chamorro'),
(29, 'Chechen'),
(30, 'Chichewa'),
(31, 'Chewa'),
(32, 'Nyanja'),
(33, 'Chinese'),
(34, 'Chuvash'),
(35, 'Cornish'),
(36, 'Corsican'),
(37, 'Cree'),
(38, 'Croatian'),
(39, 'Czech'),
(40, 'Danish'),
(41, 'Divehi'),
(42, 'Dhivehi'),
(43, 'Maldivian'),
(44, 'Dutch'),
(45, 'English'),
(46, 'Esperanto'),
(47, 'Estonian'),
(48, 'Ewe'),
(49, 'Faroese'),
(50, 'Fijian'),
(51, 'Finnish'),
(52, 'French'),
(53, 'Fula'),
(54, 'Fulah'),
(55, 'Pulaar'),
(56, 'Pular'),
(57, 'Galician'),
(58, 'Georgian'),
(59, 'German'),
(60, 'Greek'),
(61, 'Guaraní'),
(62, 'Gujarati'),
(63, 'Haitian'),
(64, 'Haitian Creole'),
(65, 'Hausa'),
(66, 'Hebrew'),
(67, 'Herero'),
(68, 'Hindi'),
(69, 'Hiri Motu'),
(70, 'Hungarian'),
(71, 'Interlingua'),
(72, 'Indonesian'),
(73, 'Interlingue'),
(74, 'Irish'),
(75, 'Igbo'),
(76, 'Inupiaq'),
(77, 'Ido'),
(78, 'Icelandic'),
(79, 'Italian'),
(80, 'Inuktitut'),
(81, 'Japanese'),
(82, 'Javanese'),
(83, 'Kalaallisut'),
(84, 'Greenlandic'),
(85, 'Kannada'),
(86, 'Kanuri'),
(87, 'Kashmiri'),
(88, 'Kazakh'),
(89, 'Khmer'),
(90, 'Kikuyu'),
(91, 'Gikuyu'),
(92, 'Kinyarwanda'),
(93, 'Kirghiz'),
(94, 'Kyrgyz'),
(95, 'Komi'),
(96, 'Kongo'),
(97, 'Korean'),
(98, 'Kurdish'),
(99, 'Kwanyama'),
(100, 'Kuanyama'),
(101, 'Latin'),
(102, 'Luxembourgish'),
(103, 'Letzeburgesch'),
(104, 'Luganda'),
(105, 'Limburgish'),
(106, 'Limburgan'),
(107, 'Limburger'),
(108, 'Lingala'),
(109, 'Lao'),
(110, 'Lithuanian'),
(111, 'Luba-Katanga'),
(112, 'Latvian'),
(113, 'Manx'),
(114, 'Macedonian'),
(115, 'Malagasy'),
(116, 'Malay'),
(117, 'Malayalam'),
(118, 'Maltese'),
(119, 'Maori'),
(120, 'Marathi'),
(121, 'Marshallese'),
(122, 'Mongolian'),
(123, 'Nauru'),
(124, 'Navajo'),
(125, 'Navaho'),
(126, 'Norwegian Bokmal'),
(127, 'North Ndebele'),
(128, 'Nepali'),
(129, 'Ndonga'),
(130, 'Norwegian Nynorsk'),
(131, 'Norwegian'),
(132, 'Nuosu'),
(133, 'South Ndebele'),
(134, 'Occitan'),
(135, 'Ojibwe'),
(136, 'Ojibwa'),
(137, 'Old Church Slavonic'),
(138, 'Church Slavic'),
(139, 'Church Slavonic'),
(140, 'Old Bulgarian'),
(141, 'Old Slavonic'),
(142, 'Oromo'),
(143, 'Oriya'),
(144, 'Ossetian'),
(145, 'Ossetic'),
(146, 'Panjabi'),
(147, 'Punjabi'),
(148, 'Pali'),
(149, 'Persian'),
(150, 'Polish'),
(151, 'Pashto'),
(152, 'Pushto'),
(153, 'Portuguese'),
(154, 'Quechua'),
(155, 'Romansh'),
(156, 'Kirundi'),
(157, 'Romanian'),
(158, 'Moldavian'),
(159, 'Moldovan'),
(160, 'Russian'),
(161, 'Sanskrit'),
(162, 'Sardinian'),
(163, 'Sindhi'),
(164, 'Northern Sami'),
(165, 'Samoan'),
(166, 'Sango'),
(167, 'Serbian'),
(168, 'Scottish Gaelic'),
(169, 'Gaelic'),
(170, 'Shona'),
(171, 'Sinhala'),
(172, 'Sinhalese'),
(173, 'Slovak'),
(174, 'Slovene'),
(175, 'Somali'),
(176, 'Southern Sotho'),
(177, 'Spanish'),
(178, 'Castilian'),
(179, 'Sundanese'),
(180, 'Swahili'),
(181, 'Swati'),
(182, 'Swedish'),
(183, 'Tamil'),
(184, 'Telugu'),
(185, 'Tajik'),
(186, 'Thai'),
(187, 'Tigrinya'),
(188, 'Tibetan Standard'),
(189, 'Tibetan'),
(190, 'Turkmen'),
(191, 'Tagalog'),
(192, 'Tswana'),
(193, 'Tonga'),
(194, 'Turkish'),
(195, 'Tsonga'),
(196, 'Tatar'),
(197, 'Twi'),
(198, 'Tahitian'),
(199, 'Uighur'),
(200, 'Uyghur'),
(201, 'Ukrainian'),
(202, 'Urdu'),
(203, 'Uzbek'),
(204, 'Venda'),
(205, 'Vietnamese'),
(206, 'Volapuk'),
(207, 'Walloon'),
(208, 'Welsh'),
(209, 'Wolof'),
(210, 'Western Frisian'),
(211, 'Xhosa'),
(212, 'Yiddish'),
(213, 'Yoruba'),
(214, 'Zhuang'),
(215, 'Chuang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL,
  `movies_decade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`, `movies_decade`) VALUES
(1, 'rear_window.jpg', 'Rear Window', '', '', 'Professional photographer Jeff is stuck in his apartment, recuperating from a broken leg. Out of boredom, he begins to spy on his neighbours and comes across a shocking revelation.', 'rear_window.mp4', '', '50s'),
(2, 'eve.jpg', 'All About Eve', '', '', 'Margo, an established theatre actress, appoints Eve, an aspiring actress, as her personal assistant. However, Margo is unaware of Eve\'s intention to take over her career.', 'eve.mp4', '', '50s'),
(3, 'n_b_nw.jpg', 'North by Northwest', '', '', 'An ad-man becomes involved in a bewildering cross-country chase involving enemy spies, the police and a beautiful woman.', 'n_b_nw.mp4', '', '50s'),
(4, 'sunset.jpg', 'Sunset Boulevard', '', '', 'The film stars William Holden as Joe Gillis, a struggling screenwriter, and Gloria Swanson as Norma Desmond, a former silent-film star who draws him into her demented fantasy world, where she dreams of making a triumphant return to the screen.', 'sunset.mp4', '', '50s'),
(5, 'rebel.jpg', 'Rebel Without a Cause', '', '', 'After moving to a new town, troublemaking teen Jim Stark (James Dean) is supposed to have a clean slate, although being the new kid in town brings its own problems.', 'rebel.mp4', '', '50s'),
(6, 'birds.jpg', 'The Birds', '', '', 'Melanie, a rich socialite, follows Mitch, a lawyer, to his home in Bodega Bay to play a practical joke on him. Things take a bizarre turn when the birds in the area begin to attack the people there.', 'birds.mp4', '', '60s'),
(7, 'psycho.jpg', 'Psycho', '', '', 'Marion disappears after stealing money from her employer. Her lover and sister try to find her and end up reaching the infamous Bates Motel, where they meet Norman Bates.', 'psycho.mp4', '', '60s'),
(8, 'sound_music.jpg', 'The Sound of Music', '', '', 'Maria, an aspiring nun, is sent as a governess to take care of seven motherless children. Soon her jovial and loving nature tames their hearts and the children become fond of her.', 'sound_music.mp4', '', '60s'),
(9, 'poppins.jpg', 'Marry Poppins', '', '', 'Mr Banks is looking for a nanny for his two mischievous children and comes across Mary Poppins, an angelic nanny. She not only brings a change in their lives but also spreads happiness.', 'poppins.mp4', '', '60s'),
(10, 'goldfinger.jpg', 'Goldfinger', '', '', 'MI6 agent James Bond investigates a gold-smuggling ring run by businessman Auric Goldfinger. As he delves deeper into his activities, he uncovers a sinister plan to attack Fort Knox\'s gold reserves.', 'goldfinger.mp4', '', '60s'),
(11, 'jaws.jpg', 'Jaws', '', '', 'A police chief, a marine scientist and a fisherman spring into action after a white shark terrorises the inhabitants of Amity, a quiet island.', 'jaws.mp4', '', '70s'),
(12, 'godfather.jpg', 'The Godfather', '', '', 'Don Vito Corleone, head of a mafia family, decides to handover his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.', 'godfather.mp4', '', '70s'),
(13, 'taxi_driver.jpg', 'Taxi Driver', '', '', 'Travis, an ex-marine and Vietnam veteran, works as a taxi driver in New York City. One day, he is driven to save an underage prostitute from her pimp in an effort to clean the city of its corruption.', 'taxi_driver.mp4', '', '70s'),
(14, 'rocky.jpg', 'Rocky', '', '', 'Rocky Balboa, a small-time boxer, gets a chance to fight heavyweight champion Apollo Creed. In a bid to earn respect and glory, Rocky jumps into the ring, unaware of the tough task ahead of him.', 'rocky.mp4', '', '70s'),
(15, 'exorcist.jpg', 'The Exorcist', '', '', 'An actress notices dangerous changes in the behavior and physical make-up of her 12-year-old daughter. Meanwhile, a young priest begins to doubt his faith while dealing with his mother\'s sickness.', 'exorcist.mp4', '', '70s'),
(16, 'future.jpg', 'Back to the Future', '', '', 'Marty travels back in time using an eccentric scientist\'s time machine. However, he must make his high-school-aged parents fall in love in order to return to the present.', 'future.mp4', '', '80s'),
(17, 'day_off.jpg', 'Ferris Bueller\'s Day Off', '', '', 'Ferris Bueller, a high school student, fakes sickness to stay at home and spends the rest of the day with his best friend and girlfriend. Meanwhile, his dean is trying to spy on him.', 'day_off.mp4', '', '80s'),
(18, 'breakfast.jpg', 'The Breakfast Club', '', '', 'Five high school students from different walks of life endure a Saturday detention under a power-hungry principal (Paul Gleason). The disparate group includes rebel John (Judd Nelson), princess Claire (Molly Ringwald), outcast Allison (Ally Sheedy), brainy Brian (Anthony Michael Hall) and Andrew (Emilio Estevez), the jock.', 'breakfast.mp4', '', '80s'),
(19, 'scarface.jpg', 'Scarface', '', '', 'Tony Montana and his close friend Manny, build a strong drug empire in Miami. However as his power begins to grow, so does his ego and his enemies, and his own paranoia begins to plague his empire.', 'scarface.mp4', '', '80s'),
(20, 'caddy.jpg', 'Caddyshack', '', '', 'A millionaire wants to turn a golf course into a new property development but the President opposes. A story which focuses on the many antics of the employees and players on and off the golf course.', 'caddy.mp4', '', '80s'),
(21, 'fiction.jpg', 'Pulp Fiction', '', '', 'In the realm of underworld, a series of incidents intertwines the lives of two Los Angeles mobsters, a gangster\'s wife, a boxer and two small-time criminals.', 'fiction.mp4', '', '90s'),
(22, 'goodfellas.jpg', 'Goodfellas', '', '', 'Young Henry Hill, with his friends Jimmy and Tommy, begins the climb from being a petty criminal to a gangster on the mean streets of New York.', 'goodfellas.mp4', '', '90s'),
(23, 'alone.jpg', 'Home Alone', '', '', 'Eight-year-old Kevin is accidentally left behind when his family leaves for France. At first, he is happy to be in charge, but when thieves try to break into his home, he tries to put up a fight.', 'alone.mp4', '', '90s'),
(24, 'gump.jpg', 'Forrest Gump', '', '', 'Forrest Gump, a man with a low IQ, joins the army for service where he meets Dan and Bubba. However, he cannot stop thinking about his childhood sweetheart Jenny Curran, whose life is messed up.', 'gump.mp4', '', '90s'),
(25, 'toy.jpg', 'Toy Story', '', '', 'Andy\'s favourite toy, Woody, is worried that after Andy receives his birthday gift, a new toy called Buzz Lightyear, his importance may get reduced. He thus hatches a plan to eliminate Buzz.', 'toy.mp4', '', '90s');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies_new`
--

CREATE TABLE `tbl_movies_new` (
  `movie_id` int(11) NOT NULL,
  `movie_title` text NOT NULL,
  `movie_bio` text NOT NULL,
  `movie_dec` text NOT NULL,
  `movie_img` text NOT NULL,
  `movie_vid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies_new`
--

INSERT INTO `tbl_movies_new` (`movie_id`, `movie_title`, `movie_bio`, `movie_dec`, `movie_img`, `movie_vid`) VALUES
(1, 'Rear Window', 'Professional photographer Jeff is stuck in his apartment, recuperating from a broken leg. Out of boredom, he begins to spy on his neighbours and comes across a shocking revelation.', '50', 'rear_window.jpg', 'rear_window.mp4'),
(2, 'All About Eve', 'Margo, an established theatre actress, appoints Eve, an aspiring actress, as her personal assistant. However, Margo is unaware of Eve\'s intention to take over her career.', '50', 'eve.jpg', 'eve.mp4'),
(3, 'North by Northwest', 'An ad-man becomes involved in a bewildering cross-country chase involving enemy spies, the police and a beautiful woman.', '50', 'n_b_nw.jpg', 'n_b_nw.mp4'),
(4, 'Sunset Boulevard', 'The film stars William Holden as Joe Gillis, a struggling screenwriter, and Gloria Swanson as Norma Desmond, a former silent-film star who draws him into her demented fantasy world, where she dreams of making a triumphant return to the screen.', '50', 'sunset.jpg', 'sunset.mp4'),
(5, 'Rebel Without a Cause', 'After moving to a new town, troublemaking teen Jim Stark (James Dean) is supposed to have a clean slate, although being the new kid in town brings its own problems.', '50', 'rebel.jpg', 'rebel.mp4'),
(6, 'The Birds', 'Melanie, a rich socialite, follows Mitch, a lawyer, to his home in Bodega Bay to play a practical joke on him. Things take a bizarre turn when the birds in the area begin to attack the people there.', '60', 'birds.jpg', 'birds.mp4'),
(7, 'Psycho', 'Marion disappears after stealing money from her employer. Her lover and sister try to find her and end up reaching the infamous Bates Motel, where they meet Norman Bates.', '60', 'psycho.jpg', 'psycho.mp4'),
(8, 'The Sound of Music', 'Maria, an aspiring nun, is sent as a governess to take care of seven motherless children. Soon her jovial and loving nature tames their hearts and the children become fond of her.', '60', 'sound_music.jpg', 'sound_music.mp4'),
(9, 'Marry Poppins', 'Mr Banks is looking for a nanny for his two mischievous children and comes across Mary Poppins, an angelic nanny. She not only brings a change in their lives but also spreads happiness.', '60', 'poppins.jpg', 'poppins.mp4'),
(10, 'Goldfinger', 'MI6 agent James Bond investigates a gold-smuggling ring run by businessman Auric Goldfinger. As he delves deeper into his activities, he uncovers a sinister plan to attack Fort Knox\'s gold reserves.', '60', 'goldfinger.jpg', 'goldfinger.mp4'),
(11, 'Jaws', 'A police chief, a marine scientist and a fisherman spring into action after a white shark terrorises the inhabitants of Amity, a quiet island.', '70', 'jaws.jpg', 'jaws.mp4'),
(12, 'The Godfather', 'Don Vito Corleone, head of a mafia family, decides to handover his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.', '70', 'godfather.jpg', 'godfather.mp4'),
(13, 'Taxi Driver', 'Travis, an ex-marine and Vietnam veteran, works as a taxi driver in New York City. One day, he is driven to save an underage prostitute from her pimp in an effort to clean the city of its corruption.', '70', 'taxi_driver.jpg', 'taxi_driver.mp4'),
(14, 'Rocky', 'Rocky Balboa, a small-time boxer, gets a chance to fight heavyweight champion Apollo Creed. In a bid to earn respect and glory, Rocky jumps into the ring, unaware of the tough task ahead of him.', '70', 'rocky.jpg', 'rocky.mp4'),
(15, 'The Exorcist', 'An actress notices dangerous changes in the behavior and physical make-up of her 12-year-old daughter. Meanwhile, a young priest begins to doubt his faith while dealing with his mother\'s sickness.', '70', 'exocist.jpg', 'exocist.mp4'),
(16, 'Back to the Future', 'Marty travels back in time using an eccentric scientist\'s time machine. However, he must make his high-school-aged parents fall in love in order to return to the present.', '80', 'future.jpg', 'future.mp4'),
(17, 'Ferris Bueller\'s Day Off', 'Ferris Bueller, a high school student, fakes sickness to stay at home and spends the rest of the day with his best friend and girlfriend. Meanwhile, his dean is trying to spy on him.', '80', 'day_off.jpg', 'day_off.mp4'),
(18, 'The Breakfast Club', 'Five high school students from different walks of life endure a Saturday detention under a power-hungry principal (Paul Gleason). The disparate group includes rebel John (Judd Nelson), princess Claire (Molly Ringwald), outcast Allison (Ally Sheedy), brainy Brian (Anthony Michael Hall) and Andrew (Emilio Estevez), the jock.', '80', 'breakfast.jpg', 'breakfast.mp4'),
(19, 'Scarface', 'Tony Montana and his close friend Manny, build a strong drug empire in Miami. However as his power begins to grow, so does his ego and his enemies, and his own paranoia begins to plague his empire.', '80', 'scarface.jpg', 'scarface.mp4'),
(20, 'Caddyshack', 'A millionaire wants to turn a golf course into a new property development but the President opposes. A story which focuses on the many antics of the employees and players on and off the golf course.', '80', 'caddy.jpg', 'caddy.mp4'),
(21, 'Pulp Fiction', 'In the realm of underworld, a series of incidents intertwines the lives of two Los Angeles mobsters, a gangster\'s wife, a boxer and two small-time criminals.', '90', 'fiction.jpg', 'fiction.mp4'),
(22, 'Goodfellas', 'Young Henry Hill, with his friends Jimmy and Tommy, begins the climb from being a petty criminal to a gangster on the mean streets of New York.', '90', 'goodfellas.jpg', 'goodfellas.mp4'),
(23, 'Home Alone', 'Eight-year-old Kevin is accidentally left behind when his family leaves for France. At first, he is happy to be in charge, but when thieves try to break into his home, he tries to put up a fight.', '90', 'alone.jpg', 'alone.mp4'),
(24, 'Forrest Gump', 'Forrest Gump, a man with a low IQ, joins the army for service where he meets Dan and Bubba. However, he cannot stop thinking about his childhood sweetheart Jenny Curran, whose life is messed up.', '90', 'gump.jpg', 'gump.mp4'),
(25, 'Toy Story', 'Andy\'s favourite toy, Woody, is worried that after Andy receives his birthday gift, a new toy called Buzz Lightyear, his importance may get reduced. He thus hatches a plan to eliminate Buzz.', '90', 'toy.jpg', 'toy.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

CREATE TABLE `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 10, 42),
(43, 11, 43),
(44, 12, 44),
(45, 13, 45),
(46, 14, 21),
(47, 15, 46),
(48, 16, 47),
(49, 17, 1),
(50, 18, 45),
(51, 19, 52),
(52, 20, 53),
(53, 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_country`
--

CREATE TABLE `tbl_mov_country` (
  `mov_country_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_country`
--

INSERT INTO `tbl_mov_country` (`mov_country_id`, `movies_id`, `country_id`) VALUES
(1, 1, 34),
(2, 1, 134),
(3, 1, 184),
(4, 2, 184),
(5, 2, 183),
(6, 2, 131),
(7, 2, 64),
(8, 3, 12),
(9, 3, 34),
(10, 3, 184),
(11, 4, 184),
(12, 4, 97),
(13, 5, 183),
(14, 5, 184),
(15, 6, 184),
(16, 6, 12),
(17, 7, 184),
(18, 8, 184),
(19, 9, 183),
(20, 9, 184),
(21, 9, 68),
(22, 10, 184),
(23, 11, 184),
(24, 11, 81),
(25, 11, 171);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_decade`
--

CREATE TABLE `tbl_mov_decade` (
  `mov_decade_id` mediumint(8) NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `decade_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_decade`
--

INSERT INTO `tbl_mov_decade` (`mov_decade_id`, `movies_id`, `decade_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5),
(26, 26, 6),
(27, 27, 6),
(28, 28, 6),
(29, 29, 6),
(30, 30, 6),
(31, 6, 10),
(32, 6, 11),
(33, 6, 12),
(34, 6, 13),
(35, 6, 14),
(36, 6, 15),
(37, 6, 16),
(38, 6, 17),
(39, 6, 18),
(40, 6, 19),
(41, 6, 20),
(42, 6, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_director`
--

CREATE TABLE `tbl_mov_director` (
  `mov_director_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 1),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_lang`
--

CREATE TABLE `tbl_mov_lang` (
  `mov_lang_id` smallint(5) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_lang`
--

INSERT INTO `tbl_mov_lang` (`mov_lang_id`, `movies_id`, `language_id`) VALUES
(1, 1, 45),
(2, 2, 45),
(3, 2, 52),
(4, 2, 59),
(5, 3, 45),
(6, 3, 177),
(7, 4, 45),
(8, 4, 177),
(9, 4, 97),
(10, 5, 45),
(11, 6, 45),
(12, 6, 81),
(13, 7, 45),
(14, 8, 45),
(15, 8, 33),
(16, 8, 160),
(17, 9, 45),
(18, 9, 126),
(19, 9, 59),
(20, 10, 45),
(21, 11, 45),
(22, 11, 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_studio`
--

CREATE TABLE `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_studio`
--

INSERT INTO `tbl_mov_studio` (`mov_studio_id`, `movies_id`, `studio_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 1),
(18, 18, 17),
(19, 19, 18),
(20, 20, 19),
(21, 21, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

CREATE TABLE `tbl_music` (
  `music_id` int(11) NOT NULL,
  `music_cover` text NOT NULL,
  `music_title` text NOT NULL,
  `music_year` text NOT NULL,
  `music_runtime` text NOT NULL,
  `music_storyline` text NOT NULL,
  `music_trailer` text NOT NULL,
  `music_release` text NOT NULL,
  `music_decade` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_cover`, `music_title`, `music_year`, `music_runtime`, `music_storyline`, `music_trailer`, `music_release`, `music_decade`) VALUES
(1, 'cruel.jpg', 'Don\'t Be Cruel - Elvis Presley', '0', '0', '\"Don\'t Be Cruel\" is a song recorded by Elvis Presley and written by Otis Blackwell in 1956. It was inducted into the Grammy Hall of Fame in 2002.', 'cruel.mp4', '0', '50s'),
(2, 'shook.jpg', 'All Shook up - Elvis Presley', '0', '0', '\"All Shook Up\" is a song recorded by Elvis Presley, published by Elvis Presley Music, and composed by Otis Blackwell. ', 'shook.mp4', '0', '50s'),
(3, 'pretender.jpg', 'The Great Pretender - The Platters', '0', '0', '\"The Great Pretender\" is a popular song recorded by The Platters, with Tony Williams on lead vocals, and released as a single on November 3, 1955.', 'pretender.mp4', '0', '50s'),
(4, 'twist.jpg', 'The Twist - Hank Ballard & The Midnighters', '0', '0', '\"The Twist\" is an American pop song written and originally released in early 1959 by Hank Ballard and the Midnighters as a B-side to \"Teardrops on Your Letter\".', 'twist.mp4', '0', '50s'),
(5, 'stroll.jpg', 'The Stroll - The Dimonds', '0', '0', 'The Stroll was both a slow rock \'n\' roll dance and a song that was popular in the late 1950s. Billboard first reported that \"The Stroll\" might herald a new dance craze similar to the \"Big Apple\" in December 1957.', 'stroll.mp4', '0', '50s'),
(6, 'jude.jpg', 'Hey Jude - The Beatles', '0', '0', '\"Hey Jude\" is a song by the English rock band the Beatles that was released as a non-album single on 26 August 1968.', 'jude.mp4', '0', '60s'),
(7, 'california.jpg', 'California Dreamin\' - The Mamas & The Papas', '0', '0', '\"California Dreamin\'\" is a song written by John Phillips and Michelle Phillips and was first recorded by Barry McGuire. ', 'california.mp4', '0', '60s'),
(8, 'believer.jpg', 'I\'m a Believer - The Monkees', '0', '0', '\"I\'m a Believer\" is a song composed by Neil Diamond and recorded by The Monkees in 1966 with the lead vocals by Micky Dolenz.', 'believer.mp4', '0', '60s'),
(9, 'babe.jpg', 'I Got You Babe - Sonny & Cher', '0', '0', '\"I Got You Babe\" is a song written by Sonny Bono. It was the first single taken from the debut studio album Look at Us, of the American pop music duo Sonny & Cher.', 'babe.mp4', '0', '60s'),
(10, 'women.jpg', 'Pretty Women - Roy Orbison', '0', '0', '\"Oh, Pretty Woman\" or \"Pretty Woman\" is a song recorded by Roy Orbison, written by Orbison and Bill Dees.', 'women.mp4', '0', '60s'),
(11, 'alive.jpg', 'Stayin\' Alive - Bee Gees', '0', '0', 'Stayin\' Alive\" is a song written and performed by the Bee Gees from the Saturday Night Fever motion picture soundtrack.', 'alive.mp4', '0', '70s'),
(12, 'dancing.jpg', 'Dancing Queen - Abba', '0', '0', '\"Dancing Queen\" is a Europop song by the Swedish group ABBA, and the lead single from their fourth studio album, Arrival.', 'dancing.mp4', '0', '70s'),
(13, 'heaven.jpg', 'Stairway to Heaven - Led Zeppelin', '0', '0', '\"Stairway to Heaven\" is a song by the English rock band Led Zeppelin, released in late 1971. It was composed by the band\'s guitarist Jimmy Page and vocalist Robert Plant for their untitled fourth studio album. ', 'heaven.mp4', '0', '70s'),
(14, 'lean.jpg', 'Lean On Me - Bill Withers', '0', '0', '\"Lean on Me\" is a song written and recorded by American singer-songwriter Bill Withers. It was released in April 1972 as the first single from his second album, Still Bill.', 'lean.mp4', '0', '70s'),
(15, 'dream.jpg', 'Dream On - Aerosmith', '0', '0', '\"Dream On\" is a power ballad by Aerosmith from their 1973 debut album, Aerosmith. Written by lead singer Steven Tyler, this song was their first major hit and became a classic rock radio staple.', 'dream.mp4', '0', '70s'),
(16, 'jean.jpg', 'Billie Jean - Michael Jackson', '0', '0', '\"Billie Jean\" is a song by American singer Michael Jackson, released by Epic Records on January 2, 1983, as the second single from Jackson\'s sixth studio album, Thriller.', 'jean.jpg', '0', '80s'),
(17, 'sweet.jpg', 'Sweet Dreams - Eurythmics', '0', '0', '\"Sweet Dreams (Are Made of This)\" is a song by the British new wave music duo Eurythmics. The song is the title track of their album of the same name and was released as the fourth and final single from the album in early 1983. ', 'sweet.mp4', '0', '80s'),
(18, 'prayer.jpg', 'Livin\' On A Prayer - Bon Jovi', '0', '0', '\"Livin\' on a Prayer\" is Bon Jovi\'s second chart-topping single from their third album Slippery When Wet.', 'prayer.mp4', '0', '80s'),
(19, 'child.jpg', 'Sweet Child O\' Mine - Guns N\' Roses', '0', '0', '\"Sweet Child o\' Mine\" is a song by American rock band Guns N\' Roses. It appeared on their debut album Appetite for Destruction.', 'child.mp4', '0', '80s'),
(20, 'whisper.jpg', 'Careless Whisper - George Michael', '0', '0', '\"Careless Whisper\" is a pop ballad written by George Michael and Andrew Ridgeley of British music duo Wham!. It was released on 24 July 1984 on the Wham! album Make It Big.', 'whisper.jpg', '0', '80s'),
(21, 'livin.jpg', 'Livin\' La Vida Loca - Ricky Martin', '0', '0', '\"Livin\' la Vida Loca\" is a song performed by Ricky Martin. It was released on March 23, 1999, from Martin\'s self-titled debut English-language album. ', 'livin.mp4', '0', '90s'),
(22, 'want.jpg', 'I Want It That Way - Backstreet Boys', '0', '0', '\"I Want It That Way\" is a song by American boy band the Backstreet Boys. It was released on April 12, 1999, as the lead single from their third studio album, Millennium.', 'want.mp4', '0', '90s'),
(23, 'touch.jpg', 'U Can’t Touch This - HAMMER', '0', '0', '\"U Can\'t Touch This\" is a song cowritten, produced and performed by MC Hammer from his 1990 album Please Hammer, Don\'t Hurt \'Em.', 'touch.mp4', '0', '90s'),
(24, 'baby.jpg', 'Baby One More Time - Britney Spears', '0', '0', '\"...Baby One More Time\" is the debut single by American singer Britney Spears from her debut studio album of the same title.', 'baby.mp4', '0', '90s'),
(25, 'love.jpg', 'What Is Love - Haddaway', '0', '0', '\"What Is Love\" is a song recorded by Trinidadian-German Eurodance artist Haddaway for his debut album, The Album. ', 'love.mp4', '0', '90s');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `show_id` int(11) NOT NULL,
  `show_cover` text NOT NULL,
  `show_title` text NOT NULL,
  `show_year` int(11) NOT NULL,
  `show_runtime` int(11) NOT NULL,
  `show_storyline` text NOT NULL,
  `show_trailer` text NOT NULL,
  `show_release` int(11) NOT NULL,
  `show_decade` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`show_id`, `show_cover`, `show_title`, `show_year`, `show_runtime`, `show_storyline`, `show_trailer`, `show_release`, `show_decade`) VALUES
(1, 'lucy.jpg', 'I Love Lucy', 0, 0, 'Naive and ambitious but lacking the skill, Lucy\'s relentless efforts to get into showbiz often lands herself and her husband into trouble.Her neighbours and friends also get entangled in her antics', 'lucy.mp4', 0, '50s'),
(2, 'zone.jpg', 'The Twilight Zone', 0, 0, 'A comprehensive collection of mystical tales where people try to solve their problems using their own unique ideas.', 'zone.mp4', 0, '50s'),
(3, 'ranger.jpg', 'The Lone Ranger', 0, 0, 'The Lone Ranger, the sole survivor of a group of Texas Rangers, befriends an American Indian. Together, the two set out to defend people from evil forces.', 'ranger.mp4', 0, '50s'),
(4, 'hitchcock.jpg', 'Alfred Hitchcock Presents', 0, 0, 'The program takes the viewers through the dramas, thrillers and mysteries of Alfred Hitchcock.', 'hitchcock.mp4', 0, '50s'),
(5, 'superman.jpg', 'Adventures of Superman', 0, 0, 'When he isn\'t fighting for truth, justice and the American way, the man in tights dons a suit and glasses for his secret identity as Daily Planet newspaper reporter Clark Kent, who works alongside friends Lois Lane and Jimmy Olsen for gruff boss Perry White.', 'superman.mp4', 0, '50s'),
(6, 'hogan.jpg', 'Hogan\'s Heroes', 0, 0, 'A bunch of inmates during World War II do their best to incapacitate war efforts. Their attempts lead to hilarious results.', 'hogan.mp4', 0, '60s'),
(7, 'gilligans.jpg', 'Gilligan\'s Island', 0, 0, 'Seven people from different walks of life are cast away at an unknown island after a violent storm. They adapt to their life on the island while continuously making attempts to escape.', 'gilligans.mp4', 0, '60s'),
(8, 'batman.jpg', 'Batman', 0, 0, 'Eccentric Gotham City tycoon Bruce Wayne dons tights to fight crime as Batman, aided by pal Dick Ward as equally Spandex-clad Robin, in this \'60s camp classic.', 'batman.mp4', 0, '60s'),
(9, 'flintstones.jpg', 'The Flintstones', 0, 0, 'The Flintstones were the modern Stone Age family. Residing in Bedrock, Fred Flintstone worked an unsatisfying quarry job, but returned home to lovely wife Wilma and eventually daughter Pebbles.', 'flintstones.mp4', 0, '60s'),
(10, 'brady.jpg', 'The Brady Bunch', 0, 0, 'Mike, an architect with three sons, and Carol, a homemaker with three daughters, get married but their children struggle to bond with each other, leading to a challenging life for the family.', 'brady.mp4', 0, '60s'),
(11, 'mash.jpg', 'M*A*S*H', 0, 0, 'The series is centered upon the interrelationships, stress and trauma involved in being a part of Mobile Army Surgical Hospital. They survive insuperable odds with the help of practical jokes and fun.', 'mash.mp4', 0, '70s'),
(12, 'dukes.jpg', 'The Dukes of Hazzard', 0, 0, 'Just some good old boys, never meaning no harm. But cousins Bo and Luke Duke certainly have a way of finding trouble with the law everywhere they turn.', 'dukes.mp4', 0, '70s'),
(13, 'happy.jpg', 'Happy Days', 0, 0, 'Set in 1950s and 1960s Milwaukee, this series tells the story of the Cunningham family -- father Howard, mother Marion, son Richie and daughter Joanie.', 'happy.mp4', 0, '70s'),
(14, 'family.jpg', 'All in the Family', 0, 0, 'The lead character, Archie Bunker, is a loudmouthed, uneducated bigot who believes in every stereotype he has ever heard. His wife, Edith, is sweet but not the sharpest knife in the drawer. ', 'family.mp4', 0, '70s'),
(15, 'angels.jpg', 'Charlie\'s Angels', 0, 0, 'The show that ushered in the phrase \"jiggle TV\" features three beautiful police academy-trained private detectives whose cases always seem to require that they don bikinis, evening gowns or other sexy clothing.', 'angels.mp4', 0, '70s'),
(16, 'cheers.jpg', 'Cheers', 0, 0, 'A group of people from different paths of life meet at Cheers, a bar run by Sam in Boston. They share their experiences while working and drinking at the bar.', 'cheers.mp4', 0, '80s'),
(17, 'miami.jpg', 'Miami Vice', 0, 0, 'This series is largely remembered for the stylish clothes Detectives Sonny Crockett and Ricardo Tubbs wore, the soundtrack, and its distinct visuals.', 'miami.mp4', 0, '80s'),
(18, 'ateam.jpg', 'The A-Team', 0, 0, 'A team of ex-special forces soldiers on the lam from the military police (even though they didn\'t really commit the crime for which they\'d been imprisoned) leaves a trail of explosions in its wake.', 'ateam.jpg', 0, '80s'),
(19, 'house.jpg', 'Full House', 0, 0, 'Danny is a widower who is raising his three little girls after the death of his wife. But he has help from his musician brother-in-law, Jesse Katsopolis, and his best friend, comedian Joey Gladstone.', 'house.mp4', 0, '80s'),
(20, 'simpsons.jpg', 'The Simpsons', 0, 0, 'Working-class father Homer Simpson and his dysfunctional family deal with comical situations and the ups-and-downs of life in the town of Springfield.', 'simpsons.mp4', 0, '80s'),
(21, 'prince.jpg', 'The Fresh Prince of Bel-Air', 0, 0, 'Will Smith more or less plays himself in this good-natured NBC sitcom. As the show\'s popular theme song explains, fictional Will\'s mom sends him away from his rough Philadelphia neighborhood to live with wealthy Uncle Phil and Aunt Vivian in Bel-Air.', 'prince.mp4', 0, '90s'),
(22, 'friends.jpg', 'Friends', 0, 0, 'Follow the lives of six reckless adults living in Manhattan, as they indulge in adventures which make their lives both troublesome and happening.', 'friends.mp4', 0, '90s'),
(23, '70s.jpg', 'That \'70s Show', 0, 0, 'Eric, a high school student, and his group of teenage friends struggle to lead purposeful lives whilst going through the tumultuous phase of adolescence.', '70s.mp4', 0, '90s'),
(24, 'xfiles.jpg', 'The X-Files', 0, 0, 'Conspiracy theorist Fox Mulder and realist Dana Scully pull out all the stops as FBI special agents to investigate and get to the bottom of inexplicable paranormal cases.', 'xfiles.mp4', 0, '90s'),
(25, 'seinfeld.jpg', 'Seinfeld', 0, 0, 'Stand-up comedian Jerry Seinfeld wrestles with life\'s most perplexing yet trivial questions with his eccentric friends George, Elaine and Kramer.', 'seinfeld.mp4', 0, '90s');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

CREATE TABLE `tbl_studio` (
  `studio_id` smallint(5) UNSIGNED NOT NULL,
  `studio_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Marvel Studios'),
(2, 'Syncopy'),
(3, 'Donners Company'),
(4, 'Kate Street Picture Company'),
(5, 'Mandeville Films'),
(6, 'Cross Creek Pictures'),
(7, 'Twentieth Century Fox Film Corporation'),
(8, 'Lava Bear Films'),
(9, 'Hurwitz Creative'),
(10, 'DreamWorks Animation'),
(11, 'Regency Enterprises'),
(12, 'Wildgaze Films'),
(13, 'Sony Pictures Entertainment (SPE)'),
(14, 'Majestic Filmproduktion'),
(15, 'Lucasfilm'),
(16, 'Bold Films'),
(17, 'Voltage Pictures'),
(18, 'Warner Bros.'),
(19, 'Fox 2000 Pictures'),
(20, 'Weinstein Company');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urating`
--

CREATE TABLE `tbl_urating` (
  `rating_id` tinyint(3) UNSIGNED NOT NULL,
  `rating_number` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_avatar` varchar(20) NOT NULL,
  `user_permissions` int(11) NOT NULL,
  `user_admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_avatar`, `user_permissions`, `user_admin`) VALUES
(3, 'Pablo Picasso', 'Picasso', 'password', 'me@you.com', '2020-03-09 15:48:21', '::1', 'avatar', 5, 1),
(4, 'Kid', 'KID', 'password', 'me@ou.com', '2020-03-09 15:49:04', 'no', 'null', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_arating`
--
ALTER TABLE `tbl_arating`
  ADD PRIMARY KEY (`arating_id`);

--
-- Indexes for table `tbl_cast`
--
ALTER TABLE `tbl_cast`
  ADD PRIMARY KEY (`cast_id`),
  ADD UNIQUE KEY `cast_name` (`cast_name`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_decade`
--
ALTER TABLE `tbl_decade`
  ADD PRIMARY KEY (`decade_id`);

--
-- Indexes for table `tbl_director`
--
ALTER TABLE `tbl_director`
  ADD PRIMARY KEY (`director_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_movies_new`
--
ALTER TABLE `tbl_movies_new`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_mov_cast`
--
ALTER TABLE `tbl_mov_cast`
  ADD PRIMARY KEY (`mov_cast_id`);

--
-- Indexes for table `tbl_mov_country`
--
ALTER TABLE `tbl_mov_country`
  ADD PRIMARY KEY (`mov_country_id`);

--
-- Indexes for table `tbl_mov_decade`
--
ALTER TABLE `tbl_mov_decade`
  ADD PRIMARY KEY (`mov_decade_id`);

--
-- Indexes for table `tbl_mov_director`
--
ALTER TABLE `tbl_mov_director`
  ADD PRIMARY KEY (`mov_director_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_mov_lang`
--
ALTER TABLE `tbl_mov_lang`
  ADD PRIMARY KEY (`mov_lang_id`);

--
-- Indexes for table `tbl_mov_studio`
--
ALTER TABLE `tbl_mov_studio`
  ADD PRIMARY KEY (`mov_studio_id`);

--
-- Indexes for table `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD PRIMARY KEY (`music_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`show_id`);

--
-- Indexes for table `tbl_studio`
--
ALTER TABLE `tbl_studio`
  ADD PRIMARY KEY (`studio_id`);

--
-- Indexes for table `tbl_urating`
--
ALTER TABLE `tbl_urating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_arating`
--
ALTER TABLE `tbl_arating`
  MODIFY `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_cast`
--
ALTER TABLE `tbl_cast`
  MODIFY `cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `tbl_decade`
--
ALTER TABLE `tbl_decade`
  MODIFY `decade_id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_director`
--
ALTER TABLE `tbl_director`
  MODIFY `director_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_movies_new`
--
ALTER TABLE `tbl_movies_new`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_mov_cast`
--
ALTER TABLE `tbl_mov_cast`
  MODIFY `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_mov_country`
--
ALTER TABLE `tbl_mov_country`
  MODIFY `mov_country_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_mov_decade`
--
ALTER TABLE `tbl_mov_decade`
  MODIFY `mov_decade_id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_mov_director`
--
ALTER TABLE `tbl_mov_director`
  MODIFY `mov_director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_mov_lang`
--
ALTER TABLE `tbl_mov_lang`
  MODIFY `mov_lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_mov_studio`
--
ALTER TABLE `tbl_mov_studio`
  MODIFY `mov_studio_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `music_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `show_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_studio`
--
ALTER TABLE `tbl_studio`
  MODIFY `studio_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_urating`
--
ALTER TABLE `tbl_urating`
  MODIFY `rating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
