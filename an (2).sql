-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 23, 2024 lúc 02:03 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `an`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`) VALUES
(1, 'slideshow_3.webp'),
(2, 'slideshow_4.webp'),
(3, 'slideshow_5.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `image`, `category_id`, `status`, `created_at`) VALUES
(1, 'nam.png', 1, 1, '2024-11-11 16:43:09'),
(2, 'Nu.png', 2, 1, '2024-11-11 16:43:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `pagraph` text NOT NULL,
  `day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `image`, `price`, `title`, `pagraph`, `day`) VALUES
(1, 'anrh-bay.webp', 990.000, 'NOT A ROSE', 'Hoa Hồng là một trong những hình ảnh đầu tiên mà ta dễ nghĩ tới khi nhắc đến mùi hương.\r\n\r\nĐược ví như quyền lực của sự dịu dàng. Not A Rose là mùi hồng nhưng không điều chế từ hoa hồng. Ký ức và giá trị ẩn sâu bên trong một nhánh hoa hồng đơn sơ.', '2024-12-27'),
(2, 'tải xuống (3).jfif', 998.000, 'Burberry London EDT 100ml', 'Là Bậc Thầy nước hoa Alberto Morillas đã tạo nên thương hiệu giữa hổ phách và da thuộc với các hương vị làm ngọt để mang lại cảm giác và nam tính.\r\n\r\nPhảng phất dưới lớp hương đó chính là âm hưởng của da thuộc đậm chất với an tức hương, đậu tonka và gỗ guagic.', '2024-12-13'),
(3, 'nuoc-hoa-nam-chanel-bleu-edp-100ml-620600b02a082-11022022132240.webp', 789.990, 'Nước Hoa Nam Chanel Bleu EDT 100ml', 'Là mùi hương đặc trưng chính là điểm làm nên sản phẩm Bleu de Chanel, ẩn bên trong là hương vị của gió biển, mang đậm phong cách cá tính thể thao, mạnh mẽ.\r\n\r\nĐặc biệt, hương vị tự nhiên của biển sẽ trở nên thường xuyên.', '2024-12-25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`) VALUES
(1, '[Giải Đáp] Địa Chỉ Mua Nước Hoa uy tín, chất lượng ở đâu?', 'Chọn địa chỉ mua nước hoa uy tín được khá nhiều khách hàng quan tâm và thắc mắc.Bởi vì chúng ta đều biết rằng nước ta là \"chân ái\" của nhiều người. Nhưng Lại có rất nhiều các địa chỉ trên khắp nước cung cấp không đảm bảo bảo hành chính hãng và cũng thay vào đó có nhiều nơi rất uy tín và chất lượng,....', '5fee2a02c330a52524cc2b19a4a2ec5b.jpg'),
(2, 'Lựa Chọn mẫu nước hoa mùi nhẹ nhàng cho nữ', 'Nước Hoa Mùi nhẹ nhàng Cho Nữ Là Điều mà nhiều cô nàng tìm kiếm. Bởi vì ngoài những cô nàng cá tính yêu thích mùi nước hoa quyến rũ.Thì vẫn còn có nhiều chị em mê mẫn, say đắm các nước hoa có mùi nhẹ nhàng.', 'LEMONMELON_PERFUMEBOX-768x768.webp'),
(3, 'Những mùi nước hoa được ưu chuộng nhất dành cho nam và nữ', 'Top những mùi nước hoa được ưu chuộng nhất dành cho cả nam và nữ. chắc chắn rằng một tín đồ của nước hoa bạn không thể bỏ qua những lựa chọn này.Mỗi lần ra ngoài, bản thân không chỉ đẹp, ấn tượng với phong cách thời trang mà còn là vẻ đẹp bề ngoài của những nam sinh nữ tú.', '088fe9f2b0200927a03973f3743ab060.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Nước hoa nam', 'Các loại nước hoa dành cho nam giới'),
(2, 'Nước hoa nữ', 'Các loại nước hoa dành cho nữ giới'),
(3, 'Nước hoa unisex', 'Các loại nước hoa dùng được cho cả nam và nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `note` text DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `status` enum('pending','processing','shipping','completed','cancelled') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `phone`, `email`, `address`, `note`, `payment_method`, `total_amount`, `status`, `created_at`, `total`) VALUES
(32, 1, '', '', '', '', NULL, '', NULL, 'cancelled', '2024-11-12 16:08:29', 3450000.00),
(33, 1, 'Hiep Tran', '0123456789', '', 'HueCity', 'Hue Nhe', 'cod', 3450000.00, 'cancelled', '2024-11-13 04:15:09', 3450000.00),
(34, 1, 'Hiep Tran', '0123456789', '', 'HueCity', 'Hang de nat', 'cod', 22830000.00, 'processing', '2024-11-13 04:25:22', 22830000.00),
(35, 1, 'Hiep Tran', '0123456789', '', 'HueCity', 'Hang de Nat', 'cod', 3450000.00, 'processing', '2024-11-13 04:38:31', 3450000.00),
(36, 1, '', '', '', '', NULL, '', NULL, 'pending', '2024-11-13 06:47:27', 0.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(39, 33, 11, 3, 1150000.00),
(40, 34, 13, 1, 5580000.00),
(41, 34, 11, 15, 1150000.00),
(43, 35, 11, 3, 1150000.00),
(44, 36, 12, 1, 4350000.00),
(45, 36, 14, 1, 2180000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,3) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('active','inactive','out_of_stock') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `quantity`, `sale_price`, `image`, `category_id`, `brand_id`, `stock`, `created_at`, `status`) VALUES
(10, '1 Milion EDT 100ML', 'Nước hoa nam cao cấp', 2500000.000, 99, NULL, 'e20b373feb373b9af0995162be890782-300x300.jpg', 1, 1, 100, '2024-11-11 16:45:15', 'active'),
(11, '212 Sexy For Men 200ml', 'Nước hoa nam quyến rũ', 1150000.000, 94, NULL, '555c6a8b9e2ba1.91252705_1-300x300.png', 1, 2, 100, '2024-11-11 16:45:15', 'active'),
(12, 'Acqua Di Giò Absolu 300ml', 'Nước hoa nam sang trọng', 4350000.000, 100, NULL, '20160128104508gNxJdMLjbL-300x300.jpg', 1, 3, 100, '2024-11-11 16:45:15', 'active'),
(13, 'Chanel Bleu De Chanel EDP 100ml', 'Nước hoa nam đẳng cấp', 5580000.000, 100, 6800000.00, 'shopping.webp', 1, 1, 100, '2024-11-11 16:45:15', 'active'),
(14, 'Acqua Di Gio Versace Eros Man EDT 150ml', 'Nước hoa nam thơm lâu', 2180000.000, 99, 3150000.00, 'shopping (4).webp', 1, 3, 100, '2024-11-11 16:45:15', 'active'),
(15, 'Sauvage Chiristian Dior EDP 200ml', 'Nước hoa nam cao cấp', 4580000.000, 100, 5500000.00, 'shopping (3).webp', 1, 2, 100, '2024-11-11 16:45:15', 'active'),
(16, 'Nước Hoa Nữ Thơm Lâu 100ml', 'Nước hoa nữ quyến rũ', 510000.000, 100, 750000.00, 'shopping (14).webp', 2, 1, 100, '2024-11-11 16:45:15', 'active'),
(17, 'Chanel Coco Noir EDP 50ml', 'Nước hoa nữ sang trọng', 2199000.000, 100, 3550000.00, 'shopping (13).webp', 2, 1, 100, '2024-11-11 16:45:15', 'active'),
(18, 'Ch.ar.me Max 35ml', 'Nước hoa nữ quyến rũ', 359000.000, 100, 570000.00, 'shopping (12).webp', 2, 2, 100, '2024-11-11 16:45:15', 'active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fullname`, `phone`, `address`, `role`, `created_at`) VALUES
(1, 'demo', '$2y$10$TPttnp.JtmsuaY4aQEH/9e/LeMwMwQw8lk5xACMPZssOLCjV/EbEq', 'hiep@gmail.com', 'Hiep Tran', '0123456789', 'HueCity', 'user', '2024-11-12 05:47:20'),
(5, 'admin', '$2y$10$HLqIGWGvHWg8YuNVLodi7e963GVYCtJDxzX2cmwnnyB8mhyspwHt6', 'admin@gmail.com', NULL, NULL, NULL, 'admin', '2024-11-12 17:58:35'),
(6, 'Lê Văn Hậu', '$2y$10$7pAPuxvdSeTPW/lfhriveOToX9Z.7RZmKaP9/XEQELyNg1JWjqyKi', 'hau99082005@gmail.com', 'Lê Văn Hậu', '0367722389', 'Thôn Thống Nhất-Hải Ba-Hải Lăng-Quảng Trị', 'user', '2024-12-23 03:18:19');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
