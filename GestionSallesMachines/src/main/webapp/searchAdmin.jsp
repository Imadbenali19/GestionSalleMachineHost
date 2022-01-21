<%@page import="entities.Machine"%>
<%@page import="services.MachineService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Gestion Salle & Machine - SearchAdmin</title>
<%@ include file="/include/head.jsp"%>
<link href="<%= request.getContextPath() %>/template/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body id="page-top">
<%@ include file="loginVerification.jsp"%>
	<div id="wrapper">
		<%@ include file="/include/sidebar.jsp"%>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<%@ include file="/include/header.jsp"%>

				<!-- ---------------------------------------------------------------------------------------------- -->

				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Gestion de la recherche</h1>
						<a href="javascript:void(0);" id="generate"
							class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
							class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
					</div>

					<div class="p-5">
						<div class="text-center">
							<h1 class="h4 text-gray-900 mb-4">Machines achet�es entre deux dates!</h1>
						</div>
						
						<form class="user">
							<div class="form-group row">
								<div class="col-sm-6 mb-3 mb-sm-0">
									<label>Date 1</label> <input type="date"
										class="form-control form-control-user" id="date1" name="date1">
								</div>
								<div class="col-sm-6 mb-3 mb-sm-0">
									<label>Date 2</label> <input type="date"
										class="form-control form-control-user" id="date2" name="date2">
								</div>
							</div>
							
						</form>
						
						<hr>
						
						



					</div>

					<!-- ---------------------------------------------------------------------------------------------- -->

					<h1 class="h3 mb-2 text-gray-800">Table</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Machines Table</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Reference</th>
                                            <th>Marque</th>
                                            <th>Date d'achat</th>
                                            <th>Prix d'achat</th>
                                            <th>Salle (code_type)</th>
                                            
                                            
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>Reference</th>
                                            <th>Marque</th>
                                            <th>Date d'achat</th>
                                            <th>Prix d'achat</th>
                                            <th>Salle (code_type)</th>
                                            
                                        </tr>
                                    </tfoot>
                                    <tbody id="yes">
                                    
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
					
					
					
					
					
				</div>
				<%@ include file="/include/footer.jsp"%>
			</div>
		</div>
		<%@ include file="/include/scriptsPath.jsp"%>
		<script src="<%= request.getContextPath() %>/Scripts/searchmachinesv1.js"></script>
		
		
</body>
<script type="text/javascript">
	document.getElementsByClassName('nav-item')[4].className += " active";
	document.getElementsByClassName('collapse-item')[0].className += " active";
	document.getElementsByClassName('collapse')[0].className += " show";
</script>


</html>