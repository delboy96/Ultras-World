-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2019 at 06:40 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ultras_world`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `voted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `question_id` int(11) NOT NULL,
  `suggestion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `user_id`, `voted`, `question_id`, `suggestion_id`) VALUES
(76, 10, '2019-03-20 12:50:00', 1, 8),
(77, 10, '2019-03-20 12:50:01', 1, 8),
(78, 10, '2019-03-20 12:50:02', 1, 8),
(79, 10, '2019-03-20 12:50:02', 1, 8),
(80, 10, '2019-03-20 12:50:02', 1, 8),
(81, 10, '2019-03-20 12:50:02', 1, 8),
(82, 10, '2019-03-20 12:50:02', 1, 8),
(83, 10, '2019-03-20 12:50:03', 1, 8),
(84, 10, '2019-03-20 12:50:03', 1, 8),
(85, 10, '2019-03-20 12:50:03', 1, 8),
(86, 10, '2019-03-20 12:50:03', 1, 8),
(87, 10, '2019-03-20 12:50:03', 1, 8),
(88, 10, '2019-03-20 12:50:04', 1, 9),
(89, 10, '2019-03-20 12:50:08', 1, 10),
(90, 10, '2019-03-20 12:50:09', 1, 10),
(91, 10, '2019-03-20 12:50:19', 1, 9),
(92, 10, '2019-03-20 12:50:19', 1, 9),
(93, 10, '2019-03-20 12:50:20', 1, 9),
(94, 10, '2019-03-20 12:50:20', 1, 9),
(95, 10, '2019-03-20 12:50:21', 1, 9),
(96, 10, '2019-03-20 12:50:21', 1, 9),
(97, 10, '2019-03-20 12:50:21', 1, 9),
(98, 10, '2019-03-20 12:50:21', 1, 9),
(99, 10, '2019-03-20 12:50:21', 1, 9),
(101, 10, '2019-03-20 12:50:46', 1, 10),
(102, 10, '2019-03-20 12:50:58', 1, 10),
(103, 10, '2019-03-20 12:51:35', 1, 10),
(104, 10, '2019-03-20 12:52:56', 1, 6),
(105, 10, '2019-03-20 12:56:22', 1, 10),
(106, 10, '2019-03-20 17:23:46', 1, 6),
(107, 10, '2019-03-20 17:24:02', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `img`, `date`) VALUES
(1, 'Who is ULTRAS?', 'An Ultras has no name, only good friends know him. An Ultras has no face, most of the time a hood is covering his head, a scarf covering his mouth. An Ultras doesn\'t dress like others and doesn\'t follow trends and like the latest. When he walks the streets even though he has no supporter logos he is recognizable. An Ultras attacks if attacked, and helps when needed, they don\'t stop being ultras as soon as they take their scarf off and return home, they battle 7 days a week.\r\n\r\n\r\nAn experienced Ultras leads an example to the youth, the youth have respect for the older Ultra. The young ultras are proud while standing next to someone more experienced, they learn from the critics of the older Ultras, they go red when given a handshake from them. When normal people look at an ultra they don\'t understand him, but he doesn\'t want to be understood, or explain what he is about. Every ultra is different: there are those who wear supporter logos or club colors and those who have never had those things in their life. There are those who travel only with their group and those who are individuals and are their own group.\r\n\r\nUltras are different, but what unites them is their love for their club, their persistence to stay 90 minutes on their feet during the rain or cold, they are united by the warmth from chanting at full voice, united while sleeping in a half-drunk state on a train that is taking them from an away game, united by the convoy through the center of the away teams city, united by one sandwich which is shared amongst four of them after many hours of hunger, united by one shared cigarette, united by one look, by one ideal, by a one and only mentality.\r\n\r\nAll the things which unite us together, at the same time distance us from the rest of the world: from worried parents, from stupefied cousins, from scared school peers or co-workers, and from non-tolerating teachers or boss. Ultras is not vandalism or violence without reason, it is a persistant defence of a way of life, that has now fell in crisis because of social problems, because of stupid televisions, because of discos which attract more and more youth but most of all because of UN-JUSTIFIABLE REPRESSION. (by police and federations)\r\n\r\nBeing an ultra is all this and alot more, emotions and passion which you cant explain in words to people who dont wish to understand, and who would rather simply turn their heads and continue living behind glass, people who would never have balls to break that peice of glass and enter our world!', 'assets/fratria1.jpg', '2019-03-17 22:45:21'),
(2, 'Pyrotechnics is not a crime!', 'Pyrotechnics is one of the most important parts of ultras culture and best way to warm up atmosphere on a stadium. Unfortunately government, police and football federations don\'t have understanding and tolerance for that and ultras often got punished with bans, fines and sometimes even jail just because they lighted few flares on a match. They can punish us how much they want, do what ever to try to stop us, but we will never give up on using pyro!', 'assets/pyro.jpg', '2019-03-17 22:49:17'),
(3, 'Top 10 Football hooligans movies', 'In most of the countries we have a boring and long winter break without football. What to do? One of the options is to stay inside and watch some good movies.</br>\r\n\r\n\r\nHere is a lost of movies about football supporters and hooligans. Some of these movies made big influence on football fans all over the world.</br>\r\n\r\n\r\nYes we know, most of them are not very realistic and show football fans in a very bad light, but still some find it interesting to watch.</br>\r\n\r\n\r\nList is made in chronological order, from older to newer. Descriptions are taken from IMDB.</br></br>\r\n\r\n\r\n\r\n<b>1.  Ultrà (1991)</b></br></br>\r\n\r\n\r\n\r\n\r\nThe \"Brigata Veleno\" is a fan group from the football club \"AS Roma\". The next match is against \"Juventus Turin\", the classic prestige duel. Principe, the former leader of the group, has been dismissed from jail a few days before. He has to realize that his best friend Red has not only taken over  control of the group, but also has started an affair with his girlfriend. The rivalry between the hot-blooded Principe and the sensible Red causes an  anxious mood within the group. When Smilzo, a member of the group, dies during a street fight with another fan group, Red knows that Principe is to be  blamed for this catastrophe.</br></br>\r\n\r\n \r\n\r\n<b>2. I.D. (1995)</b></br></br>\r\n\r\n\r\n\r\n\r\nFour policemen go undercover and infiltrate a gang of football hooligans hoping to root-out their leaders. For one of the four, the line between \'job\'  and \'yob\' becomes more unclear as time passes.</br></br>\r\n\r\n \r\n\r\n<b>3. The Football Factory (2004)</b></br></br>\r\n\r\n\r\n\r\n\r\nThe Football Factory is more than just a study of the English obsession with football violence, its about men looking for armies to join, wars to fight and places to belong. A forgotten culture of Anglo Saxon males fed up with being told they\'re not good enough and using thier fists as a drug they describe as being more potent than sex and drugs put together. Shot in documentery style with the energy and vibrancy of handheld, The Football Factory is frightingly real yet full of painful humour as the four characters extreme thoughts and actions unfold before us.</br></br>\r\n\r\n \r\n\r\n\r\n<b>4. Green Street Hooligans (2005)</b></br></br>\r\n\r\n\r\n\r\n\r\nA wrongfully expelled Harvard undergrad moves to London, where he is introduced to the violent underworld of football hooliganism.</br></br>\r\n\r\n \r\n\r\n<b>5. Cass (2008)</b></br></br>\r\n\r\n\r\n\r\n\r\nAn orphaned Jamaican baby is adopted by an elderly white couple and brought up in an all white area of London and becomes one of the most feared and respected men in Britain, member of the Inter City Firm. Based on a true story.</br></br>\r\n\r\n \r\n\r\n<b>6. The Firm (2009)</b></br></br>\r\n\r\n\r\n\r\n\r\nSet in the 1980s, Dom is a teenager who finds himself drawn into the charismatic world of football \'casuals,influenced by the firm\'s top boy, Bex. Accepted by the gang for his fast mouth and sense of humor, Dom soon becomes one the boys. But as Bex and his gang clash with rival firms across the country and the violence spirals out of control, Dom realizes he wants out - until he learns it\'s not that easy to simply walk away.</br>\r\n </br>\r\n\r\n\r\n<b>7. Awaydays (2009)</b></br></br>\r\n\r\n\r\n\r\n\r\nOn the Wirral in the grim early years of Margaret Thatcher\'s premiership, the opportunities for thrill seeking young men looking to escape 9 to 5 drudgery are what they\'ve always been: sex, drugs, rock n\' roll, fashion, football and fighting.</br></br>\r\n \r\n\r\n\r\n<b>8. L\'ultimo ultras (2013)</b></br></br>\r\n\r\n\r\n\r\n\r\nItalian movie about ultras. Really nothing special, but ok to watch if you are bored.</br></br>\r\n \r\n\r\n\r\n<b>9. The Hooligan Wars (2012)</b></br></br>\r\n\r\n\r\nA bar fight leaves up and coming footballer Andy injured and out of the game. Needing an income to support himself and his wife, he buys an ice cream van and sets to work. However, he soon finds himself battling intimidation from Polish gangs who use ice cream vans on their patches to sell drugs. Needing protection, Andy allies himself with a gang of British gangsters who introduce him to the world of football hooliganism. Soon Andy finds himself engaging in terrifying violence and forced to sell drugs from his own van. Desperate, he searches for a way out before the world he has entered destroys him.</br></br>\r\n\r\n\r\n \r\n\r\n<b>10. Okolofutbola (2013)</b></br></br>\r\n\r\n\r\n\r\n\r\n\r\nNew Russian movie about Spartak Moscow hooligans. Not bad, many good scenes. Worth seeing.</br></br>', 'assets/okolo.jpg', '2019-03-17 23:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `post_id`, `user_id`, `time`) VALUES
(127, 'sdasd', 1, 10, '2019-03-20 10:47:30'),
(128, 'dasdasd', 1, 10, '2019-03-20 10:47:34'),
(129, 'dasdasd', 1, 10, '2019-03-20 10:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_poruka` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_poruka`, `username`, `email`, `body`) VALUES
(1, 'dsad', 'stefan.bogdanovic.90.16@ict.edu.rs', 'adasdasda');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`) VALUES
(1, 'assets/cz_zemun_12.jpg'),
(2, 'assets/eintracht-inter_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `position`) VALUES
(1, 'Home', 1),
(2, 'Contact', 2),
(4, 'Gallery', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `body`, `time`, `user_id`, `image`) VALUES
(1, 'CRVENA ZVEZDA - ZEMUN\r\nSerbia, 09.03.2019', 'Crvena Zvezda 74th birthday!', 'Delije had celebration of their club\'s 74th birthday. Easy win, more than 22 thousand poeple and a lot of pyro!', '2019-03-13 15:14:17', 1, 'assets/cz_zemun_12.jpg'),
(2, 'EINTRACHT FRANKFURT - INTER MILAN \r\nEuropa Ligue, 07.03.2019', '120th anniversary of their club.', 'Once again, Eintracht Frankfurt fans with superb performance in Europa legue. This time with choreo for 120th anniversary of their club.', '2019-03-13 15:14:17', 1, 'assets/eintracht-inter_1.jpg'),
(3, 'BORUSSIA DORTMUND - TOTTENHAM \r\nChampions Ligue, 05.03.2019', 'BVB tried to repeat 1997...', 'Fans on BVB one again with beautiful choreography, this time dedicated to year 1997 when Borussia won Champions league. Unfortunately for them, Tottenham won one again and they wont have chance to raise the trophy again.', '2019-03-13 15:22:10', 1, 'assets/bvb-dortmund_4.jpg'),
(4, 'CRVENA ZVEZDA - PARTIZAN \r\nSerbia, 02.03.2019', '159th Eternal derby of Belgrade.', 'Derby number 159 between the two Belgrade rivals. \r\n\r\nDelije (Crvena Zvezda) started with choreography and followed with several big pyro shows in first and second-half. They also displayed one choreography exactly as they did 30 years ago.\r\n\r\nPartizan, who\'s divided into 3 groups due to internal conflicts, showed several pyro shows as well. Partizanovci, Alcatraz and Zabranjeni had their own sectors.', '2019-03-13 15:22:10', 1, 'assets/Zvezda-Partizan-2.jpg'),
(5, 'REAL MADRID - AJAX \r\nChampions Ligue, 05.03.2019', 'One of the biggest wins away in CL in clubs history!', 'Champions League: Ajax beat modern football!\r\n\r\nAmazing scenes in Madrid tonight when Ajax Amsterdam won 4-1 (Aggr 5-3) against Real Madrid at Santiago Bernabéu!\r\n\r\nThousands of Ajax fans gathered in Madrid since early day-time and made a great party with songs and pyrotechnics. This party is still ongoing.', '2019-03-13 15:26:32', 1, 'assets/madrid-ajax-4.jpg'),
(6, 'OLYMPIQUE DE MARSEILLE - SAINT-ÉTIENNE \r\nFrance, 03.03.2019', 'Traditionally unpleasent atmosphere for oponents in Marseille.. ', 'France: OM fans with nice tifos.', '2019-03-13 15:26:32', 1, 'assets/om-asse_3.jpg'),
(8, 'SK SLAVIA PRAHA - FC BANIK OSTRAVA \r\nCzech Republic, 10.03.2019', 'Prague also burned this weekend.', 'Great match in Cezch top division. Both, hoem and away fans, on top level.', '2019-03-13 15:44:56', 1, 'assets/slavia-banik_1.jpg'),
(9, 'FK RADNICKI KRAGUJEVAC - OFK ZARKOVO \r\nSerbia, 10.3.2019', 'It\'s not less interesting in Serbia\'s 2nd ligue..', 'Radnički Kragujevac ultra\' group Crveni Đavoli (Red Devils) 30th anniversary celebration.', '2019-03-13 15:44:56', 1, 'assets/radnicki-zarkovo_8.jpg'),
(10, 'SK SLOVAN BRATISLAVA - FC SPARTAK TRNAVA\r\nSlovakia, 03.03.2019', 'Slovakia: First match on new stadium in Bratislava', '\r\nFirst game in new stadium \"Tehelné pole\" for Slovan Bratislava. Huge show created by Ultras Slovan Pressburg.\r\nWithout away fans because they didn\'t receive enough tickets so they refused to come.', '2019-03-13 15:44:56', 1, 'assets/slovan-spartak_1.jpg'),
(11, 'FEYENOORD - AJAX \r\nHolland, 27.02.2019', 'Dutch cup derby without away fans..', 'Holland: Feyenoord Rotterdam show!\r\n\r\nSemi-final in the Dutch cup between main rivals Feyenoord and Ajax. No away fans allowed to attend this game.\r\n\r\nVery good show by the Feyenoord fans with some great fireworks from the crowd!', '2019-03-13 15:44:56', 1, 'assets/Feyenoord-Ajax-11.jpg'),
(12, 'LYON - BARCELONA \r\nChampions Ligue, 19.02.2019', 'Noisy on tribunes, but quiet on the pitch in Lyon.', 'Virage Sud and Bad Gones 1987 worked together to create one gigantic choreography in this game. The two main groups of Lyon is situated behind each of the goals and for this match they had flags on all the seats at Groupama Stadium.\r\n\r\n \r\n\r\nBoixos Nois, the forbidden group from Barcelona, were also present at this match. Some pyrotechnics during the match from this group.\r\n\r\nThey are now allowed to attend matches of Barcelona, therefore their main banner is cut into one flag of each letter.\r\n', '2019-03-13 15:49:04', 1, 'assets/Lyon-Barcelona-14.jpg'),
(13, 'SPARTAK MOSCOW - DYNAMO MOSCOW\r\nRussia, 25.08.2018', 'Moscow\'s derby on Otkritje Arena!', 'Moscow\'s derby in full glory. Spartak won 2:1.', '2019-03-14 09:10:14', 1, 'assets/spartak-dynamo_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `post_image`
--

CREATE TABLE `post_image` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_image`
--

INSERT INTO `post_image` (`id`, `post_id`, `image_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `body` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `body`, `timestamp`, `active`) VALUES
(1, 'Which firm deserves this month\'s award?', '2019-03-20 10:42:39', 1),
(2, 'Which firm had best pyroshow this week?', '2019-03-19 16:22:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `social_networks`
--

CREATE TABLE `social_networks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_networks`
--

INSERT INTO `social_networks` (`id`, `name`, `path`, `icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com', 'facebook-square'),
(2, 'Instagram', 'https://www.instagram.com', 'instagram'),
(3, 'Youtube', 'https://www.youtube.com', 'youtube');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `body` varchar(255) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `body`, `question_id`) VALUES
(1, 'Delije - Crvena Zvezda', 2),
(2, 'geometri jugozapad -  partizai (jubilarna 16. frakcija)', 2),
(3, 'Fratria - Spartak Moscow', 2),
(4, 'Collecttiff - PSG charter boys', 2),
(5, 'Gate 7 - Olympiakos', 2),
(6, 'Delije - Crvena Zvezda', 1),
(7, 'Het Legioen - Feyenord', 1),
(8, 'Fratria - Spartak Moscow', 1),
(9, 'Gate 7 - Olympiakos', 1),
(10, 'The Black & Yellows- Borrusia Dortmund ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateReg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `token`, `dateReg`, `role_id`, `active`) VALUES
(1, 'delboy', 'danilo.milosevic.36.16@ict.edu.rs', 'f3cee4c458b85fb147f244fe4ad9e4a7', '45d287db41b91dbed048546323aa54a7f0fffa5d3a3ffb15c34b69a9a5ed8e7dc0386159c9916d0cc1d57ee57a39762618df943b52dcbaaef1e7abf0', '2019-03-12 12:56:13', 1, 1),
(5, 'matejadilov', 'zivotlos@gmail.com', 'f25b8258b6f0865c460ce3107d6f0116', '5951552419344matejadilov', '2019-03-12 19:35:44', 2, 1),
(6, 'asdas', 'zivot.losa.12.12@ict.edu.rs', '3e55517aea64f6d368ef836459f15182', '73351552420395asdas', '2019-03-12 19:53:15', 2, 1),
(7, 'mamara', 'ziv.otlose.13.13@ict.edu.rs', 'c1181aacf646b97f0a0a782db351a405', '38111552420505mamara', '2019-03-12 19:55:05', 2, 1),
(9, 'mamar', 'ziv.otse.33.12@ict.edu.rs', '2d02e669731cbade6a64b58d602cf2a4', '16111552420783mamar', '2019-03-12 19:59:43', 2, 1),
(10, 'user', 'user.user.12.12@ict.edu.rs', 'ee11cbb19052e40b07aac0ca060c23ee', '34021552762610user', '2019-03-16 18:56:50', 2, 1),
(11, 'CerealKiller', 'stefan.bogdanovic.90.16@ict.edu.rs', 'd0aeeef9a9aeddbaa999b7b65101b3a1', '77451552770130CerealKiller', '2019-03-16 21:02:10', 1, 1),
(12, 'novi', 'novi.novi.13.13@ict.edu.rs', '832f72b7a13b2cedcfb108603a10e2a6', '94611552857819novi', '2019-03-17 21:23:39', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`question_id`,`suggestion_id`),
  ADD KEY `suggestion_id` (`suggestion_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_poruka`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_image`
--
ALTER TABLE `post_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `social_networks`
--
ALTER TABLE `social_networks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_poruka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `post_image`
--
ALTER TABLE `post_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_networks`
--
ALTER TABLE `social_networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`suggestion_id`) REFERENCES `suggestions` (`id`),
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `answer_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_image`
--
ALTER TABLE `post_image`
  ADD CONSTRAINT `post_image_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `post_image_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD CONSTRAINT `suggestions_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
