<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />

<div class="app-content content container-fluid" style="background-color: #CCCCCC">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Thêm Dự Án</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="/ffse-fbms/home">Home</a></li>
							<li class="breadcrumb-item"><a
								href="/ffse-fbms/qlda/DuAn/PhanCongNhiemVu/list/${duAn.maDuAn}">Danh
									sách nhiệm vụ</a></li>
							<li class="breadcrumb-item active">Thêm Nhiệm Vụ</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<h1>
				<strong>PHÂN CÔNG NHIỆM VỤ</strong>
			</h1>
		</div>
	</div>
	<form:form method="POST"
		action="/ffse-fbms/qlda/DuAn/PhanCongNhiemVu/create"
		modelAttribute="nhiemvu">
		<div class="form-group col-sm-12">
			<label>Tên dự án</label>
			<form:select path="maDuAn" cssClass="form-control" >

				<option value="${duAn.maDuAn}">${duAn.tenDuAn}</option>

			</form:select>

			<form:errors path="maDuAn" cssStyle="color: red"></form:errors>
		</div>

		<div class="form-group col-sm-6">
			<label>Tên vai trò</label>

			<form:select path="maVaiTro" cssClass="form-control"
				items="${vaitro}" itemLabel="tenvt" itemValue="mavt">
			</form:select>
			<form:errors path="maVaiTro" cssStyle="color: red"></form:errors>
		</div>
		<div class="form-group col-sm-6">
			<label>Tên nhân viên</label>

			<form:select path="maNhanVien" cssClass="form-control">
				<c:forEach items="${nhanvien}" var="nv">
					<option value="${nv.maNhanVien}">${nv.hoDem }${nv.ten }</option>
				</c:forEach>
			</form:select>
			<form:errors path="maNhanVien" cssStyle="color: red"></form:errors>

		</div>
		<div class="col-sm-12 text-center">
			<button type="submit" class="btn btn-success">Lưu thông tin</button>
		</div>
	</form:form>
	<div class="col-sm-4">
		<c:if test="${message !=null }">
						 ${message}
			</c:if>
	</div>


</div>
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
