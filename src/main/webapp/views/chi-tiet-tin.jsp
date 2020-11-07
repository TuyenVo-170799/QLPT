<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- import jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${post.title }</title>
<link rel="stylesheet" href="<c:url value='/templates/css/style.css'/>">
<link rel="stylesheet"
	href="<c:url value='/templates/css/chi-tiet-tin1.css'/>">
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
			<option value="1">Phòng trọ</option>
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
	<div class="main-content">
		<div class="left-content">
			<h3 class="post-title">
				<c:out value="${post.title }"></c:out>
			</h3>
			<div class="info">
				<div class="object-row">
					<p class="key">
						<strong>Địa chỉ:</strong>
					</p>
					<p class="value">
						<c:out value="${post.apartmentNumber }"></c:out>
						<c:out value="${street.name }"></c:out>
					</p>
				</div>
				<div class="object-row">
					<div class="half-row category">
						<p class="key">
							<strong>Chuyên mục:</strong>
						</p>
						<p class="value">
							<c:out value="${category.name }"></c:out>
						</p>
					</div>
					<div class="half-row">
						<p class="key">
							<strong>Mã tin:</strong>
						</p>
						<p class="value">
							<c:out value="${post.id }"></c:out>
						</p>
					</div>
				</div>
				<div class="object-row">
					<div class="half-row price">
						<p class="key">
							<strong>Giá cho thuê:</strong>
						</p>
						<p class="value">
							<fmt:formatNumber type='number' maxFractionDigits='3' value='${post.price }'/>
							đồng/tháng
						</p>
					</div>
					<div class="half-row">
						<p class="key">
							<strong>Diện tích:</strong>
						</p>
						<p class="value">
							<c:out value="${post.acreage }"></c:out>
							m&sup2;
						</p>
					</div>
				</div>
				<div class="object-row">
					<div class="half-row contact">
						<p class="key">
							<strong>Liên hệ:</strong>
						</p>
						<p class="value">
							<c:out value="${post.contactName }"></c:out>
						</p>
					</div>
					<div class="half-row">
						<p class="key">
							<strong>Ngày cập nhật:</strong>
						</p>
						<p class="value">
							<c:out value="${post.createdDate }"></c:out>
						</p>
					</div>
				</div>
				<div class="object-row">
					<div class="half-row">
						<p class="key">
							<strong>Điện thoại:</strong>
						</p>
						<p class="value">
							<c:out value="${post.phoneNumber }"></c:out>
						</p>
					</div>
					<div class="half-row">
						<p class="key">
							<strong>Ngày hết hạn:</strong>
						</p>
						<p class="value">15/10/2020 09:40</p>
					</div>
				</div>
				<div class="description-box">
					<h3>Thông tin chi tiết</h3>
					<br>
					${post.description }
				</div>
				<div class="image-box">
					<h3>Hình ảnh</h3>
					<div class="image-list">
						<c:forEach var="photo" items="${photos }">
							<div class="col">
								<img src="<c:url value='/templates/images/${post.id }/${photo.name }'/>"
									alt="ảnh 1" onclick="displayImage(this);">
							</div>
						</c:forEach>
					</div>
					<div class="expand-image-container">
						<img src="<c:url value='/templates/images/${post.id }/${thumbnail.name }'/>" alt="ảnh"
							id="expand-image">
					</div>
				</div>
				<div class="feedback-box">
					<p>
						Mọi thông tin trên website chỉ mang tính chất tham khảo. Chúng tôi
						luôn cố gắng cung cấp các thông tin đầy đủ, chính xác và minh bạch
						đến người xem, tuy nhiên quá trình kiểm duyệt vẫn có thể xảy ra sơ
						sót. Nếu bạn có phản hồi với tin đăng này (tin đã cho thuê, không
						liên lạc được, các trường hợp khác), vui lòng thông báo để <strong>Tronhatrang</strong>
						có thể xử lý.
					</p>
					<p class="button">
						<a href="#" target="_blank">Gửi phản hồi</a>
					</p>
				</div>
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
				<a href="#"> <img
					src="<c:url value='/templates/image/icon-visa.png'/>" alt="visa">
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
	<script>
		function displayImage(imgs) {
			var expandImage = document.getElementById("expand-image");
			expandImage.src = imgs.src;
		}
	</script>
</body>
</html>