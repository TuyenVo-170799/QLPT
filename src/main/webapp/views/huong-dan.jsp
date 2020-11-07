<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- import jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hướng Dẫn Sử Dụng</title>
<link rel="stylesheet" href="<c:url value='/templates/css/style.css'/>">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400&display=swap"
	rel="stylesheet">
</head>
<body>
	<div class="header-banner">
		<img src="<c:url value='/templates/image/header-top.jpg'/>"
			alt="header" />
	</div>
	<ul class="menu">
		<li><a href="/trang-chu">Trang Chủ</a></li>
		<li><a href="/phong-tro">Phòng Trọ</a></li>
		<li><a href="/nha-nguyen-can">Nhà Nguyên Căn</a></li>
		<li><a href="/o-ghep">Ở Ghép</a></li>
		<li><a href="/huong-dan">Hướng Dẫn</a></li>
		<li><a href="/dang-tin">Đăng Tin</a></li>
		<li><a href="/quan-ly-tin">Quản Lý Tin</a></li>
	</ul>
	<form action="/tim-kiem" method="get" class="search-form">
		<select name="categoryId" id="category">
			<option value="0">Loại tin</option>
			<option value="1">Thuê phòng</option>
			<option value="2">Nhà nguyên căn</option>
			<option value="3">Ở ghép</option>
		</select> <select name="streetId" id="street">
			<option value="null">Tên đường</option>
			<option value="NDC">Nguyễn Đình Chiểu</option>
			<option value="DTN">Đoàn Trần Nghiệp</option>
			<option value="LT">Lạc Thiện</option>
			<option value="CC">Củ Chi</option>
			<option value="ND">Ngô Đến</option>
			<option value="MAT">Mai An Tiêm</option>
		</select> <select name="price" id="price">
			<option value="0">Mức giá</option>
			<option value="1000000">Dưới 1 triệu</option>
			<option value="1500000">Dưới 1,5 triệu</option>
			<option value="2000000">Dưới 2 triệu</option>
		</select> <select name="acreage" id="acreage">
			<option value="0">Diện tích</option>
			<option value="20">Dưới 20 mét vuông</option>
			<option value="25">Dưới 25 mét vuông</option>
			<option value="30">Dưới 30 mét vuông</option>
		</select> 
		<input type="submit" value="Tìm Kiếm">
	</form>
	<div class="header-text">
		<h2>Cho thuê phòng trọ, tìm nhà trọ nhanh chóng</h2>
		<p>Website đăng tin cho thuê phòng trọ, thuê nhà nguyên căn, hiệu
			quả cao với hơn 3,000,000 lượt truy cập mỗi tháng, cùng tốc độ tải
			trang cực nhanh.</p>
	</div>
	<div class="main-content">
		<div class="left-content">
			<div class="title-content-guide">
				<h2>HƯỚNG DẪN SỬ DỤNG</h2>
			</div>
			<div class="guide-body">
				<p>
					<strong>Tronhatrang.com</strong> là kênh thông tin về phòng trọ,
					nhà trọ hàng đầu tại Nha Trang. Website được thành lập vào tháng
					09/2020 - là website hỗ trợ riêng biệt cho người muốn đăng tin cho
					thuê phòng trọ cũng như người tìm phòng trọ một cách nhanh nhất và
					chính xác nhất.
				</p>
				<p>Hiện nay Tronhatrang.com tự hào có lượng bài đăng lớn trong
					lĩnh vực cho thuê phòng trọ với hơn 120.000 tin trên hệ thống, hơn
					100.000 thành viên với hơn 5 triệu lượt xem hàng tháng và có xu
					hướng tăng.</p>
				<br>
				<h3>Hướng Dẫn Đăng Tin</h3>
				<ul>
					<li>Nếu bạn chưa có tài khoản, hãy đăng ký <a href="#">tại
							đây</a> trước khi bắt đầu đăng tin cho thuê.
					</li>
					<li>Nếu bạn đã có tài khoản, sau khi <a href="#">đăng nhập</a>
						vào website, bạn bấm vào nút <a href="#">ĐĂNG TIN</a> trên menu để
						bắt đầu.
					</li>
					<li>Khi đăng tin các bạn đọc kỹ mô tả từng bước, nhập đầy đủ
						và chính xác nội dung cho đăng tin, đặc biệt là mục <u>Giá
							Phòng</u> và <u>Diện Tích</u>. Những tin có nội dung hình ảnh rõ
						ràng, đầy đủ sẽ có tỉ lệ xem cao hơn.
					</li>
				</ul>
				<p>
					<u>Lưu ý khi đăng tin:</u>
				</p>
				<ul>
					<li>Điền đầy đủ các thông tin bắt buộc vào các ô nhập liệu
						trong phần đăng tin.</li>
					<li>Phần giá cho thuê, vui lòng nhập chính xác giá cho thuê.
						Ví dụ bạn cho thuê 1 triệu 2 trăm một tháng thì bạn nhập đủ như
						sau 1200000.</li>
					<li>Nhập chính xác diện tích phòng trọ, nhà hay căn hộ cho
						thuê.</li>
					<li>Sau khi nhập đầy đủ thông tin, bấm <strong>ĐĂNG
							TIN</strong> dưới cùng và chờ vài giây để tin bạn hiển thị trên website,
						nếu đăng tin thành công hệ thống sẽ báo bạn đã đăng tin thành
						công, nếu hệ thống cảnh báo màu đỏ, các ô chọn màu bị sai, vui
						lòng nhập lại cho chình xác và bấm <strong>ĐĂNG TIN</strong> lại.
					</li>
				</ul>
				<br>
				<h3>Hướng Dẫn Quản Lý Tin Đăng</h3>
				<p>
					Sau khi đăng nhập tài khoản, bấm vào phần <strong>Quản lý
						tài khoản -> Quản lý tin đăng</strong> để truy cập vào mục quản lý, gồm các
					chức năng sau:
				</p>
				<ul>
					<li><strong>Up lên TOP</strong>: tức là làm mới tin, đưa tin
						lên đầu ở từng chuyên mục. Chẳng hạng bạn bấm "Up lên TOP" cho tin
						phòng trọ sẽ đưa tin đó lên đầu danh sách tin phòng trọ.</li>
					<li><strong>Sửa tin:</strong> có nghĩa là bạn có thể sửa lại
						toàn bộ nội dung tin đăng của bạn.</li>
					<li><strong>Gia hạn:</strong> Khi tin đăng hết hạn thì bạn
						không cần đăng tin mới, bạn chỉ cần bấm vào đây để đăng lại tin
						một cách nhanh chóng.</li>
					<li><strong>Ẩn tin:</strong> Bấm vào đây để báo là ĐÃ CHO
						THUÊ, ngoài ra với TIN HẾT HẠN thì khi bấm vào đây các số điện
						thoại của bạn trên tin đăng sẽ ẩn đi tránh bị làm phiền.</li>
				</ul>
				<br>
				<h3>
					<u>MỌI THẮC MẮC XIN LIÊN HỆ:</u>
				</h3>
				<p>
					Hotline: <strong>0935125513</strong>
				</p>
				<p>
					Email: <strong>tronhatrang@gmail.com</strong>
				</p>
			</div>
		</div>
		<div class="right-content">
			<div class="category-content">
				<h3 class="categorybox-title">Danh mục cho thuê</h3>
				<ul class="category-list">
					<li><a href="#">Cho thuê phòng Đoàn Trần Nghiệp</a></li>
					<li><a href="#">Cho thuê phòng Đoàn Trần Nghiệp</a></li>
					<li><a href="#">Cho thuê phòng Đoàn Trần Nghiệp</a></li>
					<li><a href="#">Cho thuê phòng Đoàn Trần Nghiệp</a></li>
					<li><a href="#">Cho thuê phòng Đoàn Trần Nghiệp</a></li>
					<li><a href="#">Cho thuê phòng Đoàn Trần Nghiệp</a></li>
					<li><a href="#">Cho thuê phòng Đoàn Trần Nghiệp</a></li>
				</ul>
			</div>
			<div class="ad-right">
				<img src="<c:url value='/templates/image/ad-right.jpg'/>"
					alt="hình ảnh quảng cáo">
			</div>
			<div class="news-box">
				<h3 class="newsbox-title">Tin tức mới</h3>
				<div class="news-card">
					<a href="#"> <img
						src="<c:url value='/templates/image/news-1.jpg'/>" alt="hình ảnh" />
						<p class="news-title">Bộ công thương đề xuất giá điện sinh
							hoạt 5 bậc</p>
					</a>
				</div>
				<div class="news-card">
					<a href="#"> <img
						src="<c:url value='/templates/image/news-1.jpg'/>" alt="hình ảnh" />
						<p class="news-title">Bộ công thương đề xuất giá điện sinh
							hoạt 5 bậc</p>
					</a>
				</div>
				<div class="news-card">
					<a href="#"> <img
						src="<c:url value='/templates/image/news-1.jpg'/>" alt="hình ảnh" />
						<p class="news-title">Bộ công thương đề xuất giá điện sinh
							hoạt 5 bậc</p>
					</a>
				</div>
				<div class="news-card">
					<a href="#"> <img
						src="<c:url value='/templates/image/news-1.jpg'/>" alt="hình ảnh" />
						<p class="news-title">Bộ công thương đề xuất giá điện sinh
							hoạt 5 bậc</p>
					</a>
				</div>
				<div class="news-card">
					<a href="#"> <img
						src="<c:url value='/templates/image/news-1.jpg'/>" alt="hình ảnh" />
						<p class="news-title">Bộ công thương đề xuất giá điện sinh
							hoạt 5 bậc</p>
					</a>
				</div>
				<div class="news-card">
					<a href="#"> <img
						src="<c:url value='/templates/image/news-1.jpg'/>" alt="hình ảnh" />
						<p class="news-title">Bộ công thương đề xuất giá điện sinh
							hoạt 5 bậc</p>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="footer-content">
			<div class="col-content">
				<h3>THÔNG TIN LIÊN HỆ</h3>
				<ul>
					<li><a href="#">Hotline: 0935125513</a></li>
					<li><a href="#">Email: tronhatrang@gmail.com</a></li>
				</ul>
			</div>
			<div class="col-content">
				<h3>HƯỚNG DẪN</h3>
				<ul>
					<li><a href="#">Hướng dẫn đăng tin</a></li>
					<li><a href="#">Bảng giá dịch vụ</a></li>
					<li><a href="#">Quy định đăng tin</a></li>
					<li><a href="#">Liên hệ hỗ trợ</a></li>
				</ul>
			</div>
			<div class="col-content">
				<h3>KẾT NỐI VỚI CHÚNG TÔI</h3>
				<a href="#"> <img
					src="<c:url value='/templates/image/icon-fb.png'/>" alt="facebook" />
				</a> <a href="#"> <img
					src="<c:url value='/templates/image/icon-zalo.png'/>" alt="zalo" />
				</a> <a href="#"> <img
					src="<c:url value='/templates/image/icon-instagrem.jpg'/>"
					alt="instagram" />
				</a>
			</div>
			<div class="col-content">
				<h3>PHƯƠNG THỨC THANH TOÁN</h3>
				<a href="#"> <img src="<c:url value='/templates/image/icon-visa.png'/>" alt="visa">
				</a> <a href="#"> <img
					src="<c:url value='/templates/image/icon-mastercard.png'/>"
					alt="mastercard" />
				</a> <a href="#"> <img
					src="<c:url value='/templates/image/icon-momo.jpg'/>" alt="momo" />
				</a> <a href="#"> <img
					src="<c:url value='/templates/image/icon-ib.jpg'/>"
					alt="internet banking" />
				</a>
			</div>
		</div>
		<div class="copyright">
			<p>Copyright &#169; 2020 - 2021 Tronhatrang.com. Ghi rõ nguồn
				"Tronhatrang.com" khi phát hành lại thông tin từ website này.</p>
		</div>
	</div>
</body>
</html>