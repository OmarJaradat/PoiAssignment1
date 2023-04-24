-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 04:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `name`, `email`, `password`) VALUES
(1, 'omar', 'omarjaradat297@gmail.com', 8814);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `name`, `parent_id`) VALUES
(1, 'grocery', 0),
(2, 'Health and Hygiene', 0),
(3, 'Home Care', 0),
(4, 'Vegetable', 0),
(5, 'Spices', 1),
(6, 'Oil ', 1),
(7, 'Rice', 1),
(8, 'Cereal', 1),
(9, 'Fruits and Vegetables', 4),
(10, 'Drink and Snacks', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `uid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `name`, `mobile`, `msg`, `uid`) VALUES
(1, 'Barak Obama', '9876543210', 'I am very impressed with this amazing website.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ord`
--

CREATE TABLE `ord` (
  `oid` int(10) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ord`
--

INSERT INTO `ord` (`oid`, `uid`, `total`, `date`) VALUES
(5, 8, 52, '2023-04-12 14:21:12'),
(6, 8, 86, '2023-04-12 14:31:09'),
(7, 8, 86, '2023-04-12 14:35:37'),
(8, 8, 86, '2023-04-12 14:35:51'),
(9, 8, 86, '2023-04-12 14:36:24'),
(10, 8, 86, '2023-04-12 14:40:00'),
(11, 8, 86, '2023-04-12 14:40:06'),
(12, 8, 86, '2023-04-12 16:10:24'),
(13, 8, 86, '2023-04-12 16:10:47'),
(14, 8, 86, '2023-04-12 16:11:26'),
(15, 8, 86, '2023-04-12 16:11:36'),
(16, 8, 86, '2023-04-12 16:13:05'),
(17, 8, 86, '2023-04-12 16:13:09'),
(18, 8, 86, '2023-04-12 16:13:24'),
(19, 8, 86, '2023-04-12 16:13:31'),
(20, 8, 86, '2023-04-12 16:15:30'),
(21, 8, 20, '2023-04-15 21:45:33'),
(22, 8, 20, '2023-04-15 21:47:16'),
(23, 8, 20, '2023-04-15 22:24:49'),
(24, 8, 30, '2023-04-16 22:39:59'),
(25, 8, 30, '2023-04-16 22:41:51'),
(26, 8, 30, '2023-04-16 22:43:20'),
(27, 8, 30, '2023-04-16 22:47:16'),
(28, 8, 30, '2023-04-16 22:47:38'),
(29, 8, 30, '2023-04-16 22:47:41'),
(30, 8, 30, '2023-04-16 22:47:52'),
(31, 8, 30, '2023-04-16 22:48:22'),
(32, 8, 30, '2023-04-16 22:48:31'),
(33, 8, 30, '2023-04-16 22:48:36'),
(34, 8, 30, '2023-04-16 22:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `oid`, `pid`, `quantity`, `amount`, `subtotal`) VALUES
(6, 5, 1, 1, 50, 50),
(7, 5, 4, 1, 2, 2),
(8, 6, 1, 1, 50, 50),
(9, 6, 4, 4, 2, 8),
(10, 6, 2, 2, 14, 28),
(11, 7, 1, 1, 50, 50),
(12, 7, 4, 4, 2, 8),
(13, 7, 2, 2, 14, 28),
(14, 8, 1, 1, 50, 50),
(15, 8, 4, 4, 2, 8),
(16, 8, 2, 2, 14, 28),
(17, 9, 1, 1, 50, 50),
(18, 9, 4, 4, 2, 8),
(19, 9, 2, 2, 14, 28),
(20, 10, 1, 1, 50, 50),
(21, 10, 4, 4, 2, 8),
(22, 10, 2, 2, 14, 28),
(23, 11, 1, 1, 50, 50),
(24, 11, 4, 4, 2, 8),
(25, 11, 2, 2, 14, 28),
(26, 12, 1, 1, 50, 50),
(27, 12, 4, 4, 2, 8),
(28, 12, 2, 2, 14, 28),
(29, 13, 1, 1, 50, 50),
(30, 13, 4, 4, 2, 8),
(31, 13, 2, 2, 14, 28),
(32, 14, 1, 1, 50, 50),
(33, 14, 4, 4, 2, 8),
(34, 14, 2, 2, 14, 28),
(35, 15, 1, 1, 50, 50),
(36, 15, 4, 4, 2, 8),
(37, 15, 2, 2, 14, 28),
(38, 16, 1, 1, 50, 50),
(39, 16, 4, 4, 2, 8),
(40, 16, 2, 2, 14, 28),
(41, 17, 1, 1, 50, 50),
(42, 17, 4, 4, 2, 8),
(43, 17, 2, 2, 14, 28),
(44, 18, 1, 1, 50, 50),
(45, 18, 4, 4, 2, 8),
(46, 18, 2, 2, 14, 28),
(47, 19, 1, 1, 50, 50),
(48, 19, 4, 4, 2, 8),
(49, 19, 2, 2, 14, 28),
(50, 20, 1, 1, 50, 50),
(51, 20, 4, 4, 2, 8),
(52, 20, 2, 2, 14, 28),
(53, 21, 1, 1, 6, 6),
(54, 21, 2, 1, 14, 14),
(55, 22, 1, 1, 6, 6),
(56, 22, 2, 1, 14, 14),
(57, 23, 1, 1, 6, 6),
(58, 23, 2, 1, 14, 14),
(59, 24, 21, 1, 30, 30),
(60, 25, 21, 1, 30, 30),
(61, 26, 21, 1, 30, 30),
(62, 27, 21, 1, 30, 30),
(63, 28, 21, 1, 30, 30),
(64, 29, 21, 1, 30, 30),
(65, 30, 21, 1, 30, 30),
(66, 31, 21, 1, 30, 30),
(67, 32, 21, 1, 30, 30),
(68, 33, 21, 1, 30, 30),
(69, 34, 21, 1, 30, 30);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payid` int(10) NOT NULL,
  `oid` int(10) DEFAULT NULL,
  `uid` int(10) DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `payment_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payid`, `oid`, `uid`, `total_amount`, `payment_type`) VALUES
(5, 5, 8, 52, 'COD'),
(6, 6, 8, 86, 'COD'),
(7, 7, 8, 86, 'COD'),
(8, 8, 8, 86, 'COD'),
(9, 9, 8, 86, 'COD'),
(10, 10, 8, 86, 'COD'),
(11, 11, 8, 86, 'COD'),
(12, 12, 8, 86, 'COD'),
(13, 13, 8, 86, 'COD'),
(14, 14, 8, 86, 'COD'),
(15, 15, 8, 86, 'COD'),
(16, 16, 8, 86, 'COD'),
(17, 17, 8, 86, 'COD'),
(18, 18, 8, 86, 'COD'),
(19, 19, 8, 86, 'COD'),
(20, 20, 8, 86, 'COD'),
(21, 21, 8, 20, 'COD'),
(22, 22, 8, 20, 'COD'),
(23, 23, 8, 20, 'COD'),
(24, 24, 8, 30, 'COD'),
(25, 25, 8, 30, 'COD'),
(26, 26, 8, 30, 'COD'),
(27, 27, 8, 30, 'COD'),
(28, 28, 8, 30, 'COD'),
(29, 29, 8, 30, 'COD'),
(30, 30, 8, 30, 'COD'),
(31, 31, 8, 30, 'COD'),
(32, 32, 8, 30, 'COD'),
(33, 33, 8, 30, 'COD'),
(34, 34, 8, 30, 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` float(6,2) DEFAULT NULL,
  `discount` int(10) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `cid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `name`, `description`, `price`, `discount`, `weight`, `pic`, `cid`) VALUES
(1, 'Handee Ultra White Paper Towels | 4 pack', 'Advanced paper making technology makes Handee paper towel ultra absorbent and ultra strong wet or dry.\r\n\r\n\r\nSpecially selected fibres within the paper towel are made to interlock, creating both greater strength and a sponge-like structure for maximum absorption.', 6.00, 10, NULL, 'images/Handee.png', 3),
(2, 'Scrub Daddy Sponge', 'Scrub Daddy\'s FlexTexture changes texture based on your water temperature. Firm in cold water for tough scrubbing, soft in warm water for light cleaning. He rinses free of debris, resists odours, and cleans well with water alone.', 14.00, 10, '', 'images/ScrubDaddy.png', 3),
(3, 'Extra Virgin Olive Oil ', 'La Espanola\'s Extra Virgin Olive Oil features a medium flavour that will complement all kinds of cooking and dishes. The slightly sweet and fruity flavour is ideal for pasta, white meat, and salads, but also goes well in a healthy dip of your choice.', 6.50, 10, ' 500 ml', 'images/OliveOil.png\r\n', 6),
(4, 'MasterFoods Smoked Paprika | 35g', 'AA sweet, smokey, slightly woody capsicum flavour. Add a sprinkle over a creamy beef stroganoff, roast chicken or vegetables. MasterFoods jars now have a flip top lid, labelled with the flavour name making them easy to find and use at home.', 3.50, 0, '35 gm', 'images/Paprika.png', 5),
(5, 'Canola Oil | 2L', 'Canola Oil 2 Litres a great oil for your deep frying or shallow frying needs', 7.40, 0, '(2L)', 'images/CanolaOil.png', 6),
(6, 'Sunrice Basmati Rice  ', 'Basmati rice is renowned for its delightful aroma. When cooked, Basmati expands in length and produces a light, fluffy texture that is ideal to absorb the flavours of your cooking. A staple of Indian cooking, it tastes great with tandoori and is a classic combination with your favourite curry.', 12.50, 0, '(2kg)', 'images/Basmati.png', 7),
(7, 'Yeo\'s Sesame Oil', 'Extracted from premium-grade sesame seeds, Yeo\'s 100% Pure Sesame Oil adds a unique robust roasted flavour and aroma to dishes. It is a versatile ingredient that can be used in anything from soups, stews, stir-fries to marinades.', 5.00, 0, '(150 ml)', 'images/SesameOil.png', 6),
(8, 'Azalea Grapeseed Oil', 'Born out of a desire to infuse the exquisite flavours of nature into every meal, we explore, we uncover, and we distil, the world\'s purest flavours to excite your taste buds.\r\n\r\nOur oils are designed to bring creativity and joy into every cooking experience. We believe food is more than fuel, it\'s an expression, a creation, a tribute to the best of mother nature. Azalea is synonymous with passion, adventure, and quite simply... great food!', 10.00, 0, '(1L)', 'images/GrapeSeedOil.png\r\n', 6),
(9, 'Hong Gong Chili Oil', 'Experience the explosive flavour of Hong Gong Chili Oil! Made from premium chili peppers and a secret family recipe, this artisanal condiment adds a fiery kick to your favourite dishes. Perfect for noodles, dumplings, stir-fries, and more. Spice up your culinary adventures with Hong Gong Chili Oil!', 3.20, 0, '(150ml)', 'images/ChilliOil.png', 6),
(10, 'Cobram Estate Extra Virgin Olive Oil Classic', 'Delicious oil yum', 9.50, 0, '(375ml)', 'images/Cobram.png', 6),
(11, 'Vegetable Oil', 'Vegetable Oil 4 Litres. Use for light or deep frying or as a salad oil', 14.50, 0, '(4L)', 'images/VegetableOil.png', 6),
(12, 'Jasmine Rice', 'Jasmine rice a great tasting rice that goes well with many dishes particularly Asian dishes', 3.35, 0, '(1kg)', 'images/Jasmine.png', 7),
(13, 'Ben\'s Original Savoury Chicken Flavour Rice Pouch', 'BEN\'S ORIGINAL Savoury Chicken Microwave Rice is made with carefully selected rice, capsicum, carrots, onion and spices. Prep and clean-up is a breeze with this microwaveable pouch, and since it heats up in just 90 seconds, you\'ll have a tasty meal in no time!', 4.00, 0, '(250g)', 'images/B1.png', 7),
(14, 'Ben\'s Original Special Fried Rice Pouch', 'BEN\'S ORIGINAL Special Fried Microwave Rice is made with carefully selected rice, chicken, egg, spices and ginger. Prep and clean-up is a breeze with this microwaveable pouch, and since it heats up in just 90 seconds, you\'ll have a tasty meal in no time! Try me in a Stir Fry.', 4.00, 0, '(250g)', 'images/B2.png', 7),
(15, 'Ben\'s Original Mexican Style Rice Pouch', 'BEN\'S ORIGINAL Mexican Style Microwave Rice is made with carefully selected rice, tomato, capsicum and jalapenos. Prep and clean-up is a breeze with this microwaveable pouch, and since it heats up in just 90 seconds, you\'ll have a tasty mexican meal in no time! Pair with your mexican favourites.', 4.00, 0, '(250g)', 'images/B4.png', 7),
(16, 'Ben\'s Original Brown Rice Pouch Microwave', 'BEN\'S ORIGINAL Brown Microwave Rice is simple and versatile; and is an excellent source of wholegrain. Prep and clean-up is a breeze with this microwaveable pouch, and since it heats up in just 90 seconds, you\'ll have a tasty meal in no time! Perfect with tuna.', 4.00, 0, '(250g)', 'images/B3.png', 7),
(18, 'Kellogg\'s Coco Pops Chocolatey Breakfast Cereal', 'Kellogg\'s Coco Pops is the tasty chocolatey breakfast cereal treat that families have loved for generations. Coco Pops and milk are just like a chocolate milkshake, only crunchy! As a good source of vitamins and minerals, why not surprise the kids with an afternoon treat of Coco Pops?', 9.50, 0, '(650g)', 'images/CocoPops.png', 8),
(19, 'Nestle Milo Cereal Breakfast Protein', 'MILO High Protein Cereal fuels active kids with 10.8g of protein per serve to help build and repair muscles and contains 10 essential vitamins and minerals to support growth and development^. Made with wholegrains and the great MILO taste, it provides a delicious crunchy start to the day!^When consumed as part of a healthy balanced diet containing a variety of foods.', 8.80, 0, '(600g)', 'images/Milo.png', 8),
(20, 'Kellogg\'s Crispix Honey Pillows Breakfast Cereal', 'Kellogg\'s Crispix honey pillows breakfast cereal are mouth-watering, crispy pillows of golden corn with a hint of honey! It\'s the unique lattice shape that makes each pillow super crispy, while the honey and corn combine to create a taste sensation! Drench with fresh, cold milk and enjoy at breakfast time to get your day started right, or indulge in a delicious afternoon snack!', 6.00, 10, '(460g)', 'images/Crispix.png', 8),
(21, 'Nature\'s Way Kids Smart Vita Gummies Vitamin C + Z', 'Kids Smart Vita Gummies Vitamin C + Zinc is power packed with the goodness of vitamin C, an antioxidant that helps reduce free radicals formed in the body. Combined with an essential mineral - zinc, which plays an important role in helping to support immune system health and maintain general health and wellbeing. Just two Vita Gummies a day helps support vitamin C and zinc levels in the body... and it tastes great!', 30.00, 0, '120pk', 'images/Vitamin.png', 2),
(22, 'Coles Fragrance Free White Facial Tissues', 'Coles FACIAL TISSUES FRAGRANCE-FREE 2 PLY 224 PACK 20cm x 19.5cm Specially developed with two layers of soft and absorbent tissue, ideal for use on hands and face.', 1.70, 0, '224pk', 'images/Tissues.png', 2),
(23, 'Dettol Classic Antibacterial Disinfectant Liquid S', 'This Dettol Antibacterial Disinfectant with it\'s trusted formulation is an essential product to have in the home. Dettol Antibacterial Household Grade Disinfectant kills germs* on floors and household surfaces. This household-size product is for hard surface use only.', 11.70, 0, '750ml', 'images/Dettol.png', 2),
(24, 'Dettol Antibacterial Liquid Hand Wash Pump Refresh', 'Dettol Liquid Hand Wash Soft on Skin, Hard on Germs. The care and protection from germs that your family deserves to help keep your hands healthy. Our antibacterial formula effectively washes away germs and is also soft on skin. Suitable for everyday use. Dermatologically tested.', 2.80, 0, '250ml', 'images/DettolSoap.png', 2),
(26, 'Femfresh Wash Soothing', 'Femfresh soothing wash for everyday use contains pre and probiotic complex, honeysuckle and cranberry extracts. Provides a mild and immediate feeling of comfort that allows your intimate area to feel hydrated and gives a long lasting 24 hours soothing sensation. Clinically tested under dermatological & gynaecological control.', 7.00, 0, '(250ml)', 'images/FemFresh.png', 2),
(27, 'Duracell Coppertop AAA Batteries', 'Duracell Coppertop AAA alkaline Batteries Last up to 50% longer*\r\n*vs. ordinary carbon zinc AAA batteries in 2015 IEC tests. Results may vary by device and usage pattern.', 29.00, 0, '(20pk)', 'images/Battery.png', 3),
(28, 'Iceberg Lettuce', 'Iceberg lettuce is the quintessential salad base due to its crisp sweet leaves that can be served whole, torn or shredded.Iceberg lettuce is the quintessential salad base due to its crisp sweet leaves that can be served whole, torn or shredded.', 3.50, 0, '', 'images/Lettuce.png', 9),
(29, 'Okra', 'Okra has a sweet, grassy flavour. It is often used to thicken soups and stews', 3.40, 0, '', 'images/Okra.png', 9),
(30, 'Mountain Dew Multipack Cans 375mL', 'Mountain Dew Energised soft drink is a bold and distinctly refreshing citrus flavoured drink that quenches your thirst with an intense refreshment hit.\r\n\r\nWith its caffeinated formula, Mountain Dew provides an energised lift when you need a pick me up at any time of day or night.', 15.00, 0, '10pk', 'images/MountainDew.png', 10),
(31, 'Spring Water 24X600Ml', 'Refreshingly Good Spring Water Cool Good Clear Natural Water Good Natural Crisp & Cool', 6.40, 0, '24pk', 'images/Water.png', 10),
(32, 'Red Rock Deli Potato Chips Sweet Chilli  ', 'Natural Aussie Ingredients\r\nOur potato chips are proudly Australian-made, beginning with the finest potatoes harvested from Australian farms. Red Rock Deli Sweet Chilli and Sour Cream chips are roughly cut and slowly cooked in 100% Australian-grown canola oil for the most delectable crunch. Seasoned to supreme with the subtle spicy warmth of chilli and the coolness of sour cream. ', 6.30, 0, '165g', 'images/RedRockDeli.png', 10),
(33, 'Tomato', 'Gourmet tomatoes are traditional, hand picked field grown tomatoes. Tomatoes taste sweeter when stored unrefrigerated', 0.87, 0, '110g', 'images/Tomato.png', 9),
(34, 'Onions ', 'Brown onions have a brown or almost yellow papery skin and creamy flesh. They have a strong flavour and are excellent for cooking which is why they are the most widely used onion. With a pungent aroma and strong flavour, it\Zs an excellent all-round onion.', 0.67, 0, '180g', 'images/Onion.png\r\n', 9),
(35, 'Carrots', 'Originating in Afghanistan, carrots were originally white and purple in colouring, they mutated to orange through cross pollination. Carrots are best stored in the veg crisper in your refrigerator', 0.41, 0, '170g', 'images/Carrot.png', 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `mobile`, `address1`, `gender`, `username`, `password`) VALUES
(7, 'Omar Jaradat', 1111111111, '6/3 Highland Avenue', '', 'oj', 'dwdwdwdwdw'),
(8, 'Omar Jaradat', 451361536, '6/3 Highland Avenue', '', 'Omar', '147852369');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `feedback_ibfk_1` (`uid`);

--
-- Indexes for table `ord`
--
ALTER TABLE `ord`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `user_id` (`uid`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `order_id` (`oid`),
  ADD KEY `product_id` (`pid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `oid` (`oid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ord`
--
ALTER TABLE `ord`
  MODIFY `oid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ord`
--
ALTER TABLE `ord`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_id` FOREIGN KEY (`oid`) REFERENCES `ord` (`oid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`oid`) REFERENCES `ord` (`oid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
