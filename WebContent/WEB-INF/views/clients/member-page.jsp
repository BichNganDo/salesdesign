<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Page</title>
	<link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/album/">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
	<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>
</head>
<body>
	<header>
	  <div class="collapse bg-dark" id="navbarHeader">
	    <div class="container">
	      <div class="row">
	       
	        <div class="col-sm-4 offset-md-1 py-4">
	          <ul class="list-unstyled">
	            <li><a href="${pageContext.request.contextPath }/home/member" class="text-white">Member Page</a></li>
	            <li><a href="${pageContext.request.contextPath }/home/category" class="text-white">Category Page</a></li>
	            <li><a href="${pageContext.request.contextPath }/home/product" class="text-white">Product Page</a></li>
	          </ul>
	        </div>
	      </div>
	    </div>
	  </div>
	  <div class="navbar navbar-dark bg-dark shadow-sm">
	    <div class="container">
	      
	      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	    </div>
	  </div>
	</header>
	
	<main>
	
	  <div class="album py-5 bg-light">
	    <div class="container">
	
	      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
	      
	      	<c:forEach var="tempMember" items="${members}"> 
	      
		        <div class="col">
		          <div class="card shadow-sm">
		            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
		
		            <div class="card-body">
		            <h3>${tempMember.fullName }</h3>
		              <div class="d-flex justify-content-between align-items-center">
		                <small class="text-muted">Phone: ${tempMember.phone }</small>
		                <br>
		                <small class="text-muted">Email: ${tempMember.email }</small>
		              </div>
		            </div>
		          </div>
		        </div>
	       	</c:forEach>
	
	      
	
	      </div>
	    </div>
	  </div>
	
	</main>
	

 	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>