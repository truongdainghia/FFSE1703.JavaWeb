<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />

<div class="app-content content container-fluid">
	<div class="content-wrapper">

		<div class="content-body">
			<div class="main-content">

				<form:form method="POST"  modelAttribute="editStatus">
					<div class="row">
							<div>
								<label>ID</label>
								<form:input class="form-control round" path="id" readonly="true" value="" />

							</div>

							<div>
								<label> Mã trạng thái</label>
								<form:input class="form-control round" path="maTrangThai" />
							</div>
								
							<div>
								<label>Tên trạng thái</label>
								<form:input class="form-control round" path="trangThai"  />
							</div>
						<br>
						<div >
								<button type="submit"  class="btn btn-outline-danger round  mr-1 mb-1"
									formaction="<%=request.getContextPath()%>/Quanlyvangnghi1703004/editstatus/save">Gửi</button>
							</div>
					</div>

				</form:form>
			</div>
		</div>
	</div>
</div>


<jsp:include page="/WEB-INF/view/templates/footer.jsp" />