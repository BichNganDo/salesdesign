<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Member</title>

	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome Icons -->
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/all.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/adminlte.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/toastr.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/summernote.min.css">
</head>
<body class="hold-transition sidebar-mini">
	 <div class="wrapper">

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="" class="nav-link">Home</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="#" class="nav-link">Contact</a>
                </li>
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#" role="button">
                       Logout <i class="fas fa-sign-out-alt"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
		    <!-- Brand Logo -->
		    <a href="" class="brand-link">
		        <img src="" alt="" class="brand-image img-circle elevation-3" style="opacity: .8">
		        <span class="brand-text font-weight-light">Sales Design </span>
		    </a>
		
		
		
		    <!-- Sidebar -->
		    <div class="sidebar">
		        <!-- Sidebar user panel (optional) -->
		        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
		            <div class="image">
		                <img src="${pageContext.request.contextPath}/resources/images/avatar3.png" class="img-circle elevation-2" alt="User Image">
		            </div>
		            <div class="info">
		                <a href="#" class="d-block">Ngan Do</a>
		            </div>
		        </div>
		
		        <!-- SidebarSearch Form -->
		        <div class="form-inline">
		            <div class="input-group" data-widget="sidebar-search">
		                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
		                <div class="input-group-append">
		                    <button class="btn btn-sidebar">
		                        <i class="fas fa-search fa-fw"></i>
		                    </button>
		                </div>
		            </div>
		        </div>
		
		        <!-- Sidebar Menu -->
		        <nav class="mt-2">
		            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
		                <!-- Add icons to the links using the .nav-icon class
		       with font-awesome or any other icon font library -->
		                <li class="nav-item">
		                    <a href="#" class="nav-link">
		                        <i class="nav-icon fas fa-home"></i>
		                        <p>
		                            Home
		                        </p>
		                    </a>
		                </li>
		                <!-- thêm class: menu-open -->
		                <li class="nav-item">
		                    <a href="" class="nav-link">
		                        <i class="nav-icon fas fa-list"></i>
		                        <p>Manage Members</p>
		                    </a>
		                </li>
		                <li class="nav-item">
		                    <a href="" class="nav-link">
		                        <i class="nav-icon fas fa-list"></i>
		                        <p>Manage Product</p>
		                    </a>
		                </li>
		            </ul>
		        </nav>
		        <!-- /.sidebar-menu -->
		    </div>
		    <!-- /.sidebar -->
		</aside>


        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Manage Member</h1>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Manage Member</li>
                            </ol>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <div class="content">
                <div class="container-fluid">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="input-group">
                                        <input type="text" name="search" class="form-control" placeholder="FullName, Email, Phone, Title...">
                                        <div class="input-group-append">
                                            <button type="button" class="btn btn-primary">Search</i>
                                          </button>
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-sm-3"></div>

                                <div class="col-sm-3 text-right">
                                    <a class="btn btn-primary" href="${pageContext.request.contextPath }/member/add-member">
                                        <i class="fas fa-plus"></i> Add Member
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">List Member</h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <table class="table table-striped projects">
                                <thead>
                                    <tr>
                                        <th style="width: 5%">
                                            Id
                                        </th>
                                        <th style="width: 20%">
                                            Full Name
                                        </th>
                                        <th style="width: 20%">
                                            Email
                                        </th>
                                        <th style="width: 20%">
                                            Phone
                                        </th>
                                        <th style="width: 15%">
                                            Title
                                        </th>
                                        <th>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                
	                                <c:forEach var="tempMember" items="${members}"> 
							 		<!-- add link update with member id -->
							 		<c:url var="updateLink" value="/member/showFormForUpdate">
							 			<c:param name="memberId" value="${tempMember.id }"></c:param>
							 		</c:url>
							 		
							 		<!-- add link delete with member id -->
							 		<c:url var="deleteLink" value="/member/delete">
							 			<c:param name="memberId" value="${tempMember.id }"></c:param>
							 		</c:url>
			 	
	                                    <tr>
	                                        <td>${tempMember.id}</td>
	                                        <td>${tempMember.fullName}</td>
	                                        <td>${tempMember.email}</td>
	                                        <td>${tempMember.phone}</td>
	                                        <c:choose>
											    <c:when test="${tempMember.title == 1}">
											          <td>Manager</td>
											    </c:when>    
											    <c:otherwise>
											        <td>Employee</td>
											    </c:otherwise>
											</c:choose>
											
	                                        <td class="project-actions text-right">
	                                            <a style="margin-right: 5px" class="btn btn-info btn-sm" href="${updateLink }">
	                                              Edit
	                                            </a>
	                                            <a class="btn btn-danger btn-sm" href="${deleteLink }" 
	                                            onclick="if(!(confirm('Are you want to delete this member?'))) return false">
	                                                Delete
	                                            </a>
	                                        </td>
	                                    </tr>
									</c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
    </div>
    <!-- ./wrapper -->
	<!-- Bootstrap 4 -->
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/toastr.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/adminlte.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/common.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/summernote.min.js"></script>

</body>
</html>