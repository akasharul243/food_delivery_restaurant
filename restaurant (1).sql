-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 24, 2022 at 12:14 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE IF NOT EXISTS `bills` (
  `bill_no` int(5) DEFAULT NULL,
  `pno` int(5) DEFAULT NULL,
  `pname` varchar(25) DEFAULT NULL,
  `qty` int(5) DEFAULT NULL,
  `price` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`bill_no`, `pno`, `pname`, `qty`, `price`) VALUES
(1002, 106, 'Poori', 2, 15),
(1002, 105, 'Chappathi', 2, 20),
(1003, 106, 'Poori', 2, 15),
(1003, 105, 'Chappathi', 2, 20),
(1004, 106, 'Poori', 2, 15),
(1004, 105, 'Chappathi', 2, 20),
(1005, 106, 'Poori', 2, 15),
(1005, 105, 'Chappathi', 2, 20),
(1006, 106, 'Poori', 2, 15),
(1006, 105, 'Chappathi', 2, 20),
(1007, 106, 'Poori', 2, 15),
(1007, 105, 'Chappathi', 2, 20),
(1008, 106, 'Poori', 2, 15),
(1008, 105, 'Chappathi', 2, 20),
(1009, 106, 'Poori', 2, 15),
(1009, 105, 'Chappathi', 2, 20),
(1009, 119, 'Schezwan Veg Noodles', 2, 160);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `User_ID` varchar(30) NOT NULL,
  `pno` varchar(5) NOT NULL,
  `Session_ID` varchar(50) NOT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--


-- --------------------------------------------------------

--
-- Table structure for table `food_database`
--

CREATE TABLE IF NOT EXISTS `food_database` (
  `pno` int(5) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `Main_ingredient` varchar(20) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `price` varchar(10) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  PRIMARY KEY (`pno`,`pname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_database`
--

INSERT INTO `food_database` (`pno`, `pname`, `Category`, `Main_ingredient`, `Description`, `price`, `Photo`) VALUES
(101, 'Parrota', 'Non-veg', 'Maida, egg', 'it is maida based rotti item', '15', '1.jpg'),
(102, 'Chicken Briyani', 'Non-veg', 'Chicken', 'Chicken Biryani is a savory chicken and rice dish that includes layers of chicken, rice, and aromatics that are steamed together', '140', '2.jpg'),
(103, 'Mutton briyani', 'Non-veg', 'Mutton', ' Mutton Biryani is a royal dish with beautifully spiced and fragrant layers of biryani rice centered with juicy ', '200', '3.jpg'),
(104, 'Beef Briyani', 'Non-veg', 'Beef', 'Biryani has two main components: fluffy, fragrant basmati rice and a delicious saucy beef ', '180', '4.jpg'),
(105, 'Chappathi', 'Veg', 'Wheat', 'chapatis or rotis are fresh homemade bread, made with wheat or other grain flours and baked without yeast', '20', '5.jpg'),
(106, 'Poori', 'Veg', 'Maida', 'Poori (or puri) is the popular Indian deep-fried, puffy bread made with whole wheat flour', '15', '6.jpg'),
(107, 'Honey Chicken', 'Non-veg', 'Chicken ', 'Honey chicken is a popular chinese chicken dish which goes well with fried rice or chow mein', '250', '7.jpg'),
(108, 'Butter Chicken', 'Non-veg', 'Chicken', 'Similar to Chicken Tikka Masala, Butter Chicken is one of the most popular curries at any Indian restaurant around the world.', '250', '8.jpg'),
(109, 'Chicken Wringlet', 'Non-veg', 'Chicken', 'Chicken wings are juicy budget-friendly chicken parts with a concentrated poultry flavor ', '230', '9.jpg'),
(110, 'Tandoori chicken', 'Non-veg', 'Chicken', ' Tandoori chicken is a popular Indian dish where marinated chicken is grilled to perfection in a Tandoor', '400', '10.jpg'),
(111, 'Grilled Chicken', 'Non-veg', 'Chicken', ' Grilled Chicken is a very popular recipe made with chicken', '420', '11.jpg'),
(112, 'Nool parrota', 'Non-veg', 'Maida', 'the technique for creating the flaky thread like layers', '45', '12.jpg'),
(113, 'Bun parrota', 'Non-veg', 'Maida', ' it is unique in its shape and size. it does look like a bun', '25', '13.jpg'),
(114, 'Dragon Chicken dry', 'Non-veg', 'chicken', 'Dragon chicken is a popular fusion indo-chinese dish which was invented recently', '230', '14.jpg'),
(115, 'Chicken Tikka Briyan', 'Non-veg', 'Chicken', 'Chicken Tikka Biryani Recipe is the famous Indian delicacy of Punjabi Cuisine.', '225', '15.jpg'),
(116, 'Tankri Kebab', 'Non-veg', 'Chicekn', 'Tangri Kebabs are basically chicken leg pieces that are first marinated in a spicy marinade and then roasted in a tandoor.', '310', '16.jpg'),
(117, 'Gobi Manchurian dry', 'Veg', 'Cauliflower', ' Gobi Manchurian is a popular Indo Chinese appetizer made with cauliflower, corn flour, soya sauce, vinegar, chilli sauce, ginger', '175', '17.jpg'),
(118, 'Mixed veg curry', 'Veg', 'Vegetables', 'Vegetable Curry made with mixed vegetables, spices and herbs', '200', '18.jpg'),
(119, 'Schezwan Veg Noodles', 'Veg', 'Maida\r\n', 'These are the most flavorful, spicy', '160', '19.jpg'),
(120, 'Egg Lappa', 'Non-veg', 'Egg and maida', 'Lappa is typically made with an egg filling', '85', '20.jpg'),
(121, 'Egg podimas', 'Non-veg', 'Egg', ' delicious Chettinad Style egg scramble ', '70', '21.jpg'),
(122, 'Chilli parrota', 'Veg', 'Maida', 'Chilli Parotta is a delicious popular South Indian street food', '110', '22.jpg'),
(123, 'Wheat parrota', 'Veg', 'Maida', 'It is basically a bread which is flaky and has many layer within', '20', '23.jpg'),
(124, 'Butter Naan', 'Veg', 'Maida', ' Butter naan is soft and extremely yummy', '55', '24.jpg'),
(125, 'Chicken Mandhi', 'Non-veg', 'Chicken', 'A whole chicken suspended above rice and charcoal', '900', '25.jpg'),
(126, 'Mutton Mandhi', 'Non-veg', 'Mutton', ' Mutton Handi is a very traditional rich stew with lots of spicy and a velvety rich masala gravy', '1300', '26.jpg'),
(127, 'Mayonaise', 'Non-veg', 'Egg', 'an emulsion of raw egg yolks and vegetable oil', '25', '27.jpg'),
(128, 'Gobi fried rice', 'veg', 'Fried rice', ' Gobi Fried Rice is a simple but indulgent Indo-Chinese style fried rice', '120', '28.jpg'),
(129, 'Chicken salt&pepper', 'Non-veg', 'Chicken', 'Crispy seasoned chicken, fried up with crunchy onions and spicy chillies', '200', '29.jpg'),
(130, 'Shawarma', 'Non-veg', 'Chicken', ' meat that are sliced and often wrapped in or served with pita', '90', '30.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `or_no` int(10) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `amount` int(6) NOT NULL,
  PRIMARY KEY (`or_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`or_no`, `uid`, `date`, `time`, `amount`) VALUES
(1002, 'Manoj', '12/24/2022', '15:48:52', 70),
(1003, 'Manoj', '12/24/2022', '15:49:49', 70),
(1004, 'Manoj', '12/24/2022', '15:50:50', 70),
(1005, 'Manoj', '12/24/2022', '15:51:2', 70),
(1006, 'Manoj', '12/24/2022', '15:51:39', 70),
(1007, 'Manoj', '12/24/2022', '15:51:54', 70),
(1008, 'Manoj', '12/24/2022', '15:52:1', 70),
(1009, 'Manoj', '12/24/2022', '15:52:6', 70);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(20) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `addr` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `contact` varchar(12) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `uid`, `pwd`, `mail`, `addr`, `city`, `district`, `contact`) VALUES
('akash', 'akash', '12345', 'akash@gmail.com', '478,perampattu,', 'Chennai', 'kerala', '06369667840'),
('Manoj', 'Manoj', '54321', 'manojmugundharajan@gmail.com', '1A, New Street, Chidamabaram', 'Chidambaram', 'Cuddalore', '8682040572'),
('prabha', 'prabha', '12345', 'prabha@gmail.com', 'south car street', 'Chidambaram', 'cuddalore', '89078654231'),
('sivabalan', 'siva', '12345', 'siva@gmail.com', 'west car street', 'Chidambaram', 'cuddalore', '78901290');
