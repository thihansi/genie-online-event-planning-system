<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html style="background-image: url('https://c0.wallpaperflare.com/preview/325/1015/727/close-up-photo-of-gold-wedding-rings.jpg');">
<head>
	<meta charset="UTF-8">
	<title>Reviews</title>
    
    <link rel="stylesheet" href="Thihansitable.css">
      	<link rel="stylesheet" type="text/css" href="header.css">
</head>
<body>
<header>
      <nav>
          	
          <div class="navigation-bar">
              <ul>
                  <li><a href='Home.jsp'>HOME<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/clientdisplayservlet">EVENTS<span class="underline"></span></a></li>
                  <li><a href="ClientQuotationCreate.jsp">QUOTATION<span class="underline"></span></a></li>
                  
                  <li class="active"><a href="#">REVIEW<span class="underline"></span></a></li>
                  <li><a href='Login.jsp'>LOGIN<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>
    <h1>Reviews</h1>

    <table border="1" class="zui-table">
    <thead>
        <tr>
            <th>ID</th>
            <th>Event</th>
            <th>Review Title</th>
            <th>Client Name</th>
            <th>Phone</th>
            <th>Rating</th>
            <th>Review Content</th>
            <th>Further Contact</th>
            <th>Current Date</th>
          
        </tr>
   	</thead>
        
   	<tbody>
        <c:forEach var="reviews" items="${reviewsDetails}">
            <tr>
	
                <td>${reviews.id}</td>
                <td>${reviews.event}</td>
                <td>${reviews.reviewTitle}</td>
                <td>${reviews.clientName}</td>
                <td>${reviews.phone}</td>
                <td>${reviews.rating}</td>
                <td>${reviews.r_Content}</td>
                <td>${reviews.further_Contact}</td>
                <td>${reviews.currentDate}</td>
                
              
                         
          	</tr>
            
            
            
	
        </c:forEach>
        
   	</tbody>
    </table>
    <br>
    <br>

                 <a href="InsertReviews.jsp">
					 <div class="button-container1">
                    <button><b>Create Reviews</b></button>
              	</div> 
                 </a>
              

</body>
</html>