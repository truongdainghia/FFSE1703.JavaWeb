<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="dropdown" style="width: 20%">
			<button class="btn btn-success dropdown-toggle" type="button"
				id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false">
				<spring:message code="ngonngu" />
			</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="?lang=vi"> <spring:message
						code="tiengviet" />
				</a> <a class="dropdown-item" href="?lang=en"> <spring:message
						code="tienganh" />
				</a>
			</div>
		</div>
		<div style="text-align: center;">
			<h1>
				<spring:message code="title1" />
			</h1>
		</div>
		<div>
			<h3>
				<a href="create"><spring:message code="them" /></a>
			</h3>
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col"><spring:message code="masv" /></th>
					<th scope="col"><spring:message code="tensv" /></th>
					<th scope="col"><spring:message code="namsinh" /></th>
					<th scope="col"><spring:message code="diachi" /></th>
					<th scope="col"><spring:message code="email" /></th>
					<th scope="col"><spring:message code="lophoc" /></th>
					<th scope="col"><spring:message code="anh" /></th>
					<th scope="col"><spring:message code="hanhdong" /></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="sv" items="${listStudent}">
					<tr>
						<th scope="row">${sv.masv}</th>
						<td>${sv.tensv }</td>
						<td>${sv.tuoisv }</td>
						<td>${sv.diachi }</td>
						<td>${sv.email }</td>
						<td>${sv.lop }</td>
						<td><img style="width: 100px; height: 100px;"
							src='<c:url value = "/resources/upload/${sv.avatar }" ></c:url>'
							alt="image"></td>
						<td><a href="edit/${sv.id }"><button
									class="btn btn-success">
									<spring:message code="sua" />
								</button></a> <a href="delete/${sv.id }"><button class="btn btn-danger"
									onclick="return confirm('Bạn có muốn xóa sinh viên này?');">
									<spring:message code="xoa" />
								</button></a></td>
				</c:forEach>
			</tbody>
		</table>
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="?page=1"><spring:message
							code="trangdau" /></a></li>
				<c:if test="${currentPage > 2}">
					<li class="page-item"><a class="page-link"
						href="?page=${currentPage-2}">${currentPage-2}</a></li>
				</c:if>
				<c:if test="${currentPage > 1}">
					<li class="page-item"><a class="page-link"
						href="?page=${currentPage-1}">${currentPage-1}</a></li>
				</c:if>
				<li class="page-item active"><a class="page-link"
					href="?page=${currentPage}">${currentPage}</a></li>
				<c:if test="${currentPage < lastPage}">
					<li class="page-item"><a class="page-link"
						href="?page=${currentPage+1}">${currentPage+1}</a></li>
				</c:if>
				<c:if test="${currentPage < lastPage - 1}">
					<li class="page-item"><a class="page-link"
						href="?page=${currentPage+2}">${currentPage+2}</a></li>
				</c:if>
				<li class="page-item"><a class="page-link"
					href="?page=${lastPage }"><spring:message code="trangcuoi" /></a></li>
			</ul>
		</nav>
	</div>
	<script>
		function canhbao() {
			return confirm("Bạn Có Chắc Muốn Xóa Không?");
		}
	</script>
</body>
</html>