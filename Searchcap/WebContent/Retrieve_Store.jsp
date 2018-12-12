<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	<style>
		.row {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clear floats after image containers */
.row::after {
  content: "";
  clear: both;
  display: table;
}
@media screen and (max-width: 500px) {
  .column {
    width: 100%;
  }
}


</style>
</head>
<body>
<form:form modelAttribute="store" action="retrieve_Store">
		<table >
			<tr>
			<h1><center>This are the products available
				
				
  <h2><center>Welcome to CAPSTORE</h2>
  
</div>
	<div class="navbar">

 <!--  <a href="#news">News</a> -->
  
    
        <h2><center></>Menu</h2>
      
      <div class="row">
        <div class="column">
          <h3>Electronics</h3>
          <a href="#">Mobiles</a>
          <a href="#">Ac</a>
          <a href="#">Tv</a>
        </div>
        <div class="column">
          <h3>Clothing</h3>
          <a href="#">Men</a>
          <a href="#">Women</a>
          <a href="#">Kids</a>
        </div>
        <div class="column">
          <h3>Furniture and Home</h3>
          <a href="#">Kitchen & Dining</a>
          <a href="#">Furniture</a>
          <a href="#">Decor</a>
        </div>
      </div>
    </div>
  </div>		  
       
		</table>
		
	
		<div class="row">
  <div class="row">
    <img src="img_snow.jpg" alt="Sofas" style="width:100%">
    <h4>Comfy Sofa</h4>
  <p class="price">Rs.25,000</p>
  <p>Customized designer sofa</p>
  <p><button>Add to Cart</button></p>
  
  </div>
  <div class="row">
    <img src="img_forest.jpg" alt="Jeans" style="width:100%">
    <h4>Tailored Jeans</h4>
  <p class="price">Rs.1500</p>
  <p>Super slim and comfy Jeans for women</p>
  <p><button>Add to Cart</button></p>
    
  </div>
  <div class="row">
    <img src="img_mountains.jpg" alt="Mobiles" style="width:100%">
    <h4>Samsung Galaxy Note 8</h4>
  <p class="price">Rs.49,000</p>
  <p>6.3-inch QHD+ Super AMOLED Infinity display</p>
  <p><button>Add to Cart</button></p>
  </div>
</div>


		
	</form:form>
</body>
</html>