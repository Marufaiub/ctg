-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 18, 2013 at 08:18 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ctg`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE IF NOT EXISTS `aboutus` (
  `aboutus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`aboutus`) VALUES
('SOMETHINGSOMETHINGSOMETHINGSOMETHING<div>SOMETHINGSOMETHINGSOMETHINGSOMETHING<br></div><div>SOMETHINGSOMETHINGSOMETHINGSOMETHING<br></div><div>SOMETHINGSOMETHINGSOMETHINGSOMETHING<br></div>'),
('SOMETHINGSOMETHINGSOMETHINGSOMETHING<div>SOMETHINGSOMETHINGSOMETHING<font size="6">SOMETHING</font><br></div><div><b>SOMETHING<font color="#66cc33">SOMETHINGSOMETHINGSOMETHING</font></b><br></div><div><font face="times new roman">SOMETHIN</font>GSOMETHINGSOMETHINGSOMETHING<br></div>');

-- --------------------------------------------------------

--
-- Table structure for table `admin_access`
--

CREATE TABLE IF NOT EXISTS `admin_access` (
  `admin_id` varchar(20) NOT NULL,
  `admin_password` varchar(200) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_access`
--

INSERT INTO `admin_access` (`admin_id`, `admin_password`) VALUES
('admin', 'b619ba32353fe348c2c1551c22773fe4:8E2I810P1X4Z5131QNKZ29HDDZW3B5V3'),
('odvut_sei_cheleti', '9871cbe6fff7fd8c9f348208f8c1b66e:SG02N0PCM4J4CF94S094IH581P6X968Q');

-- --------------------------------------------------------

--
-- Table structure for table `advertaisement`
--

CREATE TABLE IF NOT EXISTS `advertaisement` (
  `position` int(3) NOT NULL,
  `pic_url` varchar(500) NOT NULL DEFAULT 'null',
  `code` varchar(5000) NOT NULL DEFAULT 'null',
  `flash` varchar(500) NOT NULL DEFAULT 'null',
  `height` int(4) NOT NULL,
  `url` varchar(500) NOT NULL DEFAULT 'null',
  PRIMARY KEY (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertaisement`
--

INSERT INTO `advertaisement` (`position`, `pic_url`, `code`, `flash`, `height`, `url`) VALUES
(3, 'null', '<script type=\\"text/javascript\\"><!--\r\ngoogle_ad_client = \\"ca-pub-4998255158006126\\";\r\n/* Add Bazar - side */\r\ngoogle_ad_slot = \\"7113793774\\";\r\ngoogle_ad_width = 160;\r\ngoogle_ad_height = 600;\r\n//-->\r\n</script>\r\n<script type=\\"text/javascript\\"\r\nsrc=\\"http://pagead2.googlesyndication.com/pagead/show_ads.js\\">\r\n</script>', 'null', 0, 'null'),
(4, 'null', ' <script type=\\"text/javascript\\"><!--\r\ngoogle_ad_client = \\"ca-pub-4998255158006126\\";\r\n/* Mobile bazar - Side */\r\ngoogle_ad_slot = \\"7335458128\\";\r\ngoogle_ad_width = 160;\r\ngoogle_ad_height = 600;\r\n//-->\r\n</script>\r\n<script type=\\"text/javascript\\"\r\nsrc=\\"http://pagead2.googlesyndication.com/pagead/show_ads.js\\">\r\n</script>', 'null', 0, 'null'),
(5, 'ADD_PICTURE/5/160x600_v1.gif', 'null', 'null', 0, 'https://abhworld.com');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Beauty & Care'),
(2, 'Doctor & Health'),
(3, 'Electronics'),
(4, 'Fashion & Clothes'),
(5, 'Home Appliances & Foods'),
(6, 'Hotel/Tours & Travels'),
(7, 'Kids & Baby'),
(8, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact`) VALUES
('<br>SOMETHINGSOMETHINGSOMETHINGSOMETHING<div>SOMETHINGSOMETHINGSOMETHING<font size="6">SOMETHING</font><br></div><div><b>SOMETHING<font color="#66cc33">SOMETHINGSOMETHINGSOMETHING</font></b><br></div><div><font face="times new roman">SOMETHIN</font>GSOMETHINGSOMETHINGSOMETHING</div>\r\n'),
('<div style="text-align: center;"><h3 style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: ''Times New Roman''; line-height: normal; background-color: rgb(255, 255, 255);">Beauty Shop BD</h3><span style="color: rgb(0, 0, 0); font-family: ''Times New Roman''; font-size: medium; line-height: normal; background-color: rgb(255, 255, 255);">24/4/A (4th floor of Genius Shopping Center)&nbsp;</span><br style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: ''Times New Roman''; font-size: medium; line-height: normal; background-color: rgb(255, 255, 255);"><span style="color: rgb(0, 0, 0); font-family: ''Times New Roman''; font-size: medium; line-height: normal; background-color: rgb(255, 255, 255);">Bashundhora R/A Main Road, Dhaka-1229</span><h3 style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: ''Times New Roman''; line-height: normal; background-color: rgb(255, 255, 255);">Hotline:</h3><span style="color: rgb(0, 0, 0); font-family: ''Times New Roman''; font-size: medium; line-height: normal; background-color: rgb(255, 255, 255);">01616-224224</span><h3 style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: ''Times New Roman''; line-height: normal; background-color: rgb(255, 255, 255);">Email :</h3><span style="color: rgb(0, 0, 0); font-family: ''Times New Roman''; font-size: medium; line-height: normal; background-color: rgb(255, 255, 255);">info@beautyshopbd.com</span><br></div>\r\n'),
('<div style="text-align: center;">SOMETHING</div><div style="text-align: center;"><font color="#cc00ff">somthing</font></div><div style="text-align: center;"><font color="#cc00ff">ADD</font></div>');

-- --------------------------------------------------------

--
-- Table structure for table `curl`
--

CREATE TABLE IF NOT EXISTS `curl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `curl`
--

INSERT INTO `curl` (`id`, `name`) VALUES
(1, 'DANY'),
(2, 'DANY'),
(3, 'Ali Kawser Dany'),
(4, 'Ali Kawser Dany'),
(5, 'Ali Kawser Dany'),
(6, 'Ali Kawser Dany'),
(7, 'Ali Kawser Dany'),
(8, 'Ali Kawser Dany'),
(9, 'Ali Kawser Dany');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE IF NOT EXISTS `customer_information` (
  `customer_email` varchar(50) NOT NULL,
  `name` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `from_where_knows` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE IF NOT EXISTS `delivery` (
  `delivery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`delivery`) VALUES
('<br>\r\n<b>Notice</b>:saasaasasasasasa &nbsp;Undefined variable: delivery in <b>D:\\xampp\\htdocs\\ctg\\admin\\add_delivery.php</b> on line <b>167</b><br>\r\n'),
('SOMETHINGSOMETHINGSOMETHINGSOMETHING<div>SOMETHINGSOMETHINGSOMETHING<font size="6">SOMETHING</font><br></div><div><b>SOMETHING<font color="#66cc33">SOMETHINGSOMETHINGSOMETHING</font></b><br></div><div><font face="times new roman">SOMETHIN</font>GSOMETHINGSOMETHINGSOMETHING</div>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_product`
--

CREATE TABLE IF NOT EXISTS `home_page_product` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `product_id` int(200) NOT NULL,
  PRIMARY KEY (`id`,`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `home_page_product`
--

INSERT INTO `home_page_product` (`id`, `product_id`) VALUES
(1, 208),
(2, 212),
(5, 218),
(9, 223),
(10, 224),
(14, 228),
(15, 229),
(16, 232),
(17, 235),
(18, 237),
(19, 238),
(21, 240),
(23, 242),
(24, 243),
(26, 245),
(28, 247),
(29, 248),
(31, 253),
(33, 258),
(35, 222),
(36, 217),
(37, 233),
(38, 290),
(39, 289),
(40, 280),
(42, 292),
(44, 293),
(45, 220),
(46, 296),
(47, 295),
(48, 294),
(49, 216),
(50, 230);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(30) NOT NULL AUTO_INCREMENT,
  `customer_id` int(30) NOT NULL,
  `payment_id` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `ship_date` date NOT NULL,
  `require_date` date NOT NULL,
  `shipper_id` int(11) NOT NULL,
  `delivery_status` int(11) NOT NULL,
  `payment_status` varchar(10) NOT NULL DEFAULT 'unpaid',
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `order_detis`
--

CREATE TABLE IF NOT EXISTS `order_detis` (
  `order_id` int(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(10) NOT NULL,
  `discount` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `ship_date` date NOT NULL,
  `bill_date` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE IF NOT EXISTS `order_table` (
  `order_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` int(100) NOT NULL,
  `quantity` int(5) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `email` varchar(500) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `place` varchar(200) NOT NULL,
  `shipping_address` text NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'new',
  `token_number` varchar(100) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
  `product_id` int(11) NOT NULL,
  `picture_url` varchar(500) NOT NULL,
  `_default` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`product_id`,`picture_url`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`product_id`, `picture_url`, `_default`) VALUES
(204, 'PICTURE/6/46/204/sw-1.jpg', 'default'),
(208, 'PICTURE/2/28/208/in-1.jpg', 'NULL'),
(208, 'PICTURE/2/28/208/ins1.jpg', 'NULL'),
(208, 'PICTURE/2/28/208/ins2.jpg', 'default'),
(212, 'PICTURE/1/24/212/stepup.jpg', 'default'),
(213, 'PICTURE/1/24/213/power.jpg', 'default'),
(214, 'PICTURE/1/24/214/No Addiction.jpg', 'default'),
(215, 'PICTURE/1/24/215/Zero Addiction.png', 'default'),
(216, 'PICTURE/1/24/216/sandhi.jpg', 'default'),
(217, 'PICTURE/1/50/217/Tummy_Fit.jpg', 'default'),
(218, 'PICTURE/1/41/218/Black-E-Cigar.jpg', 'default'),
(218, 'PICTURE/1/41/218/Black-E-Cigarette.jpg', 'NULL'),
(219, 'PICTURE/1/51/219/Elink_Bracelet.jpg', 'default'),
(220, 'PICTURE/1/51/220/LVG.jpg', 'default'),
(221, 'PICTURE/2/25/221/bamboo.jpg', 'default'),
(222, 'PICTURE/2/25/222/Fair Look.jpg', 'default'),
(223, 'PICTURE/2/25/223/roopamrit-hd.jpg', 'default'),
(224, 'PICTURE/2/28/224/panaso.jpg', 'default'),
(225, 'PICTURE/2/28/225/hair curler proff.jpg', 'default'),
(226, 'PICTURE/2/28/226/kemei Hair iron.jpg', 'default'),
(227, 'PICTURE/2/28/227/kemei hair straight.jpg', 'default'),
(228, 'PICTURE/2/28/228/Keshyog.jpg', 'default'),
(229, 'PICTURE/2/28/229/Ervamatin-Power.jpg', 'default'),
(230, 'PICTURE/2/28/230/Haia Building Fiber.jpg', 'default'),
(231, 'PICTURE/1/50/231/Dr . tea ..jpg', 'default'),
(232, 'PICTURE/1/50/232/easy-slim.jpg', 'default'),
(233, 'PICTURE/1/50/233/meta.jpg', 'default'),
(234, 'PICTURE/2/25/234/Depilator.jpg', 'default'),
(235, 'PICTURE/2/28/235/lady shaver.jpg', 'default'),
(236, 'PICTURE/2/25/236/beauty care messager.jpg', 'default'),
(237, 'PICTURE/2/25/237/power perfect pore.jpg', 'default'),
(238, 'PICTURE/2/25/238/drama seta.jpg', 'default'),
(239, 'PICTURE/2/28/239/bumpit.jpg', 'default'),
(240, 'PICTURE/2/28/240/Lolane_Straight_Off_Hair_Cream1.jpg', 'default'),
(241, 'PICTURE/2/45/241/slimNleaf.jpg', 'default'),
(242, 'PICTURE/2/45/242/aire.jpg', 'default'),
(242, 'PICTURE/2/45/242/aire3.jpg', NULL),
(243, 'PICTURE/2/45/243/breast-2.jpg', 'default'),
(243, 'PICTURE/2/45/243/breast.jpg', 'NULL'),
(244, 'PICTURE/3/23/244/ab king.jpg', 'default'),
(245, 'PICTURE/3/23/245/Magnetic Exercise Bike.jpg', 'default'),
(246, 'PICTURE/3/23/246/Manual Treadmill 3.jpg', 'default'),
(247, 'PICTURE/3/35/247/BDM.jpg', 'default'),
(248, 'PICTURE/4/39/248/magic.jpg', 'default'),
(249, 'PICTURE/4/39/249/nicer.jpg', 'default'),
(250, 'PICTURE/1/50/250/slim ring-2.jpeg', NULL),
(250, 'PICTURE/1/50/250/slim ring.jpg', 'default'),
(251, 'PICTURE/2/25/251/proactive.jpg', 'NULL'),
(251, 'PICTURE/2/25/251/proactive1.jpg', 'default'),
(252, 'PICTURE/6/36/252/kemei shaver.jpg', 'default'),
(253, 'PICTURE/6/43/253/spy.pen.jpg', 'default'),
(254, 'PICTURE/6/43/254/bluetooth.spy.jpg', NULL),
(254, 'PICTURE/6/43/254/bluetooth.spy2.jpg', 'default'),
(255, 'PICTURE/6/43/255/spy.bottom.jpg', 'default'),
(255, 'PICTURE/6/43/255/spy.bottom2.jpg', NULL),
(256, 'PICTURE/5/54/256/wallet.jpg', 'default'),
(257, 'PICTURE/8/55/257/glu.gif', 'default'),
(258, 'PICTURE/6/56/258/Net-1.jpg', NULL),
(258, 'PICTURE/6/56/258/Net-3.jpg', 'default'),
(258, 'PICTURE/6/56/258/net-4.jpg', NULL),
(258, 'PICTURE/6/56/258/net-5.jpg', NULL),
(259, 'PICTURE/8/55/259/fix-1.jpg', NULL),
(259, 'PICTURE/8/55/259/fix-2.jpg', NULL),
(259, 'PICTURE/8/55/259/fix-3.jpg', 'default'),
(260, 'PICTURE/1/24/260/Love.jpg', 'default'),
(277, 'PICTURE/1/24/277/1.jpg', NULL),
(277, 'PICTURE/1/24/277/shakti.jpg', NULL),
(277, 'PICTURE/1/50/277/Shakti2.jpg', 'default'),
(278, 'PICTURE/2/45/278/rainforest vol conditioner.jpg', 'default'),
(279, 'PICTURE/2/45/279/rainforest vol sampoo.jpg', 'default'),
(280, 'PICTURE/2/25/280/Vitamin E night.jpg', 'default'),
(281, 'PICTURE/2/25/281/Vitamin E moisture.jpg', 'default'),
(282, 'PICTURE/2/45/282/Passion Fruit.JPG', 'default'),
(283, 'PICTURE/2/45/283/Satsuma Shower.jpg', 'default'),
(284, 'PICTURE/2/25/284/Vitamin E face wash.jpg', 'default'),
(285, 'PICTURE/2/25/285/Vitamin E Body Lotion.jpg', 'default'),
(286, 'PICTURE/2/25/286/Born Lippy.jpg', 'default'),
(287, 'PICTURE/2/25/287/tea Tree facial toner.jpg', 'default'),
(288, 'PICTURE/2/25/288/tea Tree facial Wash.jpg', 'default'),
(289, 'PICTURE/2/28/289/Ginger Anti dandruff.jpg', 'default'),
(290, 'PICTURE/2/25/290/Aloe Gentle Facial Wash.jpg', 'default'),
(291, 'PICTURE/2/28/291/kemei lady shaver.jpg', 'default'),
(291, 'PICTURE/2/28/291/kemei lady shaver1.jpg', NULL),
(292, 'PICTURE/1/50/292/massage-pro.jpg', 'default'),
(292, 'PICTURE/1/50/292/Massage_Pro2.jpg', NULL),
(293, 'PICTURE/1/50/293/slim24.jpg', 'default'),
(294, 'PICTURE/6/36/294/philips Shaver.jpg', 'default'),
(295, 'PICTURE/6/36/295/kemei 2in1 shaver.jpg', 'default'),
(296, 'PICTURE/6/46/296/sw-4.jpg', 'default'),
(297, 'PICTURE/6/46/297/Swing hand.jpg', 'default'),
(298, 'PICTURE/3/23/298/Twist Board.jpg', 'default'),
(299, 'PICTURE/7/14/299/005.jpg', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(30) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(40) NOT NULL,
  `category_id` varchar(20) NOT NULL,
  `sub_category_id` int(100) NOT NULL,
  `details` text NOT NULL,
  `terms` text NOT NULL,
  `price` int(10) NOT NULL,
  `size` varchar(100) NOT NULL DEFAULT 'null',
  `color` varchar(100) NOT NULL DEFAULT 'null',
  `discount` int(10) NOT NULL DEFAULT '0',
  `discount_available` varchar(10) NOT NULL DEFAULT 'no',
  `discount_duration` int(10) NOT NULL,
  `discount_date` datetime NOT NULL,
  `current_order_no` int(10) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=300 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `category_id`, `sub_category_id`, `details`, `terms`, `price`, `size`, `color`, `discount`, `discount_available`, `discount_duration`, `discount_date`, `current_order_no`) VALUES
(204, 'Electric Sewing Machine', '6', 46, 'This sewing machine have many time-saving and creative features including fully automatic 1-step buttonholes, top drop-in bobbins, drop feed, and decorative stitches.\r\nWithout the sewing machine, the world would be a very different place. Like the automobile, the cotton gin and countless other innovations from the past 300 years, the sewing machine takes something time-consuming and laborious and makes it fast and easy. With the invention of the mechanized sewing machine, manufacturers could suddenly produce piles of high-quality clothing at minimal expense. Because of this technology, the vast majority of people in the world can now afford the sort of sturdy, finely-stitched clothes that were a luxury only 200 years ago.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224  ', 4950, '', '', 450, 'yes', 60, '2013-10-28 03:27:48', 0),
(208, 'In Styler', '2', 28, 'It is not a brush. It is not a flat iron. It is not a curling iron. It is the InStylerÂ® rotating hot iron! The InStylerÂ® rotating hot iron is a totally new styling and straightening tool unlike any hair styling product ever invented! The secret to the InStylerÂ® iron lies in its rotating heated polishing cylinder, along with four rows of precision-aligned bristles. How it works: when you run the InStylerÂ® rotating hot iron through your hair, the first set of bristles gently sort and separate your hair strands. Then the rotating heated polishing cylinder gently glides over your hair, smoothly polishing, straightening, and styling each strand. Finally, the second set of bristles puts the finishing touch on your hair, leaving you with shiny, silky, hair! It\\\\\\''s truly amazing! Your hair will be shinier, bouncier and full of lift and life! Plus, the InStylerÂ® rotating hot iron does so much more than any styling tool out there. Get lift and fullness â€“ right from the root! Get a sexy flip in seconds. Straighten even the toughest, most coarse hair â€“ and still get fullness and style without the stick-straight flatness of a flat iron. Do a full style in 8 minutes â€“ and change it again in two minutes! Wrap your hair around the rotating polishing cylinder â€“ and get an amazing curl that lasts all day!  ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224  ', 2950, '', '', 0, 'no', 2, '2013-08-04 02:59:42', 0),
(212, 'Step Up', '1', 24, 'Step up height increasing product Increase your real height by up to 6 Inches!\r\nIncrease Height & strength.\r\nEnhances Memory.\r\nEnhances Energy.\r\nEnhances focal point.\r\nEnhances strength.\r\nIncreases Bone Mass and Density.\r\nThickens Cartilage, Ligaments, and Tendons.\r\nHerbal Body Growth is an Amazing Formula.\r\nPeople of all ages, gender, and ethnicity are growing taller! ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224    ', 3950, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(213, 'Power Prash', '1', 24, 'Power Prash is an Ayurvedic medicine which claims to treat men and women facing problems in their endeavor to have perfect physical relations. Though, it proclaims that the formula is effective for both men and women, but in reality it is mostly being used by men.\r\nBasically, Power Prash is a dietary supplement for men and women who are suffering from any problem which is holding them back when it comes to making physical relationship like premature ejaculation & impotency.\r\nPower Prash is a 100% Ayurvedic product and contains ingredients which are known to treat this type of problem.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 4450, '', '', 250, 'yes', 35, '2013-10-28 03:22:05', 0),
(214, 'No Adiction', '1', 24, 'No Adiction Powder is a mixture of 17 precious Ayurvedic herbs. It contains kudzu (vidarikand) which and is used worldwide for alcoholism and widely researched for its benefits. It has been established overtime as remedy to cure addiction from alcohol,cigarette,tobacco and other addicting substances with guaranteed results and no side effect.It is a 100% herbal product which has no side effects. It helps in curing addiction to any health condition of the person, this powder can be taken over long period of time,providing only healthy benefits.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 4450, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(215, 'Zero Addiction', '1', 24, 'Zero Addiction is an anti-addiction preparation utilizing the benefits of selective herbs, which are further processed as defined in Ayurveda to induce reluctance towards habit-forming mood-altering substances. The herbs used in Zero Addiction detoxify the body for toxic materials deposited in the system from prolonged use of any such substance. Zero Addiction is a potent remedy to stop and recover from substance abuse without facing the extreme withdrawal symptoms..\r\n<b>How to use:</b> Take 2-3 grams of Zero Addiction powder and swallow it with the help of water early in the morning. Repeat the dose in the evening in same quantity. If you want to use Zero Addiction on an addict without him knowing, it can be mixed and eaten with normal food too as it is almost tasteless as well as odorless.\r\n<b>Precautions while using:</b>People with severe heart ailments or any other major disease should use Zero Addiction only after consulting their physician. Pregnant or nursing females should avoid using it. If there is excessive vomiting on using Zero Addiction, the doses should be reduced. If there is no change still, then it should be stopped completely.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 4450, '', '', 0, 'no', 40, '2013-10-04 23:48:13', 0),
(216, 'Sandhi Sudha Plus', '1', 24, 'Sandhi Sudha Plus is an effective Ayurvedic treatment oil that has been used since ancient times to get relief from knee pain, all joint pain & arthritis. It is made from very rare Herbs and Medicinal plants found in the Himalayas and gently penetrates through the different layers of skin and increases the flow of joint fluid, repairs and strengthens the damaged tissues to make your joints strong and give quick relief from pain & swelling.\r\n<b>How to use:</b> Take a little Sandhi Sudha Plus oil and massage the affected area with your fingertips in a circular motion. Do this for 3 â€“ 7 minutes to get immediate results. If the pain is severe, massage the affected area at least 3-5 times daily. For best results, give hot fomentation to the affected area after massage. Sandhi Sudha Plus solves all your joint pain problems and keeps you fit to enjoy every moment of your life. package contains 6 bottles of 100ml each (6 months usage).\r\n<b>Benefits:</b> Get relief from pain in knees, body pain, back pain, shoulder pain etc. Sandhi Sudha Plus offers you immediate relief. By using Sandhee Suddham Plus, your body joints become stronger. For people suffering from knee pain, shoulder pain, back pain, cervical spondylitis, and arthritis, Sandhi Sudha Plus gives magical results. For women with back pain this is an extremely beneficial remedy. It is an effective Joint Pain relief Ayurvedic oil. It\\''s 100% natural and has no side-effects.\r\n<b>Indications:</b> Joints pain, muscle pain, strain, sprain, swelling, Osteo Arthritis, Lumbago, Sciatica, Cervical and Lumbar Spondylosis. Useful in treating Pain and Inflammatory conditions in wrist, elbow, back, ankle, knee, hip, shoulder and neck.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 4450, '', '', 0, 'no', 16, '2013-10-04 23:33:37', 0),
(217, 'Tummy Fit', '1', 50, 'Made from 40 herbs fused with solar properties which are completely herbal. It has the power to penetrate & reduce inches.\r\nTummy slim fit oilâ„¢ is the most effective product for inch loss on tummy. \r\nThe key properties for the product are: Removes cellulite the most stubborn fat cell produced by skin. Effective inch loss, permanent in nature. Aids in reducing the tummy.\r\n<b>How to Use:</b> Apply 5-10 ml tummy slim fit oilâ„¢ ayurvedic medicated oil, by massaging it on your stomach for at least 8-10 minutes so that it effectively penetrates the skin and starts attacking & reducing the fat, but also maintains the tautness of skin 7 does not allow it to loosen. For best result it is important that you do not eat anything till 20 minutes after application of tummy slim fit oilâ„¢.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 4450, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(218, 'Black Electetronic Cigarette', '1', 41, 'High Quality & Best Price.\r\n1PC cartridge can have 100-150 puffs.\r\nFull battery can support 2 cartridges.\r\nDiameter: 8.5mm\r\nLength: 96mm\r\nGross Weight: 65g     \r\nBattery: 150mA\r\n<b>Contents of Electronic Cigarette:</b> Battery:1PC, Cartridge:10PCS, USB:1PC, Manual:1PC', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1350, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(219, 'Elinks Bracelet', '1', 51, 'Elinks Health Bracelet which will protect your Brain stroke, Heart Attack, Lever & kidney protection, Develop Brain cells, Improve Blood cells, Improve Blood circulation, Prevent Headaches & Body aches, Prevent muscle & joint pain, Diabetes control, High blood pressure control, Improved hormone, Improved body & sex energies, Stress & hypertension control, Migraine & depression control.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 2950, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(220, 'LVG Bracelet', '1', 51, '2 Bracelet & 2 Locket.\r\nTotally Family Pac.\r\nLVG Bracelet may help to: remote muscle relaxation, relieve joint and muscle pain, relieve shoulder pain, relieve back ache, headaches and neck ache, relieve insomnia, relieve jet lag, elieve fatigue.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 3950, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(221, 'Anahai Bamboo Mineral', '2', 25, 'Details: Anahai Bamboo charcoal can produce anion and release far infrared ray whose wavelength is suitable for human bodyâ€™s absorption; balance the collagen protein and hyaluronic acid content; improve skin gloss; strip melanin and make skin white immediately. \r\nBamboo charcoal mineral content is very rich and suitable to all kind of skin.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 6450, '', '', 450, 'yes', 45, '2013-10-28 03:20:21', 0),
(222, 'Fair Look Cream', '2', 25, 'Fair Look lotion Ayurvedic Preparation for Fair and Beautiful skin. Fair Look is an anti marks fairness cream.\r\nUsed For: Removing Anti marks from your skin, dark spots on face, pimples on face, dark circles under eyes etc.\r\nPrecaution: Test it on your hand along with sediment before applying it on your face.\r\nEach Pack Contains: 1) Fair Look Fairness Lotion 2) Fair Look Sunscreen Lotion\r\nFair Look Fairness Lotion: Clean Your Face with rose water. Mix raw tomato juice with Fairness Lotion. Apply over face and neck, leave on for 15 minutes. Rinse the application with cold water. For best result apply twice a day. Morning and at night before going to sleep.\r\nFair Look Sunscreen Lotion: Wash your skin with gentle soap and water. Apply the sunscreen lotion spreading it to all exposed areas, before going out in the sun. For External use Only.\r\nPrecaution: Test it on your hand before applying it on your face. Product not recommended for pregnant ladies and children below 12 yrs. Product not recommended for people with allergic skin.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 3450, '', '', 0, 'no', 30, '2013-07-04 18:00:47', 0),
(223, 'Roop Amrit', '2', 25, 'Roop Amrit is a pure ayurvedic formula for fair & beautiful skin. It combines the ancient secrets for fair and pimple free skin and manufacturersâ€™ expertise to unlock the secret of glowing/radiant fairness and beauty.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1050, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(224, 'Panasonic 2in1 Hair Straightener', '2', 28, '2 way styler curler & straightener.\r\n100% Aluminum sheet.\r\nFor all hair types.\r\nPTC HEATER with fast heat up.\r\nSuper straight styles,never stick to the hair.\r\nShips from and sold by Deputi-Japan..\r\nTemperature Control 130-210.\r\n<b>Weight:</b> Approx. 350g\r\n<b>Size:</b> 29.0(H) x 4.5(W) x 4.2(D) cm ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1650, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(225, 'Hair Curler Professional', '2', 28, 'Instant Heat up time.\r\nFor all Hair Type.\r\nShines hair.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1050, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(226, 'Kemei Hair Iron', '2', 28, 'Create 4 looks with 1 tool. STRAIGHT, TIGHT CURLS, LOOSE CURLS, WAVES \r\nCeramic Plates.\r\n120-220 Power.\r\nSaloon High Heat.\r\n30 Second Heat.\r\n30 Heat Settings.\r\nAuto Shut Off.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1450, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(227, 'Kemei Hair Straightner', '2', 28, '100% Solid Ceramic Plates.\r\nTemperature:140c-200c.\r\nFor all Hair Type.\r\nPTC Heater With Fast Heat Up.\r\nSuper Straight Styles,Never Stick to The Hair .', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1250, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(228, 'Keshyog', '2', 28, 'Use of Keshyog Herbal Oil regularly and in the prescribed way for 8-10 weeks helps in the growth of new hair.\r\nIf used properly Keshyog Herbal Oil starts arresting hair fall within 3-4 days.\r\nRegularly and proper usage of Keshyog Herbal Oil completely stops dandruff within a week.\r\nKeshyog Herbal Hair Oil when applied properly gives shiny black hair instead of premature rough grey hair starting after 2 months.\r\nKeshyog Herbal Hair Oil also stops the split-hair end problem within 2 weeks.\r\nKeshyog Herbal Hair Oil in certain cases has also proved effective in developing sharp memory.\r\nDaily and proper usage of Keshyog Herbal Oil will induce sound sleep in person suffering from sleeplessness caused by high blood pressure.\r\nKeshyog Herbal Oil is a completely ayurvedic treatment that cause stress relief when you apply it after a hard and long day at work.\r\nVery light handed patting of Keshyog Herbal Oil just at the center of your head shall bring relief in severe cold and cough.\r\nKeshyog Herbal Oil helps in avoiding blister formation if applied immediately over the burning area of the body.\r\n<b>Precautions:</b> Stay away from any chemical based shampoo and hair oil during the period of this treatment. Avoid direct sunlight over the affected area as much as possible at least while under the treatment. Light cap is advised to be worn during the tenure of the treatment. Donâ€™t use any other hair treatment along with Keshyog. This treatment is completely herbal and Ayurvedic in the nature with no side effects. ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1950, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(229, 'Ervamatin Power', '2', 28, 'Ervamatin power is a Capillary Lotion which has in its composition many phyto-therapeutic agents known by World experts that confirms its ingredients found only in AMAZON RAIN FOREST. Its advantages are the combination of all pure ingredients and the workings of each one.\r\nErvamatin Power is a natural product, created exclusively for the treatment of hair loss. It is used by men and women of all ages and with different types of capillary problems. All herbs used in this formula is recognized by CTFA (The Cosmetic Toiletry and Fragrance Association) located in New York - USA. Accepted by The World Health Organization.\r\n<b>Tips:</b> Use a neutrum or natural shampoo. To keep the beauty of hair is necessary to have a healthy alimentation.\r\n<b>Advertence:</b> The continue use of hats and caps, also to wash hair everyday can provoke big damage to hair root. Once hats and caps bloken the necessary oxygen from hair follicle, weaking the hair roots and provoking hair loss.\r\n<b>Note:</b> Washing hair everyday can make the root become very weak, also provoking the hair loss.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1450, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(230, 'Hair Building Fiber', '2', 28, 'New Stronger Formula For Hair Growth.Recommended By The Hair Experts.\r\nHair Solution for longer, growth, stronger, healthy & black Hair\r\nContents: One bottle hair building fiber & one bottle hair building liquid. ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224 ', 4450, '', '', 0, 'no', 10, '2013-09-23 10:15:55', 0),
(231, 'Dr.Tea', '1', 50, 'Our Dr. Tea Indiaâ„¢ is an Ayurvedic Herbal Tea which help to cleanse the body of harmful fats and disease causing free radicals while promoting healthy weight loss. The Dr. Tea Indiaâ„¢ Weight Loss System is the total weight loss program complete with 100% NATURAL & SAFE weight loss products that total Fitness formula. Feel young and energized again with a healthy weight loss solution that works. It contains many kinds of vitamins, food fibers, mineral substances and micro elements. It can distinctly decrease the subcutaneous fat, waistline and hip line without changing the energy, and has no influence on the body health. It can be effective on the first day of using it, lose weight, and change the obesity constitution.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1050, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(232, 'Easy Slim Tea', '1', 50, 'Act Like a natural magnet to attract fat.\r\nStimulates the body\\\\\\''s natural metabolism.\r\nControls appetite naturally and makes it easier to eat the right foods consistently.\r\nAids in the absorption to fat and in overall digestion.\r\nInhibits bad cholesterol and boosts good cholesterol.\r\nAids in the process of weight loss and weight management.\r\nCompletely safe, Ayurvedic Herbal Tea contains no banned substances and has no known side-effects.\r\n<b>Usage Instruction:</b> Dip one sachet in a cup of hot water(100ml approx) for 2-3 minutes and shake well. For better results,avoid sugar and milk.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1050, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(233, 'Meta Slim', '1', 50, 'Meta Slim is a proven weight loss treatment which uses the most essential of naturals extract to combat this deadly problem. By using Meta Slim regularly the excess of fat/weight can be reduced and the body can gain the desired shape. This also helps in keeping in controlling on ailments such as High Blood Pressure and diabetes.\r\nMeta Slim works competently with your body\\\\\\''s physiology.\r\nMost Effective On obesity, indigestion, gastric problems, constipation, stomach ache, high Blood Pressure etc.\r\nThere are no special prerequisites for taking this medicine, for maximum results however, take simple and easily digestible food. Avoid fried foods and try to exercise regularly.\r\n<b>Meta Slim work in three ways:</b> 1) Regular use of Meta Slim breaks down and melts the fat accumulated in your body rapidly. 2) Meta Slim will suppress the untimely and extra appetite and will regulate the digestive system, turning food into energy and not into fat. 3) With the special components used in it, the body looses the tendency to make fat and will result in controlling obesity problem. ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 4450, '', '', 0, 'no', 17, '2013-10-04 23:34:05', 0),
(234, 'Depilator', '2', 25, 'Automatic Epilator System.\r\nFeatures Smart-light.\r\nBattery Operated.\r\nSmall and Compact.\r\nLeaves Skin Silky Soft and Smooth.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 950, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(235, ' KEDA Lady Shaver', '2', 28, 'Safe shaving off all body parts.\r\nRemoves unwanted hair from legs,face,underarms,bikini line and other sensitive areas.\r\nCan be used anywhere effective for up to six weeks at time.\r\nLady shave for underarms and legs. ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1250, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(236, 'Beauty Care Massager', '2', 25, 'Cleaning the face to prepare for applying creams and lotion.\r\nExfoliating of dead skin cells to reveal a roseate,youthful skin.\r\nMassage and application of cream to better penetrate the skin and keep it nourished and hydrated.\r\nRemoving hard cell under foot or elbow.\r\nOperated by 2AAA batteries (not included) & Have 5 accessories.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 950, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(237, 'Power Perfect Pore', '2', 25, 'Ergonomically designed suction cup.\r\nRemove black heads without hurting your skin with head squeezing.\r\nComplete set 4 interchangeable attachment and with mist function.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1050, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(238, 'Derma Seta', '2', 25, 'The Ultimate Body Treatment System.\r\nPainlessly removes hair.\r\nExfoliafes dry skin.\r\nCompact and easy to store.\r\n9 accessories for a full body spa treatment.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 2950, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(239, 'Bumpits', '2', 28, 'Perfect volume and Style, Effortlessly in seconds!!\r\nBumpits self gripping leave-in volumizing hair inserts give you instant volume and let you enjoy feeling confident and BEAUTIFUL, like you just stepped out of a professional salon!!', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 550, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(240, 'Lolane Straight Off', '2', 28, 'Strong formula. \r\nLolane Straight Off Hair straightening cream with protein conditioner premium quality for professional use only made by Thailand. ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1250, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(241, 'Slim & Lift', '2', 45, 'Slim N Lift is specially styled by the Slim N Lift designers. Perfect for all shapes, sizes, ages and activities.\r\nSlim N Lift is the bra that targets all the trouble areas we women want to fix: Spilling out of cups that are too small\r\nBulging under the arms, Embarrassing back fat, Wires that pinch, Straps that fall down, Hooks and clips that dig in\r\nUncomfortable bra inserts and padding.\r\nSlim N Lift solves all of these problems and more! So you can always look and feel your very best.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1450, '', '', 0, 'no', 27, '2013-09-03 07:50:14', 0),
(242, 'Aire Bra 3 pcs in 1 Pack', '2', 45, 'Three bras for the price of one! You will receive the bra in Pure White, Midnight Black and Sexy Nude. That is three bras for the price of one!\r\nAire Bra won\\''t stretch out and is the most versatile and comfortable bra you\\''ll ever own.\r\nSay goodbye to embarrassing back fat, the wonder weave extra oomph band gives you support without the suffering and never rolls up!\r\nWide straps fit perfectly and never slip off.\r\nFull coverage cups custom fit to any size, keeping everything in place.\r\nAire Bra saves the hassle of spending hundreds of dollars on bras with uncomfortable under wires and straps that don\\''t fit and can make you look lumpy. With the Aire Bra you know that you\\''re going to look and feel your best!\r\nThe Aire Bra is also a stylish fashion accessory! No matter where you work or where you go! Layer it for different looks! You can even sleep in Slim N Lift Aire Bra for proper support, day and night.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 3450, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(243, 'Breast Firming Gel', '2', 45, 'Expands the cellular substructure of the female breast. Increase breast size, developing a new satisfying feeling of fullness. Help to firm, shape, tone and enlarge the breast area and improve the tissues of the breasts.\r\n<b>Ingredients:</b> Pueraria mirifica, Combretaceae leaves, Fagaceae walnut, Perfume, Aqua.\r\n<b>Direction:</b> Apply on breast area, massage for 5-10 minutes, morning and evening.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1950, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(244, 'TVC AB King Pro', '3', 23, 'The Ab King Pro is designed to give you flat, sexy, rock-hard abs faster and easier than any other product on the market. In just 3 minutes a day combined with regular exercise and a sensible diet you will tighten your stomach and reduce the love handles in DAYS, not months. Features: 1. Other machines only give you a 90 degree range of motion, but the Ab King Pros secret is its amazing 200 degree range of motion that targets your upper, lower, middle abs and obliques all at once,on the way up and down. 2. 3. offers proper neck and back support, keeping you in perfect form. 4. offers different ranges of motions for different levels of resistance. 5. It is perfect for every fitness level, it has levels for the beginner to the most fit exercise buff. 6. It folds for easy storage under your bed. 7. It has a fully adjustable sturdy frame, thick padding for superior support and a rolling wheel action, that allows for a smooth consistent motion. ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224 ', 5050, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(245, 'Magnetic Exercise Bike', '3', 23, 'TVC Fold-able Magnetic Exercise Bike Keep fit lose weight increase endurance and save space all at the same time with the TVC Fold-able Exercise Bike. Constructed of durable steel Adjustable high density foam padded seat Adjustable continual resistance Easy to read display shows speed distance time and calories burned Folding frame offers easy and convenient storage Counter weighted pedals feature adjustable foot straps 300-pound weight capacity. Your family health as their highest priority Fitness strives to develop the most pioneering fitness equipment available.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 10450, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(246, 'Manual Treadmill 3', '3', 23, 'TVC 3-way Manual Treadmill - Twister, Sit-up, Running.\r\n150 kg maximum user weight.\r\nFold-able and movable.\r\nDigital features time, speed, distance. ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 12450, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(247, 'Dolphin Body Massager', '3', 35, 'Dolphin Massager a powerful hand-held massager with three attachment options designed to stimulate pressure points and relax stiff muscles and nerves. The result is instant rejuvenation and extreme relaxation with enhanced blood circulation. High Frequency points can massage the temples and other brain points to eliminate uncomfortable feeling of drowsiness and fatigue poor memory and appetite.\r\nStimulates Nerve Ends By Reflexology Therapy.\r\nPromotes blood circulation and body metabolism.\r\nApplicable for physiotherapy of all the parts of the body.\r\nRelaxes muscles from tiredness and the pain of nerve.\r\nWith speed adjusting function.\r\nTwo Massage Adjustment for your selection.\r\nStreamlined design light and nice.\r\nDolphin style can massage every part of our body.\r\nReduces pains caused by fatigue or rheumatism.\r\nEliminates spasm in the shoulder and Lower Back.\r\nRelaxes the muscles and eliminates pain caused by rigorous sporting activity.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1250, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(248, 'Magic Bullet (Blender)', '4', 39, 'The Magic Bullet Blender replaces a food processor, blender, electric juicer and coffee grinder while occupying only the space of a coffee mug. It stays handy on your counter top for instant meals and snacks.\r\nMagic Bullet Blender is so easy to operate! The Magic Bullet Blender has no buttons to push. Just load the ingredients, place the Magic Bullet Blender on the power base and press down. In seconds youâ€™ll have spaghetti sauce, chopped onions, salsa, minced garlic, grated cheese, soup, chicken salad, smoothies, shakes and more. To heat or chill, simply place the Magic Bullet Blender cup or mug in the microwave, refrigerator or freezer.\r\nMagic Bullet Blenderâ€¦so incredibly fast!Mince garlic, chop onions or grate cheese in only 3 seconds.Make salsa, guacamole or chicken salad in only 5 seconds.Whip up milk shakes and smoothies in only 7 seconds.Mix sauces, soups and omeletâ€™s in only 10 seconds.\r\n1 x Magic Bullet High Torque Power Base\r\n2 x Blades â€“ 1 cross, 1 short\r\n2 x Bullet cups â€“ 1 tall, 1 short\r\n2 x Tops â€“ 1 shaker, 1 steamer\r\n2 x Stay fresh re-sealable lids\r\n4 x Party mugs\r\n4 x Rings\r\n1 x Magic Bullet blender with lid\r\n1 x Magic Bullet juice extractor\r\n1 x recipes & user guide  ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224 ', 2950, '', '', 150, 'yes', 33, '2013-10-28 04:08:18', 0),
(249, 'Nicer Dicer Plus', '4', 39, 'Nicer Dicer With Plus you have a kitchen helper, who will shorten the cooking time from start of preparation to the serving of the meal tremendously. Food must be cut into cubes, sticks, strips, quarters or eighths - the costs not only time but you need countless kitchen tools (knives, bowls, cutting boards, etc.) that can not always at hand and plenty of storage space in the kitchen to complete. Nicer Dicer with the Plus is no longer a problem - you have everything in one handy set! Simple and space saving as it gets! ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1250, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(250, 'Slimming Magnetic Toe Rings', '1', 50, '2 X Silicone Magnetic Body Toe Ring Keep Slim Lose Weight\r\nMade from soft & non-allergenic silicone material.\r\nEach ring is 2.5cm in diameter and is translucent white in color.\r\nThe rings are soft and comfortable to wear and are virtually invisible.\r\nPlease note that these rings should be used as part of a weight loss and exercise program.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 750, '', '', 0, 'no', 20, '2013-08-19 07:22:33', 0),
(251, 'Proactiv 3 Step System', '2', 25, 'Number #1 Acne Treatment Brand in America.\r\nProactiv 3 Step Systems are 1.Renewing Cleanser. 2.Revitalizing Toner 3.Repairing Treatment.\r\n<b>Renewing Cleanser:</b> Oil-free, soap-free medicated exfoliating cleanser. Kills acne-causing bacteria with U.S. prescription-grade benzoyl peroxide (BPO). Ultra-fine micro-crystal BPO penetrates pores fast while being gentle on the skin. Tiny, round exfoliating beads gently remove impurities, excess oil and dead skin cells to help prevent clogged pores.\r\n<b>Revitalizing Toner:</b> Refreshing alcohol-free toner refines and purifies pores. Glycolic acid exfoliates dead skin cells to help keep pores unplugged. Botanical-rich formula soothes and hydrates acne-prone skin.\r\n<b>Repairing Treatment:</b> Feather-light, invisible medicated treatment kills acne-causing bacteria. Features U.S. prescription-grade benzoyl peroxide (BPO) as an antimicrobial. Ultra-fine micro-crystal BPO penetrates pores fast while being gentle on the skin. ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224   ', 7450, '', '', 0, 'no', 25, '2013-08-19 07:07:45', 0),
(252, 'Kemei 5 in 1 Shaver', '6', 36, 'ON/Off switch with integrated lock.\r\nBeard / Moustache Trimmer.\r\nStainless Steel Blades.\r\n5 Cutting Lengths.\r\nMoustache Comb.\r\nCleaning Brush.\r\nSleek and Stylish Ergonomic Design.\r\n<b>High-speed drive:</b> Linear motor drive.\r\n<b>Motor Speed:</b> 10,000 RPM.\r\n<b>Use days:</b> 14 days (use for about three minutes during a day once).\r\n<b>Chargeable battery kind:</b> Lithium-ion battery.\r\n<b>Voltage:</b> AC100-240V.\r\nMens Electric Shaver with Precision Stainless Steel mesh Blades.\r\nSmart toil unique foil pattern captures hairs growing from different directions for a closer shave.\r\nSilver Pd alloy motor of high rotational speed.\r\nOne time electric charge can be continuously shaved for 40 minutes. ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224  ', 1650, '', '', 150, 'yes', 25, '2013-10-28 03:27:09', 0),
(253, 'Pen Spy Camera', '6', 43, '<b>Dimensions:</b> 15cm x 1.5cm x 1.5cm (L x W x Diameter).\r\nDigital Camera Pen Camcorder supports USB 2.0\r\nBuilt-in rechargeable lithium-ion battery.\r\nAdapter type: USB adapter charging cable.\r\nYou can use the Digital Camera Pen as a voice recorder.\r\nThe Digital Camera Pen contains the smallest pin-hole camera made especially for covert use.\r\nDigital Camera Pen has an easy to use one touch record button allowing you to record any evidence instantaneously.\r\n<b>Specifications:</b> Video Format: AVI, Video Resolution: 1280*960 VGA, Video Frame Rate: 30fpsÂ±1fps, Charging Voltage: DC-5V, Storage: 8GB\r\n<b>Package:</b> 1 Spy Pen camera Recorder, 1 USB cable   ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224   ', 4450, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `product` (`product_id`, `product_name`, `category_id`, `sub_category_id`, `details`, `terms`, `price`, `size`, `color`, `discount`, `discount_available`, `discount_duration`, `discount_date`, `current_order_no`) VALUES
(254, 'Bluetooth Spy Camera', '6', 43, 'The Bluetooth Headset Spy Camera looks like an innocent headset, yet records high quality video or photos without appearing obvious.\r\nThe Bluetooth Headset Spy Camera is a lightweight spy camera that is hidden inside a non-working Bluetooth headset.\r\nThe Bluetooth Headset Spy Camera easily capture video or still photos at the push of a button. Your recordings stays sharp and clear, even when the you are moving or using the camera in low light.\r\nThe Bluetooth Headset Spy Camera has a rechargeable Lithium battery and 4Gb internal storage that gives you up to 2 hours of recording.\r\n<b>Specifications:</b> 4GB Internal Storage, 640 X 480 Resolution, Photo Resolutions: 1280 x 1025 (.jpg), Battery life 1-2 hours; Rechargeable Lithium Battery, Video Recording And Snap Shot', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224   ', 6950, '', '', 0, 'no', 1, '2013-09-08 03:19:31', 0),
(255, 'Button spy camera', '6', 43, '<b>Specifications:</b> Video Format: AVI, Video Resolution:640x480, Video frame rate: 30 FPS, Picture format: JPG 1280x960, Image ratio: 4:3\r\n<b>Storage support:</b> 16GBï¼ˆthe memory card is not includedï¼‰.\r\nSize: length: 60mm x width: 23mm x height: 17.3mm\r\n<b>Package:</b> 1 Mini Button Spy Camera DVR, 1 USB Wire, 1 Manual.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 4950, '', '', 0, 'no', 1, '2013-09-08 03:19:48', 0),
(256, ' Aluminum Security Credit Card Wallet', '5', 54, 'Amazing wallet blocks RFID scanning on your credit cards to prevent identity theft.\r\nTough solid aluminum wallet keeps your credit cards safe.\r\nOpens to reveal a six-pocket accordion file to hold credit cards, ID, cash and more.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 950, '', '', 150, 'yes', 32, '2013-10-28 03:25:29', 0),
(257, 'TVC Glu Check', '8', 55, 'Product Of KOREA.\r\n1 year warranty.\r\nTakes only 5 seconds to get exact results.\r\n10 Needles + 25 Tests Strips r absolutely FREE with the package.\r\nRecalls 50 test results from memory.\r\nAttractive Design, No cleaning and wiping.\r\nStripes & Needles r available all over the Bangladesh.\r\n<b>More accessories with the package:</b> Needle Pen, 3V Lithium battery, User Book & Bag.\r\n<b>Accessories Price:</b> 1 Box (25Pcs) Test Stripes = 450tk, 1 Box (50Pcs) Needles = 100tk.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1750, '', '', 0, 'no', 1, '2013-09-08 03:18:17', 0),
(258, 'Mini Netbook/Laptop', '6', 56, 'Place of Origin: Guangdong China (Mainland).\r\nCPU: wm 8850 1.25G.\r\nOS: windows CE.\r\nRAM: 512 MB DDR3.\r\nInternal ROM: 4GB (Support External 128 GB).\r\nLCD Size: 7incTFT High Clear Digital Screen.\r\nAUDIO: HP audio built in speaker and external microphone.\r\nKey Board: Standard 800 and external key board support.\r\nUSB: 2 USB port.\r\nPointing Device : Integrated.\r\nTouch Pad: left key, right key.\r\nLAN: 10/100 Ethernet access.\r\nWIFI: IEEE 802.11b/g 3G : Support External 3G (Optional).\r\nCard Port: 2 in 1 MMC/SD Card\r\nWeb Cam: Yes\r\nOther Ports: RJ45, Microphone-in, Headphone, DC Port, HDMI \r\nBattery Working Time: Around 4HRS\r\nAdapter : AC 100-240V, DC 9V, 1.5A\r\nInternet Use: WiFi and Broadband\r\nAccessories : Charger, Manual Book, Box \r\nWarranty : 1 Year (Warranty will not cover physical damage)   ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224   ', 8450, '21.3cm*14cm*3cm', 'Black & Pink', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(259, 'Fix It Pro', '8', 55, '<b>Short Description:</b> Fastest scratch repair filler and sealer that safely repairs scratches from your vehicle surface quickly and easily. Fix It Pro is the fastest scratch remover that safely removes scratches, dings and nicks from your car finish quickly and easily! Fix It Pro is a fast-acting formula that uses millions of microscopic polishing agents to penetrate the scratch and restore your car\\''s original shine and finish in just seconds!\r\n<b>General Feature:</b> Just 3 Easy Steps 1.Apply Fix It Pro 2.Buff into the scratch or scuff 3.Then just wipe it away!\r\n<b>Features/Benefits:</b> Fix It Pro works on any car, in any color. Fix It Pro penetrates deep into the pores of the surface, to restore your car\\''s original color and shine. Clear Coat Scratch Repair Filler & Sealer UV Sunlight Activated, Non-Toxic, Water Resistant & Permanent, Odorless, Works on all Colors.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 1450, '', '', 350, 'yes', 28, '2013-10-28 04:10:27', 0),
(260, 'Love Forever', '1', 24, 'Love Forever comes packed with very very special Love Forever Prash, Love Forever Sex Power Capsules and the ultimate Love Forever Lotion Oil.\r\n<b>Love Forever Sex Power Capsules:</b> Love forever sex power capsules will give you extra power, unlimited stamina and extra strength for longer sex.Now a days hectic and busy life style cause mantel stress and tension within the individual which leads to the deficiency or lack of physical intimacy. It eventually effects your sex life and destroys your relationship. Love forever sex power capsule is an inherent gift presented by nature which helps in increasing libido and revives you out of mental and physical stress.It is formulated from safed musli which is widespread known as best Indian Aphrodisiac. As being formed from the best ayurvedic herbs and extracted under the sharp eyes of great scholars of ayurveda, it is 100 % safe and effective herbal medicine which will start revealing its effects from the very first day people use it.\r\n<b>Love Forever Lotion:</b> Love Forever Lotion is a unique personal lubricant which is formed for all those who are facing problems like premature ejaculation, erectile dysfunction, impotency, physical weakness and problems with the size of their penis .It can also be useful to females. They will use it as a lubricant which ignites their lost desires. With the use of this lotion, men and women both get heat up and feel the ultimate passion and intimacy for long time.they get charged up and ready to get lost in love forever. It is 100% herbal unlike other chemical products with having no side-effects.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224', 4450, '', '', 0, 'no', 12, '2013-10-28 07:35:56', 0),
(271, '', '', 0, '', '', 0, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(272, '', '', 0, '', '', 0, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(273, '', '', 0, '', '', 0, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(274, '', '', 0, '', '', 0, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(275, '', '', 0, '', '', 0, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(276, '', '', 0, '', '', 0, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(277, 'Shakti Prash', '1', 24, 'Shakti Prash is a Dietary Supplement beneficial for Erectile Dysfunction. This is one of the best Herbal Remedies for this and works a impotence cure. Shakti Prash is a breakthrough spray formula in the natural sexual enhancement solutions worldwide. It basically increases luteinizing hormone (LH) levels in the human body. LH is naturally produced by the pituitary gland that plays a significant role in stimulating testosterone production inside. Studies have proven that a good level of LH helps improve your sex life from within safely.\r\nShakti prash has got all that a man and women want from a sex supplement. It is a successful and unique formulation of rare and precious herbs that works as a natural sex enhancer. Shati Prash resolves all of your sex related problems and makes your married and sex life more enjoyable and fulfilled. Shakti prash works as an herbal tonic that is as good for overall health as it is for sex related problems. \r\nIt gives you:- (1) Extra power & stamina (2) Extra time for longer sex act (3) Extra strength for longer erection (4) Extra Pleasure every time.\r\nIt is Best Remedy for Erectile dysfunction and pre mature ejection.  ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224 ', 4450, '', '', 0, 'no', 12, '2013-09-24 08:47:07', 0),
(278, 'Rainforest Volume Conditioner(UK Origin)', '2', 28, 'The lightweight conditioner is specially developed for fine hair. Our Rainforest Volume range helps boost volume without weighing hair down.\r\nLightweight conditioning.\r\nGives volume.\r\nLeaves hair looking shinier.\r\nEco-conscious formula.\r\nNo silicones, no parabens and no colorants.\r\n400 ml.\r\nProduct of <b>The Body Shop</b>, Imported from UK.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224. ', 1100, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(279, 'Rainforest Volume Shampoo (UK Origin)', '2', 28, 'The shampoo is specially developed for fine hair. Our Rainforest Volume range helps boost volume without weighing hair down.\r\nLeaves hair looking fuller and shinier.\r\nNo silicones, no sulphates, no parabens and no colourants.\r\nEco-conscious formula.\r\n400 ml.\r\nProduct of <b>The Body Shop</b>, Imported from UK.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224. ', 1100, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(280, 'Vitamin E Night Cream (UK Origin)', '2', 25, 'This rich night cream replenishes moisture levels while you sleep.\r\nIntensively hydrates.\r\nWorks when skin is at its most receptive.\r\nLeaves skin soft and smooth.\r\n50 ml.\r\nProduct of <b>The Body Shop</b>, Imported from UK.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224. ', 1100, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(281, 'Vitamin E Moisture Cream (UK Origin)', '2', 25, 'Our bestselling daily moisturiser hydrates skin, leaving it feeling soft and smooth.\r\nHydrates and protects.\r\nLight and easily absorbed.\r\nLeaves skin soft and healthy-looking.\r\n50 ml.\r\nProduct of <b>The Body Shop</b>, Imported from UK.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224 ', 1100, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(282, 'Passion Fruit Shower Gel (UK Origin)', '2', 45, 'This soap-free shower gel contains real passion fruit seed oil and has a delicious fruity scent.\r\nSoap-free.\r\nLather-rich.\r\nPassion fruit scent.\r\n250 ml.\r\nProduct of <b>The Body Shop</b>, Imported from UK.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224. ', 700, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(283, 'Satsuma Shower Gel (UK Origin)', '2', 45, 'This soap-free shower gel contains zesty satsuma essential oil and has a refreshing citrus scent.\r\nSoap-free.\r\nLather-rich.\r\nRefreshing citrus scent.\r\n250 ml.\r\nProduct of <b>The Body Shop</b>, Imported from UK.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224. ', 700, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(284, 'Vitamin E Gentle Facial Wash (UK Origin)', '2', 25, 'A gentle facial wash that lathers on the skin to leave it feeling clean, soft and refreshed.\r\n100 ml.\r\nProduct of <b>The Body Shop</b>, Imported from UK.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224. ', 1000, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(285, 'Vitamin E Body Lotion (UK Origin)', '2', 25, 'This lightweight body lotion with vitamin E hydrates skin, leaving it smooth and moisturised.\r\nHydrates and protects.\r\nEasily absorbed.\r\nLeaves skin feeling soft and smooth.\r\n250 ml.\r\nProduct of <b>The Body Shop</b>, Imported from UK.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224. ', 1100, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(286, 'Born Lippyâ„¢ (UK Origin)', '2', 25, 'Our cult lip balm in a pot. Gives color, flavor and moisture for more kissable lips.\r\nMoisturises and conditions lips.\r\nSoft pink tint.\r\nShine finish.\r\nFruity watermelon flavor.\r\n10 ml.\r\nProduct of <b>The Body Shop</b>, Imported from UK.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224.   ', 500, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(287, 'Tea Tree Facial Toner (UK Origin)', '2', 25, 'This refreshing toner for blemished skin gives a beautifully matte, shine-free finish.\r\nRemoves traces of make-up, cleanser and impurities.\r\nMattifying powders leave skin shine-free.\r\nClinically proven to give clearer-looking skin.\r\n250 ml.\r\nProduct of <b>The Body Shop</b>, Imported from UK.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224.', 900, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(288, 'Tea Tree Facial Wash (UK Origin)', '2', 25, 'This daily-use facial wash for blemished skin gives clearer-looking skin when used as part of a regular regime.\r\nRemoves excess oil without over-drying skin.\r\nHelps remove impurities.\r\nClinically proven to give clearer-looking skin.\r\n250 ml.\r\nProduct of <b>The Body Shop</b>, Imported from UK.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224.', 900, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(289, 'Ginger Anti Dandruff Shampoo (UK Origin)', '2', 28, 'This refreshing shampoo with ginger extract is perfect for dry scalps.\r\nCleansing.\r\nRefreshing.\r\n400 ml.\r\nProduct of <b>The Body Shop</b>, Imported from UK.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224.   ', 1100, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(290, 'Aloe Gentle Facial Wash (UK Origin)', '2', 25, 'A soothing, protective wash to ease away the day\\\\\\\\\\\\\\''s grime and make-up.\r\n125 ml.\r\nProduct of <b>The Body Shop</b>, Imported from UK.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224.', 1100, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(291, '3 in 1 Lady Shaver & Epilater', '2', 28, 'The Totally Luxurious Hair Removal System.\r\nLady Shaver For Under Arms & Legs.\r\nDouble Function Epilater and Shaver.\r\nRechargeable Hair Remover.\r\nTotally 3in1 Function .', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224.', 2150, '', '', 150, 'yes', 30, '2013-10-28 03:18:22', 0),
(292, 'Massage Pro Belt', '1', 50, 'The Massage Pro Slimming Belt is a newly designed product combining point physical therapy with exercise science. Its unique design aids slimming, the elimination of toxins whilst massaging.Massage pro-slimming belt was so easy to use. \r\nThe belt stimulates the points that will help you to loose weight. It reduces body fat and encourages weight loss without any side effects. \r\nThe Massage Pro has two motors and the vibration of the belt has a perfectly balanced dual massage program to deliver a more invigorating massage by working on both sides of each muscle group. The speed and intensity of the Massage Pro can be increased or decreased using the programmable remote control.\r\nMassage Pro Belt Specification Flexible Sauna Belt Imported (one size fits all with secure fastening system)Multilevel Remote Control Instructional Guide7-Diet Plan and a Tape measure.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224.', 4450, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(293, 'Slim 24 pro', '1', 50, 'Slim 24 pro is incredible meal replacement formula that provides vital nutrients, keeping your body slim string and healthy. Slim 24 pro is 100% safe and keeps your body fit and healthy. â€˜Whey Proteinâ€™ is the key ingredient of the product and is widely accepted form of Amino Acids or Protein which is essential for a fit body. It also contains all the major Vitamins, Minerals, Fatty Acids and the required Fibers for a healthy body.\r\nRegular usage of Slim 24 Pro eventually leads to the body shedding excess fat deposits and giving the user desired physical appearance.\r\n100 % Herbal with No Side Effects.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224.', 4950, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(294, 'Pihlips  Rechargeable Shaver', '6', 36, 'Super Lift & Cut Technology: comfortably close.\r\nReflex Action System: adjusts to every curve of your face and neck.\r\nEasy Grip for optimal handling.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224 ', 2050, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(295, 'Kemei Hair Clipper & Shaver', '6', 36, 'Shave: Kemei blades for an incredible level of closeness and comfort.\r\nTrim & Shave: Trims and Shaves long hairs in one stroke for fast results.\r\nTrim: High performance cutting system for maximum precision and comfort.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224.', 2050, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(296, '2 in 1 Sewing Machine', '6', 46, 'Single thread, single speed, using 6V power.\r\nAttractive compact design.\r\nEasy to store and easy operation.\r\nSuitable for clothes, pants and textile.\r\nPower Supply:Operated by 4 AA batteries (not included).\r\nYou can also use it with AC/DC 6V 800MA  adapter (not included).\r\nMain Material:ABS+Stainless Steel.\r\nIdeal for DIY and fit for family use.\r\nMini size,light weight,portable.\r\nReasonable in price.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224.', 2950, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(297, 'Mini Hand Sewing Machine', '6', 46, 'Portable and convenient.\r\nWorks on all fabrics.\r\nQuick repairs.\r\nFix hems or shorten slacks.\r\nGreat for jobs that conventional desktop machines cannot handle, like sewing curtains while on the rod.\r\nMend a torn pocket without having to remove your pants. ', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224.', 1050, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(298, 'Figure Twist Board', '3', 23, 'Double Colorway.\r\nAnti-Slip Design.\r\nVent Toxin and Maintain Face.\r\nHuman Body Technology.\r\nMassage and Magnetic Therapy.\r\nKeep Vigorous and Fit.\r\nWeight Loss System.\r\nThe Second Generation.\r\nMaximum 90kg use only.', '<b>Free Home delivery</b> service available. \r\nWithin Dhaka city our deliveryman will deliver your product.\r\nOutside Dhaka city we will deliver via courier service.\r\nWithin Dhaka city products will be delivered within 24 business hours after confirmation of the order.\r\nOutside Dhaka city it will take up to 72 business hours to deliver your product.\r\n<b>Cash on delivery</b> service available.\r\n<b>Hotline:</b> 01616 224 224.', 1050, '', '', 0, 'no', 0, '0000-00-00 00:00:00', 0),
(299, 'demo', '7', 14, 'demo', 'demo', 123, '12', 'red', 0, 'no', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_image`
--

CREATE TABLE IF NOT EXISTS `slider_image` (
  `position` int(2) NOT NULL,
  `picture_url` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(1500) NOT NULL,
  PRIMARY KEY (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_image`
--

INSERT INTO `slider_image` (`position`, `picture_url`, `title`, `description`) VALUES
(1, 'SLIDER_IMAGE/Banner_v1.jpg', '', ''),
(2, 'SLIDER_IMAGE/Banner_6.jpg', '', ''),
(3, 'SLIDER_IMAGE/The Body Shop.jpg', '', ''),
(4, 'SLIDER_IMAGE/4.jpg', '', ''),
(5, 'SLIDER_IMAGE/Banner_7.jpg', '', ''),
(6, 'SLIDER_IMAGE/1.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE IF NOT EXISTS `sub_category` (
  `sub_category_id` int(100) NOT NULL AUTO_INCREMENT,
  `category_id` int(10) NOT NULL,
  `sub_category_name` varchar(500) NOT NULL,
  PRIMARY KEY (`sub_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `category_id`, `sub_category_name`) VALUES
(13, 7, 'Hamdard '),
(14, 7, 'Fency Boy'),
(23, 3, 'Body Fitness'),
(24, 1, 'Herbal Products'),
(25, 2, 'Skin Care'),
(28, 2, 'Hair Care'),
(35, 3, 'Therapy & Massager'),
(36, 6, 'Shaver'),
(37, 5, 'Perfume'),
(39, 4, 'Kitchen Appliances'),
(41, 1, 'E-Cigarette '),
(43, 6, 'Camera'),
(45, 2, 'Body Care'),
(46, 6, 'Sewing Machine'),
(50, 1, 'Slimming Products'),
(51, 1, 'Bio Magnetic Bracelet'),
(52, 8, 'Dress For Man'),
(53, 8, 'Dress For Woman'),
(54, 5, 'Wallet'),
(55, 8, 'Other Products'),
(56, 6, 'Computer & Laptop'),
(57, 1, 'demo');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_products`
--

CREATE TABLE IF NOT EXISTS `upcoming_products` (
  `position` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `up_image_url` varchar(500) NOT NULL,
  PRIMARY KEY (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upcoming_products`
--

INSERT INTO `upcoming_products` (`position`, `name`, `up_image_url`) VALUES
(1, 'demo', 'UPCOMING PICTURE/0/demo/003.jpg'),
(2, 'admin', 'UPCOMING PICTURE/0/admin/004.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `vendor_id` int(20) NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(30) NOT NULL,
  `Details` varchar(200) DEFAULT NULL,
  `Phone_no` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `Details`, `Phone_no`, `email`) VALUES
(1, 'dany', NULL, NULL, NULL),
(2, 'some name edited', NULL, NULL, NULL),
(3, 'kawser', NULL, NULL, NULL),
(4, 'some vendor', NULL, NULL, NULL),
(5, 'Swopnil', 'Designer', '354354', '135135'),
(6, 'new', 'details', '', ''),
(7, 'gd', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
