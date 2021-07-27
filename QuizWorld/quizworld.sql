-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2019 at 09:49 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `questionbank`
--

CREATE TABLE `questionbank` (
  `Question` varchar(100) NOT NULL,
  `Option1` varchar(100) NOT NULL,
  `Option2` varchar(100) NOT NULL,
  `Option3` varchar(100) NOT NULL,
  `Option4` varchar(100) NOT NULL,
  `Answer` varchar(100) NOT NULL,
  `quizname` varchar(100) NOT NULL,
  `qid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionbank`
--

INSERT INTO `questionbank` (`Question`, `Option1`, `Option2`, `Option3`, `Option4`, `Answer`, `quizname`, `qid`) VALUES
('	\r\nIn which of the followings places was the last Winter Olympics Games held?', 'Lillehammer', 'Albertville', 'Salt Lake City (USA)', 'Sochi, Russia', 'Sochi, Russia', 'generalquiz', 6),
('	\r\nWhich was the 1st non Test playing country to beat India in an international match?', 'Sri Lanka', 'East Africa', 'Canada', 'Zimbabwe', 'Sri Lanka', 'sportsquiz', 34),
('	\r\nWho among these won the 7th season of Vivo Pro Kabaddi League 2019?', 'Haryana Steelers', 'Telugu Titans', 'Bengal Warriors\r\n', 'Dabang Delhi', 'Bengal Warriors\r\n', 'sportsquiz', 78),
('	\r\nWho is the first Indian woman to win an Asian Games gold in 400m run?', 'P.T. Usha', 'M.L. Valsamma', 'K. Malleshwari', 'Kamaljit Sandhu', 'Kamaljit Sandhu', 'sportsquiz', 31),
('	\r\nWho take over as the 39th president of the BCCI?', 'Kapil Dev', 'Sourav Ganguly', 'Sunil Gavaskar', 'Ajay Jadeja', 'Sourav Ganguly', 'sportsquiz', 79),
(' 	\r\nWhich country won the Cricket World Cup in 1996?', 'Australia', 'South Africa', 'Pakistan', 'England', 'Pakistan', 'sportsquiz', 40),
('Acid present in gastric juice is', 'Sulphuric Acid', 'Hydrochloric Acid', 'Citric Acid', 'Acetic Acid', 'Hydrochloric Acid', 'sciencequiz', 60),
('Boolean operator which combines search terms so that each search result contains all of terms, is', 'Not operator', 'And operator', 'OR operator', 'NOR operator', 'And operator', 'itquiz', 30),
('Bromine is a ', 'Black Solid', 'Colourless Gas', 'Red Liquid', 'Highly Inflammable Gas', 'Red Liquid', 'sciencequiz', 58),
('Cement is made hard by:', 'Hydration and dissociation of water', 'Dehydration', 'Dissociation of water', 'Polymerisation', 'Hydration and dissociation of water', 'sciencequiz', 14),
('Computer memory which allows simultaneous read and write operations is', 'ROM', 'EPRAM', 'RAM', 'EEPRAM', 'RAM', 'itquiz', 25),
('Computer peripheral which automatically inputs data is an example of', 'Data sourcing', 'Data scoring', 'Data determining', 'Data capture', 'Data capture', 'itquiz', 27),
('Computer word size is a multiple of', '1024 bits', '16 bits', '8 bits', '4 bits', '16 bits', 'itquiz', 21),
('Electrical bulb filament is made of', 'Copper', 'Lead', 'Aluminum', 'Tungsten', 'Tungsten', 'sciencequiz', 56),
('Gir National Park is situated in', 'Bihar', 'Allahabad', 'West Bengal', 'Gujarat', 'Gujarat', 'generalquiz', 48),
('Grand Central Terminal, Park Avenue, New York is the world\'s', 'highest railway station', 'longest railway station', 'largest railway station', 'None of the above', 'largest railway station', 'generalquiz', 2),
('How many games will be played in the next Olympic Games?', '32', '28', '24', '34', '28', 'sportsquiz', 32),
('How many non-permanent Security Council (UNO) members are from Afro-Asian countries?', '5', '8', '12', '15', '5', 'generalquiz', 8),
('How many rings are in the symbol of Olympic Games?', '4', '5', '6', '7', '5', 'sportsquiz', 36),
('How much districts are there in Punjab?', '22', '17', '20', '28', '22', 'generalquiz', 3),
('Human Rights Day is on', '24 February', '15 May', '21 July', '10 December', '10 December', 'generalquiz', 10),
('Hundred year war was fought between', 'Greek and Persian forces', 'France and England', 'Civil war in England', 'None of the above', 'France and England', 'generalquiz', 7),
('IDA stands for', 'International Development Agency', 'Industrial Development Analyses', 'Indian Development Agency', 'None of the above', 'International Development Agency', 'generalquiz', 4),
('In computer terminology, OCR stands for', 'Optical Card Reader', 'Optical Character Reader', 'Online Computer Retrieval', 'Office Cash Receiver', 'Optical Character Reader', 'itquiz', 23),
('In which of the following substances all carbon atoms are quaternary in nature?', 'Diamond ', 'Teflon ', 'Graphite   ', 'Naphthalene', 'Diamond ', 'sciencequiz', 15),
('India first won the Olympic Hockey gold at', 'Amsterdam', 'Los Angeles', 'Berlin', 'London', 'Amsterdam', 'sportsquiz', 74),
('India\'s first nuclear blast at Pokhran in Rajasthan took place in', '1984', '1994', '1974', '1988', '1974', 'generalquiz', 5),
('India\'s first satellite is named after', 'Bhaskara I', 'Aryabhatta', 'Bhaskara II', 'Albert Einstein', 'Aryabhatta', 'generalquiz', 1),
('Indira Gandhi Centre for Atomic Research, established in 1971, is located at', 'Indore', 'Chennai', 'Maharashtra', 'Kolkata', 'Chennai', 'generalquiz', 9),
('Madharasas are the schools of', 'Hindus ', 'Christians', 'Jain ', 'Muslims ', 'Muslims ', 'generalquiz', 50),
('Meryl Streep who was awarded one of the Oscar Awards 2012, is a famous. ', 'Film Director ', 'Actress', 'Songwriter  ', 'Comedian', 'Actress', 'generalquiz', 44),
('Milk of Magnesia is a suspension of:', 'Magnesium hydroxide', 'Magnesium sulphate', 'Magnesium chloride', 'Magnesium carbonate', 'Magnesium hydroxide', 'sciencequiz', 17),
('MPG is an file extension of which type of files ?', 'Audio', 'Images', 'Video', 'Flash', 'Video', 'itquiz', 65),
('Name the tree whose wood is used for making cricket bats', 'Sandal', 'Yellow', 'Teak', 'Willow', 'Willow', 'sportsquiz', 76),
('Network topology in which you connect each node to network along a single piece of network cable is ', 'Bus topology', 'Mesh topology', 'Star topology', 'Ring topology', 'Bus topology', 'itquiz', 26),
('Pranab Mukherjee, the former president of India, is the ', '11th President of India', '12th President of India', '13th President of India', '14th President of India', '13th President of India', 'generalquiz', 47),
('Protocol which assigns IP address to client connected in internet is', 'HTTP', 'DHCP', 'RP', 'FTP', 'DHCP', 'itquiz', 28),
('Register which is used to store values of arithmetic and logical operations is termed as', 'Accumulator', 'Arithmetic register', 'Logical register', 'Controller', 'Accumulator', 'itquiz', 24),
('Ronaldo Singh belongs to which of the following sports?', 'Boxing', 'Cricket', 'Athlete', 'Cyclist', 'Cyclist', 'sportsquiz', 80),
('Technology used to provide internet by transmitting data over wires of telephone network is ?', 'Transmitter', 'DSL', 'Diodes', 'HHL', 'DSL', 'itquiz', 61),
('The amount of light entering the eye is regulated by  ', 'Schlera ', 'Pupil ', 'Iris ', 'Ciliary Body', 'Iris ', 'sciencequiz', 53),
('The colour of the eye depends upon the pigment present inside?', 'rods', 'cornea ', 'iris', 'cones', 'iris', 'sciencequiz', 18),
('The cost that changes in proportion to the goods or services that a business produces is termed as', 'Opportunity cost', 'Average cost', 'Marginal cost', 'Variable cost', 'Variable cost', 'generalquiz', 46),
('The disease that is caused by the virus is?', 'Typhoid', 'Common Cold', 'Cholera', 'Tetanus', 'Common Cold', 'sciencequiz', 20),
('The fundamental particles present in the nucleus of an atom are:', 'Protons and neutrons', 'Electrons and protons', 'Neutrons and electrons', 'Neutrons and positrons', 'Protons and neutrons', 'sciencequiz', 11),
('The gas used to extinguish fire, is  ', 'Carbon Dioxide', 'Neon ', 'Carbon Monoxide ', 'Nitrogen ', 'Carbon Dioxide', 'sciencequiz', 51),
('The highest peak in South India is', 'Anaimudi', 'Nilgiri hills ', 'Everest ', 'Doddabetta ', 'Anaimudi', 'generalquiz', 49),
('The image formed in a compound microscope is', 'erect', 'inverted', 'sometimes erect, sometimes inverted', 'none', 'inverted', 'sciencequiz', 59),
('The largest part of the human brain is  ', 'Cerebellum ', 'Midbrain ', 'Medulla Oblongata', 'Cerebrum ', 'Cerebrum ', 'sciencequiz', 52),
('The mass of a star is two times the mass of the Sun. How will it come to an end?', 'White Dwarf', 'Blackhole', 'Red Giant', 'Neutron Star', 'Neutron Star', 'sciencequiz', 13),
('The number of ribs in Human Body is  ', '12', '18', '22', '24', '24', 'sciencequiz', 55),
('The ratio of pure gold in 18-carat gold is', '75%', '60%', '92%', '80%', '75%', 'sciencequiz', 19),
('The sensitive index of National Stock Exchange of India is popularly known as.... ', 'SENSEX', 'CRIS', 'NIFTY', 'CSE', 'NIFTY', 'generalquiz', 42),
('The smallest cells in the human body are ', 'Muscle cells ', 'Nerve cells ', 'Blood cells ', 'Brain Stem cells', 'Blood cells ', 'sciencequiz', 54),
('Washing soda is the common name for', 'Sodium Carbonate', 'Calcium Carbonate', 'Calcium Bicarbonate', 'Sodium Bicarbonate', 'Sodium Carbonate', 'sciencequiz', 57),
('What does error 404 or Not Found error while accessing a URL mean? ', 'Requested HTML file is not available', 'The server could not find the requested URL', 'The requested HTML file does not have sufficient permissions', 'The path to the interpreter of the script is not valid', 'The server could not find the requested URL', 'itquiz', 29),
('What is full form of ALU ?', 'Arithmetic least unit', 'Arithmetic logic unit', 'Allowed logic unit', 'Ascii logic unit', 'Arithmetic logic unit', 'itquiz', 68),
('What is full form of GUI in terms of computers ?', 'Graphical unified Interface', 'Graphical user Instrument', 'Graphical unified Instrument', 'Graphical user Interface', 'Graphical user Interface', 'itquiz', 63),
('Which among following is responsible for finding and loading operating system into RAM ?', 'Bootstrap Loader', 'CMOS', 'BIOS', 'DMOS', 'Bootstrap Loader', 'itquiz', 69),
('Which among the following waves is used for communication by artificial satellites?', 'Radio waves', 'The frequency of 101 series    ', 'Microwaves', 'A.M.', 'Microwaves', 'sciencequiz', 12),
('Which among these is the highest governing body of Hockey?', 'World Hockey Federation', 'International Hockey Federation', 'International Hockey Association', 'Federation of International Hockey', 'International Hockey Federation', 'sportsquiz', 35),
('Which county did Ravi Shastri play for?', 'Leicestershire', 'Gloucestershire', 'Lancashire', 'Glamorgan', 'Glamorgan', 'sportsquiz', 37),
('Which device among following is used for sending digital data over a phone line ?', 'Modem', 'Scanner', 'Printer', 'USB', 'Modem', 'itquiz', 66),
('Which is most common language used in web designing ?', 'C', 'C++', 'PHP', 'HTML', 'HTML', 'itquiz', 64),
('Which level language is Assembly Language ?', 'low-level programming language', 'medium-level programming language', 'high-level programming language', 'machine language', 'low-level programming language', 'itquiz', 62),
('Which of the following countries has agreed to accept the payment of export of oil and petroleum pro', 'Kuwait', 'Iran', 'Iraq', 'Qatar', 'Iran', 'generalquiz', 41),
('Which of the following countries has not been a host of Asian Games?', 'Iran', 'Pakistan', 'Thailand', 'Philippines', 'Pakistan', 'sportsquiz', 72),
('Which of the following country won Football world Cup maximum times?', 'Brazil', 'Germany', 'Argentina', 'Spain', 'Brazil', 'sportsquiz', 33),
('Which of the following does not produce hormone? ', 'Heart ', 'Gastro-intestinal tract ', 'Kidney', 'None of these', 'None of these', 'generalquiz', 45),
('Which of the following is a non-volatile memory ?', 'LSI', 'RAM', 'VLSI', 'ROM', 'ROM', 'itquiz', 70),
('Which of the following is not correct?', 'Next football world cup will be held in Russia', 'Uruguay was the first winner of the football world cup', 'Brazil and Italy has won the football world cup 4 time each', 'First football world cup was held in 1930', 'Brazil and Italy has won the football world cup 4 time each', 'sportsquiz', 39),
('Which one of the following is not a vaccine?', 'Anti-rabies', 'BCG', 'Polio vaccine ', 'Progesterone', 'Progesterone', 'sciencequiz', 16),
('Who has taken the highest number of wickets in one day international cricket?', 'Muralidharan', 'Shane Warne', 'Wasim Akram', 'Kapil Dev', 'Wasim Akram', 'sportsquiz', 77),
('Who holds the highest number of world records in swimming', 'Paul Biedermann', 'Michael Phelps', 'Ryan Lochte', 'Aaron Piersol', 'Michael Phelps', 'sportsquiz', 71),
('Who is the current president of FIFA?', 'Gianni Infantino', 'Joseph Blatter', 'Prince Ali bin Hussein', 'None of these', 'Gianni Infantino', 'sportsquiz', 38),
('Who was called the Flying Sikh?', 'Makhan Singh', 'Shamsher Singh', 'Ajmer Singh', 'Milkha Singh', 'Milkha Singh', 'sportsquiz', 75),
('Who was the father of Internet ?', 'Charles Babbage', 'Vint Cerf', 'Denis Riche', 'Martin Cooper', 'Vint Cerf', 'itquiz', 67),
('With which one of the following games is the Hopman Cup associated?', 'Hockey', 'Football', 'Badminton', 'Lawn Tennis', 'Lawn Tennis', 'sportsquiz', 73),
('World Day for Water is observed on which of the following dates? ', '22 August ', '22 July ', '22 October  ', '22 March ', '22 March ', 'generalquiz', 43),
('Year in which first operating system was developed is', '1964', '1956', '1960', '1972', '1956', 'itquiz', 22);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`username`, `Email`, `Password`, `id`) VALUES
('anurag', 'anurag.rawat305@gmail.com', 'anurag123', 7),
('anurag7', 'anurag.rawat305@gmail.com', '1234567', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usersdata`
--

CREATE TABLE `usersdata` (
  `username` varchar(20) NOT NULL,
  `quizname` varchar(20) NOT NULL,
  `totalmarks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersdata`
--

INSERT INTO `usersdata` (`username`, `quizname`, `totalmarks`) VALUES
('anurag7', 'sciencequiz', 24),
('anurag7', 'itquiz', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questionbank`
--
ALTER TABLE `questionbank`
  ADD PRIMARY KEY (`Question`),
  ADD UNIQUE KEY `qid` (`qid`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
