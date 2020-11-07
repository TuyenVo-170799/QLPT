<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- import jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý tin</title>
<link rel="stylesheet" href="<c:url value='/templates/css/style.css'/>">
<link rel="stylesheet"
	href="<c:url value='/templates/css/quan-ly-tin.css'/>">
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
	<div class="header-text">
		<h2>Cho thuê phòng trọ, tìm nhà trọ nhanh chóng</h2>
		<p>Website đăng tin cho thuê phòng trọ, thuê nhà nguyên căn, hiệu
			quả cao với hơn 3,000,000 lượt truy cập mỗi tháng, cùng tốc độ tải
			trang cực nhanh.</p>
		<br>
        <span style="font-size: 30px; color: #ff1744;">&#128526; Hello ${USER.fullName }</span>
        <br>
        <a class="sign-out" href="/dang-xuat">Đăng xuất</a>
	</div>
	<div class="main-content">
		<div class="box-content">
			<h3>QUẢN LÝ TIN</h3>
			<hr>
			<table>
				<tr>
					<th>Tiêu đề</th>
					<th>Trạng thái</th>
					<th>Thao tác</th>
				</tr>
				<c:forEach var="post" items="${posts}">
					<tr>
						<td>${post.title }</td>
						<td>Đang hoạt động</td>
						<td>
							<a href="/sua-tin?id=<c:out value='${post.id }'/>" class="edit">Sửa</a>&nbsp; 
							<a  class="delete" href="/xoa-tin?id=<c:out value='${post.id }'/>" role="button" onclick="return confirmDelete()">Xóa</a>&nbsp; 
							<a href="#" class="bonus">Gia hạn</a>
						</td>
					</tr>
				</c:forEach>
			</table>
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
		function confirmDelete() {
			var x = confirm("Bạn có chắc muốn xóa tin này không?");
			if (x) {
				return true;
			} else {
				return false;
			}
		}
	</script>
</body>
</html>