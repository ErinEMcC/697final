-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2015 at 02:53 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `translated_works`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `authorID` smallint(6) DEFAULT NULL,
  `authorFN` varchar(75) DEFAULT NULL,
  `authorLN` varchar(75) DEFAULT NULL,
  `authorFull` varchar(75) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `language` varchar(25) DEFAULT NULL,
  `countryCode` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`authorID`, `authorFN`, `authorLN`, `authorFull`, `gender`, `language`, `countryCode`) VALUES
(14, 'Carmen', 'Posadas', 'Carmen Posadas', 'F', 'Spanish', 'ES'),
(4, 'Catherine', 'Breillat', 'Catherine Breillat', 'F', 'French', 'FR'),
(33, 'Cristina Ali', 'Farah', 'Cristina Ali Farah', 'F', 'Italian', 'IT'),
(49, 'Edith', 'Sodergran', 'Edith Sodergran', 'F', 'Swedish', 'SE'),
(15, 'Elena', 'Fanailova', 'Elena Fanailova', 'F', 'Russian', 'RU'),
(53, 'Elisa', 'Biagini', 'Elisa Biagini', 'F', 'Italian', 'IT'),
(54, 'Eunice', 'Odio', 'Eunice Odio', 'F', 'Spanish', 'CR'),
(20, 'Francesca', 'Turini Bufalini', 'Francesca Turini Bufalini', 'F', 'Italian', 'IT'),
(64, 'Giovanna', 'Sandri', 'Giovanna Sandri', 'F', 'Italian', 'IT'),
(65, 'Helene', 'Gestern', 'Helene Gestern', 'F', 'French', 'FR'),
(66, 'Helene', 'Vachon', 'Helene Vachon', 'F', 'French', 'FR'),
(39, 'Ingrid', 'Winterbach', 'Ingrid Winterbach', 'F', 'Afrikaans', 'ZA'),
(68, 'Isabel', 'Allende', 'Isabel Allende', 'F', 'Spanish', 'CL'),
(25, 'Julia', 'Hartwig', 'Julia Hartwig', 'F', 'Polish', 'PL'),
(77, 'Liliana', 'Heker', 'Liliana Heker', 'F', 'Spanish', 'AR'),
(11, 'Alexander', 'Vvedensky', 'Alexander Vvedensky', 'M', 'Russian', 'RU'),
(44, 'Andres', 'Neuman', 'Andres Neuman', 'M', 'Spanish', 'AR'),
(2, 'Angel', 'Wagenstein', 'Angel Wagenstein', 'M', 'Bulgarian', 'BG'),
(47, 'Bruno', 'Jasienski', 'Bruno Jasienski', 'M', 'Polish', 'PL'),
(48, 'Carlos', 'Fuentes', 'Carlos Fuentes', 'M', 'Spanish', 'MX'),
(32, 'Claude', 'Izner', 'Claude Izner', 'M', 'French', 'FR'),
(34, 'Daniel', 'Glattauer', 'Daniel Glattauer', 'M', 'German', 'AT'),
(35, 'Dmitri', 'Birman', 'Dmitri Birman', 'M', 'Russian', 'RU'),
(7, 'Dmitry', 'Golynko', 'Dmitry Golynko', 'M', 'Russian', 'RU'),
(50, 'Eduardo', 'Halfon', 'Eduardo Halfon', 'M', 'Spanish', 'GT'),
(16, 'Ernesto', 'Cardenal', 'Ernesto Cardenal', 'M', 'Spanish', 'NI'),
(62, 'Ernst', 'Meister', 'Ernst Meister', 'M', 'German', 'DE'),
(8, 'Etgar', 'Keret', 'Etgar Keret', 'M', 'Hebrew', 'IL'),
(9, 'Eugen', 'Jebeleanu', 'Eugen Jebeleanu', 'M', 'Romanian', 'RO'),
(10, 'Eugene', 'Guillevic', 'Eugene Guillevic', 'M', 'French', 'FR'),
(36, 'Evelio', 'Rosero', 'Evelio Rosero', 'M', 'Spanish', 'CO'),
(19, 'Fernando del', 'Paso', 'Fernando del Paso', 'M', 'Spanish', 'MX'),
(21, 'Friedrich', 'Torberg', 'Friedrich Torberg', 'M', 'German', 'AT'),
(55, 'Fritz', 'Lemmmermayer', 'Fritz Lemmmermayer', 'M', 'German', 'AT'),
(72, 'Gilles', 'Petel', 'Gilles Petel', 'M', 'French', 'FR'),
(38, 'Haruki', 'Murakami', 'Haruki Murakami', 'M', 'Japanese', 'JP'),
(73, 'Hasan Ali', 'Toptas', 'Hasan Ali Toptas', 'M', 'Turkish', 'TR'),
(59, 'Jacinto Lucas', 'Pires', 'Jacinto Lucas Pires', 'M', 'Portuguese', 'PT'),
(60, 'Javier', 'Montes', 'Javier Montes', 'M', 'Spanish', 'ES'),
(41, 'Jorge Carrera', 'Andrade', 'Jorge Carrera Andrade', 'M', 'Spanish', 'EC'),
(76, 'Laurent', 'Mauvignier', 'Laurent Mauvignier', 'M', 'French', 'FR'),
(71, 'Leopoldo', 'Marechal', 'Leopoldo Marechal', 'M', 'Spanish', 'AR'),
(29, 'Mahmoud', 'Darwish', 'Mahmoud Darwish', 'M', 'Arabic', 'PS'),
(79, 'Mairtin', 'O Cadhain', 'Mairtin O Cadhain', 'M', 'Irish', 'IE'),
(30, 'Martin', 'Solares', 'Martin Solares', 'M', 'Spanish', 'MX'),
(1, 'Adalet', 'Agaoglu', 'Adalet Agaoglu', 'F', 'Turkish', 'TR'),
(43, 'Andrea', 'Zanzotto', 'Andrea Zanzotto', 'M', 'Italian', 'IT'),
(3, 'Azem', 'Shkreli', 'Azem Shkreli', 'M', 'Albanian', 'AL'),
(45, 'Ba', 'Jin', 'Ba Jin', 'M', 'Chinese', 'CN'),
(12, 'Bi', 'Feiyu', 'Bi Feiyu', 'M', 'Chinese', 'CN'),
(46, 'Bilge', 'Karasu', 'Bilge Karasu', 'M', 'Turkish', 'TR'),
(13, 'Can', 'Xue', 'Can Xue', 'F', 'Chinese', 'CN'),
(5, 'Charu', 'Nivedita', 'Charu Nivedita', 'M', 'Tamil', 'IN'),
(51, 'Chingak Kuksa', 'Hyesim', 'Chingak Kuksa Hyesim', 'M', 'Korean', 'KR'),
(52, 'Cho', 'Chongnae', 'Cho Chongnae', 'M', 'Korean', 'KR'),
(6, 'Ch''oe', 'Yun', 'Ch''oe Yun', 'F', 'Korean', 'KR'),
(22, 'Demosthenes', 'Agrafiotis', 'Demosthenes Agrafiotis', 'M', 'Greek', 'GR'),
(23, 'Dubravka', 'Ugresic', 'Dubravka Ugresic', 'F', 'Croatian', 'HR'),
(17, 'Ewa', 'Lipska', 'Ewa Lipska', 'F', 'Polish', 'PL'),
(18, 'Fariba', 'Vafi', 'Fariba Vafi', 'F', 'Farsi', 'IR'),
(63, 'Fereshteh', 'Nouraie-Simone', 'Fereshteh Nouraie-Simone', 'F', 'Persian', 'IR'),
(56, 'Fuminori', 'Nakamura', 'Fuminori Nakamura', 'M', 'Japanese', 'JP'),
(57, 'Gellu', 'Naum', 'Gellu Naum', 'M', 'Romanian', 'RO'),
(58, 'Gheorghe', 'Sasarman', 'Gheorghe Sasarman', 'M', 'Romanian', 'RO'),
(37, 'H.E.', 'Sayeh', 'H.E. Sayeh', 'M', 'Persian', 'IR'),
(74, 'Heeduk', 'Ra', 'Heeduk Ra', 'F', 'Korean', 'KR'),
(24, 'Heimrad', 'Backer', 'Heimrad Backer', 'M', 'German', 'AT'),
(67, 'In-ho', 'Choi', 'In-ho Choi', 'M', 'Korean', 'KR'),
(40, 'Ioan', 'Flora', 'Ioan Flora', 'M', 'Romanian', 'RO'),
(69, 'Jana', 'Juranova', 'Jana Juranova', 'F', 'Slovak', 'SK'),
(61, 'Joo-young', 'Kim', 'Joo-young Kim', 'M', 'Korean', 'KR'),
(42, 'Kanai', 'Mieko', 'Kanai Mieko', 'F', 'Japanese', 'JP'),
(26, 'Ketil', 'Bjornstad', 'Ketil Bjornstad', 'M', 'Norwegian', 'NO'),
(75, 'Ko', 'Un', 'Ko Un', 'M', 'Korean', 'KR'),
(70, 'Lee', 'Si-young', 'Lee Si-young', 'F', 'Korean', 'KR'),
(78, 'Liu', 'Zhenyun', 'Liu Zhenyun', 'M', 'Chinese', 'CN'),
(27, 'Luljeta', 'Lleshanaku', 'Luljeta Lleshanaku', 'F', 'Albanian', 'AL'),
(28, 'Mahasweta', 'Devi', 'Mahasweta Devi', 'F', 'Bengali', 'IN'),
(80, 'Mang', 'Ke', 'Mang Ke', 'M', 'Chinese', 'CN'),
(81, 'Merce', 'Rodoreda', 'Merce Rodoreda', 'F', 'Catalan', 'ES'),
(31, 'Nedim', 'Gursel', 'Nedim Gursel', 'M', 'Turkish', 'TR');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `countryCode` char(2) DEFAULT NULL,
  `countryDisplay` varchar(50) DEFAULT NULL,
  `region` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countryCode`, `countryDisplay`, `region`) VALUES
('AL', 'Albania', 'Europe'),
('AR', 'Argentina', 'South America'),
('AT', 'Austria', 'Europe'),
('BG', 'Bulgaria', 'Europe'),
('CA', 'Canada', 'North America'),
('CL', 'Chile', 'South America'),
('CN', 'China', 'Asia'),
('CO', 'Colombia', 'South America'),
('CR', 'Costa Rica', 'South America'),
('HR', 'Croatia', 'Europe'),
('EC', 'Ecuador', 'South America'),
('FR', 'France', 'Europe'),
('DE', 'Germany', 'Europe'),
('GR', 'Greece', 'Europe'),
('GT', 'Guatemala', 'South America'),
('IN', 'India', 'Asia'),
('IR', 'Iran, Islamic Republic of', 'Middle East'),
('IE', 'Ireland', 'Europe'),
('IL', 'Israel', 'Middle East'),
('IT', 'Italy', 'Europe'),
('JP', 'Japan', 'Asia'),
('MX', 'Mexico', 'North America'),
('NI', 'Nicaragua', 'South America'),
('NO', 'Norway', 'Europe'),
('PS', 'Palestinian Territory, Occupied', 'Middle East'),
('PL', 'Poland', 'Europe'),
('PT', 'Portugal', 'Europe'),
('RO', 'Romania', 'Asia'),
('RU', 'Russia', 'Asia'),
('SK', 'Slovakia', 'Europe'),
('ZA', 'South Africa', 'Africa'),
('KR', 'South Korea', 'Asia'),
('ES', 'Spain', 'Europe'),
('SE', 'Sweden', 'Europe'),
('TR', 'Turkey', 'Middle East');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `language` varchar(25) DEFAULT NULL,
  `langFamily` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`language`, `langFamily`) VALUES
('Arabic', 'Afro-Asiatic'),
('Hebrew', 'Afro-Asiatic'),
('Tamil', 'Dravidian'),
('Bulgarian', 'Indo-European'),
('Albanian', 'Indo-European'),
('French', 'Indo-European'),
('Russian', 'Indo-European'),
('Romanian', 'Indo-European'),
('Spanish', 'Indo-European'),
('Polish', 'Indo-European'),
('Italian', 'Indo-European'),
('German', 'Indo-European'),
('Croatian', 'Indo-European'),
('Norwegian', 'Indo-European'),
('Afrikaans', 'Indo-European'),
('Swedish', 'Indo-European'),
('Portuguese', 'Indo-European'),
('Slovak', 'Indo-European'),
('Irish', 'Indo-European'),
('Catalan', 'Indo-European'),
('Farsi', 'Indo-European'),
('Greek', 'Indo-European'),
('Bengali', 'Indo-European'),
('Persian', 'Indo-European'),
('Japanese', 'Japonic'),
('Korean', 'Koreanic'),
('Chinese', 'Sino-Tibetan'),
('Turkish', 'Turkic');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE IF NOT EXISTS `publishers` (
  `publisherID` varchar(5) DEFAULT NULL,
  `pubName` varchar(100) DEFAULT NULL,
  `pubCity` varchar(50) DEFAULT NULL,
  `pubState` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`publisherID`, `pubName`, `pubCity`, `pubState`) VALUES
('2d', 'Indiana University Press', 'Bloomington', 'IN'),
('1g', 'Black Widow Press', 'Boston', 'MA'),
('3b', 'Ugly Duckling', 'Brooklyn', 'NY'),
('3g', 'White Pine', 'Buffalo', 'NY'),
('1r', 'Dalkey Archive', 'Champaign', 'IL'),
('1t', 'Dufour Editions', 'Chester Springs', 'PA'),
('2m', 'Northwestern University Press', 'Chicago', 'IL'),
('3c', 'University of Chicago', 'Chicago', 'IL'),
('1q', 'Cornell University Press', 'Ithaca', 'NY'),
('1i', 'BlazeVOX', 'Kenmore', 'NY'),
('3d', 'University of Nebraska', 'Lincoln', 'NE'),
('1y', 'Green Integer', 'Los Angeles', 'CA'),
('2t', 'Semiotext(e)', 'Los Angeles', 'CA'),
('2p', 'Otis Books', 'Los Angeles', 'CA'),
('1o', 'Coffee House', 'Minneapolis', 'MN'),
('2i', 'McGill-Queen''s University Press', 'Outside US', 'XX'),
('3h', 'Yale University Press', 'New Haven ', 'CT'),
('3e', 'University of New Orleans Press', 'New Orleans', 'LA'),
('2o', 'Other Press', 'New York', 'NY'),
('1p', 'Columbia University Press', 'New York', 'NY'),
('1w', 'FSG', 'New York', 'NY'),
('2c', 'Houghton Mifflin Harcourt', 'New York', 'NY'),
('2a', 'HarperCollins', 'New York', 'NY'),
('2l', 'New Directions', 'New York', 'NY'),
('1k', 'Bordighera Press', 'New York', 'NY'),
('1z', 'Grove', 'New York', 'NY'),
('2k', 'Minotaur', 'New York', 'NY'),
('1u', 'Enigma Books', 'New York', 'NY'),
('2e', 'Knopf', 'New York', 'NY'),
('1e', 'Bellevue Literary Press', 'New York', 'NY'),
('1m', 'Chelsea Editions', 'New York', 'NY'),
('1d', 'Atria', 'New York', 'NY'),
('1f', 'Black Cat', 'New York', 'NY'),
('2u', 'Silver Oak', 'New York', 'NY'),
('2r', 'Process', 'New York', 'NY'),
('2v', 'Soho Press', 'New York', 'NY'),
('1v', 'Feminist Press', 'New York', 'NY'),
('1j', 'Bloomsbury', 'New York', 'NY'),
('2x', 'Talisman House', 'Northfield', 'MA'),
('3a', 'Twisted Spoon Press', 'Outside US', 'XX'),
('2b', 'Hispabooks Publishing', 'Outside US', 'XX'),
('1x', 'Gallic Books', 'Outside US', 'XX'),
('1h', 'Blaft', 'Outside US', 'XX'),
('2g', 'Maia', 'Outside US', 'XX'),
('2s', 'Seagull Books', 'Outside US', 'XX'),
('1s', 'DISQUIET', 'Outside US', 'XX'),
('1l', 'Calypso Editions', 'Philadelphia', 'PA'),
('2j', 'MerwinAsia', 'Portland', 'ME'),
('2z', 'Tavern Books', 'Potland', 'OR'),
('1c', 'Ariadne Books', 'Riverside', 'CA'),
('2n', 'Open Letter', 'Rochester', 'NY'),
('1b', 'Arcade', 'Rye', 'NY'),
('1n', 'City Lights', 'San Francisco', 'CA'),
('2f', 'Long River Press', 'San Francisco', 'CA'),
('2q', 'Post-Apollo Press', 'Sausalito', 'CA'),
('3f', 'Wave Books', 'Seattle', 'WA'),
('1a', 'Aqueduct Press', 'Seattle', 'WA'),
('3i', 'Zephyr Press', 'St. Paul', 'MN'),
('2w', 'Syracuse University Press', 'Syracuse', 'NY'),
('2y', 'Talonbooks', 'Vancouver', 'BC'),
('2h', 'Marick Press', 'Washington ', 'D.');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE IF NOT EXISTS `titles` (
  `isbn` char(13) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `authorID` smallint(6) DEFAULT NULL,
  `translatorID` varchar(5) DEFAULT NULL,
  `publisherID` varchar(5) DEFAULT NULL,
  `genre` varchar(7) DEFAULT NULL,
  `price` decimal(4,2) DEFAULT NULL,
  `pub_month` int(11) DEFAULT NULL,
  `pub_year` year(4) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `countryCode` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`isbn`, `title`, `authorID`, `translatorID`, `publisherID`, `genre`, `price`, `pub_month`, `pub_year`, `language`, `countryCode`) VALUES
('9780374531058', 'Girl on the Fridge', 8, 'h', '1w', 'Fiction', '12.00', 4, 2008, 'Hebrew', 'IL'),
('9781564785336', 'News from the Empire', 19, 'r', '1r', 'Fiction', '18.95', 4, 2009, 'Spanish', 'MX'),
('9780810126787', 'It Will Return', 25, 'x', '2m', 'Poetry', '16.95', 4, 2010, 'Polish', 'PL'),
('9781402786747', 'Love Virtually', 34, 'ag', '2u', 'Fiction', '12.00', 4, 2011, 'German', 'AT'),
('9788086264370', 'I Burn Paris', 47, 'as', '3a', 'Fiction', '16.95', 4, 2012, 'Polish', 'PL'),
('9781935635239', 'Fire''s Journey: Part I', 54, 'az', '2z', 'Poetry', '17.00', 4, 2013, 'Spanish', 'CR'),
('9780889228405', 'Matter of Gravity', 66, 'bm', '2y', 'Fiction', '18.95', 4, 2014, 'French', 'CA'),
('9780773543096', 'Adam Buenosayres', 71, 'bp', '2i', 'Fiction', '29.95', 4, 2014, 'Spanish', 'AR'),
('9781938890086', 'October Dedications', 80, 'bx', '3i', 'Poetry', '15.00', 4, 2015, 'Chinese', 'CN'),
('9780061583629', 'Child''s Play', 14, 'm', '2a', 'Fiction', '24.99', 8, 2009, 'Spanish', 'ES'),
('9780835100007', 'Ward Four', 45, 'aq', '2f', 'Fiction', '16.95', 8, 2012, 'Chinese', 'CN'),
('9781402789793', 'Every Seventh Wave', 34, 'ag', '2u', 'Fiction', '12.00', 8, 2012, 'German', 'AT'),
('9781632860613', 'Reckless', 73, 'bq', '1j', 'Fiction', '26.00', 8, 2015, 'Turkish', 'TR'),
('9781628725209', 'Cook, the Crook, and the Real Estate Tycoon', 78, 'bv', '1b', 'Fiction', '24.99', 8, 2015, 'Chinese', 'CN'),
('9781599540092', 'Autobiographical Poems', 20, 's', '1k', 'Poetry', '18.00', 12, 2009, 'Italian', 'IT'),
('9781564787965', 'Adam in Eden', 48, 'at', '1r', 'Fiction', '20.00', 12, 2012, 'Spanish', 'MX'),
('9781934170502', 'Hashish the Lost Legend', 55, 'ba', '2r', 'Fiction', '65.00', 12, 2013, 'German', 'AT'),
('9781558618688', 'Shipwrecked: Contemporary Stories by Women from Iran', 63, 'bj', '1v', 'Fiction', '18.95', 12, 2014, 'Persian', 'IR'),
('9780988790353', 'Ilona. My Life with the Bard', 69, 'bn', '1l', 'Fiction', '15.00', 12, 2014, 'Slovak', 'SK'),
('9781566892063', 'Secret Weapon: Selected Late Poems', 9, 'i', '1o', 'Poetry', '15.00', 2, 2008, 'Romanian', 'RO'),
('9780942996708', 'Maribor', 22, 'u', '2q', 'Poetry', '15.00', 2, 2010, 'Greek', 'GR'),
('9780802119278', 'Baba Yaga Laid an Egg', 23, 'v', '1z', 'Fiction', '23.00', 2, 2010, 'Croatian', 'HR'),
('9781564785657', 'transcript', 24, 'w', '1r', 'Poetry', '25.95', 2, 2010, 'German', 'AT'),
('9780811218474', 'Child of Nature', 27, 'z', '2l', 'Poetry', '13.95', 2, 2010, 'Albanian', 'AL'),
('9780062291400', 'Ripper', 68, 'bf', '2a', 'Fiction', '28.99', 2, 2014, 'Spanish', 'CL'),
('9780803239876', 'Wound', 76, 'bt', '3d', 'Fiction', '19.95', 2, 2015, 'French', 'FR'),
('9780151012947', 'Moon Opera', 12, 'k', '2c', 'Fiction', '18.00', 1, 2009, 'Chinese', 'CN'),
('9780811218092', 'Pluriverse', 16, 'o', '2l', 'Poetry', '21.95', 1, 2009, 'Spanish', 'NI'),
('9781584980711', 'Conqueror', 31, 'ad', '2x', 'Fiction', '18.95', 1, 2010, 'Turkish', 'TR'),
('9781933947556', 'Indian Summer', 42, 'ao', '1q', 'Fiction', '24.00', 1, 2011, 'Japanese', 'JP'),
('9781937385163', 'How in Heaven''s Name', 52, 'f', '2j', 'Fiction', '23.00', 1, 2013, 'Korean', 'KR'),
('9780986017315', 'only fragments found', 64, 'bk', '2p', 'Poetry', '14.95', 1, 2014, 'Italian', 'IT'),
('9781557134226', 'Patterns', 70, 'bo', '1y', 'Poetry', '11.95', 1, 2014, 'Korean', 'KR'),
('9781906497538', 'Queen of Jhansi', 28, 'aa', '2s', 'Fiction', '21.95', 7, 2010, 'Bengali', 'IN'),
('9781608010677', 'Medea and Her War Machines', 40, 'am', '3e', 'Poetry', '16.95', 7, 2011, 'Romanian', 'RO'),
('9781564787798', 'Vlad', 48, 'au', '1r', 'Fiction', '17.95', 7, 2012, 'Spanish', 'MX'),
('9781572411494', 'Tante Jolesch or The Decline of the West in Anecdotes', 21, 't', '1c', 'Fiction', '24.00', 6, 2009, 'German', 'AT'),
('9781904559351', 'To Music', 26, 'y', '2g', 'Fiction', '17.95', 6, 2010, 'Norwegian', 'NO'),
('9780815609230', 'State of Siege', 29, 'ab', '2w', 'Poetry', '19.95', 6, 2010, 'Arabic', 'PS'),
('9781935210436', 'Magnolia & Lotus', 51, 'ax', '3g', 'Poetry', '16.00', 6, 2013, 'Korean', 'KR'),
('9781616952129', 'Evil and the Mask', 56, 'bb', '2v', 'Fiction', '25.95', 6, 2013, 'Japanese', 'JP'),
('9781908313546', 'People in the Photo', 65, 'bl', '1x', 'Fiction', '14.95', 6, 2014, 'French', 'FR'),
('9781584980599', 'Summer''s End', 1, 'a', '2x', 'Fiction', '18.95', 3, 2008, 'Turkish', 'TR'),
('9780300122275', 'Five Spice Street', 13, 'l', '3h', 'Fiction', '25.00', 3, 2009, 'Chinese', 'CN'),
('9780939010981', 'Russian Version: Selected Poems', 15, 'n', '3i', 'Poetry', '14.95', 3, 2009, 'Russian', 'RU'),
('9781908313669', 'Under the Channel', 72, 'bl', '1x', 'Fiction', '15.95', 3, 2015, 'French', 'FR'),
('9781584350477', 'Pornocracy', 4, 'd', '2t', 'Fiction', '14.95', 5, 2008, 'French', 'FR'),
('9788190605618', 'Zero Degree', 5, 'e', '1h', 'Fiction', '9.99', 5, 2008, 'Tamil', 'IN'),
('9780231142960', 'There a Petal Silently Falls', 6, 'f', '1p', 'Fiction', '24.50', 5, 2008, 'Korean', 'KR'),
('9780802170682', 'Black Minutes', 30, 'ac', '1f', 'Fiction', '14.00', 5, 2010, 'Spanish', 'MX'),
('9780253222961', 'Little Mother', 33, 'af', '2d', 'Fiction', '22.95', 5, 2011, 'Italian', 'IT'),
('9781934824337', 'Book of Happenstance', 39, 'al', '2n', 'Fiction', '14.95', 5, 2011, 'Afrikaans', 'ZA'),
('9780374119393', 'Traveler of the Century', 44, 'ae', '1w', 'Fiction', '30.00', 5, 2012, 'Spanish', 'AR'),
('9781609640507', 'now, 1/3 & thepoem', 22, 'u', '1i', 'Poetry', '16.00', 5, 2012, 'Greek', 'GR'),
('9781619760257', 'Squaring the Circle: A Pseudotreatise of Urbogony', 58, 'bd', '1a', 'Fiction', '16.00', 5, 2013, 'Romanian', 'RO'),
('9780300198041', 'Please Talk to Me', 77, 'bu', '3h', 'Fiction', '16.00', 5, 2015, 'Spanish', 'AR'),
('9781564784438', 'Key', 79, 'bw', '1r', 'Fiction', '14.95', 5, 2015, 'Irish', 'IE'),
('9781590512456', 'Isaac''s Torah', 2, 'b', '2o', 'Fiction', '23.95', 11, 2008, 'Bulgarian', 'BG'),
('9781933254364', 'As it Turned Out', 7, 'g', '3b', 'Poetry', '15.00', 11, 2008, 'Russian', 'RU'),
('9780810126336', 'New Century', 17, 'p', '2m', 'Poetry', '24.95', 11, 2009, 'Polish', 'PL'),
('9780815609445', 'My Bird', 18, 'q', '2w', 'Fiction', '24.95', 11, 2009, 'Farsi', 'IR'),
('9781935210276', 'Art of Stepping Through Time', 37, 'aj', '3g', 'Poetry', '16.00', 11, 2011, 'Persian', 'IR'),
('9781933517551', 'Micrograms', 41, 'an', '3f', 'Poetry', '16.00', 11, 2011, 'Spanish', 'EC'),
('9780226922218', 'Haiku for a Season', 43, 'ap', '3c', 'Poetry', '18.00', 11, 2012, 'Italian', 'IT'),
('9780872865914', 'Long Day''s Evening', 46, 'ar', '1n', 'Fiction', '13.95', 11, 2012, 'Turkish', 'TR'),
('9780983099970', 'Athanor and Other Pohems', 57, 'bc', '1l', 'Poetry', '15.00', 11, 2013, 'Romanian', 'RO'),
('9781938604485', 'True Actor', 59, 'be', '1s', 'Fiction', '14.95', 11, 2013, 'Portuguese', 'PT'),
('9788494094866', 'Hotel Life', 60, 'bf', '2b', 'Fiction', '15.95', 11, 2013, 'Spanish', 'ES'),
('9781564789594', 'Stingray', 61, 'bg', '1r', 'Fiction', '13.50', 11, 2013, 'Korean', 'KR'),
('9781935210733', 'Wild Apple', 74, 'br', '3g', 'Poetry', '16.00', 11, 2015, 'Korean', 'KR'),
('9781501116971', 'Japanese Lover', 68, 'm', '1d', 'Fiction', '28.00', 11, 2015, 'Spanish', 'CL'),
('9781940953229', 'War, So Much War', 81, 'by', '2n', 'Fiction', '13.95', 11, 2015, 'Catalan', 'ES'),
('9781933382333', 'An Invitation for Me to Think', 11, 'g', '1y', 'Poetry', '14.95', 10, 2009, 'Russian', 'RU'),
('9781933254685', 'Chinese Notebook', 22, 'u', '3b', 'Poetry', '17.00', 10, 2010, 'Greek', 'GR'),
('9781936274352', 'Alphabet of Masks', 35, 'ah', '1u', 'Poetry', '19.00', 10, 2011, 'Russian', 'RU'),
('9780307593313', '1Q84', 38, 'ak', '2e', 'Fiction', '30.00', 10, 2011, 'Japanese', 'JP'),
('9781934851425', 'On Foot I Wandered Through the Solar Systems', 49, 'av', '2h', 'Poetry', '14.95', 10, 2012, 'Swedish', 'SE'),
('9781934137536', 'Polish Boxer', 50, 'aw', '1e', 'Fiction', '14.95', 10, 2012, 'Spanish', 'GT'),
('9781934137826', 'Monastery', 50, 'bh', '1e', 'Fiction', '14.95', 10, 2014, 'Spanish', 'GT'),
('9781628971019', 'Another Man''s City', 67, 'f', '1r', 'Fiction', '16.95', 10, 2014, 'Korean', 'KR'),
('9781780372426', 'Maninbo', 75, 'bs', '1t', 'Poetry', '35.00', 10, 2015, 'Korean', 'KR'),
('9781933382913', 'Blood of the Quill: Selected Poetry from Kosovo', 3, 'c', '1y', 'Poetry', '13.95', 9, 2008, 'Albanian', 'AL'),
('9780979513763', 'Art Poetique', 10, 'j', '1g', 'Poetry', '21.95', 9, 2008, 'French', 'FR'),
('9780312662158', 'Assassin in the Marais', 32, 'ae', '2k', 'Fiction', '24.99', 9, 2011, 'French', 'FR'),
('9780811219303', 'Good Offices', 36, 'ai', '2l', 'Fiction', '12.95', 9, 2011, 'Spanish', 'CO'),
('9780988478763', 'Guest in the Wood', 53, 'ay', '1m', 'Poetry', '20.00', 9, 2013, 'Italian', 'IT'),
('9781933517940', 'Wallless Space', 62, 'bi', '3f', 'Poetry', '18.00', 9, 2014, 'German', 'DE');

-- --------------------------------------------------------

--
-- Table structure for table `translators`
--

CREATE TABLE IF NOT EXISTS `translators` (
  `translatorID` varchar(5) DEFAULT NULL,
  `translatorFN` varchar(75) DEFAULT NULL,
  `translatorLN` varchar(75) DEFAULT NULL,
  `translatorFull` varchar(75) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `language` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `translators`
--

INSERT INTO `translators` (`translatorID`, `translatorFN`, `translatorLN`, `translatorFull`, `gender`, `language`) VALUES
('ap', 'Anna', 'Secco', 'Anna Secco', 'F', 'Italian'),
('ai', 'Anne', 'McLean', 'Anne McLean', 'F', 'Spanish'),
('ah', 'Antonia', 'Bouis', 'Antonia Bouis', 'F', 'Russian'),
('y', 'Deborah', 'Dawkin', 'Deborah Dawkin', 'F', 'Norwegian'),
('ay', 'Diana', 'Thow', 'Diana Thow', 'F', 'Italian'),
('b', 'Elizabeth', 'Frank', 'Elizabeth Frank', 'F', 'Bulgarian'),
('v', 'Ellen', 'Elias-Bursac', 'Ellen Elias-Bursac', 'F', 'Croatian'),
('bl', 'Emily', 'Boyce', 'Emily Boyce', 'F', 'French'),
('af', 'Giovanna', 'Bellesia-Contuzzi', 'Giovanna Bellesia-Contuzzi', 'F', 'Italian'),
('al', 'Ingrid', 'Winterbach', 'Ingrid Winterbach', 'F', 'Afrikaans'),
('s', 'Joan', 'Borrelli', 'Joan Borrelli', 'F', 'Italian'),
('bn', 'Julia', 'Sherwood', 'Julia Sherwood', 'F', 'Slovak'),
('l', 'Karen', 'Gernant', 'Karen Gernant', 'F', 'Chinese'),
('ag', 'Katharina', 'Bielenberg', 'Katharina Bielenberg', 'F', 'German'),
('bh', 'Lisa', 'Dillman', 'Lisa Dillman', 'F', 'Spanish'),
('ae', 'Lorenza', 'Garcia', 'Lorenza Garcia', 'F', 'French'),
('av', 'Malena', 'Morling', 'Malena Morling', 'F', 'Swedish'),
('t', 'Maria', 'Bauer', 'Maria Bauer', 'F', 'German'),
('by', 'Maruxa', 'Relano', 'Maruxa Relano', 'F', 'Catalan'),
('bq', 'Maureen', 'Freely', 'Maureen Freely', 'F', 'Turkish'),
('j', 'Maureen', 'Smith', 'Maureen Smith', 'F', 'French'),
('h', 'Miriam', 'Shlesinger', 'Miriam Shlesinger', 'F', 'Hebrew'),
('bj', 'Sara', 'Khalili', 'Sara Khalili', 'F', 'Persian'),
('n', 'Stephanie', 'Sandler', 'Stephanie Sandler', 'F', 'Russian'),
('bv', 'Sylvia', 'Li-chun', 'Sylvia Li-chun', 'F', 'Chinese'),
('am', 'Adam', 'Sorkin', 'Adam Sorkin', 'M', 'Romanian'),
('bu', 'Alberto', 'Manguel', 'Alberto Manguel', 'M', 'Spanish'),
('an', 'Alejandro de', 'Acosta', 'Alejandro de Acosta', 'M', 'Spanish'),
('r', 'Alfonso', 'Gonzalez', 'Alfonso Gonzalez', 'M', 'Spanish'),
('bo', 'Brother', 'Anthony', 'Brother Anthony', 'M', 'Korean'),
('f', 'Bruce', 'Fulton', 'Bruce Fulton', 'M', 'Korean'),
('aj', 'Chad', 'Sweeney', 'Chad Sweeney', 'M', 'Persian'),
('aw', 'Daniel', 'Hahn', 'Daniel Hahn', 'M', 'Spanish'),
('br', 'Daniel', 'Parker', 'Daniel Parker', 'M', 'Korean'),
('bt', 'David', 'Ball', 'David Ball', 'M', 'French'),
('g', 'Eugene', 'Ostashevsky', 'Eugene Ostashevsky', 'M', 'Russian'),
('bi', 'Graham', 'Foust', 'Graham Foust', 'M', 'German'),
('bk', 'Guy', 'Bennett', 'Guy Bennett', 'M', 'Italian'),
('z', 'Henry', 'Israeli', 'Henry Israeli', 'M', 'Albanian'),
('ba', 'Herman', 'Schibli', 'Herman Schibli', 'M', 'German'),
('k', 'Howard', 'Goldblatt', 'Howard Goldblatt', 'M', 'Chinese'),
('bm', 'Howard', 'Scott', 'Howard Scott', 'M', 'French'),
('ax', 'Ian', 'Haight', 'Ian Haight', 'M', 'Korean'),
('be', 'Jaime', 'Braz', 'Jaime Braz', 'M', 'Portuguese'),
('ak', 'Jay', 'Rubin', 'Jay Rubin', 'M', 'Japanese'),
('x', 'John', 'Carpenter', 'John Carpenter', 'M', 'Polish'),
('u', 'John', 'Sakkis', 'John Sakkis', 'M', 'Greek'),
('o', 'Jonathan', 'Cohen', 'Jonathan Cohen', 'M', 'Spanish'),
('bw', 'Louis', 'de Paor', 'Louis de Paor', 'M', 'Irish'),
('bx', 'Lucas', 'Klein', 'Lucas Klein', 'M', 'Chinese'),
('bd', 'Mariano Matin', 'Rodriguez', 'Mariano Matin Rodriguez', 'M', 'Romanian'),
('bc', 'Martin', 'Woodside', 'Martin Woodside', 'M', 'Romanian'),
('i', 'Matthew', 'Zapruder', 'Matthew Zapruder', 'M', 'Romanian'),
('m', 'Nick', 'Caistor', 'Nick Caistor', 'M', 'Spanish'),
('bp', 'Norman', 'Cheadle', 'Norman Cheadle', 'M', 'Spanish'),
('bf', 'Ollie', 'Brock', 'Ollie Brock', 'M', 'Spanish'),
('w', 'Patrick', 'Greaney', 'Patrick Greaney', 'M', 'German'),
('d', 'Paul', 'Buck', 'Paul Buck', 'M', 'French'),
('c', 'Robert', 'Elsie', 'Robert Elsie', 'M', 'Albanian'),
('ar', 'Aron', 'Aji', 'Aron Aji', 'M', 'Turkish'),
('ac', 'Aura', 'Estrada', 'Aura Estrada', 'F', 'Spanish'),
('az', 'Keith', 'Ekiss', 'Keith Ekiss', 'M', 'Spanish'),
('au', 'E. Shaskan', 'Bumas', 'E. Shaskan Bumas', 'M', 'Spanish'),
('at', 'E. Shaskan', 'Burmas', 'E. Shaskan Burmas', 'M', 'Spanish'),
('a', 'Figen', 'Bingul', 'Figen Bingul', 'F', 'Turkish'),
('aq', 'Haili', 'Kong', 'Haili Kong', 'F', 'Chinese'),
('bg', 'Inrae You', 'Vinciguerra', 'Inrae You Vinciguerra', 'F', 'Korean'),
('bs', 'Lee', 'Sang-Wah', 'Lee Sang-Wah', 'F', 'Korean'),
('q', 'Mahnaz', 'Kousha', 'Mahnaz Kousha', 'F', 'Farsi'),
('ab', 'Munir', 'Akash', 'Munir Akash', 'M', 'Arabic'),
('e', 'Pritham', 'Chakravarty', 'Pritham Chakravarty', 'M', 'Tamil'),
('p', 'Robin', 'Davidson', 'Robin Davidson', 'F', 'Polish'),
('aa', 'Sagaree', 'Sengupta', 'Sagaree Sengupta', 'F', 'Bengali'),
('bb', 'Satoko', 'Izumo', 'Satoko Izumo', 'F', 'Japanese'),
('as', 'Soren', 'Gauger', 'Soren Gauger', 'M', 'Polish'),
('ao', 'Tomoko', 'Aoyama', 'Tomoko Aoyama', 'F', 'Japanese'),
('ad', 'Yavuz', 'Demir', 'Yavuz Demir', 'M', 'Turkish');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
