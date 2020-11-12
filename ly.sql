-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 12, 2020 lúc 05:17 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ly`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iddm` int(12) NOT NULL,
  `date` datetime DEFAULT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `tacgia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `luotxem` int(12) DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `name`, `slug`, `img`, `iddm`, `date`, `noidung`, `tacgia`, `tag`, `luotxem`, `mota`, `public`) VALUES
(7, 'Các kiểu ly nhựa đẹp nhất 2020', 'cac-kieu-ly-nhua-dep-nhat-2020', 'cac-kieu-ly-dep-nhat-2020.jpg', 4, '2020-11-12 10:39:27', '<p><a href=\"https://baobixanh.com.vn/ly-nhua\">Ly nhựa</a>&nbsp;l&agrave; vật dụng phổ biến, quen thuộc trong c&aacute;c qu&aacute;n caf&eacute;, tr&agrave; sữa. Đứng giữa thị trường năng động, đầy cạnh tranh, c&aacute;c nh&atilde;n h&agrave;ng ng&agrave;y c&agrave;ng ch&uacute; trọng hơn về chất lượng cũng như h&igrave;nh ảnh thương hiệu của m&igrave;nh th&ocirc;ng qua những chiếc ly. Nhằm đ&aacute;p ứng nhu cầu đ&oacute;.</p>\r\n\r\n<p>Bao B&igrave; Xanh li&ecirc;n tục cập nhật v&agrave; s&aacute;ng tạo c&aacute;c mẫu ly nhựa đẹp 2020 với k&iacute;ch thước, kiểu d&aacute;ng, chất lượng h&agrave;ng đầu. Mời c&aacute;c bạn tham khảo c&aacute;c kiểu ly nhựa đẹp 2020 qua b&agrave;i viết n&agrave;y nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/cac-kieu-ly-dep-nhat-2020.jpg\" style=\"height:800px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>C&oacute; n&ecirc;n sử dụng ly nhựa d&ugrave;ng một lần?</strong></h2>\r\n\r\n<p>Ly nhựa đ&atilde; xuất hiện từ l&acirc;u nhưng đến nay vẫn c&oacute; một sức h&uacute;t mạnh mẽ. Ch&iacute;nh nhờ v&agrave;o t&iacute;nh tiện lợi, chất liệu bền, dẻo, dễ sử dụng v&agrave; gi&aacute; th&agrave;nh rẻ, ly nhựa c&ograve;n được c&aacute;c nh&atilde;n h&agrave;ng săn đ&oacute;n v&igrave; t&iacute;nh thẩm mỹ kh&aacute; cao, dễ d&agrave;ng quảng c&aacute;o v&agrave; thu h&uacute;t kh&aacute;ch h&agrave;ng tốt hơn.</p>\r\n\r\n<h2><strong>Lợi &iacute;ch của ly nhựa sử dụng một lần</strong></h2>\r\n\r\n<p>Ly nhựa d&ugrave;ng một lần kh&ocirc;ng chỉ th&iacute;ch hợp sử dụng ở c&aacute;c cửa h&agrave;ng, qu&aacute;n nước giải kh&aacute;t. M&agrave; c&ograve;n hữu dụng tại những nơi đ&ocirc;ng người như sự kiện, trường học, bệnh viện, qu&aacute;n ăn &hellip; đảm bảo an to&agrave;n vệ sinh cho người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p><img alt=\"su-dung-1-lan\" src=\"/uploads/co-nen-su-dung-ly-1-lan.jpg\" style=\"height:800px; width:600px\" /></p>\r\n\r\n<p>Hơn nữa, bạn đ&atilde; biết c&aacute;ch thu h&uacute;t sự ch&uacute; &yacute; của kh&aacute;ch h&agrave;ng với cửa h&agrave;ng của bạn ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n chưa? B&iacute; mật lu&ocirc;n nằm ở những chiếc ly!</p>\r\n\r\n<p>&gt;&gt; Xem th&ecirc;m:&nbsp;<strong><a href=\"https://baobixanh.com.vn/mo-quan-tra-sua-can-nhung-gi\">Mở qu&aacute;n tr&agrave; sữa cần những g&igrave;?</a></strong>&nbsp;#13 yếu tố quyết định th&agrave;nh c&ocirc;ng</p>\r\n\r\n<h2><strong>C&aacute;c kiểu ly nhựa đẹp nhất năm 2020</strong></h2>\r\n\r\n<p>Thiết kế ly nhựa 2020 ch&uacute; trọng về kiểu d&aacute;ng, k&iacute;ch thước v&agrave; chất lượng nhựa. B&ecirc;n cạnh đ&oacute;, c&aacute;c thiết kế logo, h&igrave;nh ảnh tr&ecirc;n th&acirc;n ly cũng hướng tới sự đơn giản, tinh tế, l&agrave;m nổi bật gi&aacute; trị thương hiệu.</p>\r\n\r\n<p>Một số kiểu ly nhựa đẹp hot trend 2020</p>\r\n\r\n<h3><strong>1. Ly nhựa nắp cầu</strong></h3>\r\n\r\n<p><strong><a href=\"https://baobixanh.com.vn/ly-nhua-nap-cau\">Ly nhựa nắp h&igrave;nh cầu</a></strong>&nbsp;c&oacute; thiết kế đơn giản, tiện lợi nhờ nắp đậy h&igrave;nh cầu dễ d&agrave;ng cắm ống h&uacute;t. Đ&acirc;y l&agrave; mẫu ly nhựa được d&ugrave;ng phổ biến tại hầu hết c&aacute;c cửa h&agrave;ng đồ uống m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua.</p>\r\n\r\n<p>Ly nhựa nắp cầu c&oacute; thiết kế đẹp mắt, tiện dụng</p>\r\n\r\n<p>Ly nhựa nắp cầu th&iacute;ch hợp đựng tr&agrave; sữa, nước &eacute;p tr&aacute;i c&acirc;y, &hellip; Tuy nhi&ecirc;n, bạn n&ecirc;n kh&eacute;o l&eacute;o d&ugrave;ng ly nắp cầu khi kh&aacute;ch h&agrave;ng ngồi uống tại chỗ hoặc cầm tay di chuyển gần, tr&aacute;nh thức uống chảy đổ ra ngo&agrave;i.</p>\r\n\r\n<div class=\"eJOY__extension_root_class\" id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>\r\n', 'admin', 'ly nhua', NULL, 'Ly nhựa là vật dụng phổ biến, quen thuộc trong các quán café, trà sữa. Đứng giữa thị trường năng động, đầy cạnh tranh, các nhãn hàng ngày càng chú trọng hơn về chất lượng cũng như hình ảnh thương hiệu của mình thông qua những chiếc ly. Nhằm đáp ứng nhu cầu đó.\r\n\r\nBao Bì Xanh liên tục cập nhật và sáng tạo các mẫu ly nhựa đẹp 2020 với kích thước, kiểu dáng, chất lượng hàng đầu. Mời các bạn tham khảo các kiểu ly nhựa đẹp 2020 qua bài viết này nhé.\r\n\r\n\r\n\r\n \r\n\r\nCó nên sử dụng ly nhựa dùng một lần?\r\n\r\nLy nhựa đã xuất hiện từ lâu nhưng đến nay vẫn có một sức hút mạnh mẽ. Chính nhờ vào tính tiện lợi, chất liệu bền, dẻo, dễ sử dụng và giá thành rẻ, ly nhựa còn được các nhãn hàng săn đón vì tính thẩm mỹ khá cao, dễ dàng quảng cáo và thu hút khách hàng tốt hơn.\r\n\r\nLợi ích của ly nhựa sử dụng một lần\r\n\r\nLy nhựa dùng một lần không chỉ thích hợp sử dụng ở các cửa hàng, quán nước giải khát. Mà còn hữu dụng tại những nơi đông người như sự kiện, trường học, bệnh viện, quán ăn … đảm bảo an toàn vệ sinh cho người tiêu dùng.\r\n\r\n\r\n\r\nHơn nữa, bạn đã biết cách thu hút sự chú ý của khách hàng với cửa hàng của bạn ngay từ cái nhìn đầu tiên chưa? Bí mật luôn nằm ở những chiếc ly!\r\n\r\n>> Xem thêm: Mở quán trà sữa cần những gì? #13 yếu tố quyết định thành công\r\n\r\nCác kiểu ly nhựa đẹp nhất năm 2020\r\n\r\nThiết kế ly nhựa 2020 chú trọng về kiểu dáng, kích thước và chất lượng nhựa. Bên cạnh đó, các thiết kế logo, hình ảnh trên thân ly cũng hướng tới sự đơn giản, tinh tế, làm nổi bật giá trị thương hiệu.\r\n\r\nMột số kiểu ly nhựa đẹp hot trend 2020\r\n\r\n1. Ly nhựa nắp cầu\r\n\r\nLy nhựa nắp hình cầu có thiết kế đơn giản, tiện lợi nhờ nắp đậy hình cầu dễ dàng cắm ống hút. Đây là mẫu ly nhựa được dùng phổ biến tại hầu hết các cửa hàng đồ uống mà bạn không nên bỏ qua.\r\n\r\nLy nhựa nắp cầu có thiết kế đẹp mắt, tiện dụng\r\n\r\nLy nhựa nắp cầu thích hợp đựng trà sữa, nước ép trái cây, … Tuy nhiên, bạn nên khéo léo dùng ly nắp cầu khi khách hàng ngồi uống tại chỗ hoặc cầm tay di chuyển gần, tránh thức uống chảy đổ ra ngoài.\r\n\r\n ', 1),
(8, 'Mẫu ly nhựa đẹp', 'mau-ly-nhua-dep', 'ly-nhua-tra-sua-sai-gon-679x1024.jpg', 4, '2020-11-12 10:55:18', '<p>&nbsp;</p>\r\n\r\n<p><img alt=\"ly-nhua-dep\" src=\"/uploads/ly-nhua-tra-sua-sai-gon-679x1024.jpg\" style=\"height:1418px; width:940px\" /></p>\r\n\r\n<p>Trong những năm trở lại đ&acirc;y, c&aacute;c ng&agrave;nh dịch vụ ăn uống trở n&ecirc;n ph&aacute;t triển hơn bao giờ hết. Đặc biệt trong số đ&oacute; phải nhắc đến c&aacute;c cửa h&agrave;ng tr&agrave; sữa, cafe take-away, qu&aacute;n nước &eacute;p tr&aacute;i c&acirc;y mọc l&ecirc;n 1 c&aacute;ch nhanh ch&oacute;ng. V&igrave; những yếu tố ấy m&agrave; c&aacute;c c&ocirc;ng ty sản xuất v&agrave; in ly nhựa tại TPHCM ra đời ng&agrave;y c&agrave;ng nhiều để đ&aacute;p ứng lại nhu cầu về ly nhựa.</p>\r\n\r\n<p>Với nhiều cửa h&agrave;ng việc chọn nh&agrave; cung cấp ly nhựa v&agrave; in logo l&ecirc;n ly rất kh&oacute; khăn. Bởi v&igrave; c&oacute; rất nhiều c&ocirc;ng ty ch&agrave;o mời v&agrave; gi&aacute; rất tốt. V&igrave; vậy h&ocirc;m nay&nbsp;<strong>SB150</strong>&nbsp;xin chia sẻ danh s&aacute;ch&nbsp;<strong>5 c&ocirc;ng ty in ly nhựa tr&agrave; sữa tại TP HCM uy t&iacute;n v&agrave; gi&aacute; tốt nhất</strong>&nbsp;cho c&aacute;c chủ cửa h&agrave;ng tr&agrave; sữa c&oacute; thể dễ d&agrave;ng chọn lựa.</p>\r\n\r\n<p><img alt=\"in-ly-nhua-tphcm\" src=\"https://www.sb150.com/wp-content/uploads/2020/05/in-ly-nhua-tphcm.jpg\" style=\"height:940px; width:940px\" /></p>\r\n\r\n<p><em>Trước khi đi v&agrave;o danh s&aacute;ch m&igrave;nh sẽ giới thiệu qua một số th&ocirc;ng tin cơ bản như:</em></p>\r\n\r\n<h2>In Ly Nhựa Tr&agrave; Sữa l&agrave; g&igrave;?</h2>\r\n\r\n<p>N&oacute;i một c&aacute;ch n&ocirc;m na dễ hiểu in ly nhựa tr&agrave; sữa l&agrave; in logo cửa h&agrave;ng l&ecirc;n những chiếc ly nhựa đựng tr&agrave; sữa. C&aacute;c bạn c&oacute; thể nhận ra những chiếc ly in logo đẹp mắt từ c&aacute;c thương hiệu tr&agrave; sữa lớn như GongCha, Royal Tee, The Alley&hellip; n&oacute; một phần gi&uacute;p quảng b&aacute; thương hiệu tr&agrave; sữa của bạn đến với nhiều kh&aacute;ch h&agrave;ng, một phần l&agrave;m tăng thẩm mỹ cho những chiếc ly nhựa của cửa h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"ly nhua tra sua sai gon\" src=\"https://www.sb150.com/wp-content/uploads/2020/03/ly-nhua-tra-sua-sai-gon.jpg\" style=\"height:1417px; width:940px\" /></p>\r\n\r\n<h2>Gi&aacute; In ly nhựa Tr&agrave; Sữa như thế n&agrave;o?</h2>\r\n\r\n<p>Gi&aacute; in ly nhựa tr&agrave; sữa t&ugrave;y thuộc v&agrave;o việc bạn chọn lựa in logo nh&atilde;n hiệu theo 1 m&agrave;u hay nhiều m&agrave;u. Nếu bạn in logo 1 m&agrave;u th&igrave; gi&aacute; sẽ rẻ hơn so với nhiều m&agrave;u nhưng chất lượng in vẫn tốt. Gi&aacute; in ly nhựa cũng t&ugrave;y thuộc v&agrave;o c&ocirc;ng ty đ&oacute; c&oacute; sản xuất trực tiếp ra ly nhựa kh&ocirc;ng? Đối với danh s&aacute;ch giới thiệu b&ecirc;n dưới th&igrave; gi&aacute; in ly nhựa sẽ rất tốt v&igrave; c&aacute;c c&ocirc;ng ty ấy sản xuất trực tiếp ra ly nhựa n&ecirc;n gi&aacute; th&agrave;nh sẽ tốt hơn c&aacute;c c&ocirc;ng ty phải nhập ly nhựa về để in.</p>\r\n\r\n<p><img alt=\"gia-in-ly-nhua\" src=\"https://www.sb150.com/wp-content/uploads/2020/05/gia-in-ly-nhua-300x300.jpg\" style=\"height:940px; width:940px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, nếu chủ cửa h&agrave;ng tr&agrave; sữa n&agrave;o chưa nghĩ ra thiết kế logo nh&atilde;n hiệu như n&agrave;o c&ograve;n c&oacute; thể được tư vấn v&agrave; thiết kế miễn ph&iacute; khi đặt ở c&aacute;c c&ocirc;ng ty n&agrave;y.</p>\r\n\r\n<h2>C&aacute;c kiểu ly nhựa tr&agrave; sữa đẹp hay được in logo</h2>\r\n\r\n<h3><em>+ Ly tr&agrave; sữa nắp cầu:</em></h3>\r\n\r\n<p>Loại ly n&agrave;y l&agrave; mẫu rất th&ocirc;ng dụng chắc hẳn c&aacute;c bạn sẽ dễ d&agrave;ng nh&igrave;n thấy trong c&aacute;c qu&aacute;n tr&agrave; sữa. Trong năm 2019 mẫu n&agrave;y đ&atilde; được l&agrave;m mới 1 &iacute;t diện mạo v&agrave; c&oacute; nhiều ưu điểm nổi trội. Mẫu ly tr&agrave; sữa nắp cầu được in logo hiện nay được rất nhiều qu&aacute;n tr&agrave; sữa sử dụng rộng r&atilde;i.</p>\r\n\r\n<p><img alt=\"ly-tra-sua-nap-cau\" src=\"https://www.sb150.com/wp-content/uploads/2020/05/IMG_1585321062630_1585321398011-682x1024.jpg\" style=\"height:1411px; width:940px\" /></p>\r\n\r\n<h3><em>+ Ly n&uacute;t tr&aacute;i tim</em></h3>\r\n\r\n<p>Mẫu ly n&agrave;y g&acirc;y sốt trong 2 3 năm trở lại đ&acirc;y bởi h&igrave;nh d&aacute;ng dễ thương với chiếc nắm tr&aacute;i tim si&ecirc;u cute. Sau 1 thời gian sử dụng n&oacute; đ&atilde; chiếm trọn tr&aacute;i tim kh&aacute;ch h&agrave;ng v&agrave; c&aacute;c chủ qu&aacute;n tr&agrave; sữa. V&igrave; vậy, mẫu ly n&uacute;t tr&aacute;i tim được nhiều cửa h&agrave;ng tr&agrave; sữa nổi tiếng đặt in logo tăng hấp dẫn cho ly v&agrave; tăng khả năng quảng b&aacute; nh&atilde;n hiệu cho cửa h&agrave;ng.</p>\r\n\r\n<p><img alt=\"ly-nut-trai-tim\" src=\"https://www.sb150.com/wp-content/uploads/2020/05/ly-nut-trai-tim.jpg\" style=\"height:1253px; width:940px\" /></p>\r\n\r\n<h3>+<em>&nbsp;Ly nhựa đ&aacute;y bầu</em></h3>\r\n\r\n<p>Kh&ocirc;ng phải nghĩ ngợi nhiều v&igrave; sao mẫu n&agrave;y lại được nhiều nh&atilde;n hiệu tr&agrave; sữa nổi tiếng chọn lựa. Bởi v&igrave; cực k&igrave; đ&aacute;ng y&ecirc;u với d&aacute;ng l&ugrave;n mập dễ d&agrave;ng cầm nắm. Đặc biệt khi l&ecirc;n ảnh th&igrave; rất đẹp. V&igrave; vậy nhiều cửa h&agrave;ng đ&atilde; chọn lựa mẫu n&agrave;y.</p>\r\n\r\n<p><img alt=\"ly-tra-sua-day-bau\" src=\"https://www.sb150.com/wp-content/uploads/2020/05/ly-tra-sua-day-bau.jpg\" style=\"height:940px; width:940px\" /></p>\r\n\r\n<h2>5 C&ocirc;ng ty In ly nhựa tr&agrave; sữa tại TP HCM uy t&iacute;n v&agrave; gi&aacute; tốt nhất</h2>\r\n\r\n<h3><strong>1. Ly nhựa B&igrave;nh Minh</strong></h3>\r\n\r\n<p>Khi nhắc đến ly nhựa hay in ly nhựa tr&agrave; sữa th&igrave; kh&ocirc;ng thể thiếu &ldquo;người anh cả&rdquo; trong lĩnh vực n&agrave;y l&agrave;&nbsp;<strong>Ly nhựa B&igrave;nh Minh.&nbsp;</strong>C&ocirc;ng ty dẫn đầu thị trường sản xuất ly nhựa v&agrave; c&aacute;c sản phẩm bao b&igrave; trong ng&agrave;nh đồ uống ở TP HCM</p>\r\n\r\n<p><img alt=\"Ly nhựa Bình Minh\" src=\"https://www.sb150.com/wp-content/uploads/2020/05/ly-nhua-binh-minh-1024x381.jpg\" style=\"height:350px; width:940px\" /></p>\r\n\r\n<p>Ly nhựa B&igrave;nh Minh</p>\r\n\r\n<p>Nhờ d&acirc;y chuyền hệ th&ocirc;ng sản xuất hiện đại kết hợp với tr&igrave;nh độ đội ngũ c&ocirc;ng nh&acirc;n vi&ecirc;n tay nghề cao n&ecirc;n sản phẩm của ly nhựa B&igrave;nh Minh lu&ocirc;n đảm bảo chất lượng tốt nhất, đ&aacute;p ứng hầu hết c&aacute;c nhu cầu của thị hiếu kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<blockquote>\r\n<p>B&igrave;nh Minh kinh doanh bằng chữ T&iacute;n. Nhiều năm nay B&igrave;nh Minh chưa bao giờ l&agrave;m kh&aacute;ch h&agrave;ng thất vọng. Rất nhiều kh&aacute;ch h&agrave;ng tin tưởng B&igrave;nh Minh v&igrave; đ&atilde; duy tr&igrave; được uy t&iacute;n qua nhiều năm.<br />\r\nKhi tin chọn B&igrave;nh Minh, Qu&yacute; kh&aacute;ch lu&ocirc;n được xem mẫu v&agrave; tư vấn tận t&igrave;nh. Khi nhận h&agrave;ng, Qu&yacute; kh&aacute;ch c&oacute; thể kiểm tra chất lượng. Chỉ cần kh&ocirc;ng h&agrave;i l&ograve;ng về chất lượng in ấn, B&igrave;nh Minh cam kết l&agrave;m h&agrave;ng lại hoặc ho&agrave;n tiền.</p>\r\n</blockquote>\r\n\r\n<p><strong>Th&ocirc;ng tin li&ecirc;n hệ:</strong></p>\r\n\r\n<p>Địa chỉ: 68 Nguyễn Huệ, Bến Ngh&eacute;, Q. 1, HCM<br />\r\nSố điện thoại: 09345 24 014<br />\r\nEmail: sanxuatlynhua@gmail.com<br />\r\nWebsite: www.lynhuabinhminh.com</p>\r\n\r\n<h3><strong>2.&nbsp;<a href=\"http://baobihuynhat.com/\">Bao B&igrave; Huy Nhất</a></strong></h3>\r\n\r\n<p>Mặc d&ugrave; sinh sau đẻ muộn nhưng Bao B&igrave; Huy Nhất đ&atilde; nắm trọn được l&ograve;ng tin của kh&aacute;ch h&agrave;ng bởi chất lượng sản phẩm v&agrave; gi&aacute; th&agrave;nh cực k&igrave; tốt trong c&aacute;c dịch vụ in ly tr&agrave; sữa, in logo cho c&aacute;c cửa h&agrave;ng. Với nhiều loại m&aacute;y in ly hiện đại được nhập khẩu từ c&aacute;c nước ti&ecirc;n tiến n&ecirc;n thời gian in ly của Huy Nhất l&agrave; v&ocirc; c&ugrave;ng nhanh. Đảm bảo thời gian giao h&agrave;ng đ&uacute;ng hẹn với kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Hiện tại Bao B&igrave; Huy Nhất đ&atilde; hợp t&aacute;c với hơn 630+ cửa h&agrave;ng tr&agrave; sữa, cafe, nước &eacute;p tr&aacute;i c&acirc;y tr&ecirc;n thị trường TP. HCM. Với chiến lược sắp tới sẽ ph&aacute;t triển mạnh mẽ tr&ecirc;n thị trường to&agrave;n quốc đặc biệt l&agrave; c&aacute;c tỉnh th&agrave;nh phố lớn.</p>\r\n\r\n<p><img alt=\"banner-bao-bi-huy-nhat\" src=\"https://www.sb150.com/wp-content/uploads/2020/03/banner-huy-nhat.jpg\" style=\"height:457px; width:940px\" /></p>\r\n\r\n<p>Sản phẩm v&agrave; dịch vụ ch&iacute;nh:</p>\r\n\r\n<ul>\r\n	<li>In ly nhựa</li>\r\n	<li>In ly giấy</li>\r\n</ul>\r\n\r\n<p><strong>Th&ocirc;ng tin li&ecirc;n hệ:</strong></p>\r\n\r\n<p>Địa chỉ: 89 Nguyễn Thị Minh Khai, Bến Ngh&eacute;, Quận 1, TPHCM<br />\r\nĐiện thoại: 0705 900 222<br />\r\nWebsite:&nbsp;<a href=\"https://baobihuynhat.com/\">https://baobihuynhat.com/</a><br />\r\nEmail:&nbsp;baobihuynhat@gmail.com</p>\r\n\r\n<h3><strong>3. Ly nhựa Thanh T&acirc;m</strong></h3>\r\n\r\n<p>Nếu bạn đang t&igrave;m kiếm sản phẩm dựa tr&ecirc;n thẩm mỹ v&agrave; sự tư vấn tận t&igrave;nh, th&igrave; Thanh T&acirc;m l&agrave; thương hiệu sản xuất ly nhựa m&agrave; bạn n&ecirc;n tham khảo. L&agrave; đơn vị mới th&acirc;m nhập thị trường nhưng định hướng v&agrave; gi&aacute; trị cốt l&otilde;i kh&aacute;c biệt n&ecirc;n từng bước Thanh T&acirc;m cũng tạo cho m&igrave;nh dấu ấn ri&ecirc;ng.<br />\r\nĐa phần c&aacute;c sản phẩm của đều tập trung v&agrave;o kiểu d&aacute;ng. Mẫu m&atilde; đẹp, chuẩn v&agrave; thẩm mĩ cao c&ugrave;ng thiết kế sang trọng, tinh tế gi&uacute;p đồ uống của bạn tr&ocirc;ng ngon v&agrave; bắt mắt hơn. V&igrave; gi&aacute; trị cốt l&otilde;i của Thanh T&acirc;m l&agrave; tập trung n&acirc;ng tầm thương hiệu, quan t&acirc;m đến c&aacute;i đẹp v&agrave; dịch vụ kh&aacute;ch h&agrave;ng.<br />\r\nB&ecirc;n cạnh tập trung v&agrave;o mẫu đẹp, dịch vụ kh&aacute;ch h&agrave;ng chu đ&aacute;o, Thanh T&acirc;m cũng ch&uacute; trọng đến c&aacute;c gi&aacute; trị gia tăng như cung cấp trọn bộ bao b&igrave; phục vụ ng&agrave;nh đồ uống như ly giấy, m&agrave;ng &eacute;p, chai nhựa v.v.v..</p>\r\n\r\n<p><img alt=\"In ly nhựa Thanh Tâm\" src=\"https://www.sb150.com/wp-content/uploads/2020/05/in-ly-nhua-thanh-tam-dep.jpg\" style=\"height:412px; width:900px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin li&ecirc;n hệ:</strong></p>\r\n\r\n<p>Địa chỉ: 172/6 B&igrave;nh Long, Ph&uacute; Thạnh T&acirc;n Ph&uacute;<br />\r\nTell: 093 67 65 001<br />\r\nEmail: lynhuathanhtam@gmail.com<br />\r\nWebsite: inlynhua.net</p>\r\n\r\n<h3><strong>4. In Bimi</strong></h3>\r\n\r\n<p>In Bimi l&agrave; thương hiệu của c&ocirc;ng ty TNHH &amp; TMDV B&igrave;nh Minh được th&agrave;nh lập v&agrave;o năm 2015. Được biết đến như thương hiệu h&agrave;ng đầu Việt Nam trong lĩnh vực in ấn bao b&igrave; cho c&aacute;c cửa h&agrave;ng tr&agrave; sữa &ndash; cafe take away tr&ecirc;n cả nước.</p>\r\n\r\n<p>Sau chỉ với 5 năm hoạt động In Bi Mi đ&atilde; c&oacute; 1 lượng lớn kh&aacute;ch h&agrave;ng trung th&agrave;nh nhất định. Với kinh nghiệm nhiều năm hoạt động tr&ecirc; thị trường TP HCM. Bimi tự tin khẳng định m&igrave;nh l&agrave; 1 trong những đơn vị uy t&iacute;n h&agrave;ng đầu trong lĩnh vuẹc in logo tr&ecirc;n ly nhựa. Bimi cam kết đem lại cho c&aacute;c bạn những trải nghiệm về dịch vụ in ấn tốt nhất!</p>\r\n\r\n<p><strong>Th&ocirc;ng tin li&ecirc;n hệ:</strong></p>\r\n\r\n<p>Địa chỉ: 202 L&ecirc; Thị Bạch C&aacute;t, P.11, Q.11, TP. HCM</p>\r\n\r\n<p>Điện thoại:&nbsp;0903 1616 40</p>\r\n\r\n<p>Email:&nbsp;inanbimi@gmail.com</p>\r\n\r\n<p>Website:&nbsp;https://inbimi.com</p>\r\n\r\n<h3><strong>5. Ly nhựa s&agrave;i g&ograve;n</strong></h3>\r\n\r\n<p>L&agrave; c&ocirc;ng ty chuy&ecirc;n về dịch vụ in ly nhựa tại S&agrave;i G&ograve;n được th&agrave;nh lập năm 2012. Chuy&ecirc;n cung cấp c&aacute;c giải ph&aacute;p in ấn trọn g&oacute;i tr&ecirc;n ly d&ugrave;ng cho c&aacute;c cửa h&agrave;ng tr&agrave; sữa &ndash; cafe take away. Sản phẩm ly nhựa in logo của Ly nhựa S&agrave;i G&ograve;n lu&ocirc;n lu&ocirc;n đảm bảo chất ly lượng. Với định hương v&agrave; phương ch&acirc;m theo đuổi l&agrave;: In Đẹp &ndash; Nhanh Ch&oacute;ng &ndash; Gi&aacute; cực Rẻ n&ecirc;n Ly nhựa S&agrave;i G&ograve;n l&agrave; 1 trong nhưng c&ocirc;ng ty top đầu trong lịch vực in ấn ly nhựa ở S&agrave;i G&ograve;n.</p>\r\n\r\n<p>Phấn đấu đến hết năm 2020 trở th&agrave;nh c&ocirc;ng ty đứng đầu ng&agrave;nh về sản xuất v&agrave; in ấn tr&ecirc;n ly nhựa sử dụng 1 lần. Ly Nhựa S&agrave;i G&ograve;n cam kết đem lại gi&aacute; trị cao nhất cho kh&aacute;ch h&agrave;ng, xứng đ&aacute;ng với số tiền kh&aacute;ch h&agrave;ng bỏ ra.</p>\r\n\r\n<div class=\"eJOY__extension_root_class\" id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>\r\n', 'admin', 'ly nhua dep', NULL, 'Mẫu ly nhựa đẹp', 1),
(9, 'Ly nhựa', 'ly-nhua', 'in-ly-nhua-sai-gon.jpg', 5, '2020-11-12 11:05:42', '<p><strong><a href=\"https://www.amazon.com/s?k=Best+Plastic+Cup\" rel=\"nofollow\">Ly nhựa</a></strong>&nbsp;từ đầu đ&atilde; l&agrave; vật dụng rất quen thuộc đối với c&aacute;c xe tr&agrave; sữa, caf&eacute; take away&hellip; bởi gi&aacute; th&agrave;nh rẻ v&agrave; sự tiện dụng.</p>\r\n\r\n<p>Ng&agrave;y nay, khi yếu tố về thương hiệu được ch&uacute; trọng th&igrave; việc<strong>&nbsp;in ly nhựa</strong>&nbsp;mang&nbsp;<strong>sự kh&aacute;c biệt</strong>&nbsp;của cửa h&agrave;ng bạn lại trở n&ecirc;n cực k&igrave; quan trọng.</p>\r\n\r\n<p>Với thiết kế độc đ&aacute;o, ấn tượng v&agrave; th&ocirc;ng điệp về thương hiệu th&ocirc;ng qua từng chiếc ly sẽ đến tay người ti&ecirc;u d&ugrave;ng. Từ đ&oacute; để lại ấn tượng v&agrave; &ldquo;ghim&rdquo; trong tr&iacute; nhớ của họ về bạn.</p>\r\n\r\n<p><img alt=\"ly nhua sai gon\" src=\"https://lynhuasaigon.com/wp-content/uploads/2020/06/ly-nhua-sai-gon.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<h2>&nbsp;In logo l&ecirc;n ly nhựa gi&aacute; rẻ</h2>\r\n\r\n<p>Biến chiếc ly th&ocirc;ng thường th&agrave;nh ly nhựa được in ấn logo thương hiệu của bạn. M&agrave;u sắc c&oacute; thể 1 hoặc 2, 3,&hellip;tối đa in được 5 m&agrave;u. Tuy nhi&ecirc;n số lượng tối thiểu của in 1 m&agrave;u l&agrave; 1000 c&aacute;i, in 2-5 m&agrave;u số lượng tối thiểu phải từ 10.000 c&aacute;i trở l&ecirc;n.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/jOttHQ7KM3k\" width=\"560\"></iframe></p>\r\n\r\n<h2>&nbsp;C&oacute; mấy loại ly nhựa?</h2>\r\n\r\n<p>&ndash; Chia th&agrave;nh c&ocirc;ng dụng th&igrave; c&oacute; thể ph&acirc;n ra th&agrave;nh 2 loại: ly caf&eacute; v&agrave; ly tr&agrave; sữa.. .</p>\r\n\r\n<p>&ndash; Chia theo chất liệu cấu tạo c&oacute; thể chia th&agrave;nh 2 loại:<a href=\"https://lynhuasaigon.com/ly-nhua/pet/\"><strong>&nbsp;ly PET</strong></a>&nbsp;v&agrave;&nbsp;<a href=\"https://lynhuasaigon.com/ly-nhua/pp/\"><strong>ly PP</strong></a></p>\r\n\r\n<p>&ndash; Thực tế ly tr&agrave; sữa thường được d&ugrave;ng l&agrave; ly PP ( vừa c&oacute; thể &eacute;p m&agrave;ng nhựa bằng m&aacute;y dập nắp, vừa c&oacute; thể d&ugrave;ng&nbsp;<a href=\"https://lynhuasaigon.com/in-ly-nhua/nap-cau/\">nắp cầu</a>), ly caf&eacute; thường được d&ugrave;ng ly PET (chỉ c&oacute; thể d&ugrave;ng nắp cầu).</p>\r\n\r\n<p>Ly PP bạn c&oacute; thể bắt gặp ở Dingtea, Gongcha, Hot &amp; Cool&hellip;.</p>\r\n\r\n<p>Ly PET bạn c&oacute; thể bắt gặp ở Highland, Stabuck&hellip;</p>\r\n\r\n<p>&ndash; Chia theo dung t&iacute;ch c&oacute; c&aacute;c loại: ly 360ml, ly 470ml, 500ml, 590ml, 630ml, 650ml, 710ml&hellip;</p>\r\n\r\n<p>&ndash; Theo c&aacute;ch sử dụng th&igrave; c&oacute;:<strong>&nbsp;ly sử dụng 1 lần</strong>&nbsp;v&agrave; sử dụng nhiều lần</p>\r\n\r\n<p>&ndash; Theo h&igrave;nh d&aacute;ng: ly c&oacute; nắp v&agrave; kh&ocirc;ng c&oacute; nắp</p>\r\n\r\n<p><em>Xem tất cả<strong>&nbsp;<a href=\"https://lynhuasaigon.com/ly-nhua/\">c&aacute;c loại ly nhựa</a></strong></em></p>\r\n\r\n<p><img alt=\"gai xinh uong tra sua\" src=\"https://lynhuasaigon.com/wp-content/uploads/2020/02/gai-xinh-uong-tra-sua.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p><img alt=\"in logo len ly nhua\" src=\"https://lynhuasaigon.com/wp-content/uploads/2020/02/in-logo-len-ly-nhua.jpg\" style=\"height:750px; width:600px\" /></p>\r\n\r\n<h2>LYNHUASAIGON &ndash; GI&Aacute; HẠT DẺ NHẤT tại Việt Nam</h2>\r\n\r\n<p>L&agrave; c&ocirc;ng ty lớn h&agrave;ng đầu tại S&agrave;i G&ograve;n v&agrave; nhiều năm kinh nghiệm, việc tối ưu d&acirc;y chuyền sản xuất, in ấn ph&acirc;n phối đ&atilde; được TỐI ƯU n&ecirc;n việc LyNhuaSaigon&nbsp;<strong>gi&aacute; rẻ h&agrave;ng đầu Việt Nam</strong>&nbsp;l&agrave; điều tất nhi&ecirc;n</p>\r\n\r\n<p>T&ugrave;y theo số lượng, chủng loại, dung t&iacute;ch v&agrave; thời điểm đặt h&agrave;ng trong năm m&agrave; gi&aacute; in ly nhựa kh&aacute;c nhau. Để biết ch&iacute;nh x&aacute;c gi&aacute; đặt in ly ở thời điểm hiện tại bạn h&atilde;y gọi Hotline 24/7 của ch&uacute;ng t&ocirc;i để được tư vấn nh&eacute;:</p>\r\n\r\n<p><img alt=\"bang gia ly nhua 2020\" src=\"https://lynhuasaigon.com/wp-content/uploads/2020/05/bang-gia-ly-nhua-2020.png\" style=\"height:463px; width:801px\" /></p>\r\n\r\n<p><a href=\"tel:0902664475\"><strong>GỌI NGAY: 0902664475</strong></a></p>\r\n\r\n<p><img alt=\"in-logo-len-ly-nhua-dep\" src=\"https://lynhuasaigon.com/wp-content/uploads/2017/04/in-logo-len-ly-nhua-dep.jpg\" style=\"height:960px; width:960px\" /></p>\r\n\r\n<p><strong>C&ocirc;ng ty in ly nhựa 10+ năm KINH NGHIỆM<br />\r\nHotline 24/24!!!<br />\r\nIN NHANH &ndash; LY D&Agrave;Y &ndash; TƯ VẤN CHUY&Ecirc;N NGHIỆP</strong></p>\r\n\r\n<p><img alt=\"goi-ngay\" src=\"https://lynhuasaigon.com/wp-content/uploads/2019/05/goi-ngay.jpg\" style=\"height:398px; width:800px\" /></p>\r\n\r\n<div class=\"eJOY__extension_root_class\" id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>\r\n', 'admin', 'in ly nhua', NULL, 'Ly nhựa', 1),
(11, 'TẠI SAO BẠN PHẢI IN LY NHỰA?', 'tai-sao-ban-phai-in-ly-nhua', 'lynhua.png', 4, '2020-11-12 11:15:15', '<p>In ly nhựa l&agrave; giải ph&aacute;p hiệu quả nhất v&agrave; tiết kiệm chi ph&iacute; nhất để x&acirc;y dựng thương hiệu của bạn. So với ly sứ, ly thủy tinh th&igrave; ly nhựa gọn nhẹ &amp; tiện dụng hơn do c&oacute; thể đem đi. Logo thương hiệu của bạn sẽ theo từng chiếc ly đến mọi ng&oacute;c ng&aacute;ch từ trường học đến văn ph&ograve;ng.</p>\r\n\r\n<p>So với ly giấy, ly nhựa gi&aacute; rẻ hơn n&ecirc;n gi&uacute;p bạn tiết kiệm chi ph&iacute; cho cửa h&agrave;ng.</p>\r\n\r\n<p>Nghi&ecirc;n cứu thị trường của Foody.vn năm 2016 th&igrave; 90% kh&aacute;ch h&agrave;ng thường bị hấp dẫn bởi m&agrave;u sắc &ndash; thiết kế bao b&igrave;, đặc biệt l&agrave; ng&agrave;nh ăn uống.</p>\r\n\r\n<p>Để kinh doanh đồ uống th&agrave;nh c&ocirc;ng, bạn cần nắm bắt v&agrave; khai th&aacute;c tối đa đặc điểm n&agrave;y của kh&aacute;ch h&agrave;ng. Chiếc ly nhựa c&oacute;&nbsp;<a href=\\\"https://vi.wikipedia.org/wiki/In_%E1%BA%A5n\\\">in ấn</a>&nbsp;những họa tiết bắt mắt &amp; ấn tượng, phối hợp c&aacute;c tone m&agrave;u h&agrave;i h&ograve;a l&agrave; c&ocirc;ng cụ mang lại hiệu quả tuyệt đối.</p>\r\n\r\n<p>Nếu bạn đang ph&acirc;n v&acirc;n kh&ocirc;ng biết x&acirc;y dựng thương hiệu cho cửa h&agrave;ng Cafe &ndash; Tr&agrave; sữa của m&igrave;nh từ đ&acirc;u?</p>\r\n\r\n<p>Nếu bạn muốn c&oacute; được giải ph&aacute;p marketing tiết kiệm chi ph&iacute;?</p>\r\n\r\n<p>Nếu bạn muốn th&agrave;nh c&ocirc;ng trong kinh doanh đồ uống?</p>\r\n\r\n<p>H&atilde;y chọn in logo l&ecirc;n ly nhựa ngay h&ocirc;m nay!</p>\r\n\r\n<div class=\\\"eJOY__extension_root_class\\\" id=\\\"eJOY__extension_root\\\" style=\\\"all:unset\\\">&nbsp;</div>\r\n', 'admin', 'ly nhua', NULL, 'TẠI SAO BẠN PHẢI IN LY NHỰA?', 1),
(12, 'Bí quyết in ly nhựa giá rẻ mà đẹp cho các quán cà phê, tiệm trà sữa', 'bi-quyet-in-ly-nhua-gia-re-ma-dep-cho-cac-quan-ca-phe--tiem-tra-sua', 'inlynhua2.png', 4, '2020-11-12 11:19:45', '<p>Rất nhiều b&iacute; quyết để in ly nhựa gi&aacute; rẻ m&agrave; đẹp cho c&aacute;c qu&aacute;n c&agrave; ph&ecirc;, tiệm tr&agrave; sữa, điển h&igrave;nh như như: lựa chọn kiểu d&aacute;ng ly c&oacute; sẵn để in, in 01 m&agrave;u logo, chọn đối t&aacute;c trực tiếp in ấn, tham khảo th&ecirc;m c&aacute;c th&ocirc;ng tin hỗ trợ về thiết kế, vận chuyển&hellip;</p>\r\n\r\n<h2><strong>Lựa chọn kiểu d&aacute;ng, thể t&iacute;ch ly nhựa</strong></h2>\r\n\r\n<p>Nếu bạn lựa chọn c&aacute;c kiểu d&aacute;ng v&agrave; thể t&iacute;ch ly nhựa c&oacute; sẵn v&agrave; đang thịnh th&agrave;nh tr&ecirc;n thị trường chắc&nbsp;chắn gi&aacute; th&agrave;nh sẽ rẻ hơn rất nhiều so với bạn tự thiết kế 01 mẫu mới ho&agrave;n to&agrave;n theo y&ecirc;u cầu. Một số kiểu d&aacute;ng ly lu&ocirc;n c&oacute; sẵn tại c&aacute;c xưởng in tr&ecirc;n cả nước như: ly đ&aacute;y bầu, ly nhựa PP, ly nhựa PET&hellip;c&ugrave;ng với nhiều dung t&iacute;ch kh&aacute;c nhau như: 350ml, 500 ml, 600ml, 700 ml, 1000 ml&hellip;</p>\r\n\r\n<p>Điển h&igrave;nh như:</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>In ly nhựa PET</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>In ly nhựa PP</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ly Pet 360ml phi 93</td>\r\n			<td>Ly PP 360ml phi 95</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ly Pet 360ml phi 92</td>\r\n			<td>Ly PP 500ml phi 95</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ly Pet 360ml phi 93</td>\r\n			<td>Ly PP 700ml phi 95</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ly Pet 500ml cao phi 93</td>\r\n			<td>Ly PP 1 l&iacute;t phi 117</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ly Pet 500ml l&ugrave;n phi 98</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ly Pet 600ml cao phi 93</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ly Pet 600ml cao phi 98</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ly Pet 710ml phi 98</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Ngo&agrave;i ra, một số sản phẩm n&agrave;y thường đi k&egrave;m với nắp ly, gi&aacute; th&agrave;nh nắp ly từ cao đến thấp m&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể liệt k&ecirc; như sau: nắp tim, nắp cầu, nắp phẳng&hellip;</p>\r\n\r\n<p><img alt=\\\"\\\" src=\\\"https://lynhuagiare.vn/wp-content/uploads/2018/05/in-logo-thuong-hieu-tren-ly-nhua-dang-la-xu-huong-hien-nay.jpg\\\" style=\\\"height:566px; width:960px\\\" /></p>\r\n\r\n<p>In logo thương hiệu tr&ecirc;n ly nhựa đang l&agrave; xu hướng hiện nay</p>\r\n\r\n<h2><strong>Lựa chọn m&agrave;u sắc logo in tr&ecirc;n ly nhựa</strong></h2>\r\n\r\n<p>Cũng như việc lựa chọn mẫu m&atilde; v&agrave; thể t&iacute;ch, m&agrave;u sắc in tr&ecirc;n ly sẽ l&agrave; một quyết định quan trọng m&agrave; qu&yacute; kh&aacute;ch h&agrave;ng cần suy nghĩ kỹ trước khi in. Hiện nay để in ly nhựa gi&aacute; rẻ m&agrave; đẹp nhất chỉ c&oacute; 01 lựa chọn duy nhất l&agrave; m&agrave;u Logo đen tr&ecirc;n nền ly nhựa trong suốt đang được rất nhiều doanh chủ lựa chọn.</p>\r\n\r\n<p>Đối với in 01 m&agrave;u sắc như m&agrave;u đen th&igrave; chỉ cần lựa chọn tối thiểu khoảng 1.000 sản phẩm/chủng loại cần in. Nếu bạn cần in khoảng 2 đến 4 m&agrave;u sắc/ly (tối đa chỉ 4 m&agrave;u sắc/sản phẩm ly nhựa) th&igrave; số lượng đặt in lu&ocirc;n tối thiểu khoảng 10.000/sản phẩm v&agrave; gi&aacute; th&agrave;nh sẽ tăng khoảng từ 300 đồng &ndash; 1.000 đồng/sản phẩm</p>\r\n\r\n<h2><strong>Lựa chọn đối t&aacute;c in ly nhựa gi&aacute; rẻ m&agrave; đẹp</strong></h2>\r\n\r\n<p>Đầu ti&ecirc;n v&agrave; tr&ecirc;n hết l&agrave; bạn phải t&igrave;m kiếm được xưởng trực tiếp in ly nhựa để kh&ocirc;ng phải qua bất kỳ một trung gian n&agrave;o để đảm bảo gi&aacute; th&agrave;nh tận gốc. Nguyễn Gia l&agrave; một trong những đối t&aacute;c h&agrave;ng đầu tại TP Hồ Ch&iacute; Minh với nhiều năm kinh nghiệm trong lĩnh vực n&agrave;y tự tin c&oacute; thể đ&aacute;p ứng được một sản phẩm ly nhựa ho&agrave;n hảo với 03 ti&ecirc;u ch&iacute;: Gi&aacute; th&agrave;nh rẻ, Mẫu m&atilde; đẹp v&agrave; Chất lượng tốt nhất:</p>\r\n\r\n<ul>\r\n	<li>Nguy&ecirc;n liệu đầu v&agrave;o chất lượng cao nhất từ nhiều nguồn trong v&agrave; ngo&agrave;i nước.</li>\r\n	<li>Mực in chất lượng cao, m&agrave;u sắc trung thực, đảm bảo b&aacute;m ni l&ocirc;ng (plastic) tốt v&agrave; bền bỉ theo thời gian</li>\r\n	<li>M&aacute;y in sản xuất được nhập khẩu theo c&ocirc;ng nghệ Nhật Bản, cho đường in sắc n&eacute;t đ&uacute;ng như mẫu thiết kế.</li>\r\n	<li>Đội ngũ nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp tận t&igrave;nh tr&ecirc;n từng sản phẩm. Nh&acirc;n vi&ecirc;n tư vấn cẩn thận, chi tiết để mang lại lợi &iacute;ch tối đa cho kh&aacute;ch h&agrave;ng</li>\r\n	<li>Đảm bảo tiến độ, l&agrave;m việc 24/24</li>\r\n	<li>Giao h&agrave;ng tận nơi tr&ecirc;n to&agrave;n quốc.</li>\r\n</ul>\r\n\r\n<p><img alt=\\\"\\\" src=\\\"https://lynhuagiare.vn/wp-content/uploads/2018/05/In-ly-nh%E1%BB%B1a-PET-500ml-768x768.jpg\\\" style=\\\"height:768px; width:768px\\\" /></p>\r\n\r\n<div class=\\\"eJOY__extension_root_class\\\" id=\\\"eJOY__extension_root\\\" style=\\\"all:unset\\\">&nbsp;</div>\r\n', 'admin', 'ly nhua', NULL, 'Bí quyết in ly nhựa giá rẻ mà đẹp cho các quán cà phê, tiệm trà sữa', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `date`) VALUES
(1, 'nhan tran', 'tranquangnhan1606@gmail.com', '2147483647', 'đáadsadadsadsads', '2020-10-29 05:55:11'),
(2, 'nhan tran', 'tranquangnhan1606@gmail.com', '2147483647', 'nhân đẹp trai', '2020-10-29 06:28:22'),
(3, 'nhan123', 'tranquangnhan1606@gmail.com', '924698776', 'nhandeptrai', '2020-11-10 04:15:57'),
(4, 'nhan', 'tranquangnhan1606@gmail.com', '0924698778', 'tran dai quang nhan', '2020-11-10 10:25:40'),
(5, 'Nhân đẹp trai', 'tranquangnhan1660@gmail.com', '0924698776', 'nhan', '2020-11-10 10:28:29'),
(6, 'nhan', 'tranquangnhan1550@gmail.com', '0924698776', 'Trần đại quang đẹp trai', '2020-11-10 10:30:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhien` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`, `slug`, `anhien`) VALUES
(7, 'Ly Nhựa PP', 'ly-nhua-pp', 1),
(9, 'Ly Giấy', 'ly-giay', 1),
(10, 'Ly Giấy', 'ly-giay', 1),
(11, 'Ly Nhựa Nắp Tím', 'ly-nhua-nap-tim', 1),
(12, 'Tô Giấy', 'to-giay', 1),
(13, 'Tô Nhựa', 'to-nhua', 1),
(14, 'ly gỗ', 'ly-go', 1),
(15, 'ly gỗ', 'ly-go', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dmbaiviet`
--

CREATE TABLE `dmbaiviet` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhien` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dmbaiviet`
--

INSERT INTO `dmbaiviet` (`id`, `name`, `slug`, `anhien`) VALUES
(2, 'Ly Nhựa Nắp Tím', 'ly-nhua-nap-tim', 1),
(3, 'Ly Giấy', 'ly-giay', 1),
(4, 'Ly Nhựa', 'ly-nhua', 1),
(5, 'Ly Nhựa PP', 'ly-nhua-pp', 1),
(6, 'ly gỗ', 'ly-go', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(12) NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kichhoat` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thanhpho` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quocgia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `randomkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `user`, `role`, `pass`, `kichhoat`, `email`, `sodienthoai`, `diachi`, `thanhpho`, `quocgia`, `randomkey`) VALUES
(1, 'admin', 1, '111111', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'user', 0, '222222', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'user123', 1, '123456', 1, 'tranquangnhan1606@gmail.com', NULL, NULL, NULL, NULL, '910664f59b1cb9fe35343e6d3dddb508');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dungtich` int(5) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iddm` int(12) NOT NULL,
  `gia` float(10,2) NOT NULL,
  `giamgia` int(3) NOT NULL,
  `noibat` tinyint(1) NOT NULL DEFAULT 1,
  `luotxem` int(12) NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `anhien` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `dungtich`, `slug`, `img`, `iddm`, `gia`, `giamgia`, `noibat`, `luotxem`, `mota`, `anhien`) VALUES
(15, 'LY 500 ML', 0, 'ly-500-ml', '1.jpg', 7, 30.00, 10, 1, 320000, 'LY 500 ML\r\n\r\n&nbsp;', 1),
(16, 'Ly Nhựa PP', 200, 'ly-nhua-pp', '2.jpg', 7, 10000.00, 20, 1, 2312, 'Ly Nhựa PP\r\n\r\n&nbsp;', 1),
(17, 'ly giấy 500', 0, 'ly-giay-500', '3.jpg', 7, 20.00, 10, 1, 2000, 'ly giấy 500 &nbsp;\r\n\r\n&nbsp;', 1),
(18, 'Tô Nhựa 300', 0, 'to-nhua-300', '4.jpg', 7, 15.00, 10, 0, 20000, 'T&ocirc; Nhựa 300 &nbsp; &nbsp;\r\n\r\n&nbsp;', 1),
(19, 'Tô Giấy 100', 100, 'to-giay-100', '5.jpg', 12, 2000.00, 20, 1, 3000, 'T&ocirc; Giấy 100\r\n\r\n&nbsp;', 1),
(20, 'Tô Nhựa 1000', 1000, 'to-nhua-1000', '6.jpg', 13, 30000.00, 20, 1, 10000, 'T&ocirc; Nhựa 1000\r\n\r\n&nbsp;', 1),
(21, 'ly nhựa trà sữa', 3000, 'ly-nhua-tra-sua', 'inlynhua2.png', 9, 5000.00, 10, 1, 10000, 'ly nhựa tr&agrave; sữa\r\n\r\n&nbsp;', 1),
(22, 'ly nhựa', 400, 'ly-nhua', 'lynhua.png', 13, 60000.00, 14, 1, 6000, 'ly nhựa\r\n\r\n&nbsp;', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_baiviet_dmbaiviet` (`iddm`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dmbaiviet`
--
ALTER TABLE `dmbaiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sp_dm` (`iddm`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `dmbaiviet`
--
ALTER TABLE `dmbaiviet`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `fk_baiviet_dmbaiviet` FOREIGN KEY (`iddm`) REFERENCES `dmbaiviet` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sp_dm` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
