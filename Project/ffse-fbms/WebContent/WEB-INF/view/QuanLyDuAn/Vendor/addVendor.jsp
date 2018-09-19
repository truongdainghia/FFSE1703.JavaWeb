<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<div class="app-content content container-fluid">
	<div class="content-wrapper">

		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<h1>
					<strong>THÊM MỚI VENDOR</strong>
				</h1>
			</div>
		</div>
		<form:form method="POST" action="/ffse-fbms/QuanLyDuAn/vendor/creat"> 
			<div class="form-group col-sm-6">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
					 <label>Mã Vendor</label>
				<form:input class="form-control" path="mavd" 
					placeholder="Mã Vendor" />
				<%--  <form:errors path="mavd" cssStyle="color: red"></form:errors> --%>

			</div>
			<div class="form-group col-sm-6">
				<label>Tên Vendor</label>
				<form:input class="form-control" path="tenvd"
					placeholder="Tên Vendor " />
			<!-- 	<form:errors path="tenvd" cssStyle="color: red"></form:errors> -->
			</div>
			<div class="form-group col-sm-6">
				<label>Địa Chỉ</label>
				<form:input class="form-control" path="diachi"
					placeholder="Địa Chỉ" />
				<%--  <form:errors path="diachi" cssStyle="color: red"></form:errors>--%>
			</div>
			<div class="form-group col-sm-6">
				<label>Email</label>
				<form:input class="form-control" path="email"
					placeholder="Email" />
				<%-- <form:errors path="email" cssStyle="color: red"></form:errors> --%>
			</div>
			<div class="form-group col-sm-6">
				<label>SĐT</label>
				<form:input class="form-control" path="sdt"
					placeholder="Số điện thoại" />
				<%-- <form:errors path="email" cssStyle="color: red"></form:errors> --%>
			</div>
			<div class="col-sm-12 text-center">
				<button type="submit" class="btn btn-success">Lưu thông tin</button>
			</div>
		</form:form>
	</div>
</div>

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />