<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />

<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<!-- Path -->
		<div class="content-header row">
		<div>
		<div class="col-md-5"></div>
			<h3 class="content-header-title mb-0">Danh sách trạng thái</h3>
		</div>
			
			<div>
			<div><a  class="btn btn-outline-success round btn-min-width mr-1 mb-1" href="createstatus"><h4>Tạo mới</h4></a></div>
			<div class="container">
			    <div class="table-responsive">
						<table class="table mb-0">
							<thead>
				<tr>
					<th >Id</th>
					<th>Mã trạng thái</th>
					<th>Tên trạng thái</th>
					<th>Chức năng</th>
				</tr>
				</thead>
				<tbody>
			<c:forEach var="nn" items="${danhsachtrangthai}"  >
                    <tr> 
                     <th scope="row">${nn.id}</th>
					<td>${nn.maTrangThai}</td>
					<td>${nn.trangThai}</td>
					<td><a href="suatrangthai/${nn.id}"><button class="btn btn-outline-success round  mr-1 mb-1"
								>Sửa</button></a>
					<a href="deleteStatus/${nn.id}"><button class="btn btn-outline-danger round  mr-1 mb-1"
									onclick="return confirm('Bạn có muốn xóa sinh viên này?');">Xóa</button></a>
					</td>
						</tr>
				</c:forEach>
				</tbody>
		</table>
		<div class="col-md-7">
									<div class="dataTables_paginate paging_full_numbers"
										id="DataTables_Table_5_paginate">
										<ul class="pagination">
											<c:if test="${currentPage != 1}">
												<li class="paginate_button page-item first"
													id="DataTables_Table_5_first"
													${currentPage == 1 ? 'd-none' : ''}><a
													href="<%=request.getContextPath()%>/Quanlyvangnghi1703004/danhsachtrangthai?page=1"
													aria-controls="DataTables_Table_5" class="page-link">First</a></li>

												<li class="paginate_button page-item previous"
													id="DataTables_Table_5_previous"><a
													href="<%=request.getContextPath()%>/Quanlyvangnghi1703004/danhsachtrangthai?page=${currentPage-1}"
													aria-controls="DataTables_Table_5" tabindex="0"
													class="page-link">Previous</a></li>
											</c:if>

											<c:if test="${currentPage != 1}">
												<li class="paginate_button page-item"><a
													href="<%=request.getContextPath()%>/Quanlyvangnghi1703004/danhsachtrangthai?page=${currentPage-1}"
													aria-controls="DataTables_Table_5" class="page-link">${currentPage-1}</a></li>
											</c:if>

											<li class="paginate_button page-item "><a
												href="<%=request.getContextPath()%>/Quanlyvangnghi1703004/danhsachtrangthai?page=${currentPage}"
												aria-controls="DataTables_Table_5" class="page-link">${currentPage}</a></li>

											<c:if test="${currentPage != lastPage}">
												<li
													class="paginate_button page-item ${currentPage == lastPage ? 'd-none' : ''}"><a
													href="<%=request.getContextPath()%>/Quanlyvangnghi1703004/danhsachtrangthai?page=${currentPage+1}"
													aria-controls="DataTables_Table_5" class="page-link">${currentPage+1}</a></li>
												<li class="paginate_button page-item next"
													id="DataTables_Table_5_next"><a
													href="<%=request.getContextPath()%>/Quanlyvangnghi1703004/danhsachtrangthai?page=${currentPage+1}"
													aria-controls="DataTables_Table_5" data-dt-idx="8"
													tabindex="0" class="page-link">Next</a></li>
											</c:if>

											<li class="paginate_button page-item last"
												id="DataTables_Table_5_last"><a
												href="<%=request.getContextPath()%>/Quanlyvangnghi1703004/danhsachtrangthai?page=${lastPage}"
												aria-controls="DataTables_Table_5" data-dt-idx="9"
												tabindex="0" class="page-link">Last</a></li>
										</ul>
									</div>
								</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />