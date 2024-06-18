<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="background-image: url('https://images.pexels.com/photos/3249760/pexels-photo-3249760.jpeg?cs=srgb&dl=pexels-edoardo-tommasini-3249760.jpg&fm=jpg');">
<head>
<meta charset="ISO-8859-1">
<title>Client Quotation</title>
<script>
    function updateRecord(id) {
        // Assuming you want to redirect to an update page with the selected record ID
        window.location.href = 'QuotationUpdateClientServlet?id=' + id;
        
        		}
    function deleteRecord(id) {
        	window.location.href = "QuotationDeleteClientServlet?id=" + id
        		}   		
    
    </script>
	
	<link rel="stylesheet" href="ThamiduTableCSS.css">
		<link rel="stylesheet" type="text/css" href="header.css">
    
	
</head>
<body>
<header>
      <nav>
          
          <div class="navigation-bar">
              <ul>
                  <li ><a href='Home.jsp'>HOME<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/clientdisplayservlet">EVENTS<span class="underline"></span></a></li>
                  <li class="active"><a href="ClientQuotationCreate.jsp">QUOTATION<span class="underline"></span></a></li>
      
                  <li><a href="/OnlineEvent/displayReviewsSerrvlet">REVIEW<span class="underline"></span></a></li>
                  <li><a href='Login.jsp'>LOGIN<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>
	<h1>Quotation</h1>
    <table border="1" class="zui-table">
    <thead>    
        <tr>
            <th>QID</th>
            <th>Client Name</th>
            <th>Phone Number</th>
            <th>E-mail</th>
            <th>Event Date</th>
            <th>Venue</th>
            <th>Special Requests</th>
            <th>Quotation Date</th>
            <th>Event Type</th>
            <th>Operation</th>
        </tr>
     </thead> 
     <tbody> 
     <c:forEach var="qut" items="${qutDetails}">
     <tr>
        <td>${qut.qid}</td>
        <td>${qut.clientName}</td>
        <td>${qut.phone}</td>
        <td>${qut.email}</td>
        <td>${qut.eDate}</td>
        <td>${qut.venue}</td>
        <td>${qut.specialReq}</td>
        <td>${qut.qdate}</td>
        <td>${qut.type}</td>
        <td>
        <div class="button-container">
        <button onclick='updateRecord(${qut.qid})'>Update</button>

        <button onclick='deleteRecord(${qut.qid})'>Delete</button>
        </div>
        </td>
    </tr>
</c:forEach>
	</tbody> 
    </table>
</body>
</html>