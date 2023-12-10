-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 10, 2023 at 03:49 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: FIP_Portfolio
--

-- --------------------------------------------------------

--
-- Table structure for table Collaborator
--

CREATE TABLE Collaborator (
  id int(11) NOT NULL,
  collaborator_name varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table Collaborator
--

INSERT INTO Collaborator (id, collaborator_name) VALUES
(1, 'Loui Erick Hernandez'),
(2, 'Suyog Ghimire'),
(3, 'Jung Wook Yun'),
(4, 'Maria Jose');

-- --------------------------------------------------------

--
-- Table structure for table Contact_Form
--

CREATE TABLE Contact_Form (
  id int(11) NOT NULL,
  name varchar(255) NOT NULL,
  email varchar(300) NOT NULL,
  comments varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table Contact_Form
--

INSERT INTO Contact_Form (id, name, email, comments) VALUES
(1, 'Jin', 'jin123@gmail.com', 'Hi, I am interested with your work. I want to work as a collaborate with you.'),
(2, 'Sua Lee', 'sua.lee12@gmail.com', 'Hello! I stumbled upon your portfolio and was really impressed by your work, especially Billy Beer project. I\'d love to discuss a potential collaboration or learn more about your process.'),
(3, 'Hailey', 'hailey.lee@gmail.com', 'Hi, I\'m reaching out from OB asency. We\'re looking for someone with your skills for a project we\'re working on. Could we set up a call to discuss the details?');

-- --------------------------------------------------------

--
-- Table structure for table Media
--

CREATE TABLE Media (
  id int(11) NOT NULL,
  file_name varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table Media
--

INSERT INTO Media (id, file_name) VALUES
(1, 'project_1.jpg'),
(2, 'project_2.mp4'),
(3, 'project_3.png'),
(4, 'project_5.jpg'),
(5, 'project_6.mp4');

-- --------------------------------------------------------

--
-- Table structure for table Projects
--

CREATE TABLE Projects (
  id int(11) NOT NULL,
  project_title varchar(255) NOT NULL,
  project_type_id int(11) NOT NULL,
  collaborator_id int(11) DEFAULT NULL,
  software_id int(11) NOT NULL,
  project_desc varchar(1000) NOT NULL,
  media_id int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table Projects
--

INSERT INTO Projects (id, project_title, project_type_id, collaborator_id, software_id, project_desc, media_id) VALUES
(13, 'Z Magazine', 1, NULL, 1, 'I spearheaded the development of an intricately designed and highly accessible website tailored for a pioneering virtual magazine company. This digital platform was meticulously crafted to redefine the landscape of magazine consumption by seamlessly blending sophistication with unparalleled accessibility.', 1),
(14, 'Hotel Room', 2, NULL, 4, 'This project involves crafting a sophisticated and inviting 3D model of a luxurious hotel room. This design seamlessly blends elegance with comfort, featuring bespoke furnishings, optimal spatial layout, and an ambiance that exudes modern opulence. Through meticulous attention to detail and a focus on eco-friendly elements, our 3D model creates an immersive experience, offering a glimpse into a refined sanctuary for discerning guests.', 2),
(15, 'Billy Beer', 5, 1, 1, 'Billy Beer was a brand of American beer that was produced in the 1970s. It was marketed as a lower-priced alternative to other domestic beers, and was named after President Jimmy Carter’s brother, Billy Carter, who served as a spokesman for the brand. Despite initial success, sales of Billy Beer declined rapidly and the brand was eventually discontinued.\r\n\r\nOur plan is to do a re-brand for the Billy Beer Product to have a more exciting and freshly modern design aesthetics.', 3),
(16, 'Industry Night', 1, 2, 1, 'Our team is committed to making these portfolios come to life by utilising the most up-to-date web design and development methods to provide a platform that is aesthetically attractive and engaging. We believe in the value of highlighting these kids\' abilities and accomplishments as we get ready for Industry Night because it will make them stand out in front of possible employers and professionals in the field.', 4);

-- --------------------------------------------------------

--
-- Table structure for table Project_type
--

CREATE TABLE Project_type (
  id int(11) NOT NULL,
  type varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table Project_type
--

INSERT INTO Project_type (id, type) VALUES
(1, 'Website Design'),
(2, '3D Modeling'),
(3, 'UX/UI Design'),
(4, 'Branding'),
(5, 'Re-Branding');

-- --------------------------------------------------------

--
-- Table structure for table Softwares
--

CREATE TABLE Softwares (
  id int(11) NOT NULL,
  software_type varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table Softwares
--

INSERT INTO Softwares (id, software_type) VALUES
(1, 'Adobe XD'),
(2, 'Adobe Illustrator'),
(3, 'Adobe Photoshop'),
(4, 'Cinema 4D'),
(5, 'Adobe InDesign'),
(6, 'AfterEffect');

--
-- Indexes for dumped tables
--

--
-- Indexes for table Collaborator
--
ALTER TABLE Collaborator
  ADD PRIMARY KEY (id);

--
-- Indexes for table Contact_Form
--
ALTER TABLE Contact_Form
  ADD PRIMARY KEY (id);

--
-- Indexes for table Media
--
ALTER TABLE Media
  ADD PRIMARY KEY (id);

--
-- Indexes for table Projects
--
ALTER TABLE Projects
  ADD PRIMARY KEY (id),
  ADD KEY media_id (media_id) USING BTREE,
  ADD KEY Project type (project_type_id),
  ADD KEY Collaborator (collaborator_id),
  ADD KEY Used Software (software_id);

--
-- Indexes for table Project_type
--
ALTER TABLE Project_type
  ADD PRIMARY KEY (id);

--
-- Indexes for table Softwares
--
ALTER TABLE Softwares
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table Collaborator
--
ALTER TABLE Collaborator
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table Contact_Form
--
ALTER TABLE Contact_Form
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table Media
--
ALTER TABLE Media
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table Projects
--
ALTER TABLE Projects
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table Project_type
--
ALTER TABLE Project_type
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table Softwares
--
ALTER TABLE Softwares
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table Projects
--
ALTER TABLE Projects
  ADD CONSTRAINT Collaborator FOREIGN KEY (collaborator_id) REFERENCES Collaborator (id),
  ADD CONSTRAINT Media FOREIGN KEY (media_id) REFERENCES Media (id),
  ADD CONSTRAINT Project type FOREIGN KEY (project_type_id) REFERENCES Project_type (id),
  ADD CONSTRAINT Used Software FOREIGN KEY (software_id) REFERENCES Softwares (id);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
