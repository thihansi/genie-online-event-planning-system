<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html style="background-image: url('https://pixel360studio.com.au/wp-content/uploads/2022/07/image-1-Edit-Copy.jpg ');">

<head>
<meta charset="ISO-8859-1">
<title>Event Details</title>
<script>
    function updateRecord(id) {
        window.location.href = "eventupdateservlet?id=" + id
    }
    function deleteRecord(id) {
        window.location.href = "Eventdeletservlet?id=" + id
    }
	</script>
	
	<link rel="stylesheet" href="yasasTablecss.css">
	<link rel="stylesheet" type="text/css" href="header.css">
</head>
<body>
<header>
      <nav>
          	
          <div class="navigation-bar">
              <ul>
                  <li><a href='adminhome.jsp'>HOME<span class="underline"></span></a></li>
                  <li class="active"><a href="#">EVENTS<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/DisplayQuotationServlet">QUOTATION<span class="underline"></span></a></li>
          
                  <li><a href="/OnlineEvent/admindisplayServlet">REVIEW<span class="underline"></span></a></li>
                 <li><a href='Home.jsp'>LOGOUT<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>
	<h1>Manage Event Details</h1>
	<table border="1" class="zui-table">
	 
	<c:forEach var="cus" items="${eventDetails}">
	
			
		<c:set var="id" value="${cus.id}"/>
		<c:set var="name" value="${cus.name}"/>
		<c:set var="description" value="${cus.description}"/>
		<c:set var="price_Range" value="${cus.price_Range}"/>
		<c:set var="contact" value="${cus.contact}"/>
		<c:set var="availability" value="${cus.availability}"/>
	
 	 <thead>	
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Description</th>
		<th>Price_range</th>
		<th>Contact</th>
		<th>Availability</th>
		<th>Operation</th>
	</tr>
 	</thead>
 	<tbody>	
	<tr>
		<td>${cus.id}</td>
		<td>${cus.name}</td>
		<td>${cus.description}</td>
		<td>${cus.price_Range}</td>
		<td>${cus.contact}</td>
	   	<td>${cus.availability}</td>
	   	 
	   	 <td>
	   	    <div class="button-container">
	   	    
	   	 <button onclick='updateRecord(${cus.id})'>Update</button>
	   	 <button onclick='deleteRecord (${cus.id})'>Delete</button>
	   	 
	   	 </div>
	   	 </td>
		</tr>
		
		

</c:forEach>
 	</tbody>
 	
	</table>
<br>
<br>
<br>
				<a href="createvent.jsp">
                <div class="button-container">
                    <button>Create Event</button>
              	</div> 
                 </a>
              
</body>
</html>