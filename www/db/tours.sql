-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Хост: localhost:3306
-- Время создания: Мар 03 2015 г., 05:38
-- Версия сервера: 5.5.41-0ubuntu0.14.04.1
-- Версия PHP: 5.5.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `travelshopkg`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tours`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `tours`
--

INSERT INTO `tours` (`id`, `name`, `url`, `country`, `price`, `image`, `datefrom`, `duration`, `dateto`, `hotel_id`, `type`, `placement`, `feed`, `room`, `outflight`, `backflight`, `priceinc`, `label`, `flightout`, `priceperone`, `order`, `active`, `valid`, `title`, `metatitle`, `desc`, `keyw`) VALUES
(11, 'Spice Hotel & Spa', 'spice_hotel__spa', 'Турция, Анталия, Белек', '12 450 руб', '330246fb040db1d0ac9a2adfd7bac060.jpg', '2015-01-07 06:00:00', '7', '2015-01-07 06:00:00', 19, '-', '-', 'Ультра все включено', '-', 'Пегасус Азия, Турецкие авиалинии', 'Пегасус Азия, Турецкие авиалинии', 'Страховка, перелет, трансфер, отель', 'offer', 'Бишкека', 'Индивидуальный расчет', 0, '0', '0', 'spice_hotel__spa', 'Туры в турцию', 'туры в турцию', 'туры в турцию'),
(12, 'Alila Diwa Goa', 'alila_diwa_goa', 'Индия, Гоа', '-', 'bf8cb3af97890ca33b37ac33a04af187.jpg', '1970-01-01 06:00:00', '-', '2015-01-08 06:00:00', 20, '-', '-', '-', '-', 'Айр Астана, Чартер', 'Айр Астана, Чартер', '-', 'action', 'Алматы', '-', 1, 'on', '0', 'Индия, Гоа', 'Индия, Гоа', 'Индия, Гоа', 'Индия, Гоа'),
(13, 'Bamboo House Phuket Hotel 4*', 'bamboo_house_phuket_hotel_4', 'Тайланд, Пхукет', '-', '48c3710945a55dc5375b7703be31ad50.jpg', '1970-01-01 06:00:00', '-', '2015-01-09 06:00:00', 21, '-', '-', '-', '-', '-', '-', '-', 'offer', 'Алматы', '-', 1, 'on', '0', 'Тайланд, Пхукет', 'Тайланд, Пхукет, bamboo_house_phuket_hotel_4', 'Тайланд, Пхукет, bamboo_house_phuket_hotel_4', 'Тайланд, Пхукет, bamboo_house_phuket_hotel_4'),
(15, 'Citymax Hotel Dubai', 'citymax_hotel_dubai', 'ОАЭ', '1251$', 'c40e21d1d04e2c0b73923eb0756ff9a7.jpg', '2015-02-28 04:32:00', 'ночей', '2015-03-06 04:34:00', 22, 'Стандартный тур пакет, стоимость на одного при 2-х местном размещении.', 'Двухместный номер (DBL)', 'Завтрак', 'Стандарт', 'Алматы-Дубай FZ702   16:20   19:15', 'Дубай-Алматы FZ701   09:05   15:20', '- проживание в отеле - питание на базе завтрака  - встречи и проводы в аэропорту в г.Дубай   - оформление визы   - авиаперелет Алматы-Дубай-Алматы', 'offer', 'из Бишкека', '625$', 2, 'on', 'on', 'Дубай акция Бисмарт', 'Тур Дубай из Бишкека.', 'Горящее предложение от компании Травел шоп: Тур в Дубай. Абдрахманова 135. 0 312 66 21 21.', 'Дубай, ОАЭ, Эмираты.'),
(16, 'Hali hotel 3*', 'hali_hotel_3', 'Стамбул', '1046$', '6bd753a1832b6169931f9fb3e88648b6.jpg', '2015-03-13 11:39:00', '4', '2015-02-17 11:40:00', 23, 'стандартный', 'двухместный', 'завтрак', 'стандарт', '13.03.2015', '17.03.2015', 'Авиаперелет: Бишкек-Стамбул-Бишкека, а/к «Turkish Airlines»  Трансфер: аэропорт-отель-аэропорт  Проживание в отеле  Питание (Завтраки)  Медицинские страховки', 'new', 'Бишкека', '523$', 3, 'on', 'on', 'Стамбул', 'Стамбул из Бишкека', 'Дешевые туры в Турцию из Бишкека', 'Дубай, Бишкек, Турецкие авиалинии'),
(17, 'Best Western Antea Palace Hotel & Spa', 'best_western_antea_palace_hotel__spa', 'Турция', '1400$', '98d37e0f665bf6565897ac976066a732.jpg', '2015-03-13 11:39:00', '4', '2015-02-17 11:40:00', 24, 'стандартный', 'двухместный', 'завтрак', 'стандарт', '13.03.2015', '17.03.2015', 'Авиаперелет: Бишкек-Стамбул-Бишкека, а/к «Turkish Airlines»  Трансфер: аэропорт-отель-аэропорт  Проживание в отеле  Питание (Завтраки)  Медицинские страховки', 'new', 'Бишкека', '700', 2, 'on', 'on', 'Тур в Бишкек', '', 'Дешевые туры в стамбул из бишкека.', 'Стамбул, Бишкек, Туры'),
(18, 'Comfort Inn Hotel 3*', 'comfort_inn_hotel_3', 'ОАЭ', '1265$', 'a6fa8c2e1dc4177f048da1aaca31b54d.jpg', '2015-03-02 12:00:00', '6', '2015-03-08 12:00:00', 25, 'Стандартный тур пакет, стоимость на одного при 2-х местном размещении.', 'Двухместный номер (DBL)', 'завтрак', 'Стандарт', '02.03.2015', '08.03.2015', 'Авиаперелет: Бишкек-Дубай-Бишкека, а/к «Fly Dubai»  Трансфер: аэропорт-отель-аэропорт  Проживание в отеле  Питание (Завтраки)  Медицинские страховки', 'action', 'Бишкека', '632$', 2, 'on', 'on', 'Акция Флай дубай туры из бишкека 1+1=1 авиабилеты Дубай', 'Акция Флай дубай туры из бишкека 1+1=1 авиабилеты Дубай', 'Акция Флай дубай туры из бишкека 1+1=1 авиабилеты Дубай', 'Акция Флай дубай туры из бишкека 1+1=1 авиабилеты Дубай');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `url` (`url`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
