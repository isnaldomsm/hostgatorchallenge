-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2019 at 08:32 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teste`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat_breeds`
--

CREATE TABLE `cat_breeds` (
  `id` int(11) NOT NULL,
  `api_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `temperament` varchar(255) NOT NULL,
  `life_span` varchar(255) NOT NULL,
  `alt_names` varchar(255) NOT NULL,
  `wikipedia_url` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `weight_imperial` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `experimental` tinyint(4) NOT NULL,
  `hairless` tinyint(4) NOT NULL,
  `natural` tinyint(4) NOT NULL,
  `rare` tinyint(4) NOT NULL,
  `rex` tinyint(4) NOT NULL,
  `suppress_tail` tinyint(4) NOT NULL,
  `short_legs` tinyint(4) NOT NULL,
  `hypoallergenic` tinyint(4) NOT NULL,
  `adaptability` tinyint(4) NOT NULL,
  `affection_level` tinyint(4) NOT NULL,
  `child_friendly` tinyint(4) NOT NULL,
  `dog_friendly` tinyint(4) NOT NULL,
  `energy_level` tinyint(4) NOT NULL,
  `grooming` tinyint(4) NOT NULL,
  `health_issues` tinyint(4) NOT NULL,
  `intelligence` tinyint(4) NOT NULL,
  `shedding_level` tinyint(4) NOT NULL,
  `social_needs` tinyint(4) NOT NULL,
  `stranger_friendly` tinyint(4) NOT NULL,
  `vocalisation` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cat_breeds`
--

INSERT INTO `cat_breeds` (`id`, `api_id`, `name`, `temperament`, `life_span`, `alt_names`, `wikipedia_url`, `origin`, `weight_imperial`, `country_code`, `experimental`, `hairless`, `natural`, `rare`, `rex`, `suppress_tail`, `short_legs`, `hypoallergenic`, `adaptability`, `affection_level`, `child_friendly`, `dog_friendly`, `energy_level`, `grooming`, `health_issues`, `intelligence`, `shedding_level`, `social_needs`, `stranger_friendly`, `vocalisation`, `created_at`, `updated_at`) VALUES
(1, 'sibe', 'Siberian', 'Curious, Intelligent, Loyal, Sweet, Agile, Playful, Affectionate', '12 - 15', 'Moscow Semi-longhair, HairSiberian Forest Cat', 'https://en.wikipedia.org/wiki/Siberian_(cat)', 'Russia', '8 - 16', 'RU', 0, 0, 1, 0, 0, 0, 0, 1, 5, 5, 4, 5, 5, 2, 2, 5, 3, 4, 3, 1, '2019-05-14 03:32:12', '2019-05-14 03:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20190508010636, 'QueryCacheMigration', '2019-05-14 00:31:23', '2019-05-14 00:31:23', 0),
(20190508010704, 'CatBreedsMigration', '2019-05-14 00:31:23', '2019-05-14 00:31:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `query_cache`
--

CREATE TABLE `query_cache` (
  `id` int(11) NOT NULL,
  `query` text NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `query_cache`
--

INSERT INTO `query_cache` (`id`, `query`, `data`, `created_at`, `updated_at`) VALUES
(1, 'sib', '[{\"id\": \"sibe\", \"lap\": 1, \"rex\": 0, \"name\": \"Siberian\", \"rare\": 0, \"indoor\": 0, \"origin\": \"Russia\", \"weight\": {\"metric\": \"4 - 7\", \"imperial\": \"8 - 16\"}, \"cfa_url\": \"http://cfa.org/Breeds/BreedsSthruT/Siberian.aspx\", \"natural\": 1, \"grooming\": 2, \"hairless\": 0, \"alt_names\": \"Moscow Semi-longhair, HairSiberian Forest Cat\", \"life_span\": \"12 - 15\", \"short_legs\": 0, \"description\": \"The Siberians dog like temperament and affection makes the ideal lap cat and will live quite happily indoors. Very agile and powerful, the Siberian cat can easily leap and reach high places, including the tops of refrigerators and even doors. \", \"temperament\": \"Curious, Intelligent, Loyal, Sweet, Agile, Playful, Affectionate\", \"adaptability\": 5, \"country_code\": \"RU\", \"dog_friendly\": 5, \"energy_level\": 5, \"experimental\": 0, \"intelligence\": 5, \"social_needs\": 4, \"vocalisation\": 1, \"country_codes\": \"RU\", \"health_issues\": 2, \"vetstreet_url\": \"http://www.vetstreet.com/cats/siberian\", \"wikipedia_url\": \"https://en.wikipedia.org/wiki/Siberian_(cat)\", \"child_friendly\": 4, \"hypoallergenic\": 1, \"shedding_level\": 3, \"affection_level\": 5, \"suppressed_tail\": 0, \"vcahospitals_url\": \"https://vcahospitals.com/know-your-pet/cat-breeds/siberian\", \"stranger_friendly\": 3}]', '2019-05-14 03:32:12', '2019-05-14 03:32:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cat_breeds`
--
ALTER TABLE `cat_breeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `query_cache`
--
ALTER TABLE `query_cache`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cat_breeds`
--
ALTER TABLE `cat_breeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `query_cache`
--
ALTER TABLE `query_cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
