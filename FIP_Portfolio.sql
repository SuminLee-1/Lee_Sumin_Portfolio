-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 06, 2024 at 04:42 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FIP_Portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `Collaborator`
--

CREATE TABLE `Collaborator` (
  `id` int(11) NOT NULL,
  `collaborator_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Collaborator`
--

INSERT INTO `Collaborator` (`id`, `collaborator_name`) VALUES
(1, 'Loui Erick Hernandez'),
(2, 'Suyog Ghimire'),
(3, 'Jung Wook Yun'),
(4, 'Maria Jose');

-- --------------------------------------------------------

--
-- Table structure for table `Contact_Form`
--

CREATE TABLE `Contact_Form` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(300) NOT NULL,
  `comments` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Contact_Form`
--

INSERT INTO `Contact_Form` (`id`, `name`, `email`, `comments`) VALUES
(1, 'Jin', 'jin123@gmail.com', 'Hi, I am interested with your work. I want to work as a collaborate with you.'),
(2, 'Sua Lee', 'sua.lee12@gmail.com', 'Hello! I stumbled upon your portfolio and was really impressed by your work, especially Billy Beer project. I\'d love to discuss a potential collaboration or learn more about your process.'),
(3, 'Hailey', 'hailey.lee@gmail.com', 'Hi, I\'m reaching out from OB asency. We\'re looking for someone with your skills for a project we\'re working on. Could we set up a call to discuss the details?');

-- --------------------------------------------------------

--
-- Table structure for table `Media`
--

CREATE TABLE `Media` (
  `id` int(11) NOT NULL,
  `file_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Media`
--

INSERT INTO `Media` (`id`, `file_name`) VALUES
(1, 'project_1.jpg'),
(2, 'project_2.mp4'),
(3, 'project_3.png'),
(4, 'project_5.jpg'),
(5, 'project_6.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `Projects`
--

CREATE TABLE `Projects` (
  `id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_type_id` int(11) NOT NULL,
  `collaborator_id` int(11) DEFAULT NULL,
  `software_id` int(11) NOT NULL,
  `project_intro` varchar(1000) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `problemSolving` varchar(1000) NOT NULL,
  `problemSolving_img` int(11) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `sub_desc` varchar(1000) NOT NULL,
  `sub_img` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Projects`
--

INSERT INTO `Projects` (`id`, `project_title`, `project_type_id`, `collaborator_id`, `software_id`, `project_intro`, `media_id`, `problemSolving`, `problemSolving_img`, `sub_title`, `sub_desc`, `sub_img`) VALUES
(1, 'Billy Beer', 5, 1, 1, 'Billy Beer was a brand of American beer that was produced in the 1970s. It was marketed as a lower-priced alternative to other domestic beers, and was named after President Jimmy Carter’s brother, Billy Carter, who served as a spokesman for the brand. Despite initial success, sales of Billy Beer declined rapidly and the brand was eventually discontinued.\r\n\r\nOur plan is to do a re-brand for the Billy Beer Product to have a more exciting and freshly modern design aesthetics.', 3, 'Rebranding this beer with the goal of reclaiming the brand’s increasingly forgotten and disappearing products from many people is about whether it will provide us with a new experience by bringing nostalgia to existing customers or starting with a new brand and changing everything, and it has decided to find a middle ground by combining numerous surveys and opinions. As a result, the project was carried out in the direction of partially modifying the logo in order to keep the brand’s colour identity and maintain its previous sensibility, while also establishing a more trendy and slightly moody website.', 0, 'Logo Study', 'Designing the new logo for Billy Beer was a collaborative process that involved conceptualizing different variations and sketches. \r\nThe goal was to create a logo that would reflect the brand’s commitment to American heritage and premium quality beer, while also being distinctive, memorable, and easily recognizable.', 0),
(2, 'BassBurst Earbuds', 1, NULL, 4, '\r\nThe Earbuds Promo Site is a dynamic web platform that selects and displays a variety of premium earbud models. Users can explore technical details and compare features in an immersive environment on the site. It offers a superb experience for both enthusiasts and audiophiles thanks to its user-friendly UI.', 2, 'In navigating the intricate realms of branding, product design, advertising video production, and website design, I found myself grappling with myriad uncertainties. Yet, undeterred, I embraced each challenge with tenacity and resolve, immersing myself in extensive research and meticulous planning. Through tireless effort and dedication, I navigated the complexities of each stage, methodically refining my strategies and approaches. Despite the hurdles encountered along the way, my unwavering commitment to excellence and my relentless pursuit of innovative solutions propelled me forward. In the face of uncertainty, I remained steadfast, channeling my passion and expertise into each aspect of the process. The culmination of my endeavors resulted in the creation of solutions that not only met but surpassed expectations, setting a standard of excellence in branding, design, and digital media production—all achieved through my individual efforts and dedication.', 0, 'Key Features', 'Discover an exclusive selection of premium earbud models on our platform, meticulously curated to offer a diverse range of features and specifications. Dive into detailed technical specifications for each model, ensuring you have all the necessary information at your fingertips to make informed decisions. Our user-friendly interface is designed for seamless navigation, allowing you to effortlessly explore and compare earbuds, making your shopping experience intuitive and hassle-free.', 0),
(3, 'Seven', 4, NULL, 2, 'Seven represents a tasteful blend of elegance with a nod to nature and everyday\r\nusability. Our brand, which is based on the idea of natural beauty,\r\nradiates elegance, simplicity, and a dedication to excellence. We honour the\r\npotency of premium plant-based products that are carefully chosen to improve\r\nyour skincare regimen.\r\nOur serene sage green colour scheme is complemented with warm coral accents\r\nfor a pop of colour. Seven encourages you to embrace a skincare routine\r\nthat benefits the environment as well as your skin, with an emphasis on\r\nsustainability and ethical business methods. Boost Your Daily Radiance with\r\nSeven.', 1, 'Driven by a profound passion for skincare, I delved into the realm of branding with unwavering dedication. Leveraging my extensive experience, I meticulously crafted the identity of the skincare brand, ensuring seamless harmony between its essence, logo, and magazine advertisements. However, as I ventured into the realm of video advertising through After Effects, I encountered a formidable challenge in crafting motion graphics. Undeterred, I embarked on a journey of exploration, drawing upon diverse references to inform and inspire my creative process. Through perseverance and relentless effort, I triumphed over adversity, ultimately producing a captivating logo animation and video that resonated deeply with the brand\'s identity. This journey not only underscored my commitment to excellence but also reinforced my capacity to overcome obstacles and innovate in pursuit of realizing a vision.', 0, 'Logo Study', 'The kawoszeh font face of Seven’s logo creates a velvety,\r\nopulent impression, while the water drop symbol at the\r\nright end represents the brand’s hydrating product. To\r\nfurther accentuate the brand’s message, include it at the\r\nbottom of the logo.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Project_type`
--

CREATE TABLE `Project_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Project_type`
--

INSERT INTO `Project_type` (`id`, `type`) VALUES
(1, 'Website Design'),
(2, '3D Modeling'),
(3, 'UX/UI Design'),
(4, 'Branding'),
(5, 'Re-Branding');

-- --------------------------------------------------------

--
-- Table structure for table `Softwares`
--

CREATE TABLE `Softwares` (
  `id` int(11) NOT NULL,
  `software_type` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Softwares`
--

INSERT INTO `Softwares` (`id`, `software_type`) VALUES
(1, 'Adobe XD'),
(2, 'Adobe Illustrator'),
(3, 'Adobe Photoshop'),
(4, 'Cinema 4D'),
(5, 'Adobe InDesign'),
(6, 'After Effect');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Collaborator`
--
ALTER TABLE `Collaborator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Contact_Form`
--
ALTER TABLE `Contact_Form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Media`
--
ALTER TABLE `Media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Projects`
--
ALTER TABLE `Projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_id` (`media_id`) USING BTREE,
  ADD KEY `Project_type` (`project_type_id`),
  ADD KEY `Collaborator` (`collaborator_id`),
  ADD KEY `Software` (`software_id`),
  ADD KEY `problemSolving_img` (`problemSolving_img`),
  ADD KEY `sub_img` (`sub_img`);

--
-- Indexes for table `Project_type`
--
ALTER TABLE `Project_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Softwares`
--
ALTER TABLE `Softwares`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Collaborator`
--
ALTER TABLE `Collaborator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Contact_Form`
--
ALTER TABLE `Contact_Form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Media`
--
ALTER TABLE `Media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Projects`
--
ALTER TABLE `Projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Project_type`
--
ALTER TABLE `Project_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Softwares`
--
ALTER TABLE `Softwares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Projects`
--
ALTER TABLE `Projects`
  ADD CONSTRAINT `Collaborator` FOREIGN KEY (`collaborator_id`) REFERENCES `Collaborator` (`id`),
  ADD CONSTRAINT `Project_type` FOREIGN KEY (`project_type_id`) REFERENCES `Project_type` (`id`),
  ADD CONSTRAINT `Software` FOREIGN KEY (`software_id`) REFERENCES `Softwares` (`id`),
  ADD CONSTRAINT `heroimg` FOREIGN KEY (`media_id`) REFERENCES `Media` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
