<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- import jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Tin</title>
<link rel="stylesheet" href="<c:url value='/templates/css/style.css'/>">
<link rel="stylesheet"
	href="<c:url value='/templates/css/dang-tin1.css'/>">
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
	</ul>
	<div class="header-text">
		<h2>Cho thuê phòng trọ, tìm nhà trọ nhanh chóng</h2>
		<p>Website đăng tin cho thuê phòng trọ, thuê nhà nguyên căn, hiệu
			quả cao với hơn 3,000,000 lượt truy cập mỗi tháng, cùng tốc độ tải
			trang cực nhanh.</p>
	</div>
	<div class="post-content">
		<h2 class="body-title">Đăng Tin Cho Thuê</h2>
		<form class="post-form" action="/dang-tin" method="post"
			enctype="multipart/form-data">
			<div class="basic-info">
				<h3 class="box-title">THÔNG TIN CƠ BẢN</h3>
				<div class="body">
					<div class="form-group">
						<label>Tiêu đề tin *</label> <input type="text"
							class="form-control" id="title" name="title" required="required">
					</div>
					<div class="form-group category-post">
						<label>Chuyên mục *</label> <select class="form-control"
							name="categoryId" id="category">
							<c:forEach var="category" items="${categories }">
								<option value="${category.id }">${category.name }</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group square-post">
						<label>Diện tích *</label>
						<div class="input-group">
							<input type="text" class="form-control" id="square"
								name="acreage" required="required"> <span class="unit-square">m&sup2;</span>
						</div>
					</div>
					<div class="form-group price-post">
						<label>Giá cho thuê *</label> <input type="text"
							class="form-control" id="price" name="price" required="required">
					</div>
					<div class="form-group street-post">
						<label>Tên đường *</label> <select class="form-control"
							name="streetId" id="street">
							<c:forEach var="street" items="${streets }">
								<option value="${street.id }">${street.name }</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group address-post">
						<label>Số nhà *</label> <input type="text" class="form-control"
							id="address" name="apartmentNumber" required="required">
					</div>
				</div>
			</div>
			<div class="guide-box">
				<h3 class="box-title">HƯỚNG DẪN ĐĂNG TIN</h3>
				<div class="body">
					<ul class="guide-list">
						<li><strong>Thông tin có dấu * là bắt buộc</strong></li>
						<li><strong>Nội dung phải viết bằng tiếng Việt có
								dấu</strong></li>
						<li><strong>Tiêu đề tin không dài quá 100 kí tự</strong></li>
						<li>Các bạn nên điền đầy đủ thông tin vào các mục để tin đăng
							có hiệu quả hơn.</li>
						<li>Để tăng độ tin cậy và tin rao được nhiều người quan tâm
							hơn, hãy sửa vị trí tin rao của bạn trên bản đồ bằng cách kéo
							icon tới đúng vị trí của tin rao.</li>
						<li>Tin đăng có hình ảnh rõ ràng sẽ được xem và gọi gấp nhiều
							lần so với tin rao không có ảnh. Hãy đăng ảnh để được giao dịch
							nhanh chóng.</li>
					</ul>
				</div>
			</div>
			<div class="description-box">
				<h3 class="box-title">THÔNG TIN MÔ TẢ</h3>
				<div class="body">
					<div class="form-group">
						<label>Nội dung *</label>
						<textarea class="form-control" name="description" id="description"
							cols="30" rows="10" required="required"></textarea>
					</div>
				</div>
			</div>
			<div class="contact-box">
				<h3 class="box-title">THÔNG TIN LIÊN HỆ</h3>
				<div class="body">
					<div class="form-group name-contact">
						<label>Tên liên hệ *</label> <input type="text"
							class="form-control" id="name" name="contactName" required="required">
					</div>
					<div class="form-group phone-contact">
						<label>Điện thoại *</label> <input type="text"
							class="form-control" id="phone" name="phoneNumber" required="required">
					</div>
					<div class="form-group address-contact">
						<label>Địa chỉ *</label> <input type="text" class="form-control"
							id="address" name="address" required="required">
					</div>
				</div>
			</div>
			<div class="image-box">
				<h3 class="box-title">HÌNH ẢNH</h3>
				<div class="body">
					<div class="form-group">
						<input type="file" class="form-control" id="thumbnail" name="thumbnail" required="required">
						<input type="file" class="form-control" id="photo1" name="photo1">
						<input type="file" class="form-control" id="photo2" name="photo2">
						<input type="file" class="form-control" id="photo3" name="photo3">
						<input type="file" class="form-control" id="photo4" name="photo4">
						<input type="file" class="form-control" id="photo5" name="photo5">
						<p class="image-note">Hình ảnh đầu tiên sẽ là ảnh đại diện của tin.</p>
					</div>
				</div>
			</div>
			<div class="submit-box">
				<button type="submit">ĐĂNG TIN</button>
			</div>
		</form>
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
	<!-- ckeditor scripts -->
	<script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('description');
    </script>
    <!-- ckeditor scripts -->
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="<c:url value='/templates/js/upload.js'/>"></script>
</body>
</html>