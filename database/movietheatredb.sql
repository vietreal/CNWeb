-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 16, 2022 lúc 03:50 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `movietheatredb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(12, 'BKID6369842', 4, 4, 17, 3, 1, 380, '2021-04-15', '2021-04-15', 1),
(13, 'BKID2313964', 6, 5, 21, 6, 4, 2400, '2021-04-16', '2021-04-15', 1),
(14, 'BKID1766021', 6, 5, 22, 6, 2, 1200, '2021-04-16', '2021-04-16', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'admin', 'matkhau', 0),
(2, 3, 'cgvbatrieu', 'matkhau', 1),
(3, 4, 'cgvroyalcity', 'matkhau', 1),
(12, 2, 'ledoanviet@gmail.com', 'matkhau', 2),
(17, 4, 'donghainam@gmail.com', 'matkhau', 2),
(18, 6, 'cgvtimecity', 'matkhau', 1),
(19, 5, 'dangxuanviet@gmail.com', 'matkhau', 2),
(20, 6, 'ledoanviet144@gmail.com', 'matkhau', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(255) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_movie`
--

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(1, 3, 'SPIDER-MAN: NO WAY HOME (NGƯỜI NHỆN: KHÔNG CÒN NHÀ)', 'Tom Holland, Zendaya, Jamie Foxx, Benedict Cumberbatch', 'Bị lộ mặt và trở thành kẻ thù quốc dân, Peter Parker phải làm sao để cứu vãn?  Tiếp nối cái kết của Spider-Man: Far From Home, Peter Parker (Tom Holland) và MJ (Zendaya) đã chính thức thành một đôi. Thế nhưng, thời gian hạnh phúc của họ không kéo dài lâu khi danh tính Spider-Man bị công bố cho cả thế giới biết. Peter, MJ, Ned (Jacob Batalon) và dì May (Marisa Tomei) trở thành tâm điểm của tất cả mọi người.', '2021-11-18', 'images/300x450_1638861157560.jpg', 'https://www.youtube.com/watch?v=JfVOs4VSpmA', 0),
(11, 6, 'FAST & FURIOUS 9 (QUÁ NHANH QUÁ NGUY HIỂM 9)', 'Vin Diesel, John Cena, Charlize Theron, Mayte Michelle Rodríguez, Helen Mirren, Kurt Russell\r\n', 'Fast & Furious 9 nói về trận chiến mới giữa Dom và những người đồng đội của mình. Lần này ngoại trừ nữ phản diện quen thuộc Cipher thì phim có thêm sự xuất hiện của nhân vật Jacob - em trai của Dom. Ngoài ra, nhân vật Han đã được “hồi sinh” kể từ sau khi bị Deckard Shaw (Jason Statham) sát hại.', '2021-12-09', 'images/1200wx1800h_1639943999832.jpg', 'https://www.youtube.com/watch?v=FUK2kdPsBws', 0),
(12, 6, 'MY HERO ACADEMIA: WORLD HEROES\' MISSION', 'Yamashita Daiki, Okamoto Nobuhiko', 'My Hero Academia đặt trong thế giới có 80% dân số đều sở hữu những siêu năng lực đặc biệt hay còn gọi là “kosei”. Nó dần trở thành một chuẩn mực của xã hội. Các anh hùng với sức mạnh vượt trội cũng ra đời từ đây để bảo vệ thế giới khỏi đám ác nhân. Nhân vật chính của tác phẩm là Midoriya Izuku - một học sinh cấp II với mong ước trở thành anh hùng trong tương tai. Song, cậu lại sở hữu vẻ ngoài xấu xí và quê mùa. Xem thêm tại: https://www.galaxycine.vn/dat-ve/my-hero-academia-world-heroes-mission', '2022-01-03', 'images/1200x1800_1641893758132.jpg', 'https://www.youtube.com/watch?v=oEPDXelaxDU', 0),
(13, 6, 'GHOSTBUSTER: AFTERLIFE (BIỆT ĐỘI SĂN MA: CHUYỂN KIẾP)', 'Paul Rudd , Bill Murray, Mckenna Grace, Sigourney Weaver, Finn Wolfhard, J.K. Simmons', 'Ghostbusters: Afterlife lấy bối cảnh 32 năm sau các sự kiện trong phần phim thứ 2. Nhóm Ghostbusters đã tan rã. Egon Spengler là người duy nhất theo đuổi nhiệm vụ săn ma tại thị trấn Summerville, Oklahoma (Mỹ). Tuy nhiên, ông đột ngột qua đời vì lên cơn đau tim. Cô con gái Callie (Carrie Coon) cùng hai con là Trevor (Finn Wolfhard) và Phoebe (Mckenna Grace) đến đây để tiếp quản những gì ông để lại. Họ dần phát hiện ra những món dụng cụ bắt ma cũ của Egon cũng như một thế lực tà ác đang dần trỗi dậy. ', '2022-01-01', 'images/300x450_1640928586755.jpg', 'https://www.youtube.com/watch?v=YeCTj39aTpc', 0),
(18, 3, 'CHỦNG TỘC BẤT TỬ  (ETERNALS)', 'Angelina Jolie, Salma Hayek, Gemma Chan, Richard Madden, Kit Harington, Ma Dong Seok ', 'Vũ trụ điện ảnh Marvel mở ra thần thoại về chủng tộc Eternals – những người bất tử đã sống trên Trái Đất từ thuở sơ khai, hình thành nên các nền văn minh nhân loại. Chỉ đạo Eternals là đạo diễn vừa đoạt Oscar 2021 - Chloé Zhao. Phim quy tụ dàn ngôi sao hạng A Hollywood như Salma Hayek, Angelina Jolie. ', '2022-01-14', 'images/300x450_1638242105196.jpg', 'https://www.youtube.com/watch?v=0WVDKZJkGlY', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(3, 'THE BATMAN', 'Robert Pattinson, Colin Farrell, Zoe Kravitz, Andy Serkis', '2021-07-09', 'Khi sinh ra, Góa phụ đen (hay còn gọi là Natasha Romanova) được trao cho KGB, đội sẽ đưa cô trở thành đặc vụ cuối cùng của tổ chức này.', 'news_images/the-batman-2022-6_1640665476266.jpg'),
(9, 'Shang-Chi and the Legend of the Ten Rings', 'Simu Liu, Awkwafina, Tony Leung, Fala Chen, Micheele Yeoh', '2021-09-14', 'Shang-Chi là một bậc thầy của nhiều phong cách wushu không vũ trang và dựa trên vũ khí, bao gồm sử dụng súng, côn nhị khúc và jian.', 'news_images/shangchi.jpg'),
(11, 'CHỦNG TỘC BẤT TỬ  (ETERNALS)', 'Angelina Jolie, Salma Hayek, Gemma Chan, Richard Madden, Kit Harington, Ma Dong Seok ', '2022-01-21', 'Vũ trụ điện ảnh Marvel mở ra thần thoại về chủng tộc Eternals – những người bất tử đã sống trên Trái Đất từ thuở sơ khai, hình thành nên các nền văn minh nhân loại. Chỉ đạo Eternals là đạo diễn vừa đo', 'news_images/300x450_1638242105196.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(2, 'Lê Doãn Việt', 'ledoanviet@gmail.com', '0387541220', 22, 'gender'),
(4, 'Nam', 'donghainam@gmail.com', '0913242451', 30, 'gender'),
(5, 'Đặng Xuân Việt', 'dangxuanviet@gmail.com', '0343445342', 25, 'gender'),
(6, 'Việt', 'ledoanviet144@gmail.com', '0987293473', 23, 'gender');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_screens`
--

CREATE TABLE `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Phòng chiếu 1', 100, 200000),
(2, 3, 'Phòng chiếu 2', 150, 200000),
(3, 4, 'Phòng chiếu 1', 200, 200000),
(4, 14, 'Phòng chiếu 2', 34, 150000),
(5, 6, 'Phòng chiếu 1', 150, 150000),
(6, 6, 'Phòng chiếu 2', 200, 300000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(19, 15, 6, 11, '2021-04-15', 0, 1),
(20, 20, 6, 13, '2021-04-15', 0, 1),
(21, 19, 6, 12, '2021-03-31', 1, 1),
(22, 18, 6, 17, '2021-04-16', 0, 1),
(23, 3, 3, 1, '2022-01-01', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Trưa', '10:00:00'),
(2, 1, 'Đầu giờ chiều', '14:00:00'),
(3, 1, 'Chiều tối', '18:00:00'),
(4, 1, 'Tối muộn', '21:00:00'),
(5, 2, 'Trưa', '10:00:00'),
(6, 2, 'Đầu giờ chiều', '14:00:00'),
(7, 2, 'Chiều tối', '18:00:00'),
(8, 2, 'Tối muộn', '21:00:00'),
(9, 3, 'Trưa', '10:00:00'),
(10, 3, 'Đầu giờ chiều', '14:00:00'),
(11, 3, 'Chiều tối', '18:00:00'),
(15, 5, 'Chiều', '15:10:00'),
(18, 5, 'Chiều tối', '18:10:00'),
(19, 4, 'Giữa trưa', '12:03:00'),
(20, 3, 'Tối muộn', '21:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_theatre`
--

CREATE TABLE `tbl_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_theatre`
--

INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(3, 'CGV Vincom Center Bà Triệu', 'Tầng 6, Toà nhà VinCom Center Hà Nội', '191 đường Bà Triệu  Quận Hai Bà Trưng', 'Hà Nội', 691523),
(4, 'CGV Vincom Royal City', 'Tầng B2- Khu R4, TTTM Vincom Mega Mall Royal City', ' 72A Nguyễn Trãi,Thanh Xuân', 'Hà Nội', 691523),
(5, 'CGV Vincom Long Biên', 'Tầng 5, TTTM Vincom Plaza Long Biên', 'khu đô thị Vinhomes Riverside, Phường Phúc Lợi, Quận Long Biên', 'Hà Nội', 691523),
(6, 'CGV Vincom Times City', 'Tầng B1, TTTM Vincom Mega Mall Times City', '458 Minh Khai, Hai Bà Trưng', 'Hà Nội', 224450);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Chỉ mục cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Chỉ mục cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Chỉ mục cho bảng `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Chỉ mục cho bảng `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Chỉ mục cho bảng `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Chỉ mục cho bảng `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
