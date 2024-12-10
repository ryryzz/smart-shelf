-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2024 at 01:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booksandunifdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_cart`
--

CREATE TABLE `add_to_cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_to_cart`
--

INSERT INTO `add_to_cart` (`cart_id`, `user_id`, `item_id`, `quantity`, `date_added`) VALUES
(15, 29, 49, 1, '2024-12-03 18:52:07'),
(17, 29, 39, 2, '2024-12-03 20:08:30'),
(18, 29, 37, 1, '2024-12-03 20:08:33'),
(20, 29, 46, 1, '2024-12-03 20:08:40'),
(21, 29, 38, 1, '2024-12-05 22:06:56'),
(22, 29, 40, 1, '2024-12-08 12:43:47'),
(23, 31, 17, 1, '2024-12-09 20:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `BooksUniform`
--

CREATE TABLE `BooksUniform` (
  `item_id` int(11) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Brand` varchar(100) DEFAULT NULL,
  `Model` varchar(100) DEFAULT NULL,
  `SerialNumber` varchar(255) DEFAULT NULL,
  `Specifications` text DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `PurchasePrice` decimal(10,2) DEFAULT NULL,
  `ImagePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `BooksUniform`
--

INSERT INTO `BooksUniform` (`item_id`, `ItemName`, `Category`, `Brand`, `Model`, `SerialNumber`, `Specifications`, `PurchaseDate`, `PurchasePrice`, `ImagePath`) VALUES
(17, 'School Polo Shirt', 'Uniform', 'School Wear Co.', 'Medium Size', 'UN12345SP', 'White polo with logo', '2024-11-21', 345.00, 'uploads/polo.jpg'),
(18, 'Advanced Mathematics Textbook', 'Book', 'Pearson Education', '5th Edition', '978-0321854018', 'Hardcover, 650 pages, English', '2024-11-21', 600.00, 'uploads/math.jpg'),
(19, 'Biology Lab Manual', 'Book', 'McGraw Hill', '3rd Edition', '978-0073524180', 'Spiral-bound, 200 pages, Includes diagrams', '2024-11-21', 233.00, 'uploads/biology.jpeg'),
(20, 'School Pants - Male', 'Uniform', 'Generics', 'Standard Fit, Type A', '45454-3434444444', 'White shirt, black pants, medium size', '2024-11-20', 450.00, 'uploads/pants.jpeg'),
(37, 'Introduction to Algorithms', 'Books', 'MIT Press', '3rd Edition', 'B001', 'Comprehensive guide on algorithms and data structures', '2024-01-15', 750.00, 'uploads/algorithms_book.jpg'),
(38, 'Clean Code', 'Books', 'Prentice Hall', '1st Edition', 'B002', 'A handbook of agile software craftsmanship', '2023-10-10', 850.00, 'uploads/clean_code.jpg'),
(39, 'Design Patterns', 'Books', 'Addison-Wesley', 'Gamma Edition', 'B003', 'Elements of reusable object-oriented software', '2023-12-01', 950.00, 'uploads/design_patterns.jpg'),
(40, 'AI: A Modern Approach', 'Books', 'Pearson', '4th Edition', 'B004', 'AI fundamentals and advanced techniques', '2024-03-20', 1250.00, 'uploads/ai_modern_approach.jpg'),
(41, 'Database Systems Concepts', 'Books', 'McGraw Hill', '7th Edition', 'B005', 'Concepts and practices for database systems', '2023-11-05', 1050.00, 'uploads/database_systems.jpg'),
(42, 'IT Polo Shirt', 'Uniforms', 'Campus Wear', '2024 Edition', 'U001', 'Blue polo shirt with IT department logo', '2024-08-01', 350.00, 'uploads/it_polo.jpg'),
(43, 'IT Lab Coat', 'Uniforms', 'LabGear', 'Standard Fit', 'U002', 'White laboratory coat for practical sessions', '2024-06-15', 550.00, 'uploads/it_lab_coat.jpg'),
(44, 'IT Sweatshirt', 'Uniforms', 'Campus Wear', 'Winter Edition', 'U003', 'Black sweatshirt with IT insignia', '2023-11-30', 700.00, 'uploads/it_sweatshirt.jpg'),
(45, 'Student ID Lanyard', 'Uniforms', 'ID Accessories', 'Standard Lanyard', 'U004', 'Blue lanyard with school logo and badge holder', '2024-01-10', 150.00, 'uploads/it_lanyard.jpg'),
(46, 'Lab Safety Gloves', 'Uniforms', 'LabGear', 'Safety Gloves', 'U005', 'Gloves for practical sessions in IT labs', '2023-10-25', 250.00, 'uploads/lab_safety_gloves.jpg'),
(49, 'BSIT Female Polo Shirt', 'Uniforms', 'Campus Wear', '2024 Edition', 'U5004', 'Pink polo shirt with BSIT department logo', '2024-08-10', 400.00, 'uploads/bsit_female_polo.jpg'),
(50, 'BSIT Female Lab Coat', 'Uniforms', 'LabGear', 'Slim Fit', 'U0056', 'White laboratory coat for practical sessions (female fit)', '2024-06-20', 600.00, 'uploads/bsit_female_lab_coat.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

CREATE TABLE `login_tbl` (
  `id` bigint(20) NOT NULL,
  `LoginID` bigint(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(75) NOT NULL,
  `contactnum` varchar(50) NOT NULL,
  `account_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `name`, `username`, `email`, `password`, `contactnum`, `account_type`) VALUES
(29, 'user', 'user', 'user@gmail.com', '$2y$10$DostUupbSPHJOEMnY7SpA.ytAwz7zgHDI50Rh2gMS8QAw9rGqKxfS', '9812123434', 0),
(30, 'admin', 'admin', 'admin@gmail.com', '$2y$10$DostUupbSPHJOEMnY7SpA.ytAwz7zgHDI50Rh2gMS8QAw9rGqKxfS', '912345676', 1),
(31, 'user1', 'user1', 'user1@gmail.com', '$2y$10$Qar/1SGHi1msDXHryvhz1OGtdg3gRR5Hm3lGe9i4IOF1Yurg6zOUK', '9121232435', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `BooksUniform`
--
ALTER TABLE `BooksUniform`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `SerialNumber` (`SerialNumber`);

--
-- Indexes for table `login_tbl`
--
ALTER TABLE `login_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `LoginID` (`LoginID`),
  ADD KEY `Email` (`Email`),
  ADD KEY `Password` (`Password`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `BooksUniform`
--
ALTER TABLE `BooksUniform`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `login_tbl`
--
ALTER TABLE `login_tbl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD CONSTRAINT `add_to_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`),
  ADD CONSTRAINT `add_to_cart_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `booksuniform` (`item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
