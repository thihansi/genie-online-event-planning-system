<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html style="background-image: url('https://pixel360studio.com.au/wp-content/uploads/2022/07/image-1-Edit-Copy.jpg ');">

<head>
<meta charset="ISO-8859-1">
<title>Event Details</title>

	<link rel="stylesheet" href="yasasTablecss.css">
	<link rel="stylesheet" type="text/css" href="header.css">
</head>
<body>
 <header>
    <nav>
          	
          <div class="navigation-bar">
              <ul>
                  <li><a href='Home.jsp'>HOME<span class="underline"></span></a></li>
                  <li class="active"><a href="#">EVENTS<span class="underline"></span></a></li>
                  <li><a href="ClientQuotationCreate.jsp">QUOTATION<span class="underline"></span></a></li>
                
                  <li><a href="/OnlineEvent/displayReviewsSerrvlet">REVIEW<span class="underline"></span></a></li>
                  <li><a href='Login.jsp'>LOGIN<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>
	
	<h1>Event Details</h1>
	<table border="1" class="zui-table">
	 
	
 	 <thead>	
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Description</th>
		<th>Price_range</th>
		<th>Contact</th>
		<th>Availability</th>
		
	</tr>
 	</thead>
 	<tbody>	
 	<c:forEach var="cus" items="${eventDetails}">
	<tr>
		<td>${cus.id}</td>
		<td>${cus.name}</td>
		<td>${cus.description}</td>
		<td>${cus.price_Range}</td>
		<td>${cus.contact}</td>
	   	<td>${cus.availability}</td>
	   	 
	   	 
	</tr>
		 
</c:forEach>
 	</tbody>
	</table>
<br>

</body>
</html>