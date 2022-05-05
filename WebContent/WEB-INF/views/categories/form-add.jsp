<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Member</title>

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
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="" role="button">
                       Logout <i class="fas fa-sign-out-alt"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
		    <!-- Brand Logo -->
		    <a href="index3.html" class="brand-link">
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
		                    <a href="${pageContext.request.contextPath }/member/list" class="nav-link">
		                        <i class="nav-icon fas fa-list"></i>
		                        <p>Manage Members</p>
		                    </a>
		                </li>
		                <li class="nav-item">
		                    <a href="${pageContext.request.contextPath }/category/list" class="nav-link">
		                        <i class="nav-icon fas fa-list"></i>
		                        <p>Manage Category</p>
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
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Add Category</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Dashbroad</a></li>
                                <li class="breadcrumb-item active">Manage Category </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Main content -->
            <div class="content">
                <div class="container-fluid">
                    <div class="card card-primary">
                        <!-- form start -->
                        <form:form action="saveCategory" modelAttribute="category" method="POST">
                        
                        <form:hidden path="id"/>
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Category Name:</label>
                                    <form:input path="cateName" type="text" class="form-control"/>
                                </div>
                                
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </form:form>
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /.content -->
            </div>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

    </div>
	<!-- Bootstrap 4 -->
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/toastr.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/adminlte.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/common.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/summernote.min.js"></script>

</body>
</html>