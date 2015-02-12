-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 13, 2015 at 05:58 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `name`, `url`, `text`, `date`, `title`, `desc`, `keyw`, `image`, `order`, `views`, `active`) VALUES
(11, 'Самые доступные предложения в самый комфортный период для отдыха и путешествий по южным штатам Америки от компании Travel Shop!', 'samye_dostupnye_predlozhenija_v_samyj_komfortnyj_period_dlja_otdyha_i_puteshestvij_po_juzhnym_shtatam_ameriki_ot_kompanii_travel_shop', '<div class="text_exposed_root text_exposed" id="id_54a7030cac6db5b30081854">ИЗ ЗИМЫ - В ЛЕТО: КАЛИФОРНИЯ И ФЛОРИДА!</div>\n\n<div class="text_exposed_root text_exposed"><br />\nСамые доступные предложения в самый комфортный период для отдыха и путешествий по южным штатам Америки от компании Travel Shop!<br />\n<br />\nКАЛИФОРНИЯ &ndash; НЕВАДА &ndash; АРИЗОНА &ndash; ЮТА<br />\n10 дней&nbsp;<br />\n2, 9, 23 января 14, 28 февраля 7, 21 марта 3, 11, 25, 30 апреля 2015 года<br />\n<br />\nЛОС-АНДЖЕЛЕС - ЛАС-ВЕГАС - САН-ДИЕГО - ГРАНД-КАНЬОН - ЗАПОВЕДНИКИ<br />\n7 дней<br />\n2, 9, 23 января 14, 28 февраля 7, 21 марта 3, 11, 25, 30 апреля 2015 года<br />\n<br />\nЛАС-ВЕГАС - САН-ФРАНЦИСКО<br />\n6 дней&nbsp;<br />\n6, 13, 27 января 18 февраля 4, 11, 25 марта 7, 15, 29 апреля 2015 года<br />\n<br />\nНАЦИОНАЛЬНЫЕ ЗАПОВЕДНИКИ И ЛАС-ВЕГАС<br />\n5 дней<br />\nянваря 16 февраля 2, 9, 23 марта 5, 13, 27, 30 апреля 2015 года<br />\n<br />\nЛОС-АНДЖЕЛЕС - САН-ДИЕГО<br />\n5 дней&nbsp;<br />\n2, 9, 23 января 14, 28 февраля 7, 21 марта 3, 11, 25, 30 апреля 2015 года<br />\n<br />\nЛАС-ВЕГАС<br />\n<br />\n5 дней&nbsp;<br />\nянваря 18 февраля 4, 11, 25 марта 7, 15, 29 апреля 2015 года<br />\n<br />\nФЛОРИДА - ВЕЧНОЕ ЛЕТО<br />\n<br />\nот 7 до 9 дней&nbsp;<br />\n<br />\nОрландо - Майами<br />\nНачало туров - еженедельно, круглый год (суббота, воскресенье).<br />\n<br />\nМАЙАМИ - ЭКСПРЕСС<br />\nот 7 до 9 дней&nbsp;<br />\nОрландо - Майами (ЭКСКУРСИИ И ОТДЫХ)<br />\nНачало туров - еженедельно, круглый год (суббота, воскресенье).<br />\n<br />\nФЛОРИДА - МИР ДИСНЕЯ<br />\nот 5 до 9 дней&nbsp;<br />\nОрландо - всемирная столица развлечений!<br />\nНачало туров - еженедельно, круглый год (суббота, воскресенье).<br />\n<br />\nЛучший отдых на пляжах Майами-Бич в любое время года, круглый год<br />\n<br />\nТУРЫ МОГУТ БЫТЬ ИЗМЕНЕНЫ и ПРИСПОСОБЛЕНЫ ПОД ПЕРСОНАЛЬНЫЙ ЗАПРОС!<br />\nПолучить более подробную, персональную информацию<br />\nможно, отправив запрос по электронному адресу: tour@travelshop.kg&nbsp;<br />\nа также по телефону: 0312 66 21 21, 0701 66 21 21, 0554 66 21 21</div>\n\n<p>&nbsp;</p>\n', '1970-01-01 06:00:00', 'Самые доступные предложения в самый комфортный период для отдыха и путешествий по южным штатам Америки от компании Travel Shop!', 'Самые доступные предложения в самый комфортный период для отдыха и путешествий по южным штатам Америки от компании Travel Shop!', 'Самые доступные предложения в самый комфортный период для отдыха и путешествий по южным штатам Америки от компании Travel Shop!', '911cf34f35609eb75a66fcae00a2ddff.jpg', 0, 0, 'on'),
(12, 'Юбилейный 20-ый Дубайский торговый фестиваль: путешествие в роскошь', 'jubilejnyj_20-yj_dubajskij_torgovyj_festival_puteshestvie_v_roskosh', '<p><span style="color:rgb(20, 24, 35); font-family:helvetica,arial,lucida grande,tahoma,verdana,arial,sans-serif; font-size:14px">Юбилейный 20-ый Дубайский торговый фестиваль: путешествие в роскошь</span><br />\n<br />\n<span style="color:rgb(20, 24, 35); font-family:helvetica,arial,lucida grande,tahoma,verdana,arial,sans-serif; font-size:14px">■ Двадцатый Дубайский торговый фестиваль под лозунгом &laquo;20 лет путешествий &ndash; из праздника в праздник&rdquo; пройдет с 1 января по 1 февраля 2015 и станет первым в череде ярких с</span><span style="color:rgb(20, 24, 35); font-family:helvetica,arial,lucida grande,tahoma,verdana,arial,sans-serif; font-size:14px">обытий в Дубае в новом году.&nbsp;<br />\nВпервые фестиваль прошел в 1996 году; в настоящее время он превратился в самое продолжительное мероприятие такого рода в мире, в значительной мере способствуя продвижению Дубая как туристического направления и предлагая жителям города и туристам яркие впечатления. За период с 1996 по 2014 года фестиваль посетило приблизительно 56 млн. человек, а общая сумма затрат составила $ 40 млрд.<br />\n<br />\nТри составляющих успеха Дубайского торгового фестиваля &ndash; развлечения, шопинг и розыгрыш различных призов.&nbsp;<br />\n<br />\nДля привлечения к участию в фестивале как можно большего количества людей мероприятия проходят не только в торговых центрах, но и в общественных местах, на главных улицах города, например на Бульваре Мохаммеда Бин Рашида, а также в Ковровом оазисе, в историческом районе Шиндага, во Всемирной деревне и парках.&nbsp;<br />\n<br />\nКрасочные фестивальные мероприятия мирового уровня, рассчитанные на всех членов семьи, неизменно привлекают внимание как жителей города, так и туристов со всего мира.&nbsp;<br />\n<br />\nНеизменный хит &ndash; мюзикл MAMMA MIA &ndash; можно будет увидеть со 2 по 10 января 2015г. на сцене зала Шейха Рашида в Дубайском центре международной торговли. Это шоу посмотрело уже более 54 млн. зрителей во всем мире, ведь за время его существования было сделано 39 различных постановок на 14 языках.<br />\n<br />\nС 15 по 17 января на сцене Мадинат арены будет представлен классический балет &laquo;Ромео и Джульетта&raquo; в исполнении самой известной европейской труппы Балет Монте-Карло под руководством одного из лучших мировых хореографов Жана Кристофа Майо (Jean Chrostoph Maillot).<br />\n<br />\nЮбилейный фестиваль вновь подтвердит уникальные возможности лучшего в мире шопинга, уникального и разнообразного, будь то городские и традиционные рынки или первоклассные торговые центры. Дубай действительно является мировым центром шопинга, вторым после Лондона городом, по количеству представленных международных розничных брендов. В фестивале примут участие более 70 торговых центров и 6000 магазинов, а скидки на разные товары, начиная от золота, парфюмерии, одежды модных брендов, машин, электроники до текстиля и изделий ручной работы достигают 75%.<br />\nКроме того, будет представлены уникальные модные концепции, например Celebrity Pop-up Shop с коллекциями одежды от известных дизайнеров или владельцев брендов, ранее не представленными в ОАЭ. Здесь же пройдут показы мод, автограф-сессии и стайлинг-сессии. В течение трех недель в магазине будут попеременно представлены коллекции трех дизайнеров. Так, с 15 по 21 января 2015 известная американская актриса и дизайнер Николь Ричи представит свою ювелирную линию House of Harlow 1090. Украшения в ретро стиле из этой коллекции носят Мадонна и Эшли Симпсон. Celebrity Pop-up Shop расположится на пляже The Beach &ndash; Jumeirah Beach Residence.<br />\n<br />\nИ конечно, же, Дубайский торговый фестиваль славится лотереями крупных денежных призов, роскошных автомобилей и золота.&nbsp;<br />\n<br />\nМега лотерея Gold &amp; Jewellery Mega Raffle даст шанс выиграть призы на сумму до 15 млн. дирхам, включая золото весом до 100 кг и бриллианты общим весом до 40 карат. А в рамках мега лотереи Infinity Mega Raffle ежедневно будет разыгрываться приз, состоящий из двух автомобилей QX 60 и QX 50 и 100 000 дирхам. В ходе еженедельных розыгрышей этой лотереи будут также разыграны призы на сумму 2 млн. дирхам. Для участия необходимо приобрести лотерейный билет стоимостью 200 дирхам (ок $54).&nbsp;<br />\n<br />\nВо время Дубайского торгового фестиваля организаторы планируют попасть в Книгу рекордов Гиннеса, создав золотую цепь ручной работы длиной 5 км (&lsquo;Dubai celebration Chain&rdquo;). Всем желающим будет предоставлена возможность приобрести части этой цепи, так как они будут выставлены на продажу.&nbsp;</span></p>\n', '1970-01-01 06:00:00', 'Юбилейный 20-ый Дубайский торговый фестиваль: путешествие в роскошь', 'Юбилейный 20-ый Дубайский торговый фестиваль: путешествие в роскошь', 'Юбилейный 20-ый Дубайский торговый фестиваль: путешествие в роскошь', 'd2480590815c9b77c37bb88443e72e86.jpg', 0, 0, 'on'),
(13, 'Начните новый год с отпуска #Dubai', 'nachnite_novyj_god_s_otpuska_dubai', '<div class="aboveUnitContent">\n<div class="userContentWrapper">\n<div class="_wk">&nbsp;</div>\n</div>\n</div>\n', '1970-01-01 06:00:00', 'Начните новый год с отпуска #Dubai', 'Начните новый год с отпуска #Dubai', 'Начните новый год с отпуска #Dubai', '2ffd022483b03ba22da2e27ad46ffa1a.jpg', 1, 0, 'on');

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
(1, 'ул.Абдрахманова 135', 'Авиакасса 66 20 20 Тур отдел   66 21 21', 'tour@travelshop.kg', '42.87111805888461, 74.61325299739838', 'Мы также есть в социальных сетях,следите за нашими новостями и новыми турами.', 'http://vk.com/id279877089', 'https://www.facebook.com/pages/Travel-Shop/1484515281794095', 'travelshop', 'travelshop');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `phone`, `email`, `text`, `date`, `ip`, `read`) VALUES
(2, '12312311', '1', '123@123.ru', '1', '2014-12-02 00:00:00', '127.0.0.1', 'on'),
(4, '1', '1', '123@123.ru', '1', '2014-12-03 12:59:41', '127.0.0.1', 'on'),
(5, 'Андрей Федотов', '+996554709700', 'protected.for@gmail.com', 'выфвфы', '2014-12-14 19:49:12', '127.0.0.1', '0'),
(6, 'Nurtai Atahanov', '0777930103', '3n_david@mail.ru', 'Здравствуйте ! Посоветуйте куда лучше поехать в Таиланд  или в Турцию если есть другие варианты тоже посмотрю, какие документы должен собрать и должен ли заключить договор с Вашей фирмой?? Спасибо!!!', '2015-01-13 11:38:03', '158.181.156.83', '0');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `status`, `site`, `phone`, `fax`, `email`, `rooms`, `distoport`, `beachl`, `image`, `text`, `coords`, `order`, `active`) VALUES
(19, 'Spice Hotel & Spa', 5, 'http://www.spice.com.tr', 'T: +90 242 715 35 35', '', 'info@spice.com.tr', 546, 30, 'первая', 'ae4ee74297ed82fff241d5af383a92d8.jpg', '', 0, 0, 'on'),
(20, 'Alila Diwa Goa', 5, 'http://www.alilahotels.com/', '48/10 Adao Wado | Majorda, 403713, Индия', '', '', 149, 17, 'Собственный песчаный в 50 м от отеля.', 'a62374276195bd924a1d3edfee44fe2a.jpg', '', 0, 0, 'on'),
(21, 'Bamboo House Phuket Hotel 4*', 4, 'http://www.bamboohousephuket.com', 'Пхукет', '', '', 50, 40, '300 метров', 'ec6763296cf42b96f7012022ee733a12.jpg', '<table cellpadding="0" cellspacing="0" class="catalog_table">\n <tbody>\n  <tr>\n   <td colspan="2">Описание</td>\n  </tr>\n  <tr>\n   <td>\n   <h5>Расположение:</h5>\n   </td>\n   <td>расположен в 300 м от пляжа Карон, в 40 км от аэропорта</td>\n  </tr>\n  <tr>\n   <td>\n   <h5>Размещение:</h5>\n   </td>\n   <td>5 этажей, на которых расположено 50 номеров:<br />\n   50 Superior Rooms(макс. 2 чепл., 24 м2).</td>\n  </tr>\n  <tr>\n   <td>\n   <h5>В номере:</h5>\n   </td>\n   <td>- индивидуальный кондиционер<br />\n   - телефон<br />\n   - холодильник<br />\n   - спутниковое телевидение<br />\n   - набор для чай/кофе<br />\n   - сейф<br />\n   - фен</td>\n  </tr>\n  <tr>\n   <td>\n   <h5>Территория:</h5>\n   </td>\n   <td>- ресторан ( интернациональная, тайская кухня, морепродукты)<br />\n   - бар<br />\n   - бассейн<br />\n   - прокат автомобилей<br />\n   - химчистка</td>\n  </tr>\n  <tr>\n   <td>\n   <h5>Для детей:</h5>\n   </td>\n   <td>- няня по запросу (платно)</td>\n  </tr>\n  <tr>\n   <td>\n   <h5>Развлечения и спорт:</h5>\n   </td>\n   <td>- массаж (платно)</td>\n  </tr>\n  <tr>\n   <td>\n   <h5>Пляж:</h5>\n   </td>\n   <td>- городской, зонтики, шезлонги (платно)</td>\n  </tr>\n  <tr>\n   <td>\n   <h5>К оплате принимаются</h5>\n   </td>\n   <td>кредитные карты: Visa, Master Card</td>\n  </tr>\n </tbody>\n</table>', 0, 0, 'on'),
(22, 'Citymax Hotel Dubai', 3, 'http://www.citymaxhotels.com/en/hotel/citymax-hotels-bur-dubai', '+971 4 409 8000', '+971 4 325 5849', 'tour1@travelshop.kg', 693, 15, 'Городской отель', '4713ef17098542ff125594b0b93111e3.jpg', '<p>Современный отель Citymax расположен в историческом районе Бур-Дубай, менее чем в 1 км от залива Дубай-Крик. К услугам гостей бассейн на крыше здания, хорошо оборудованный тренажерный зал и бесплатная частная парковка, а также бесплатный WiFi на всей территории.</p>\n\n<p>Номера отеля Citymax Bur Dubai обставлены дизайнерской мебелью, а на кроватях уложены роскошные мягкие матрасы. В числе удобств &mdash; телевизор с плоским экраном, мини-бар и чайник, а также собственная ванная комната с ванной и феном.</p>\n\n<p>В отеле работает несколько ресторанов с обслуживанием в формате &laquo;шведский стол&raquo; и по меню. Они открыты на завтрак, обед и ужин, и специализируются на индийской, китайской и тайской кухне. Возможна доставка еды и напитков в номера, а в круглосуточной кофейне можно приятно провести время за напитком и закусками.</p>\n\n<p>Отель Citymax Bur Dubai находятся в удобной доступности от местных оживленных рынков и базаров. За 10 минут можно дойти до торгового центра Burjuman, а расстояние до Всемирного торгового центра Дубай составляет 3 км.</p>\n\n<div class="track_HMDOTVTZLaGUNGOHT">&nbsp;</div>\n\n<p>История,&nbsp;Походы,&nbsp;Экскурсии&nbsp;&mdash; то, за что гости рекомендуют район Бур-Дубай.</p>', 0, 0, 'on');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `hotels_images`
--

INSERT INTO `hotels_images` (`id`, `image`, `order`, `hotel_id`) VALUES
(13, '1420234480_5f320dcc1d01707b11d4bea86cef094b.jpg', 0, 19),
(14, '1420234488_85226fb451cc811bd3683f1ef1fc7c4b.jpg', 0, 19),
(15, '1420234497_e71981f24481d9d7e5963a39bd3062bc.jpg', 0, 19),
(16, '1420234505_72c9d2ae9051c6b25a3fd18c4885a49a.jpg', 0, 19),
(17, '1420234514_a49bd4313a361515b3edf164f1f86ac4.jpg', 0, 19),
(18, '1420234528_30ac1b69bd81b4e4d77f914ceea7b76c.jpg', 0, 19),
(19, '1420236206_83fb215dd095803ebeb137f0cabfca05.jpg', 0, 20),
(20, '1420236212_11892d87d5f30f7e4549dd4fb85e2130.jpg', 0, 20),
(21, '1420236219_8a5c73a7707b7d2dba02eb1bbf4ad7b6.jpg', 0, 20),
(22, '1420236228_58ebeb2f0c7a221e8b10662e1bd71480.jpg', 0, 20),
(23, '1420236508_ebf9f2cded55c9daae1942d78b55c5db.jpg', 0, 20),
(24, '1420237756_b7027cf527f23e004aabb80e4ebfa332.jpg', 0, 21),
(25, '1420237767_3e80b37f2a4c8f713e1395e7a2566492.jpg', 0, 21),
(26, '1420237774_d15031bce738922a5b2e69ec5776f786.jpg', 0, 21),
(27, '1420237783_b4adc34324441dc1e33b837929e6c0df.jpg', 0, 21),
(28, '1420237791_279a626fab0c99450b9f116e7d902bad.jpg', 0, 21),
(29, '1420712480_67d79bdc75aff5d49db99746275a0dab.jpg', 0, 22),
(32, '1420712480_0463f2f8cf7bb33bb6ee14e443790ded.jpg', 0, 22),
(33, '1420712480_9aa22944778fc6ca9b03d815ad3ad0b9.jpg', 0, 22),
(34, '1420712480_7856a0c290470e916c50de053e838893.jpg', 0, 22),
(35, '1420712480_c746486a6947fbaa38a0003b140e74a7.jpg', 0, 22),
(36, '1420712480_df45b415fbf10c45c54d0348fb3b96d9.jpg', 0, 22),
(37, '1420712480_dabf643442c8969d626ce6d619817ffd.jpg', 0, 22),
(38, '1420712480_78cef9505e2e425ae1ab808f947da635.jpg', 0, 22),
(39, '1420712480_7b6127f9c7d43e6f8c6759bf7d1b80c3.jpg', 0, 22),
(40, '1420712480_5c6eac2af2d3d54dd079200593eb9f7e.jpg', 0, 22),
(41, '1420712480_14310d24d0f94f2a9a898c12e5e356cc.jpg', 0, 22),
(42, '1420712481_2ba0ac2ed8d8a3c4624ea64a7d57b504.jpg', 0, 22),
(43, '1420712481_d297e189074ca6da1ba7c9400ad271e4.jpg', 0, 22),
(44, '1420712481_4c7edd149b27af42637e642c011eb514.jpg', 0, 22),
(45, '1420712481_788b4ed2ede778fd06432ac24bf55ee4.jpg', 0, 22),
(46, '1420712481_066843ff50333063674305d0b28e3817.jpg', 0, 22),
(47, '1420712481_f146c9456f3c2c7cef34fdb7bff03f0f.jpg', 0, 22),
(48, '1420712481_9b999b70faf7e091800f1e67c64f2f25.jpg', 0, 22);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `url`, `text`, `date`, `title`, `desc`, `keyw`, `image`, `category_id`, `order`, `views`, `active`) VALUES
(1, 'Семь лучших мест для встречи Нового Года в Таиланде', 'imya', '<p><strong><input alt="" src="/ckeditor/kcfinder/upload/files/thailand.jpeg" style="float:right; height:160px; width:160px" type="image" />Семь лучших мест для встречи Нового Года в Таиланде</strong></p>\n\n<p>Торжества по случаю празднования Нового Года пройдут на всей территории Таиланда, а самые крупные из них состоятся в Бангкоке, Чиангмае, провинциях Чианграй (город Мае Сай), Чонбури (Паттайя), Сонгкхла (Хат Яй), в городе Кхон Каен и на острове Пхукет. Празднования пройдут с 25 декабря 2014 года по 1 января 2015 года.</p>\n\n<p>Каждое из семи торжеств будет посвящено определенной тематике и подарит гостям Королевства незабываемые впечатления, а также удивит великолепными фейерверками.</p>\n\n<p>В Бангкоке основные празднования состоятся у торгового центра Ploenchit, на пересечениях улиц Ratchaprasong и Pathumwan в ночь с 31 декабря на 1 января. Гостей будут ждать великолепные фейерверки, концерты и выступления артистов. Традиционный обратный отчет перед наступлением Нового Года пройдет перед торговыми комплексами CentralWorld и Amarin Plaza.</p>\n\n<p>В Чиангмае торжества пройдут у ворот Tha Pae и на улице Tha Pae Road с 25 по 31 декабря. Гостей будут ждать небольшие уличные концерты, выступления артистов и разнообразные представления, а в новогоднюю ночь &ndash; обратный отчет перед наступлением полуночи и зрелищные фейерверки.</p>\n\n<p>Район Мае Сай северной провинции Чианграй встретит путешественников фейерверками, музыкальными представлениями и праздничными шоу-программами в традициях народов трех соседних государств &ndash; Таиланда, Лаоса и Мьянмы.</p>\n\n<p>В Паттайе торжества пройдут на пирсе Bali Hai в самой южной части городского пляжа с 25 по 31 декабря. Все семь дней будут наполнены представлениями и концертами знаменитых тайских и иностранных музыкантов, а завершатся новогодним фейерверком в небе над побережьем.</p>\n\n<p>В городе Хай Яй провинции Сонгкхла празднования пройдут в канун Нового Года на четырех главных улицах города &ndash; Niphat Uthit 3, Sanehanusorn, Thammanoonvithi и Chee Uthit, перед торговым центром Lee Gardens Plaza и рынком Gong Kong Villa Market. На острове Пхукет торжества состоятся с 29 по 31 декабря на поле Sanam Chai, а в городе Кхон Каен &ndash; с 25 по 31 декабря на улице Srichan Road у городских ворот.</p>\n\n<p><strong>Центр медитации в Чианграе приглашает присоединиться к праздничным молитвам в честь Нового Года</strong></p>\n\n<p>Медитационный центр Rai Cherntawan в самой северной провинции Таиланда Чианграй приглашает гостей страны присоединиться к праздничным молитвам в честь наступления Нового Года, которые пройдут с 25 декабря 2014 года по 5 января 2015 года.</p>\n\n<p>Молитвы пройдут одновременно с фестивалем ланнских фонарей и цветов, гости которого будут очарованы видом сотен фонариков и множества разноцветных тюльпанов, а также смогут постоять под специальной аркой, украшенной приносящими удачу цветками.</p>\n\n<p>Праздничные молитвы в честь наступления Нового Года пройдут, в том числе, 31 декабря, а 1 января гости центра смогут присоединиться к первому в 2015 году уроку в центре медитации, который проведет один из самых знаменитых монахов Таиланда В. Ваджирамедхи.</p>\n\n<p>Центр Rai Cherntawan был открыт в 2009 году и сегодня занимает площадь более 250 000 квадратных метров в районе Муанг провинции Чианграй. Здесь можно пройти целый курс, или взять несколько уроков медитации. Концепция центра основана на принципе возвращения к природе, а его гости могут расслабиться и восстановить душевное равновесие.</p>\n\n<p><strong>Зонтики и коврики возвращаются на пляжи Пхукета</strong></p>\n\n<p>Администрации Пхукета удалось найти баланс между комфортными условиями отдыха туристов на пляжах, сохранением красоты береговой линии острова и справедливыми ценами на пляжные услуги от предпринимателей.</p>\n\n<p>23 декабря Администрацией провинции было объявлено о том, что одна десятая часть на всех пляжах острова отводится под территорию для шезлонгов и зонтиков.</p>\n\n<p>Предпринимателям разрешено возобновить свой бизнес, при этом власти определят все цены на услуги и они (цены) будут едины по всему острову. Стоимость будет объявлена в пятницу 26 декабря.</p>\n\n<p>Сегодня чиновники определят территории под коврики и зонтики на 12 пляжах.</p>\n\n<p>Услуги аренды будут предоставляться с 9 утра до 16 часов.</p>\n\n<p>В рамках кампании по восстановлению пляжей Пхукета, кампании против коррупции и по ряду других внутренних причин, пляжные услуги, начиная от предоставления зонтиков и шезлонгов, заканчивая пляжными барами, были отменены на береговой линии всех пляжей острова.</p>\n\n<p>&nbsp;</p>\n\n<p>Источник: Туристическое Управление Таиланда</p>\n\n<p>За дополнительной информацией обращайтесь:</p>\n\n<p>Travel Shop +996 312 66 21 21, +996 701 66 21 21, +996 554 66 21 21</p>\n', '2015-06-01 12:00:00', 'Тайланд', 'Таиланд, отдых в Тайланде, тур вТайланд Бишкек, Отели Тайланда Бишкек, горящие туры в Тайланд', 'Таиланд, отдых в Тайланде, тур вТайланд Бишкек, Отели Тайланда Бишкек, горящие туры в Тайланд', '12e1561e487ca17c5b92631944901c66.jpg', 0, 1, 0, 'on'),
(4, 'С Нового года Турция изменяет требования к паспортам туристов', 's_novogo_goda_turcija_izmenjaet_trebovanija_k_pasportam_turistov', '<div style="border: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 14px; line-height: 20px;"><strong>С Нового года Турция изменяет требования к паспортам туристов</strong></div>\n\n<div style="border: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 14px; line-height: 20px;">&nbsp;</div>\n\n<div style="border: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 14px; line-height: 20px;">Турция не в первый раз корректирует требования к загранпаспортам въезжающих. Еще в начале 2014 года документ должен был быть действительным как минимум три месяца на момент окончания путешествия. В апреле этот срок внезапно был увеличен до четырех месяцев на момент въезда, без какого-либо &laquo;переходного периода&raquo;, который позволил бы путешественникам вовремя заменить свой паспорт. Такое нововведение накануне высокого сезона &ndash; майских праздников &ndash; больно ударило по российской туриндустрии, и власти Турции перенесли начало его действия на 2015 год.&nbsp;</div>\n\n<div style="border: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 14px; line-height: 20px;">&nbsp;</div>\n\n<div style="border: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 14px; line-height: 20px;">В виде некой компенсации с весны 2014 года и до 31 декабря россиянам было разрешено совершать поездки в Турцию без каких-либо ограничений срока действия паспорта. Но с 1 января 2015 года новое правило все же вступает в силу. С этого дня въезд в Турцию станет возможным только при наличия загранпаспорта, действительного<strong>не менее 120 дней</strong>на момент пересечения границы с Турцией. Остальные же принципы въезда в эту страну (в частности, безвизовое посещение на срок до 60 дней) остались без изменений.&nbsp;</div>\n', '2015-01-03 12:00:00', 'Турция', 'Туры в Турцию, правила въезда в турцию.', 'Туры в Турцию, правила въезда в турцию.', '6547f572b4d486c22cd213f0287de240.jpg', 0, 0, 0, 'on'),
(5, 'Граждане Кыргызстана могут въезжать в Россию как и прежде по ID-картам!', 'grazhdane_kyrgyzstana_mogut_vezzhat_v_rossiju_kak_i_prezhde_po_id-kartam_', '<p><strong><span >Граждане Кыргызстана могут въезжать в Россию как и прежде по ID-картам!&nbsp;</span></strong><br />\n<br />\n<span >', '03.01.2015 02:45', 'Граждане Кыргызстана могут въезжать в Россию как и прежде по ID-картам!', 'Граждане Кыргызстана могут въезжать в Россию как и прежде по ID-картам!', 'Граждане Кыргызстана могут въезжать в Россию как и прежде по ID-картам!', '6d0bddcdfaac39f0759448a8a98ad097.png', 0, 0, 0, 'on');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `order`, `active`) VALUES
(11, '8da07e514b73f136b2214e1fe1991e5d.jpeg', 0, 'on'),
(13, '7db28a327eb09e63e6b97707c8a4b04c.jpg', 0, 'on'),
(15, '62cdbe30bc226a4206c14c13ff6c6b06.jpeg', 0, 'on'),
(16, '8371e2be6150c5043255b1305dfe4224.jpeg', 0, 'on'),
(17, '69f4d62a9a341025458ef588c72f3ef1.jpg', 0, 'on'),
(18, 'db9d0a47cde99ab13c760a85de959a9b.gif', 0, 'on'),
(19, 'ca31492d220da94f2b9e4a92b7dc80b0.gif', 0, 'on'),
(20, '5d28b5f914576c23671ee96be5163dae.jpeg', 0, 'on'),
(21, 'ada2306ab6acebcf6a99cb9cb1364642.jpg', 0, 'on'),
(22, 'a13ce8173388adc0c9e687321664a153.jpg', 0, 'on'),
(24, '517b0cf749ce17e9cf2c0e0a161c9976.gif', 2, 'on'),
(26, '0d97a9b9fdc1e27ee6c2b2c2f04e85d9.jpg', 1, 'on'),
(27, 'a435af4ddcf76921c1cb9a1307028e57.jpeg', 0, 'on'),
(28, '567332488f71a4cc3489b9b84a4217eb.gif', 0, 'on'),
(29, 'd74fcc9cee132f6e3790f9a558d28d17.gif', 0, 'on'),
(31, '399744b3731d9215fe813cb7cfefac61.jpeg', 0, 'on'),
(45, 'd9afd7721c3bef4fee05db538bc7db18.jpg', 0, 'on'),
(46, '8182d1a2268b98c04852253bf3397432.jpg', 1, 'on'),
(47, 'a30b9d59303ff148ae030b89007a5087.jpg', 0, 'on'),
(48, 'b7a600834aea983132ada1d3e75e7003.jpg', 0, 'on');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `name`, `url`, `country`, `price`, `image`, `datefrom`, `duration`, `dateto`, `hotel_id`, `type`, `placement`, `feed`, `room`, `outflight`, `backflight`, `priceinc`, `label`, `flightout`, `priceperone`, `order`, `active`, `valid`, `title`, `metatitle`, `desc`, `keyw`) VALUES
(11, 'Spice Hotel & Spa', 'spice_hotel__spa', 'Турция, Анталия, Белек', '-', '330246fb040db1d0ac9a2adfd7bac060.jpg', '2015-01-07 06:00:00', '7', '2015-01-07 06:00:00', 19, '-', '-', 'Ультра все включено', '-', 'Пегасус Азия, Турецкие авиалинии', 'Пегасус Азия, Турецкие авиалинии', 'Страховка, перелет, трансфер, отель', '', 'Бишкека', 'Индивидуальный расчет', 0, 'on', '0', 'spice_hotel__spa', 'Туры в турцию', 'туры в турцию', 'туры в турцию'),
(12, 'Alila Diwa Goa', 'alila_diwa_goa', 'Индия, Гоа', '-', 'bf8cb3af97890ca33b37ac33a04af187.jpg', '1970-01-01 06:00:00', '-', '2015-01-08 06:00:00', 20, '-', '-', '-', '-', 'Айр Астана, Чартер', 'Айр Астана, Чартер', '-', 'new', 'Алматы', '-', 0, 'on', '0', 'Индия, Гоа', 'Индия, Гоа', 'Индия, Гоа', 'Индия, Гоа'),
(13, 'Bamboo House Phuket Hotel 4*', 'bamboo_house_phuket_hotel_4', 'Тайланд, Пхукет', '-', '48c3710945a55dc5375b7703be31ad50.jpg', '1970-01-01 06:00:00', '-', '2015-01-09 06:00:00', 21, '-', '-', '-', '-', '-', '-', '-', 'offer', 'Алматы', '-', 0, 'on', '0', 'Тайланд, Пхукет', 'Тайланд, Пхукет, bamboo_house_phuket_hotel_4', 'Тайланд, Пхукет, bamboo_house_phuket_hotel_4', 'Тайланд, Пхукет, bamboo_house_phuket_hotel_4'),
(15, 'Citymax Hotel Dubai', 'citymax_hotel_dubai', 'ОАЭ', '$ 1722', '4736cb08f327f021bcd8edfe131a355d.jpg', '2015-02-13 04:32:00', '7 ночей', '2015-02-20 04:34:00', 22, 'Стандартный тур пакет, стоимость на одного при 2-х местном размещении.', 'Двухместный номер (DBL)', 'Завтрак', 'Стандарт', 'Алматы-Дубай FZ702   16:20   19:15', 'Дубай-Алматы FZ701   09:05   15:20', '- проживание в отеле - питание на базе завтрака  - встречи и проводы в аэропорту в г.Дубай   - оформление визы   - авиаперелет Алматы-Дубай-Алматы', 'offer', 'из Алматы', '$ 861', 0, 'on', 'on', '', '', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `tours_images`
--

INSERT INTO `tours_images` (`id`, `image`, `order`, `tour_id`) VALUES
(15, '1420234164_d8791a83a43387b023031c8f6a2a2a7e.jpg', 0, 11),
(16, '1420234174_a0bb89ed5aa8a223964e4ed759313c89.jpg', 0, 11),
(17, '1420234184_dc40104c4b46e0912b8bda49edcb6e26.jpg', 0, 11),
(18, '1420234194_e7ccbb131b8ca15ad454567d21e06d27.jpg', 0, 11),
(19, '1420234321_8dab7b443f8f2d71edf83ada5d743acb.jpg', 0, 11),
(20, '1420234386_5fb4bf357ff89813451f2982a6d07e82.jpg', 0, 11),
(21, '1420236454_a12c8fad0c26570ca6f2daf600bee98b.jpg', 0, 12),
(22, '1420236459_c19605a2670c1288e83134650913659f.jpg', 0, 12),
(23, '1420236464_b5d615b91cd74dd19487e57ff96552c6.jpg', 0, 12),
(24, '1420236476_ba857f9a23d49810a44dc3fa2b1fd4a8.jpg', 0, 12),
(25, '1420236482_d4218f3a33b167ab047fc32d26ea25ef.jpg', 0, 12),
(26, '1420237967_56e4854450e3a95938d77733fb57c443.jpg', 0, 13),
(27, '1420237974_d38ad6e4f3bffc4184658a11739a3a00.jpg', 0, 13),
(28, '1420237979_0d6ccdb5f2e334777e9ba958ea791ba1.jpg', 0, 13),
(29, '1420237987_82c25ce6cbe12fab0229b4adf19f0b26.jpg', 0, 13),
(30, '1420237996_3cff02ae9a88df2530f2bfe227ae9bd5.jpg', 0, 13),
(31, '1420715108_a86d8e89ce82d80984e60f72c798e0b9.jpg', 0, 15),
(32, '1420715108_23ad88d4d225b95a0f190eeea01adbdc.jpg', 0, 15),
(33, '1420715108_715564a8ccb2d3d4ea5dcd58cbb24e8c.jpg', 0, 15),
(34, '1420715108_70e2cc588a6d13c79a9be2cc51ff4006.jpg', 0, 15),
(35, '1420715108_afbe403a1066704f25577becf10a64cb.jpg', 0, 15),
(36, '1420715108_9e78d3f824e7a35c6a835fc9fce48912.jpg', 0, 15),
(37, '1420715108_752d10b0bd929637c3afa6848d98188f.jpg', 0, 15),
(38, '1420715108_75adc00f99c00dbf86c17a569928ca06.jpg', 0, 15),
(39, '1420715108_2b5baaeda2c741fe035e1f4b766d7623.jpg', 0, 15),
(40, '1420715108_949f4434912dae488171d090546910ad.jpg', 0, 15),
(41, '1420715108_12bb44fe148ed6f2d15004c2d9fb4533.jpg', 0, 15),
(42, '1420715108_2e86d4c41e1cb94ea879912af3f9f730.jpg', 0, 15),
(43, '1420715108_e240969cfe283152f97a015eb0b55eda.jpg', 0, 15),
(44, '1420715108_7a5e070f55843f0844452e583b2b01a4.jpg', 0, 15),
(45, '1420715108_e90efa933d16e338029d7467a45f6063.jpg', 0, 15),
(46, '1420715108_6381cc22a5e36af893fc38e82a8ff026.jpg', 0, 15),
(47, '1420715108_3ae1e1a1336d28d663d1a7679c93d918.jpg', 0, 15),
(48, '1420715108_2f3359acdaa8fbc4e0e704577dc7103c.jpg', 0, 15),
(49, '1420715108_bc139eabbe4820e258701aeb9a3cc3a8.jpg', 0, 15),
(50, '1420715108_33a3e9448b41955773178aeca5623c8c.jpg', 0, 15);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `widget`
--

INSERT INTO `widget` (`id`, `title`, `text`, `order`) VALUES
(19, 'copyright', '© ОсОО «Травел Шоп» 2014. Все права защищены.', 1),
(39, 'about-title', 'О нас', 0),
(40, 'snipets', '<!-- Сюда вставлять код метрики и jivosite -->\r\n', 0),
(43, 'vises-title', 'Визовые услуги', 0),
(44, 'vises', '<p><br />\nПолучение визы достаточно хлопотное дело, особенно для тех, кто оформляет ее первый раз. <br />\nК оформлению виз мы относимся с ответственностью, выполняя все точно в установленные сроки.</p>\n\n<p>Оформление визы<br />\n <br />\nЕсли для въезда на территорию иностранного государства требуется виза, рекомендуется заблаговременно<br />\n(за 1-2 месяца) обращаться непосредственно за ее получением.<br />\n <br />\nСледует учитывать, что срок оформления визы в некоторых посольствах иностранных государств занимает<br />\nпорой продолжительное время, в особенности в период увеличения туристского потока за рубеж. При этом<br />\nкаждое посольство устанавливает по своему усмотрению порядок выдачи визы, в том числе интервью с<br />\nконсулом, стоимость визы и список документов, требуемых для получения визы.<br />\n <br />\nСтрогое соблюдение требований, предъявляемых посольствами и консульствами иностранных государств, к<br />\nдокументам на получение визы (размер фотографии, правильное и читабельное заполнение анкеты, оплата<br />\nконсульского сбора и др.), будет способствовать положительному и своевременному рассмотрению вашего<br />\nобращения на визу.<br />\n <br />\nНе следует оплачивать поездку до того, как получите визу. Имейте в виду, что посольства иностранных<br />\nгосударств не несут ответственность за финансовые потери, которые вы можете понести в случае отказа или<br />\nзадержки выдачи визы. Также не следует рассчитывать на то, что выкупленный билет с фиксированными<br />\nдатами поможет вам получить визу в срочном порядке.<br />\n <br />\nЕсли в страну назначения вы следуете транзитом через территорию других государств, то заранее<br />\nпроконсультируйтесь о необходимости оформления транзитных виз, включая срок их действия и кратность<br />\nдля благополучного пересечения границ.</p>\n\n<p>Граждане Кыргызстана могут въехать без визы в некоторые государства. Из этого следует, что эти страны не требуют наличия визы вовсе, или же оформляют ее на границе. Так как список данных стран постоянно меняется, требования к необходимым документам тоже изменяются, поэтому будет лучше обратиться за консультацией к нашему специалисту.</p>\n\n<p>+996 312 66 21 21 </p>\n\n<p>+996 312 66 20 20</p>\n', 0),
(45, 'belay-title', 'Медицинская страховка', 0),
(46, 'belay', '<h2 style="font-style: italic; text-align: justify;"><span style="color:rgb(0, 0, 0); font-family:arial; font-size:medium">При покупке билета наши клиенты могут оформить страховку у нас в офисе. Вам не придется после покупки билета обращаться в страховую компанию, наши квалифицированные специалисты оформят страховку и покупку авиабилета одновременно.</span></h2>\n\n<p>&nbsp;</p>\n\n<h2 style="font-style:italic; text-align:justify"><span style="color:rgb(0, 0, 0); font-family:arial; font-size:medium">Нашим партнером по страхованию является компания &laquo;Росстрах-Кыргызстан&raquo;, предоставляющий услуги комплексного страхования: медицинское страхование, страхование от несчастных случаев, страхование на случай отмены или прерывания туристской поездки, страхование багажа.</span></h2>\n\n<p>&nbsp;</p>\n\n<h2 style="font-style:italic; text-align:justify"><span style="color:rgb(0, 0, 0); font-family:arial; font-size:medium">Особенно актуально в поездках страхование от несчастных случаев (медицинское) и страхование багажа. Во время поездок иногда случаются утери багажа, и при наступлении такого страхового случая страховая компания возмещает ущерб пассажиру. При покупке тура медицинское страхование в ходит в стоимость тур пакета.</span></h2>\n\n<h2 style="font-style:italic">&nbsp;</h2>\n', 0),
(47, 'about', '<h2 style="font-style:italic;"><big><span style="font-family:trebuchet ms,helvetica,sans-serif">&quot;Travel Shop&quot; - динамично развивающаяся компания, - Ваш надежный партнер по оказанию полного спектра туристических услуг по всему миру. Сотрудничество с проверенными и опытными партнерами, обеспечивает гарантию благоприятного путешествия для наших клиентов.</span></big></h2>\n\n<p>&nbsp;</p>\n\n<h2 style="font-style:italic;"><big><span style="font-family:trebuchet ms,helvetica,sans-serif">Мы активно ищем пути расширения нашего бизнеса и стараемся найти новые возможности для этого. Мы полны новых идей и планов по развитию нашей компании и будем рады рассмотреть любые предложения о сотрудничестве.</span></big></h2>\n\n<p>&nbsp;</p>\n\n<h2 style="font-style:italic;"><big><span style="font-family:trebuchet ms,helvetica,sans-serif">Если Вы заинтересованы в сотрудничестве с нашей компанией, пожалуйста, звоните или присылайте по электронной почте Ваши вопросы, и мы свяжемся с Вами!</span></big></h2>\n', 1),
(48, 'meta-main-keywords', 'keywords', 0),
(49, 'meta-main-description', 'desc', 0);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `hotels_images`
--
ALTER TABLE `hotels_images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tours_images`
--
ALTER TABLE `tours_images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;