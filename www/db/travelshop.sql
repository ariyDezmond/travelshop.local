-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 14 2014 г., 20:23
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `travelshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `e-mail` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`id`, `login`, `e-mail`, `pass`, `name`, `sname`, `lname`) VALUES
(1, '123', '123@123', '312', 'Andrey', 'Fedotov', '');

-- --------------------------------------------------------

--
-- Структура таблицы `backcall`
--

DROP TABLE IF EXISTS `backcall`;
CREATE TABLE IF NOT EXISTS `backcall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `backcall_email`
--

DROP TABLE IF EXISTS `backcall_email`;
CREATE TABLE IF NOT EXISTS `backcall_email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `backcall_email`
--

INSERT INTO `backcall_email` (`email`) VALUES
('protected_by@mail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `name`, `url`, `text`, `date`, `title`, `desc`, `keyw`, `image`, `order`, `views`, `active`) VALUES
(3, 'asd', 'asd', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Повседневная практика показывает, что реализация намеченных плановых заданий представляет собой интересный эксперимент проверки новых предложений. Товарищи! новая модель организационной деятельности позволяет оценить значение новых предложений. Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям. Повседневная практика показывает, что начало повседневной работы по формированию позиции требуют от нас анализа существенных финансовых и административных условий. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности обеспечивает широкому кругу (специалистов) участие в формировании форм развития. Товарищи! новая модель организационной деятельности влечет за собой процесс внедрения и модернизации соответствующий условий активизации.</p>\r\n\r\n<p>Равным образом укрепление и развитие структуры требуют от нас анализа направлений прогрессивного развития. Идейные соображения высшего порядка, а также реализация намеченных плановых заданий играет важную роль в формировании модели развития. Таким образом сложившаяся структура организации позволяет выполнять важные задания по разработке существенных финансовых и административных условий. Идейные соображения высшего порядка, а также сложившаяся структура организации позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. С другой стороны дальнейшее развитие различных форм деятельности в значительной степени обуславливает создание соответствующий условий активизации. Товарищи! новая модель организационной деятельности позволяет оценить значение модели развития.</p>', '2014-01-06 12:00:00', 'asd', 'asd', 'asd', 'b452c2d1327d78a24533f3f2ee3b630c.png', 0, 1, 'on'),
(4, 'asdasdsadasd', 'dasdasdas', '', '2014-11-25 07:12:34', '', '', '', '6fe64c8795a690fee1952644cecbcb5a.jpg', 0, 0, 'on'),
(5, 'dasda', 'dasdasd', '<p>dasdas</p>', '2015-01-09 12:00:00', '', '', '', '9472ff672286aabb385a401ee3260ec8.jpg', 0, 0, 'on'),
(6, 'dasdsadsad', 'dasdsadsad', '<p>sadas</p>', '2014-01-04 12:00:00', '', '', '', '73419c5f645b119b2ad7490bfc0f608f.jpg', 0, 0, 'on'),
(9, 'asd', 'asd1', '<p>Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Вдали от всех живут они в буквенных домах на берегу Семантика большого языкового океана. Маленький ручеек Даль журчит по всей стране и обеспечивает ее всеми необходимыми правилами. Эта парадигматическая страна, в которой жаренные члены предложения залетают прямо в рот.</p>\r\n\r\n<p>Даже всемогущая пунктуация не имеет власти над рыбными текстами, ведущими безорфографичный образ жизни. Однажды одна маленькая строчка рыбного текста по имени Lorem ipsum решила выйти в большой мир грамматики. Великий Оксмокс предупреждал ее о злых запятых, диких знаках вопроса и коварных точках с запятой, но текст не дал сбить себя с толку.</p>\r\n\r\n<p>Он собрал семь своих заглавных букв, подпоясал инициал за пояс и пустился в дорогу. Взобравшись на первую вершину курсивных гор, бросил он последний взгляд назад, на силуэт своего родного города Буквоград, на заголовок деревни Алфавит и на подзаголовок своего переулка Строчка. Грустный реторический вопрос скатился по его щеке и он продолжил свой путь. По дороге встретил текст рукопись. Она предупредила его: &laquo;В моей стране все переписывается по несколько раз. Единственное, что от меня осталось, это приставка &laquo;и&raquo;. Возвращайся ты лучше в свою безопасную страну&raquo;. Не послушавшись рукописи, наш текст продолжил свой путь. Вскоре ему повстречался коварный составитель</p>', '2010-09-20 12:00:00', '', '', '', '8dabf09c22200efc8a5761a936130db8.jpg', 1, 0, 'on'),
(10, 'Единоборства', 'asd2', '<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>\r\n\r\n<p>dsa dasdas da X X sad asd</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>&nbsp;X</p>\r\n\r\n<p>SA</p>', '2006-05-01 12:00:00', '', '', '', 'c8d0f20a80acc928bb941ef8c329f782.jpg', 0, 0, '0');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adress` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `coords` varchar(255) NOT NULL,
  `social_text` text NOT NULL,
  `social_vk` varchar(255) NOT NULL,
  `social_fb` varchar(255) NOT NULL,
  `social_tw` varchar(255) NOT NULL,
  `social_ok` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `adress`, `phone`, `email`, `coords`, `social_text`, `social_vk`, `social_fb`, `social_tw`, `social_ok`) VALUES
(1, 'ул. Байтик-Батыра 109', '+996 312 541 789, +996 312 541 789', 'info@travelshop.kg', '42.87111805888461, 74.61325299739838', 'Мы также есть в социальных сетях,следите за нашими новостями и новыми турами.', 'travelshop', 'travelshop', 'travelshop', 'travelshop');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `phone`, `email`, `text`, `date`, `ip`, `read`) VALUES
(2, '12312311', '1', '123@123.ru', '1', '2014-12-02 00:00:00', '127.0.0.1', 'on'),
(4, '1', '1', '123@123.ru', '1', '2014-12-03 12:59:41', '127.0.0.1', 'on'),
(5, 'Андрей Федотов', '+996554709700', 'protected.for@gmail.com', 'выфвфы', '2014-12-14 19:49:12', '127.0.0.1', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback_email`
--

DROP TABLE IF EXISTS `feedback_email`;
CREATE TABLE IF NOT EXISTS `feedback_email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedback_email`
--

INSERT INTO `feedback_email` (`email`) VALUES
('protected.for@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `status`, `site`, `phone`, `fax`, `email`, `rooms`, `distoport`, `beachl`, `image`, `text`, `coords`, `order`, `active`) VALUES
(17, '3seass', 1, 'http://www.3seas.com', '+996554709700', 'выфвыф', 'protected.for@gmail.com', 1, 1, '1-ая пляжная линия', 'e31e70ac555a7db2161b8664fb39b0f2.jpg', '<p>Таким образом реализация намеченных плановых заданий позволяет оценить значение систем массового участия. Идейные соображения высшего порядка, а также рамки и место обучения кадров способствует подготовки и реализации системы обучения кадров, соответствует насущным потребностям. С другой стороны консультация с широким активом играет важную роль в формировании системы обучения кадров, соответствует насущным потребностям. Таким образом новая модель организационной деятельности влечет за собой процесс внедрения и модернизации существенных финансовых и административных условий. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки модели развития. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании системы обучения кадров, соответствует насущным потребностям.</p>\r\n\r\n<p>Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности обеспечивает широкому кругу (специалистов) участие в формировании модели развития. Не следует, однако забывать, что постоянное информационно-пропагандистское обеспечение нашей деятельности играет важную роль в формировании новых предложений.</p>\r\n\r\n<p>Товарищи! новая модель организационной деятельности в значительной степени обуславливает создание направлений прогрессивного развития. Идейные соображения высшего порядка, а также рамки и место обучения кадров в значительной степени обуславливает создание направлений прогрессивного развития. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности требуют от нас анализа новых предложений. Не следует, однако забывать, что постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности влечет за собой процесс внедрения и модернизации направлений прогрессивного развития.</p>', 0, 0, 'on'),
(18, '4 seas', 4, 'http://www.googstudio.com', 'dasd', 'das', 'das@dasd.ru', 1, 1, 'dasd', 'e45ab32b3853287b2c10d76a13aacf04.JPG', '', 0, 1, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `hotels_images`
--

DROP TABLE IF EXISTS `hotels_images`;
CREATE TABLE IF NOT EXISTS `hotels_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `hotels_images`
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
-- Структура таблицы `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `name`, `url`, `text`, `date`, `title`, `desc`, `keyw`, `image`, `category_id`, `order`, `views`, `active`) VALUES
(1, 'Имя', 'imya', '<p>Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Вдали от всех живут они в буквенных домах на берегу Семантика большого языкового океана. Маленький ручеек Даль журчит по всей стране и обеспечивает ее всеми необходимыми правилами. Эта парадигматическая страна, в которой жаренные члены предложения залетают прямо в рот.</p>\r\n\r\n<p>Даже всемогущая пунктуация не имеет власти над рыбными текстами, ведущими безорфографичный образ жизни. Однажды одна маленькая строчка рыбного текста по имени Lorem ipsum решила выйти в большой мир грамматики. Великий Оксмокс предупреждал ее о злых запятых, диких знаках вопроса и коварных точках с запятой, но текст не дал сбить себя с толку.</p>\r\n\r\n<p>Он собрал семь своих заглавных букв, подпоясал инициал за пояс и пустился в дорогу. Взобравшись на первую вершину курсивных гор, бросил он последний взгляд назад, на силуэт своего родного города Буквоград, на заголовок деревни Алфавит и на подзаголовок своего переулка Строчка. Грустный реторический вопрос скатился по его щеке и он продолжил свой путь. По дороге встретил текст рукопись. Она предупредила его: &laquo;В моей стране все переписывается по несколько раз. Единственное, что от меня осталось, это приставка &laquo;и&raquo;. Возвращайся ты лучше в свою безопасную страну&raquo;. Не послушавшись рукописи, наш текст продолжил свой путь. Вскоре ему повстречался коварный составитель</p>', '2015-06-01 12:00:00', 'Международный центр исторического фехтования', '', '', '4e12464b71bc592fd33e2527538ee078.png', 0, 1, 0, 'on'),
(2, 'dasdasd', 'dasdasd', '<p>Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Вдали от всех живут они в буквенных домах на берегу Семантика большого языкового океана. Маленький ручеек Даль журчит по всей стране и обеспечивает ее всеми необходимыми правилами. Эта парадигматическая страна, в которой жаренные члены предложения залетают прямо в рот.</p>\r\n\r\n<p>Даже всемогущая пунктуация не имеет власти над рыбными текстами, ведущими безорфографичный образ жизни. Однажды одна маленькая строчка рыбного текста по имени Lorem ipsum решила выйти в большой мир грамматики. Великий Оксмокс предупреждал ее о злых запятых, диких знаках вопроса и коварных точках с запятой, но текст не дал сбить себя с толку.</p>\r\n\r\n<p>Он собрал семь своих заглавных букв, подпоясал инициал за пояс и пустился в дорогу. Взобравшись на первую вершину курсивных гор, бросил он последний взгляд назад, на силуэт своего родного города Буквоград, на заголовок деревни Алфавит и на подзаголовок своего переулка Строчка. Грустный реторический вопрос скатился по его щеке и он продолжил свой путь. По дороге встретил текст рукопись. Она предупредила его: &laquo;В моей стране все переписывается по несколько раз. Единственное, что от меня осталось, это приставка &laquo;и&raquo;. Возвращайся ты лучше в свою безопасную страну&raquo;. Не послушавшись рукописи, наш текст продолжил свой путь. Вскоре ему повстречался коварный составитель</p>', '2014-11-27 04:27:00', '', '', '', 'cafe0fa614030cbad4663fffbf87763f.jpg', 0, 1, 0, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `partners`
--

INSERT INTO `partners` (`id`, `image`, `order`, `active`) VALUES
(2, '53f9098d35012137b67e0d647c1ecafc.jpg', 0, 'on'),
(4, '83434a125a2909e12fdd0ec0afb89242.png', 0, 'on'),
(5, '099f31ef0c1fdb4d4cbb03bf175cc7bb.png', 0, 'on'),
(6, '706aaf5aa63df36295d57b8b1dd7d237.jpg', 0, 'on'),
(7, '7ac104a46d2d41a96354607972d97505.jpg', 0, 'on'),
(8, '4cecd51451e270084bb8e5211c79ac61.jpg', 0, 'on'),
(9, 'c38306d2bd3bb0da8787b76cab4837c5.jpg', 0, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) NOT NULL,
  `rooms` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `requests`
--

INSERT INTO `requests` (`id`, `country`, `rooms`, `price`, `name`, `phone`, `email`, `text`, `date`, `ip`, `read`) VALUES
(1, 'Бишкек', '14', '200', 'Андрей', '+996554709700', 'protected.for@gmail.com', 'вфыф', '0000-00-00 00:00:00', '127.0.0.1', 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `requests_email`
--

DROP TABLE IF EXISTS `requests_email`;
CREATE TABLE IF NOT EXISTS `requests_email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `requests_email`
--

INSERT INTO `requests_email` (`email`) VALUES
('protected_by@mail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` varchar(2) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `phone`, `email`, `text`, `date`, `ip`, `read`, `active`) VALUES
(1, 'Кто Тоев', '0', 'kenjetaev.ermek@hotmail.com', 'В админ панели сайта, администратор управляет отзывами и комментариями - редактирует, удаляет, одобряет, либо отклоняет.В админ панели сайта, администратор управляет отзывами и комментариями - редактирует, удаляет, одобряет, либо отклоняет.В админ панели сайта, администратор управляет отзывами и комментариями - редактирует, удаляет, одобряет, либо отклоняет.', '2014-12-06 07:44:30', '127.0.0.1', 'on', 'on'),
(2, 'Кто Тоев', '0', 'kenjetaev.ermek@hotmail.com', 'В админ панели сайта, администратор управляет отзывами и комментариями - редактирует, удаляет, одобряет, либо отклоняет.', '2014-12-06 16:44:30', '127.0.0.1', 'on', '0'),
(6, 'Кто Тоев', '0', 'kenjetaev.ermek1@hotmail.com', 'В админ панели сайта, администратор управляет отзывами и комментариями - редактирует, удаляет, одобряет, либо отклоняет.', '2014-12-09 11:44:30', '127.0.0.1', 'on', 'on'),
(7, 'Кто Тоев', '0', 'kenjetaev.ermek@hotmail.com', 'В админ панели сайта, администратор управляет отзывами и комментариями - редактирует, удаляет, одобряет, либо отклоняет.', '2014-12-26 14:44:30', '127.0.0.1', 'on', 'on'),
(8, 'Кто Тоев', '0', 'kenjetaev.ermek@hotmail.com', 'В админ панели сайта, администратор управляет отзывами и комментариями - редактирует, удаляет, одобряет, либо отклоняет.', '2014-12-03 10:44:30', '127.0.0.1', 'on', 'on'),
(9, 'asdgsadg', '0', 'kenjetaev.ermek@hotmail.com', 'asdgasdg', '2014-12-06 00:57:28', '127.0.0.1', 'on', 'on'),
(10, 'asdgsadg', '0', 'kenjetaev.ermek@hotmail.com', 'asdgasdg', '2014-12-06 00:57:58', '127.0.0.1', 'on', 'on'),
(11, 'asdgasdgasdg', '0', 'kenjetaev.ermek@hotmail.com', 'sadgasegasas', '2014-12-06 00:58:31', '127.0.0.1', 'on', 'on'),
(12, 'dgasdg', '0', 'asdgasdgasdgfsadfsd@rg.ur', 'asdghassadhsaddgaasdhsas', '2014-12-06 03:36:22', '127.0.0.1', 'on', 'on'),
(13, 'sadgasdgasd', '0', 'kenjetaev.ermek@hotmail.com', 'gsadgasdgsadg', '2014-12-06 03:36:36', '127.0.0.1', 'on', 'on'),
(14, 'hdsfhsdfh', '0', 'kenjetaev.ermek@hotmail.com', 'sdfhsdfhsadgsadg', '2014-12-06 03:36:58', '127.0.0.1', 'on', 'on'),
(15, 'sdfhdsfh', '0', 'kenjetaev.ermek@hotmail.com', 'sdfhsdfh', '2014-12-06 03:37:28', '127.0.0.1', 'on', 'on'),
(16, 'ыфвпывфп', '0', 'kenjetaev.ermek@hotmail.com', 'паовапораввып', '2014-12-06 14:13:01', '127.0.0.1', 'on', 'on'),
(17, 'sdgaasdg', '0', 'kenjetaev.ermek@hotmail.com', 'sadgasdg', '2014-12-06 14:17:01', '127.0.0.1', 'on', 'on'),
(18, 'sFAasf', '0', 'eGWSEG@sdjg.ri', 'dfsgadsgsadg', '2014-12-08 16:27:39', '127.0.0.1', 'on', 'on'),
(19, 'sadgsadg', '0', 'asdgasdgasdgfsadfsd@rg.ur', 'sadgsadg', '2014-12-08 16:43:14', '127.0.0.1', 'on', 'on'),
(20, 'fgjdfgjdfgj', '0', 'kenjetaev.ermek@hotmail.com', 'sdagsdgasdg', '2014-12-11 04:20:17', '127.0.0.1', '0', '');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews_email`
--

DROP TABLE IF EXISTS `reviews_email`;
CREATE TABLE IF NOT EXISTS `reviews_email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviews_email`
--

INSERT INTO `reviews_email` (`email`) VALUES
('protected_by@mail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `object` enum('blog','news') NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`, `object`, `page_id`) VALUES
(25, 'dasdsad', 'blog', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `tours`
--

DROP TABLE IF EXISTS `tours`;
CREATE TABLE IF NOT EXISTS `tours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `keyw` text NOT NULL COMMENT 'not required',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `tours`
--

INSERT INTO `tours` (`id`, `name`, `url`, `country`, `price`, `image`, `datefrom`, `duration`, `dateto`, `hotel_id`, `type`, `placement`, `feed`, `room`, `outflight`, `backflight`, `priceinc`, `label`, `flightout`, `priceperone`, `order`, `active`, `valid`, `title`, `metatitle`, `desc`, `keyw`) VALUES
(6, 'Aristoteles Holiday Resort & SPA', 'dsadasdassaddas', 'Англия, Лондон', '46 405 сом.', '4b45c2f435980e6dc0401aa2a1c4caba.JPG', '2014-11-23 12:00:00', '7 дней', '2014-09-30 12:00:00', 17, 'Тура на двоих', 'dasdas', 'dasdasd', 'adsada', 'dasdsa', 'das', 'dasdsa', 'offer', 'из Москвыы', '11 526 сомов.', 1, 'on', 'on', '', '', '', '1'),
(9, 'Asia Holiday Resort & SPA', 'asia', 'Кырызстан, Бишкек', '21 400 сом', 'fbc18136b424ea9731cdd293ac7878f7.jpg', '2014-05-08 12:00:00', 'dasdasd', '2016-04-02 12:00:00', 17, 'dasdas', 'dasdas', 'dasdasd', 'adsada', 'dasdsa', 'das', 'dasdsa', 'offer', 'из Санкт-Петербурга', '18 325 сом.', 1, 'on', 'on', '', '', '', '1'),
(10, 'dsadasdassaddas', 'dsadasdassaddas', 'Англия, Лондон', '6431', 'fad6ad547a48cc336216ebcc416c51f3.PNG', '1970-01-01 12:00:00', 'dasdasd', '2016-04-02 12:00:00', 0, 'dasdas', 'dasdas', 'dasdasd', 'adsada', 'dasdsa', 'das', 'dasdsa', 'offer', 'из Питера', '10 000 сом', 1, 'on', 'on', '', '', '', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `tours_images`
--

DROP TABLE IF EXISTS `tours_images`;
CREATE TABLE IF NOT EXISTS `tours_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `tours_images`
--

INSERT INTO `tours_images` (`id`, `image`, `order`, `tour_id`) VALUES
(1, '1417273374_86959c34404bfc756694715c5b4b3ec8.JPG', 0, 6),
(3, '1417273374_304baf05a83fd801c1a788982abb06e3.JPG', 0, 6),
(5, '1417273374_543862af78366ded15546959f2d19d7d.jpg', 0, 6),
(6, '1417349262_ed53c9a31a26355a12ba28c25866f9f7.png', 0, 6),
(7, '1417349277_a270404b28608cc3d7731666bbea9b0d.JPG', 0, 6),
(8, '1417349277_575095968663373c181936845136878d.JPG', 0, 6),
(9, '1417349277_904a96384840c74097bc86f021e0f239.PNG', 0, 6),
(10, '1417349277_ba1f05270876810ac83a6e310f01716c.jpg', 0, 6),
(11, '1417350681_085f8b5411d754ea454adf3ee4eb1bf1.JPG', 0, 9),
(12, '1417350681_f7d65919f6a3012adeb14270e88ebe1a.JPG', 0, 9),
(13, '1417350681_5ef3348411b98cd73ae7994fef878128.PNG', 0, 9),
(14, '1417350682_3e93d3fa22c2d8a4330051d049188ce8.PNG', 0, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `widget`
--

DROP TABLE IF EXISTS `widget`;
CREATE TABLE IF NOT EXISTS `widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Дамп данных таблицы `widget`
--

INSERT INTO `widget` (`id`, `title`, `text`, `order`) VALUES
(19, 'copyright', '© ОсОО «Травел Шоп» 2014. Все права защищены.', 0),
(20, 'meta-title', 'akniet, ak-niet, акниет партия, ак-ниет партия', 0),
(21, 'meta-description', 'ПОЛИТИЧЕСКАЯ ПАРТИЯ АК-НИЕТ САЯСИЙ ПАРТИЯ', 0),
(22, 'meta-keywords', 'политикалык партиясы, партия политика, ак ниет, кыргызстан', 0),
(31, 'vises', '<p>Новый экспериментальный рейс будет состыкован в Азербайджане с рейсом Баку &ndash; Нью-Йорк &ndash; Баку. Рейсы будут выполняться ЗАО &laquo;Азербайджанские авиалинии&raquo; (AZAL) два раза в неделю &ndash; по вторникам и воскресеньям.</p>\r\n\r\n<p>случае подтверждения экономической целесообразности продолжения рейса, в дальнейшем, AZAL планирует состыковывать рейс Баку &ndash; Бишкек &ndash; Баку в Азербайджан с рейсами в Берлин или Франкфурт-на-Майне.</p>\r\n\r\n<p>Планируемый рейс по маршруту Бишкек &ndash; Баку &ndash; Нью-Йорк будет иметь неоценимо важное значение не только в транспортном и логистическом плане, но и способствовать развитию торгово-экономического и культурно-гуманитарного сотрудничества, отметили в МИД Кыргызстана. Предполагается, что 26 октября новым прямым рейсом из Баку в Бишкек прибудут представители министерств и ведомств, деловых кругов, СМИ Азербайджана для участия в пресс-конференции по случаю открытия первого рейса.</p>\r\n\r\n<p>Новый экспериментальный рейс будет состыкован в Азербайджане с рейсом Баку &ndash; Нью-Йорк &ndash; Баку. Рейсы будут выполняться ЗАО &laquo;Азербайджанские авиалинии&raquo; (AZAL) два раза в неделю &ndash; по вторникам и воскресеньям.</p>\r\n\r\n<p>случае подтверждения экономической целесообразности продолжения рейса, в дальнейшем, AZAL планирует состыковывать рейс Баку &ndash; Бишкек &ndash; Баку в Азербайджан с рейсами в Берлин или Франкфурт-на-Майне.</p>\r\n\r\n<p>Планируемый рейс по маршруту Бишкек &ndash; Баку &ndash; Нью-Йорк будет иметь неоценимо важное значение не только в транспортном и логистическом плане, но и способствовать развитию торгово-экономического и культурно-гуманитарного сотрудничества, отметили в МИД Кыргызстана. Предполагается, что 26 октября новым прямым рейсом из Баку в Бишкек прибудут представители министерств и ведомств, деловых кругов, СМИ Азербайджана для участия в пресс-конференции по случаю открытия первого рейса.</p>\r\n\r\n<p>случае подтверждения экономической целесообразности продолжения рейса, в дальнейшем, AZAL планирует состыковывать рейс Баку &ndash; Бишкек &ndash; Баку в Азербайджан с рейсами в Берлин или Франкфурт-на-Майне.</p>\r\n\r\n<p>Планируемый рейс по маршруту Бишкек &ndash; Баку &ndash; Нью-Йорк будет иметь неоценимо важное значение не только в транспортном и логистическом плане, но и способствовать развитию торгово-экономического и культурно-гуманитарного сотрудничества, отметили в МИД Кыргызстана. Предполагается, что 26 октября новым прямым рейсом из Баку в Бишкек прибудут представители министерств и ведомств, деловых кругов, СМИ Азербайджана для участия в пресс-конференции по случаю открытия первого рейса.</p>\r\n\r\n<p>Новый экспериментальный рейс будет состыкован в Азербайджане с рейсом Баку &ndash; Нью-Йорк &ndash; Баку. Рейсы будут выполняться ЗАО &laquo;Азербайджанские авиалинии&raquo; (AZAL) два раза в неделю &ndash; по вторникам и воскресеньям.</p>\r\n\r\n<p>случае подтверждения экономической целесообразности продолжения рейса, в дальнейшем, AZAL планирует состыковывать рейс Баку &ndash; Бишкек &ndash; Баку в Азербайджан с рейсами в Берлин или Франкфурт-на-Майне.</p>\r\n\r\n<p>Планируемый рейс по маршруту Бишкек &ndash; Баку &ndash; Нью-Йорк будет иметь неоценимо важное значение не только в транспортном и логистическом плане, но и способствовать развитию торгово-экономического и культурно-гуманитарного сотрудничества, отметили в МИД Кыргызстана. Предполагается, что 26 октября новым прямым рейсом из Баку в Бишкек прибудут представители министерств и ведомств, деловых кругов, СМИ Азербайджана для участия в пресс-конференции по случаю открытия первого рейса.</p>\r\n\r\n<p>случае подтверждения экономической целесообразности продолжения рейса, в дальнейшем, AZAL планирует состыковывать рейс Баку &ndash; Бишкек &ndash; Баку в Азербайджан с рейсами в Берлин или Франкфурт-на-Майне.</p>\r\n\r\n<p>Планируемый рейс по маршруту Бишкек &ndash; Баку &ndash; Нью-Йорк будет иметь неоценимо важное значение не только в транспортном и логистическом плане, но и способствовать развитию торгово-экономического и культурно-гуманитарного сотрудничества, отметили в МИД Кыргызстана. Предполагается, что 26 октября новым прямым рейсом из Баку в Бишкек прибудут представители министерств и ведомств, деловых кругов, СМИ Азербайджана для участия в пресс-конференции по случаю открытия первого рейса.</p>\r\n\r\n<p>Новый экспериментальный рейс будет состыкован в Азербайджане с рейсом Баку &ndash; Нью-Йорк &ndash; Баку. Рейсы будут выполняться ЗАО &laquo;Азербайджанские авиалинии&raquo; (AZAL) два раза в неделю &ndash; по вторникам и воскресеньям.</p>\r\n\r\n<p>случае подтверждения экономической целесообразности продолжения рейса, в дальнейшем, AZAL планирует состыковывать рейс Баку &ndash; Бишкек &ndash; Баку в Азербайджан с рейсами в Берлин или Франкфурт-на-Майне.</p>\r\n\r\n<p>Планируемый рейс по маршруту Бишкек &ndash; Баку &ndash; Нью-Йорк будет иметь неоценимо важное значение не только в транспортном и логистическом плане, но и способствовать развитию торгово-экономического и культурно-гуманитарного сотрудничества, отметили в МИД Кыргызстана. Предполагается, что 26 октября новым прямым рейсом из Баку в Бишкек прибудут представители министерств и ведомств, деловых кругов, СМИ Азербайджана для участия в пресс-конференции по случаю открытия первого рейса.</p>', 0),
(32, 'vises-title', 'Визовые услуги', 0),
(33, 'vises-image', '<p><img alt="" src="/img/tour-item-img.jpg"  /></p>', 0),
(34, 'belay-title', 'МЕДИЦИНСКАЯ СТРАХОВКА', 0),
(35, 'belay', 'Новый экспериментальный рейс будет состыкован в Азербайджане с рейсом Баку – Нью-Йорк – Баку. Рейсы будут выполняться ЗАО «Азербайджанские авиалинии» (AZAL) два раза в неделю – по вторникам и воскресеньям.\r\n\r\nслучае подтверждения экономической целесообразности продолжения рейса, в дальнейшем, AZAL планирует состыковывать рейс Баку – Бишкек – Баку в Азербайджан с рейсами в Берлин или Франкфурт-на-Майне.\r\n\r\nПланируемый рейс по маршруту Бишкек – Баку – Нью-Йорк будет иметь неоценимо важное значение не только в транспортном и логистическом плане, но и способствовать развитию торгово-экономического и культурно-гуманитарного сотрудничества, отметили в МИД Кыргызстана. Предполагается, что 26 октября новым прямым рейсом из Баку в Бишкек прибудут представители министерств и ведомств, деловых кругов, СМИ Азербайджана для участия в пресс-конференции по случаю открытия первого рейса.\r\n\r\nНовый экспериментальный рейс будет состыкован в Азербайджане с рейсом Баку – Нью-Йорк – Баку. Рейсы будут выполняться ЗАО «Азербайджанские авиалинии» (AZAL) два раза в неделю – по вторникам и воскресеньям.\r\n\r\nслучае подтверждения экономической целесообразности продолжения рейса, в дальнейшем, AZAL планирует состыковывать рейс Баку – Бишкек – Баку в Азербайджан с рейсами в Берлин или Франкфурт-на-Майне.\r\n\r\nПланируемый рейс по маршруту Бишкек – Баку – Нью-Йорк будет иметь неоценимо важное значение не только в транспортном и логистическом плане, но и способствовать развитию торгово-экономического и культурно-гуманитарного сотрудничества, отметили в МИД Кыргызстана. Предполагается, что 26 октября новым прямым рейсом из Баку в Бишкек прибудут представители министерств и ведомств, деловых кругов, СМИ Азербайджана для участия в пресс-конференции по случаю открытия первого рейса.\r\n\r\nслучае подтверждения экономической целесообразности продолжения рейса, в дальнейшем, AZAL планирует состыковывать рейс Баку – Бишкек – Баку в Азербайджан с рейсами в Берлин или Франкфурт-на-Майне.\r\n\r\nПланируемый рейс по маршруту Бишкек – Баку – Нью-Йорк будет иметь неоценимо важное значение не только в транспортном и логистическом плане, но и способствовать развитию торгово-экономического и культурно-гуманитарного сотрудничества, отметили в МИД Кыргызстана. Предполагается, что 26 октября новым прямым рейсом из Баку в Бишкек прибудут представители министерств и ведомств, деловых кругов, СМИ Азербайджана для участия в пресс-конференции по случаю открытия первого рейса.\r\n\r\nНовый экспериментальный рейс будет состыкован в Азербайджане с рейсом Баку – Нью-Йорк – Баку. Рейсы будут выполняться ЗАО «Азербайджанские авиалинии» (AZAL) два раза в неделю – по вторникам и воскресеньям.\r\n\r\nслучае подтверждения экономической целесообразности продолжения рейса, в дальнейшем, AZAL планирует состыковывать рейс Баку – Бишкек – Баку в Азербайджан с рейсами в Берлин или Франкфурт-на-Майне.\r\n\r\nПланируемый рейс по маршруту Бишкек – Баку – Нью-Йорк будет иметь неоценимо важное значение не только в транспортном и логистическом плане, но и способствовать развитию торгово-экономического и культурно-гуманитарного сотрудничества, отметили в МИД Кыргызстана. Предполагается, что 26 октября новым прямым рейсом из Баку в Бишкек прибудут представители министерств и ведомств, деловых кругов, СМИ Азербайджана для участия в пресс-конференции по случаю открытия первого рейса.\r\n\r\nслучае подтверждения экономической целесообразности продолжения рейса, в дальнейшем, AZAL планирует состыковывать рейс Баку – Бишкек – Баку в Азербайджан с рейсами в Берлин или Франкфурт-на-Майне.\r\n\r\nПланируемый рейс по маршруту Бишкек – Баку – Нью-Йорк будет иметь неоценимо важное значение не только в транспортном и логистическом плане, но и способствовать развитию торгово-экономического и культурно-гуманитарного сотрудничества, отметили в МИД Кыргызстана. Предполагается, что 26 октября новым прямым рейсом из Баку в Бишкек прибудут представители министерств и ведомств, деловых кругов, СМИ Азербайджана для участия в пресс-конференции по случаю открытия первого рейса.\r\n\r\nНовый экспериментальный рейс будет состыкован в Азербайджане с рейсом Баку – Нью-Йорк – Баку. Рейсы будут выполняться ЗАО «Азербайджанские авиалинии» (AZAL) два раза в неделю – по вторникам и воскресеньям.\r\n\r\nслучае подтверждения экономической целесообразности продолжения рейса, в дальнейшем, AZAL планирует состыковывать рейс Баку – Бишкек – Баку в Азербайджан с рейсами в Берлин или Франкфурт-на-Майне.\r\n\r\nПланируемый рейс по маршруту Бишкек – Баку – Нью-Йорк будет иметь неоценимо важное значение не только в транспортном и логистическом плане, но и способствовать развитию торгово-экономического и культурно-гуманитарного сотрудничества, отметили в МИД Кыргызстана. Предполагается, что 26 октября новым прямым рейсом из Баку в Бишкек прибудут представители министерств и ведомств, деловых кругов, СМИ Азербайджана для участия в пресс-конференции по случаю открытия первого рейса.', 0),
(36, 'belay-image', '<p><img alt="" src="/img/tour-item-img.jpg"  /></p>', 0),
(37, 'about', 'Новый экспериментальный рейс будет состыкован в Азербайджане с рейсом Баку – Нью-Йорк – Баку. Рейсы будут выполняться ЗАО «Азербайджанские авиалинии» (AZAL) два раза в неделю – по вторникам и воскресеньям.\r\n\r\nслучае подтверждения экономической целесообразности продолжения рейса, в дальнейшем, AZAL планирует состыковывать рейс Баку – Бишкек – Баку в Азербайджан с рейсами в Берлин или Франкфурт-на-Майне.\r\n\r\nПланируемый рейс по маршруту Бишкек – Баку – Нью-Йорк будет иметь неоценимо важное значение не только в транспортном и логистическом плане, но и способствовать развитию торгово-экономического и культурно-гуманитарного сотрудничества, отметили в МИД Кыргызстана. Предполагается, что 26 октября новым прямым рейсом из Баку в Бишкек прибудут представители министерств и ведомств, деловых кругов, СМИ Азербайджана для участия в пресс-конференции по случаю открытия первого рейса.\r\n\r\nНовый экспериментальный рейс будет состыкован в Азербайджане с рейсом Баку – Нью-Йорк – Баку. Рейсы будут выполняться ЗАО «Азербайджанские авиалинии» (AZAL) два раза в неделю – по вторникам и воскресеньям.', 0),
(38, 'about-image', '<p><img alt="" src="/img/tour-item-img.jpg" /></p>', 0),
(39, 'about-title', 'О нас', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
