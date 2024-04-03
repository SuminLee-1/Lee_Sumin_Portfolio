-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 02, 2024 at 04:22 PM
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
-- Table structure for table `casestudy`
--

CREATE TABLE `casestudy` (
  `id` int(11) NOT NULL,
  `pj_title` varchar(150) NOT NULL,
  `thumb` varchar(150) NOT NULL,
  `collaborator` varchar(1500) DEFAULT NULL,
  `type` varchar(1000) NOT NULL,
  `billboard_img` varchar(150) NOT NULL,
  `intro_desc` varchar(1500) NOT NULL,
  `challenge` varchar(1000) DEFAULT NULL,
  `approach` varchar(1000) DEFAULT NULL,
  `preview_img1` varchar(150) NOT NULL,
  `preview_img2` varchar(150) NOT NULL,
  `preview_img3` varchar(150) DEFAULT NULL,
  `preview_img4` varchar(150) DEFAULT NULL,
  `section_title` varchar(150) DEFAULT NULL,
  `section_desc` varchar(1500) DEFAULT NULL,
  `section_img` varchar(150) DEFAULT NULL,
  `video` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `casestudy`
--

INSERT INTO `casestudy` (`id`, `pj_title`, `thumb`, `collaborator`, `type`, `billboard_img`, `intro_desc`, `challenge`, `approach`, `preview_img1`, `preview_img2`, `preview_img3`, `preview_img4`, `section_title`, `section_desc`, `section_img`, `video`) VALUES
(1, 'Billy Beer', 'thumb_1.png', 'Loui Erick Hernandez', 'Re-Branding, Prodect design, UX/UI', 'billboard_1.png', 'Re-brand for the Billy Beer Product to have a more exciting and freshly modern design aesthetics. ', 'Rebranding this beer with the goal of reclaiming the brand’s increasingly forgotten and disappearing products from many people is about whether it will provide us with a new experience by bringing nostalgia to existing customers or starting with a new brand and changing everything, and it has decided to find a middle ground by combining numerous surveys and opinions.', 'As a result, the project was carried out in the direction of partially modifying the logo in order to keep the brand’s colour identity and maintain its previous sensibility, while also establishing a more trendy and slightly moody website. ', 'bb_prev_1.png', 'bb_prev_2.png', 'bb_prev_3.png', 'bb_prev_4.png', 'Logo Study', 'The creation of Billy Beer\'s new logo was an exercise in creative collaboration, aiming to capture the brand\'s identity. This wasn\'t just about designing a logo, but encapsulating the brand\'s essence.\r\n\r\nThe goal was to create a logo reflecting the brand\'s dedication to its American heritage and commitment to premium quality beer.\r\n\r\nThe logo needed to be distinctive and memorable, setting Billy Beer apart in a competitive market, and serving as a recognisable symbol across various platforms.\r\n\r\nIn short, the design process was a blend of art and strategy, aiming to deliver a logo that resonates with the brand and stands out in the beer industry.', 'bb_prev_4.png', NULL),
(2, 'BassBurst Earbuds', 'thumb_2.png', NULL, 'Product Design, UI/UX', 'billboard_2.png', 'The Earbuds Promo Site is a dynamic web platform that selects and displays a variety of premium earbud models. ', 'Navigating the complex areas of branding, product design, advertising video production, and website design, I faced numerous uncertainties. Despite this, I tackled each challenge with tenacity and resolve, diving deep into research and careful planning. My dedication and effort helped me understand the intricacies of each stage, allowing me to refine my strategies. Even when confronted with obstacles, my commitment to excellence and innovation kept me moving. Amid uncertainties, I applied my passion and expertise to all aspects of the process. The result of my efforts was the creation of solutions that exceeded expectations, setting a high standard in branding, design, and digital media production. This was all achieved through my individual dedication and efforts.', 'The Earbuds Promo Site is a dynamic web platform that selects and displays a variety of premium earbud models. Users can explore technical details and compare features in an immersive environment on the site. It offers a superb experience for both enthusiasts and audiophiles thanks to its user-friendly UI.', 'be_preview_1.png', 'be_preview_2.png', 'be_preview_3.png', 'be_preview_4.png', 'Product Feature', 'Discover an exclusive selection of premium earbud models on our platform, meticulously curated to offer a diverse range of features and specifications. Dive into detailed technical specifications for each model, ensuring you have all the necessary information at your fingertips to make informed decisions. Our user-friendly interface is designed for seamless navigation, allowing you to effortlessly explore and compare earbuds, making your shopping experience intuitive and hassle-free.', 'be_product.png', NULL),
(3, 'Seven', 'thumb_3.png', NULL, 'Video Advertise', 'billboard_3.png', 'Seven represents a tasteful blend of elegance with a nod to nature and everyday usability. ', 'Fueled by a deep passion for skincare, I ventured into branding with unwavering dedication. Using my extensive experience, I carefully crafted the identity of the skincare brand to ensure a perfect harmony between its essence, logo, and magazine ads. However, when I tackled video advertising through After Effects, creating motion graphics posed a significant challenge. Undaunted, I explored various references to inspire my creative process. With persistence and hard work, I overcame the challenge and created a compelling logo animation and video in line with the brand\'s identity. This experience not only emphasized my commitment to excellence but also demonstrated my ability to overcome obstacles and innovate to achieve a vision.', 'Seven blends elegance and nature for everyday use. Our brand values natural beauty, simplicity, and excellence. We use premium plant-based products to enhance your skincare regimen. Our sage green and coral colours promote a sustainable and ethical skincare routine. Boost your radiance with Seven.', 'sv_prev_1.png', 'sv_prev_2.png', 'sv_prev_3.png', 'sv_prev_4.png', 'Logo Study', 'The kawoszeh font face of Seven’s logo creates a velvety,\r\nopulent impression, while the water drop symbol at the\r\nright end represents the brand’s hydrating product. To\r\nfurther accentuate the brand’s message, include it at the\r\nbottom of the logo.', 'sv_logo.png', NULL),
(4, 'Hotel Room', 'thumb_4.png', NULL, '3D modelling', 'billboard_4.png', 'Create 3D model of authentic hotel room', 'I embarked on a journey to revolutionize the hotel experience through design. My daunting task was to create a 3D model of a hotel room that embodied comfort, luxury, and our brand\'s core values: sustainability, innovation, and guest-centric service. The project required a blend of aesthetics and functionality, demanding meticulous attention to detail and a deep understanding of our guests\' needs and expectations. By navigating the intricacies of 3D modeling software, we aimed to craft a virtual space that guests could connect with, even before their arrival. This project was not just about designing a room; it was about creating an experience that would redefine hospitality.', 'In the hotel room\'s 3D modeling project, I balanced aesthetics with practicality. Grounded in the brand\'s ethos of sustainability, innovation, and superior guest experience, I selected a nature-inspired color palette and used advanced 3D software to craft every detail. I ensured luxury and comfort by integrating smart technology and eco-friendly materials. Finally, through an iterative design approach and attention to detail, I created a virtual experience that embodies the brand\'s values and raises hospitality design standards.', 'hr_prev_1.jpg', 'hr_prev_2.jpg', 'hr_prev_3.jpg', 'hr_prev_4.jpg', NULL, NULL, NULL, NULL),
(5, 'Hockey Night', 'thumb_5.png', NULL, 'Motion Graphic', 'billboard_5.png', 'Dynamic Hockey Night canada intro 3D motion graphic', NULL, NULL, 'sh_prev_1.png', 'sh_prev_2.png', 'sh_prev_3.png', 'sh_prev_4.png', NULL, NULL, NULL, 'sports.mp4'),
(6, 'Industry Night Web page', 'thumb_6.png', 'Loui Erick Hernandez,Suyog Ghimire,Jung Wook Yun', 'UX/UI Web Design', 'billboard_7.png', 'Create an online platform for students to showcase their skills and achievements before the Industry Night event.', 'This bootcamp project was a unique challenge: creating a responsive, mobile-first platform to highlight student projects. The main task was to develop a technically sound, visually pleasing site that performed well across devices and showcased diverse talents. It required using our new web development skills, innovation, and collaboration to stand out for Industry Night. It was a balance of technical skill and creativity within the fast-paced bootcamp.', 'Our team is committed to making these portfolios come to life by utilising the most up-to-date web design and development methods to provide a platform that is aesthetically attractive and engaging. We believe in the value of highlighting these kids\' abilities and accomplishments as we get ready for Industry Night because it will make them stand out in front of possible employers and professionals in the field.', 'in_prev_1.png', 'in_prev_1.png', 'in_prev_1.png', 'in_prev_1.png', NULL, NULL, NULL, NULL),
(7, 'Foundation Sixty6', 'thumb_7.png', 'Marianne Febra,Loui Erick Hernandez,Valentina Perez Moreno,Patricia Da Silva Martins', 'Branding, UX/UI Web Design', 'billboard_7.png', 'Branding an up-and-coming organisation Foundation Sixty6 and design a website', 'In the process of working on the Foundation Sixty6 branding project, we approached the task with a sense of warmth, optimism, and a shared resolve to effect positive change. Our team was fully engaged, and we were eager to create something truly unique and impactful. However, during this process, we encountered some challenges. One of the primary difficulties we faced was maintaining a delicate balance between adhering strictly to the client\'s specifications and ensuring that we maintained a level of social sensitivity. This balance was critical to ensure that our messaging and branding would resonate with our target audience in a way that was both smooth and natural. It was a challenging endeavor, but one that we approached with determination and a commitment to excellence.', 'We combined creative innovation with careful adherence to the client\'s vision. We researched and dialogued to understand our target audience\'s values, guiding our design process. This allowed us to create a brand identity that met specifications and resonated with the community. Workshops and feedback sessions ensured alignment with our authenticity and impact goals. We pursued a meaningful and effective branding solution, positioning Foundation Sixty6 as a beacon of positive change.', 'f6_prev_1.png', 'f6_prev_2.png', 'f6_prev_3.png', 'f6_prev_4.png', 'Logo Study', 'The logo for Foundation Sixty6 combines symbolism and modern design. Its interconnected hexagon shows the foundation\'s comprehensive approach to mental health. The hexagon contains two hands in negative space, symbolizing support. Five sections around the hands represent the foundation’s key commitments: education, community, support, recovery, and advocacy. The color scheme promotes calmness and positivity, with one highlighted section for inclusivity. The logo serves as a pillar of strength for young individuals facing mental health challenges.', NULL, NULL),
(8, 'Z Magazine', 'thumb_8.png', NULL, 'UX/UI Website Design', 'billboard_8.png', 'These is a magazine seller company \'Z magazine\' Web and Mobile site.\r\n', NULL, NULL, 'z_prev_1.png', 'z_prev_2.png', 'z_prev_3.png', 'z_prev_4.png', NULL, NULL, NULL, NULL),
(9, 'Grilled Cheese Sandwich', 'thumb_9.png', NULL, 'UX/UI', 'billboard_9.png', 'A UX/UI drawing grilled cheese sandwich recipe project', NULL, NULL, 'gc_prev_1.jpg', 'gc_prev_2.jpg', 'gc_prev_3.jpg', NULL, NULL, NULL, NULL, NULL),
(10, 'Comport Room', 'thumb_10.png', 'Maria Jose', 'UX/UI', 'billboard_10.png', 'Creative authentic mobile home controller application of Comport Room', NULL, NULL, 'cr_prev_1.png', 'cr_prev_2.png', 'cr_prev_3.png', 'cr_prev_4.png', NULL, NULL, NULL, NULL);

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
  `project_id` int(11) DEFAULT NULL,
  `file_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Media`
--

INSERT INTO `Media` (`id`, `project_id`, `file_name`) VALUES
(4, 1, '1_problemSolving.png'),
(5, 2, '2_problemSolving.jpg'),
(6, 3, '3_problemSolving.png'),
(7, 1, '1_subImg.png'),
(8, 2, '2_subImg.png'),
(9, 3, '3_subImg.png');

-- --------------------------------------------------------

--
-- Table structure for table `Projects`
--

CREATE TABLE `Projects` (
  `id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `thumbnail` varchar(1500) NOT NULL,
  `project_type` varchar(150) NOT NULL,
  `collaborator` int(11) DEFAULT NULL,
  `software_id` int(11) NOT NULL,
  `project_intro` varchar(1000) NOT NULL,
  `intro_img` int(11) DEFAULT NULL,
  `problemSolving` varchar(1000) NOT NULL,
  `problemSolving_img` int(11) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `sub_desc` varchar(1000) NOT NULL,
  `sub_img` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Projects`
--

INSERT INTO `Projects` (`id`, `project_title`, `thumbnail`, `project_type`, `collaborator`, `software_id`, `project_intro`, `intro_img`, `problemSolving`, `problemSolving_img`, `sub_title`, `sub_desc`, `sub_img`) VALUES
(1, 'Billy Beer', 'thumb_1.png', 'Re-Branding', 1, 1, 'Billy Beer was a brand of American beer that was produced in the 1970s. It was marketed as a lower-priced alternative to other domestic beers, and was named after President Jimmy Carter’s brother, Billy Carter, who served as a spokesman for the brand. Despite initial success, sales of Billy Beer declined rapidly and the brand was eventually discontinued.\r\n\r\nOur plan is to do a re-brand for the Billy Beer Product to have a more exciting and freshly modern design aesthetics.', 1, 'Rebranding this beer with the goal of reclaiming the brand’s increasingly forgotten and disappearing products from many people is about whether it will provide us with a new experience by bringing nostalgia to existing customers or starting with a new brand and changing everything, and it has decided to find a middle ground by combining numerous surveys and opinions. As a result, the project was carried out in the direction of partially modifying the logo in order to keep the brand’s colour identity and maintain its previous sensibility, while also establishing a more trendy and slightly moody website.', 0, 'Logo Study', 'Designing the new logo for Billy Beer was a collaborative process that involved conceptualizing different variations and sketches. \r\nThe goal was to create a logo that would reflect the brand’s commitment to American heritage and premium quality beer, while also being distinctive, memorable, and easily recognizable.', 0),
(2, 'BassBurst Earbuds', 'thumb_2.png', 'UI Webpage Design', NULL, 4, '\r\nThe Earbuds Promo Site is a dynamic web platform that selects and displays a variety of premium earbud models. Users can explore technical details and compare features in an immersive environment on the site. It offers a superb experience for both enthusiasts and audiophiles thanks to its user-friendly UI.', 2, 'In navigating the intricate realms of branding, product design, advertising video production, and website design, I found myself grappling with myriad uncertainties. Yet, undeterred, I embraced each challenge with tenacity and resolve, immersing myself in extensive research and meticulous planning. Through tireless effort and dedication, I navigated the complexities of each stage, methodically refining my strategies and approaches. Despite the hurdles encountered along the way, my unwavering commitment to excellence and my relentless pursuit of innovative solutions propelled me forward. In the face of uncertainty, I remained steadfast, channeling my passion and expertise into each aspect of the process. The culmination of my endeavors resulted in the creation of solutions that not only met but surpassed expectations, setting a standard of excellence in branding, design, and digital media production—all achieved through my individual efforts and dedication.', 0, 'Key Features', 'Discover an exclusive selection of premium earbud models on our platform, meticulously curated to offer a diverse range of features and specifications. Dive into detailed technical specifications for each model, ensuring you have all the necessary information at your fingertips to make informed decisions. Our user-friendly interface is designed for seamless navigation, allowing you to effortlessly explore and compare earbuds, making your shopping experience intuitive and hassle-free.', 0),
(3, 'Seven', 'thumb_3.png', 'Video Advertising', NULL, 2, 'Seven blends elegance and nature for everyday use. Our brand values natural beauty, simplicity, and excellence. We use premium plant-based products to enhance your skincare regimen. Our sage green and coral colours promote a sustainable and ethical skincare routine. Boost your radiance with Seven.', 3, 'Driven by a profound passion for skincare, I delved into the realm of branding with unwavering dedication. Leveraging my extensive experience, I meticulously crafted the identity of the skincare brand, ensuring seamless harmony between its essence, logo, and magazine advertisements. However, as I ventured into the realm of video advertising through After Effects, I encountered a formidable challenge in crafting motion graphics. Undeterred, I embarked on a journey of exploration, drawing upon diverse references to inform and inspire my creative process. Through perseverance and relentless effort, I triumphed over adversity, ultimately producing a captivating logo animation and video that resonated deeply with the brand\'s identity. This journey not only underscored my commitment to excellence but also reinforced my capacity to overcome obstacles and innovate in pursuit of realizing a vision.', 0, 'Logo Study', 'The kawoszeh font face of Seven’s logo creates a velvety,\r\nopulent impression, while the water drop symbol at the\r\nright end represents the brand’s hydrating product. To\r\nfurther accentuate the brand’s message, include it at the\r\nbottom of the logo.', 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `username` varchar(150) DEFAULT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Sumin', '0604');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casestudy`
--
ALTER TABLE `casestudy`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `Project_id` (`project_id`);

--
-- Indexes for table `Projects`
--
ALTER TABLE `Projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Project_type` (`project_type`),
  ADD KEY `Software` (`software_id`),
  ADD KEY `problemSolving_img` (`problemSolving_img`),
  ADD KEY `sub_img` (`sub_img`),
  ADD KEY `Collaborator` (`collaborator`) USING BTREE,
  ADD KEY `Media` (`intro_img`,`problemSolving_img`,`sub_img`) USING BTREE;

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casestudy`
--
ALTER TABLE `casestudy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Projects`
--
ALTER TABLE `Projects`
  ADD CONSTRAINT `Collaborator` FOREIGN KEY (`collaborator`) REFERENCES `Collaborator` (`id`),
  ADD CONSTRAINT `Software` FOREIGN KEY (`software_id`) REFERENCES `Softwares` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
