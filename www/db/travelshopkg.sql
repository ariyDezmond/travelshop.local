-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 31, 2014 at 02:27 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `travelshopkg`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
`id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `e-mail` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `login`, `e-mail`, `pass`, `name`, `sname`, `lname`) VALUES
(1, '123', '123@123', '312', 'Andrey', 'Fedotov', '');

-- --------------------------------------------------------

--
-- Table structure for table `backcall`
--

DROP TABLE IF EXISTS `backcall`;
CREATE TABLE IF NOT EXISTS `backcall` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `backcall_email`
--

DROP TABLE IF EXISTS `backcall_email`;
CREATE TABLE IF NOT EXISTS `backcall_email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backcall_email`
--

INSERT INTO `backcall_email` (`email`) VALUES
('protected_by@mail.ru');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `keyw` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `active` varchar(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `name`, `url`, `text`, `date`, `title`, `desc`, `keyw`, `image`, `order`, `views`, `active`) VALUES
(3, 'asd', 'asd', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Повседневная практика показывает, что реализация намеченных плановых заданий представляет собой интересный эксперимент проверки новых предложений. Товарищи! новая модель организационной деятельности позволяет оценить значение новых предложений. Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям. Повседневная практика показывает, что начало повседневной работы по формированию позиции требуют от нас анализа существенных финансовых и административных условий. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности обеспечивает широкому кругу (специалистов) участие в формировании форм развития. Товарищи! новая модель организационной деятельности влечет за собой процесс внедрения и модернизации соответствующий условий активизации.</p>\r\n\r\n<p>Равным образом укрепление и развитие структуры требуют от нас анализа направлений прогрессивного развития. Идейные соображения высшего порядка, а также реализация намеченных плановых заданий играет важную роль в формировании модели развития. Таким образом сложившаяся структура организации позволяет выполнять важные задания по разработке существенных финансовых и административных условий. Идейные соображения высшего порядка, а также сложившаяся структура организации позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. С другой стороны дальнейшее развитие различных форм деятельности в значительной степени обуславливает создание соответствующий условий активизации. Товарищи! новая модель организационной деятельности позволяет оценить значение модели развития.</p>', '2014-01-06 12:00:00', 'asd', 'asd', 'asd', 'b452c2d1327d78a24533f3f2ee3b630c.png', 0, 1, 'on'),
(4, 'asdasdsadasd', 'dasdasdas', '', '2014-11-25 07:12:34', '', '', '', '6fe64c8795a690fee1952644cecbcb5a.jpg', 0, 0, 'on'),
(5, 'dasda', 'dasdasd', '<p>dasdas</p>', '2015-01-09 12:00:00', '', '', '', '9472ff672286aabb385a401ee3260ec8.jpg', 0, 0, 'on'),
(6, 'dasdsadsad', 'dasdsadsad', '<p>sadas</p>', '2014-01-04 12:00:00', '', '', '', '73419c5f645b119b2ad7490bfc0f608f.jpg', 0, 0, 'on'),
(9, 'asd', 'asd1', '<p>Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Вдали от всех живут они в буквенных домах на берегу Семантика большого языкового океана. Маленький ручеек Даль журчит по всей стране и обеспечивает ее всеми необходимыми правилами. Эта парадигматическая страна, в которой жаренные члены предложения залетают прямо в рот.</p>\r\n\r\n<p>Даже всемогущая пунктуация не имеет власти над рыбными текстами, ведущими безорфографичный образ жизни. Однажды одна маленькая строчка рыбного текста по имени Lorem ipsum решила выйти в большой мир грамматики. Великий Оксмокс предупреждал ее о злых запятых, диких знаках вопроса и коварных точках с запятой, но текст не дал сбить себя с толку.</p>\r\n\r\n<p>Он собрал семь своих заглавных букв, подпоясал инициал за пояс и пустился в дорогу. Взобравшись на первую вершину курсивных гор, бросил он последний взгляд назад, на силуэт своего родного города Буквоград, на заголовок деревни Алфавит и на подзаголовок своего переулка Строчка. Грустный реторический вопрос скатился по его щеке и он продолжил свой путь. По дороге встретил текст рукопись. Она предупредила его: &laquo;В моей стране все переписывается по несколько раз. Единственное, что от меня осталось, это приставка &laquo;и&raquo;. Возвращайся ты лучше в свою безопасную страну&raquo;. Не послушавшись рукописи, наш текст продолжил свой путь. Вскоре ему повстречался коварный составитель</p>', '2010-09-20 12:00:00', '', '', '', '8dabf09c22200efc8a5761a936130db8.jpg', 0, 0, 'on'),
(10, 'Единоборства', 'asd2', '<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>', '2006-05-01 12:00:00', '', '', '', 'c8d0f20a80acc928bb941ef8c329f782.jpg', 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
`id` int(11) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `coords` varchar(255) NOT NULL,
  `social_text` text NOT NULL,
  `social_vk` varchar(255) NOT NULL,
  `social_fb` varchar(255) NOT NULL,
  `social_tw` varchar(255) NOT NULL,
  `social_ok` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `adress`, `phone`, `email`, `coords`, `social_text`, `social_vk`, `social_fb`, `social_tw`, `social_ok`) VALUES
(1, 'ул.Абдрахманова 135', '+996 312 66 21 21,  +996 312 66 20 20', 'info@travelshop.kg', '42.87111805888461, 74.61325299739838', 'Мы также есть в социальных сетях,следите за нашими новостями и новыми турами.', 'http://vk.com/id279877089', 'https://www.facebook.com/pages/Travel-Shop/1484515281794095?ref=aymt_homepage_panel', 'travelshop', 'travelshop');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` varchar(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `phone`, `email`, `text`, `date`, `ip`, `read`) VALUES
(2, '12312311', '1', '123@123.ru', '1', '2014-12-02 00:00:00', '127.0.0.1', 'on'),
(4, '1', '1', '123@123.ru', '1', '2014-12-03 12:59:41', '127.0.0.1', 'on'),
(5, 'Андрей Федотов', '+996554709700', 'protected.for@gmail.com', 'выфвфы', '2014-12-14 19:49:12', '127.0.0.1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_email`
--

DROP TABLE IF EXISTS `feedback_email`;
CREATE TABLE IF NOT EXISTS `feedback_email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback_email`
--

INSERT INTO `feedback_email` (`email`) VALUES
('protected.for@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `site` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rooms` int(11) NOT NULL,
  `distoport` int(11) NOT NULL,
  `beachl` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `coords` int(100) NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `status`, `site`, `phone`, `fax`, `email`, `rooms`, `distoport`, `beachl`, `image`, `text`, `coords`, `order`, `active`) VALUES
(17, '3seass', 1, 'http://www.3seas.com', '+996554709700', 'выфвыф', 'protected.for@gmail.com', 1, 1, '1-ая пляжная линия', 'e31e70ac555a7db2161b8664fb39b0f2.jpg', '<p>Таким образом реализация намеченных плановых заданий позволяет оценить значение систем массового участия. Идейные соображения высшего порядка, а также рамки и место обучения кадров способствует подготовки и реализации системы обучения кадров, соответствует насущным потребностям. С другой стороны консультация с широким активом играет важную роль в формировании системы обучения кадров, соответствует насущным потребностям. Таким образом новая модель организационной деятельности влечет за собой процесс внедрения и модернизации существенных финансовых и административных условий. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки модели развития. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании системы обучения кадров, соответствует насущным потребностям.</p>\r\n\r\n<p>Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности обеспечивает широкому кругу (специалистов) участие в формировании модели развития. Не следует, однако забывать, что постоянное информационно-пропагандистское обеспечение нашей деятельности играет важную роль в формировании новых предложений.</p>\r\n\r\n<p>Товарищи! новая модель организационной деятельности в значительной степени обуславливает создание направлений прогрессивного развития. Идейные соображения высшего порядка, а также рамки и место обучения кадров в значительной степени обуславливает создание направлений прогрессивного развития. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности требуют от нас анализа новых предложений. Не следует, однако забывать, что постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности влечет за собой процесс внедрения и модернизации направлений прогрессивного развития.</p>', 0, 0, 'on'),
(18, '4 seas', 4, 'http://www.googstudio.com', 'dasd', 'das', 'das@dasd.ru', 1, 1, 'dasd', 'e45ab32b3853287b2c10d76a13aacf04.JPG', '', 0, 1, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `hotels_images`
--

DROP TABLE IF EXISTS `hotels_images`;
CREATE TABLE IF NOT EXISTS `hotels_images` (
`id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `hotels_images`
--

INSERT INTO `hotels_images` (`id`, `image`, `order`, `hotel_id`) VALUES
(4, '1417349312_34827de06b5c3e8121c4931b99c18ccf.JPG', 0, 17),
(5, '1417349312_d2db474e31d63cbe75325ad8d645102d.JPG', 0, 17),
(6, '1417349312_4b88677d6800ba15a0173770e1e6ff56.PNG', 0, 17),
(7, '1417349312_10625234c5ab630f8240d622a01327f8.jpg', 0, 17),
(8, '1417349312_92647c714fbeef7ccd368338e0a752d5.jpg', 0, 17),
(9, '1417349313_6450ecfd6a2346fafa8d363f6137706b.jpg', 0, 17),
(10, '1417349313_3bc914bb15867a38a21c663d167f77a4.jpg', 0, 17),
(11, '1417349313_ce6db4609c4534c0ef7858bdb21004a3.jpg', 0, 17),
(12, '1417349313_abc21ee0ec0afdc1d971441673675c96.JPG', 0, 17);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_services`
--

DROP TABLE IF EXISTS `hotel_services`;
CREATE TABLE IF NOT EXISTS `hotel_services` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_services_service`
--

DROP TABLE IF EXISTS `hotel_services_service`;
CREATE TABLE IF NOT EXISTS `hotel_services_service` (
`id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_service_typeservice`
--

DROP TABLE IF EXISTS `hotel_service_typeservice`;
CREATE TABLE IF NOT EXISTS `hotel_service_typeservice` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `service_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `keyw` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `active` varchar(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `url`, `text`, `date`, `title`, `desc`, `keyw`, `image`, `category_id`, `order`, `views`, `active`) VALUES
(1, 'Имя', 'imya', '<p>Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Вдали от всех живут они в буквенных домах на берегу Семантика большого языкового океана. Маленький ручеек Даль журчит по всей стране и обеспечивает ее всеми необходимыми правилами. Эта парадигматическая страна, в которой жаренные члены предложения залетают прямо в рот.</p>\r\n\r\n<p>Даже всемогущая пунктуация не имеет власти над рыбными текстами, ведущими безорфографичный образ жизни. Однажды одна маленькая строчка рыбного текста по имени Lorem ipsum решила выйти в большой мир грамматики. Великий Оксмокс предупреждал ее о злых запятых, диких знаках вопроса и коварных точках с запятой, но текст не дал сбить себя с толку.</p>\r\n\r\n<p>Он собрал семь своих заглавных букв, подпоясал инициал за пояс и пустился в дорогу. Взобравшись на первую вершину курсивных гор, бросил он последний взгляд назад, на силуэт своего родного города Буквоград, на заголовок деревни Алфавит и на подзаголовок своего переулка Строчка. Грустный реторический вопрос скатился по его щеке и он продолжил свой путь. По дороге встретил текст рукопись. Она предупредила его: &laquo;В моей стране все переписывается по несколько раз. Единственное, что от меня осталось, это приставка &laquo;и&raquo;. Возвращайся ты лучше в свою безопасную страну&raquo;. Не послушавшись рукописи, наш текст продолжил свой путь. Вскоре ему повстречался коварный составитель</p>\r\n', '2015-06-01 12:00:00', 'Международный центр исторического фехтования', '', '', '4e12464b71bc592fd33e2527538ee078.png', 0, 1, 0, 'on'),
(3, 'dsadsadsadasda', 'dsadsadsadasda', '', '', '', '', '', 'cb1af88c45e3e6673275d5c9dded85e8.jpg', 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
`id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `order`, `active`) VALUES
(10, '2358a7e1a89fd27a1029c582bfc891d4.png', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE IF NOT EXISTS `requests` (
`id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `rooms` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` varchar(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `country`, `rooms`, `price`, `name`, `phone`, `email`, `text`, `date`, `ip`, `read`) VALUES
(1, 'Бишкек', '14', '200', 'Андрей', '+996554709700', 'protected.for@gmail.com', 'вфыф', '0000-00-00 00:00:00', '127.0.0.1', 'jg');

-- --------------------------------------------------------

--
-- Table structure for table `requests_email`
--

DROP TABLE IF EXISTS `requests_email`;
CREATE TABLE IF NOT EXISTS `requests_email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requests_email`
--

INSERT INTO `requests_email` (`email`) VALUES
('protected_by@mail.ru');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `worths` text NOT NULL,
  `flaws` text NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` varchar(2) NOT NULL,
  `active` varchar(2) NOT NULL,
  `object_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `worths`, `flaws`, `date`, `ip`, `read`, `active`, `object_id`) VALUES
(1, 'Авиационный спортивный клуб', 'выфвфы', 'ффффффффф', '2014-12-20 00:03:13', '127.0.0.1', 'on', 'on', 6),
(2, 'Сергей', 'Замечательный отель, был в нем 0 раз!', 'Недостатков, как я понял, нет!', '2014-12-20 00:09:09', '158.181.219.55', '0', '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_email`
--

DROP TABLE IF EXISTS `reviews_email`;
CREATE TABLE IF NOT EXISTS `reviews_email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews_email`
--

INSERT INTO `reviews_email` (`email`) VALUES
('protected.for@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `object` enum('blog','news') NOT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `object`, `page_id`) VALUES
(25, 'dasdsad', 'blog', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
CREATE TABLE IF NOT EXISTS `tours` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'required',
  `url` varchar(255) NOT NULL COMMENT 'required',
  `country` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL COMMENT 'required',
  `image` varchar(255) NOT NULL COMMENT 'required',
  `datefrom` datetime NOT NULL COMMENT 'required',
  `duration` varchar(255) NOT NULL COMMENT 'required',
  `dateto` datetime NOT NULL COMMENT 'required',
  `hotel_id` int(11) NOT NULL COMMENT 'required',
  `type` varchar(255) NOT NULL COMMENT 'required',
  `placement` varchar(255) NOT NULL COMMENT 'required',
  `feed` varchar(255) NOT NULL DEFAULT 'нет' COMMENT 'not required',
  `room` varchar(255) NOT NULL COMMENT 'required',
  `outflight` varchar(255) NOT NULL COMMENT 'not required',
  `backflight` varchar(255) NOT NULL COMMENT 'not required',
  `priceinc` varchar(255) NOT NULL COMMENT 'required',
  `label` enum('offer','action','new','') NOT NULL COMMENT 'not required',
  `flightout` varchar(255) NOT NULL,
  `priceperone` varchar(255) NOT NULL,
  `order` int(11) NOT NULL COMMENT 'not required',
  `active` varchar(2) NOT NULL COMMENT 'not required',
  `valid` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL COMMENT 'not required',
  `metatitle` varchar(255) NOT NULL COMMENT 'not required',
  `desc` text NOT NULL COMMENT 'not required',
  `keyw` text NOT NULL COMMENT 'not required'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `name`, `url`, `country`, `price`, `image`, `datefrom`, `duration`, `dateto`, `hotel_id`, `type`, `placement`, `feed`, `room`, `outflight`, `backflight`, `priceinc`, `label`, `flightout`, `priceperone`, `order`, `active`, `valid`, `title`, `metatitle`, `desc`, `keyw`) VALUES
(6, 'Aristoteles Holiday Resort & SPA', 'dsadasdassaddas', 'Англия, Лондон', '46 405 сом.', '4b45c2f435980e6dc0401aa2a1c4caba.JPG', '2014-11-23 12:00:00', '7 дней', '2014-09-30 12:00:00', 17, 'Тура на двоих', 'dasdas', 'dasdasd', 'adsada', 'dasdsa', 'das', 'dasdsa', 'offer', 'из Москвыы', '11 526 сомов.', 1, 'on', 'on', '', '', '', '1'),
(9, 'Asia Holiday Resort & SPA', 'asia', 'Кырызстан, Бишкек', '21 400 сом', 'fbc18136b424ea9731cdd293ac7878f7.jpg', '2014-05-08 12:00:00', 'dasdasd', '2016-04-02 12:00:00', 17, 'dasdas', 'dasdas', 'dasdasd', 'adsada', 'dasdsa', 'das', 'dasdsa', 'offer', 'из Санкт-Петербурга', '18 325 сом.', 1, 'on', 'on', '', '', '', '1'),
(10, 'dsadasdassaddas', 'dsadasdassaddas', 'Англия, Лондон', '6431', 'fad6ad547a48cc336216ebcc416c51f3.PNG', '1970-01-01 12:00:00', 'dasdasd', '2016-04-02 12:00:00', 0, 'dasdas', 'dasdas', 'dasdasd', 'adsada', 'dasdsa', 'das', 'dasdsa', 'offer', 'из Питера', '10 000 сом', 1, 'on', 'on', '', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tours_images`
--

DROP TABLE IF EXISTS `tours_images`;
CREATE TABLE IF NOT EXISTS `tours_images` (
`id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tours_images`
--

INSERT INTO `tours_images` (`id`, `image`, `order`, `tour_id`) VALUES
(1, '1417273374_86959c34404bfc756694715c5b4b3ec8.JPG', 0, 6),
(3, '1417273374_304baf05a83fd801c1a788982abb06e3.JPG', 0, 6),
(5, '1417273374_543862af78366ded15546959f2d19d7d.jpg', 0, 6),
(7, '1417349277_a270404b28608cc3d7731666bbea9b0d.JPG', 0, 6),
(8, '1417349277_575095968663373c181936845136878d.JPG', 0, 6),
(11, '1417350681_085f8b5411d754ea454adf3ee4eb1bf1.JPG', 0, 9),
(12, '1417350681_f7d65919f6a3012adeb14270e88ebe1a.JPG', 0, 9),
(13, '1417350681_5ef3348411b98cd73ae7994fef878128.PNG', 0, 9),
(14, '1417350682_3e93d3fa22c2d8a4330051d049188ce8.PNG', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

DROP TABLE IF EXISTS `widget`;
CREATE TABLE IF NOT EXISTS `widget` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `widget`
--

INSERT INTO `widget` (`id`, `title`, `text`, `order`) VALUES
(19, 'copyright', '© ОсОО «Травел Шоп» 2014. Все права защищены.', 1),
(39, 'about-title', 'О нас', 0),
(40, 'snipets', '<!-- Сюда вставлять код метрики и jivosite -->\r\n', 0),
(41, 'meta-main-keywords', 'фыв', 0),
(42, 'meta-main-description', 'asd', 0),
(43, 'vises-title', 'Визовые услуги', 0),
(44, 'vises', 'Ntrcndaskl djaslkdj aslkdas adas das\nd asdas dsa\n \nasd\n s\nad', 0),
(45, 'belay-title', 'Медицинская страховка', 0),
(46, 'belay', 'текст мед страховки', 0),
(47, 'about', '<p>Текствфы ловрфылд фыв фы</p>\n', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backcall`
--
ALTER TABLE `backcall`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels_images`
--
ALTER TABLE `hotels_images`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_services`
--
ALTER TABLE `hotel_services`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_services_service`
--
ALTER TABLE `hotel_services_service`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_service_typeservice`
--
ALTER TABLE `hotel_service_typeservice`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours_images`
--
ALTER TABLE `tours_images`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backcall`
--
ALTER TABLE `backcall`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `hotels_images`
--
ALTER TABLE `hotels_images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `hotel_services`
--
ALTER TABLE `hotel_services`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hotel_services_service`
--
ALTER TABLE `hotel_services_service`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hotel_service_typeservice`
--
ALTER TABLE `hotel_service_typeservice`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tours_images`
--
ALTER TABLE `tours_images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
