-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for coffee_valley
CREATE DATABASE IF NOT EXISTS `coffee_valley` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `coffee_valley`;

-- Dumping structure for table coffee_valley.beans
CREATE TABLE IF NOT EXISTS `beans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Dumping data for table coffee_valley.beans: ~31 rows (approximately)
/*!40000 ALTER TABLE `beans` DISABLE KEYS */;
INSERT INTO `beans` (`id`, `name`, `description`, `price`) VALUES
	(2, 'Cubita', 'Cubita Coffee is sun dried and hand sorted. It originates from an elevation of over 2000 meters in the Andes Mountains of Ecuador, which is located closest to the sun on the Equator. Superb aroma and rich flavor.', 12),
	(3, 'Colombian Supremo', 'This smooth, full-flavored coffee from Colombia boasts a sweet delicate aroma and a rich, balanced flavor. A classic coffee appropriate for any occasion.', 13.5),
	(4, 'Pure Kona Fancy', 'Grown on the Big Island of Hawaii, this coffee is known for its tantalizing aroma. This medium bodied brew offers a rich flavor with subtle winery tones.', 15.9),
	(5, 'Kenyan', 'The complex coffee from the highlands of East Africa features a winey, full flavor coupled with an intriguing aroma. A delightfully delicate selection for coffee lovers.', 24),
	(6, 'Costa Rican', 'Arabicas normally set aside for the demanding Northern European market produce this lively, well-balanced coffee distinguished by its snappy, clean taste.', 12.3),
	(7, 'Kona Peaberry', 'Occasionally coffee fruit produces a single, rather than a double, bean. These "peaberries" provide all the flavor and aroma of their larger, regular cousins, but in a smaller package.', 10),
	(8, 'Sumatra', 'The wonderful cocoa-like finish of this smooth, full-bodied coffee is reminiscent of rich, dark chocolate. Its unique characteristics can only be captured from the rich soils of this isle of Indonesia.', 9.5),
	(9, 'Kona Blend', '25% Kona, 25% Sumatra and 50% Colombian. This combination unites the fragrant aroma of Kona with the full body of Sumatra and the dry snap of Colombian.', 12.15),
	(10, 'Kona Espresso', 'Some like it dark roasted to give it the smokey, bittersweet tan that espresso drinkers crave.', 13),
	(11, 'Italian Roast', 'Rooted in the Southern Italian tradition, this boldly flavored dark roast is a perfect choice for either a hearty cup of drip coffee or a shot of espresso.', 11.9),
	(12, 'Cubita', 'Cubita Coffee is sun dried and hand sorted. It originates from an elevation of over 2000 meters in the Andes Mountains of Ecuador, which is located closest to the sun on the Equator. Superb aroma and rich flavor.', 12),
	(13, 'Colombian Supremo', 'This smooth, full-flavored coffee from Colombia boasts a sweet delicate aroma and a rich, balanced flavor. A classic coffee appropriate for any occasion.', 13.5),
	(14, 'Pure Kona Fancy', 'Grown on the Big Island of Hawaii, this coffee is known for its tantalizing aroma. This medium bodied brew offers a rich flavor with subtle winery tones.', 15.9),
	(15, 'Kenyan', 'The complex coffee from the highlands of East Africa features a winey, full flavor coupled with an intriguing aroma. A delightfully delicate selection for coffee lovers.', 24),
	(16, 'Costa Rican', 'Arabicas normally set aside for the demanding Northern European market produce this lively, well-balanced coffee distinguished by its snappy, clean taste.', 12.3),
	(17, 'Kona Peaberry', 'Occasionally coffee fruit produces a single, rather than a double, bean. These "peaberries" provide all the flavor and aroma of their larger, regular cousins, but in a smaller package.', 10),
	(18, 'Sumatra', 'The wonderful cocoa-like finish of this smooth, full-bodied coffee is reminiscent of rich, dark chocolate. Its unique characteristics can only be captured from the rich soils of this isle of Indonesia.', 9.5),
	(19, 'Kona Blend', '25% Kona, 25% Sumatra and 50% Colombian. This combination unites the fragrant aroma of Kona with the full body of Sumatra and the dry snap of Colombian.', 12.15),
	(20, 'Kona Espresso', 'Some like it dark roasted to give it the smokey, bittersweet tan that espresso drinkers crave.', 13),
	(21, 'Italian Roast', 'Rooted in the Southern Italian tradition, this boldly flavored dark roast is a perfect choice for either a hearty cup of drip coffee or a shot of espresso.', 11.9),
	(22, 'Cubita', 'Cubita Coffee is sun dried and hand sorted. It originates from an elevation of over 2000 meters in the Andes Mountains of Ecuador, which is located closest to the sun on the Equator. Superb aroma and rich flavor.', 12),
	(23, 'Colombian Supremo', 'This smooth, full-flavored coffee from Colombia boasts a sweet delicate aroma and a rich, balanced flavor. A classic coffee appropriate for any occasion.', 13.5),
	(24, 'Pure Kona Fancy', 'Grown on the Big Island of Hawaii, this coffee is known for its tantalizing aroma. This medium bodied brew offers a rich flavor with subtle winery tones.', 15.9),
	(25, 'Kenyan', 'The complex coffee from the highlands of East Africa features a winey, full flavor coupled with an intriguing aroma. A delightfully delicate selection for coffee lovers.', 24),
	(26, 'Costa Rican', 'Arabicas normally set aside for the demanding Northern European market produce this lively, well-balanced coffee distinguished by its snappy, clean taste.', 12.3),
	(27, 'Kona Peaberry', 'Occasionally coffee fruit produces a single, rather than a double, bean. These "peaberries" provide all the flavor and aroma of their larger, regular cousins, but in a smaller package.', 10),
	(28, 'Sumatra', 'The wonderful cocoa-like finish of this smooth, full-bodied coffee is reminiscent of rich, dark chocolate. Its unique characteristics can only be captured from the rich soils of this isle of Indonesia.', 9.5),
	(29, 'Kona Blend', '25% Kona, 25% Sumatra and 50% Colombian. This combination unites the fragrant aroma of Kona with the full body of Sumatra and the dry snap of Colombian.', 12.15),
	(30, 'Kona Espresso', 'Some like it dark roasted to give it the smokey, bittersweet tan that espresso drinkers crave.', 13),
	(31, 'Italian Roast', 'Rooted in the Southern Italian tradition, this boldly flavored dark roast is a perfect choice for either a hearty cup of drip coffee or a shot of espresso.', 11.9);
/*!40000 ALTER TABLE `beans` ENABLE KEYS */;

-- Dumping structure for table coffee_valley.distributor
CREATE TABLE IF NOT EXISTS `distributor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distributor_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table coffee_valley.distributor: ~12 rows (approximately)
/*!40000 ALTER TABLE `distributor` DISABLE KEYS */;
INSERT INTO `distributor` (`id`, `distributor_name`, `city`, `region`, `country`, `phone`, `email`) VALUES
	(1, 'Beans R Us', 'Brisbane', 'Queensland', 'Australia', '+61-7-1234-5678', 'beansrus@coffee.com'),
	(2, 'The Buzz', 'Munich', 'Bavaria', 'Germany', '+49-89-9876-5432', 'thebuzz@coffee.de'),
	(3, 'Coffee Galore', 'Capelle aan den IJssel', 'South Holland', 'Netherlands', '+31-10-2345-6789', 'galore@coffee.nl'),
	(4, 'Perk Plus', 'Salem', 'Oregon', 'USA', '+1-503-987-6543', 'perkplus@coffee.us'),
	(5, 'Café Colombian', 'Hawthorne', 'California', 'USA', '+1-310-123-4567', 'cafecolombian@coffee.us'),
	(6, 'Jumpin\' Java', 'Sydney', 'New South Wales', 'Australia', '+61-2-8765-4321', 'jumpinjava@coffee.com.au'),
	(7, 'Coffee 2000', 'Munich', 'Bavaria', 'Germany', '+49-89-7654-3210', 'coffee2000@coffee.de'),
	(8, 'The Whole Bean', 'Alton', 'Illinois', 'USA', '+1-618-234-5678', 'wholebean@coffee.us'),
	(9, 'Roast Resellers', 'Vancouver', 'British Columbia', 'Canada', '+1-604-123-9876', 'roastresellers@coffee.ca'),
	(10, 'Wolf Espresso', 'Jakarta', 'Indonesia', 'Indonesia', '08102392', 'wolf@espresso.com'),
	(11, 'Wolf Espresso', 'Jakarta', 'Indonesia', 'Indonesia', '08102392', 'wolf@espresso.com'),
	(12, 'Wolf Espresso', 'Jakarta', 'Indonesia', 'Indonesia', '08102392', 'wolf@espresso.com');
/*!40000 ALTER TABLE `distributor` ENABLE KEYS */;

-- Dumping structure for table coffee_valley.login
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table coffee_valley.login: ~0 rows (approximately)
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`id`, `username`, `password`) VALUES
	(1, 'jamal', 'jamal');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;

-- Dumping structure for table coffee_valley.upload
CREATE TABLE IF NOT EXISTS `upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `document_name` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table coffee_valley.upload: ~0 rows (approximately)
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
