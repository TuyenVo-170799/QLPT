<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- import jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh Sách Phòng Trọ</title>
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
	<div class="header-text">
		<h2>Cho thuê phòng trọ, tìm nhà trọ nhanh chóng</h2>
		<p>Website đăng tin cho thuê phòng trọ, thuê nhà nguyên căn, hiệu
			quả cao với hơn 3,000,000 lượt truy cập mỗi tháng, cùng tốc độ tải
			trang cực nhanh.</p>
	</div>
	<div class="main-content">
		<div class="left-content">
			<div class="post-box">
				<h3 class="box-title">
					<i class="fas fa-list-alt"></i> DANH SÁCH PHÒNG TRỌ CHO THUÊ
				</h3>
				<div class="box-content">
					<c:forEach var="post" items="${posts }">
						<div class="post-card">
							<c:forEach var="photo" items="${photos }">
								<c:if test="${photo.postId == post.id}">
									<img
										src="<c:url value='/templates/images/${post.id }/${photo.name }'/>"
										alt="hình ảnh" />
								</c:if>
							</c:forEach>
							<div class="post-info">
								<h3 class="post-title">
									<a href="/chi-tiet?id=<c:out value="${post.id }"/>"><c:out
											value="${post.title }"></c:out></a>
								</h3>
								<hr>
								<p>
									Diện tích: <strong><c:out value="${post.acreage }"></c:out>&nbsp;
										mét vuông</strong>
								</p>
								<p>
									Địa chỉ: <strong><c:out
											value="${post.apartmentNumber }"></c:out>&nbsp; <c:forEach
											var="street" items="${streets }">
											<c:if test="${post.streetId == street.id }">
												<c:out value="${street.name }"></c:out>
											</c:if>
										</c:forEach> </strong>
								</p>
								<p>
									Giá phòng: <strong><fmt:formatNumber type='number'
											maxFractionDigits='3' value='${post.price }' /> đồng/tháng</strong>
								</p>
								<p>
									Ngày đăng: <strong><c:out value="${post.createdDate }"></c:out></strong>
								</p>
								<a href="/chi-tiet?id=<c:out value="${post.id }"/>"><input
									type="button" value="Xem chi tiết"></a>
							</div>
						</div>
					</c:forEach>
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
</body>
</html>