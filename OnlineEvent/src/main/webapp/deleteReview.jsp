<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Review</title>
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	/>

	<link rel="stylesheet" href="ThamiduFormCSS.css" />
	<link rel="stylesheet" type="text/css" href="header.css">
</head>
<body>
<header>
      <nav>
          	
          <div class="navigation-bar">
              <ul>
                  <li><a href='Home.jsp'>HOME<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/displaysetailsservlet">EVENTS<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/DisplayQuotationServlet">QUOTATION<span class="underline"></span></a></li>
             
                  <li class="active"><a href="/OnlineEvent/admindisplayServlet">REVIEW<span class="underline"></span></a></li>
                  <li><a href='Home.jsp'>LOGOUT<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>
	<div class="events_form_container">
   	<div class="events_form">
    <h1>Delete Reviews</h1>



	<c:forEach var="reviews" items="${reviewsDetails}">

	<form action ="deleteh" method="post">
	
		
		<label for="Id">ID</label><br>
		<div class="input_group">
		<input type = "text" name="Id" value="${param.id}"class="input_text"><br>
		</div>
		
		<label for="Event">Event</label><br>
		<div class="input_group">
		<input type="text" name="Event" value="${reviews.event}" required class="input_text"><br>
		</div>
		
		<label for="ReviewTitle">Review Title</label><br>
		<div class="input_group">
		<input type="text" name="ReviewTitle" value ="${reviews.reviewTitle}" required class="input_text"><br>
		</div>
		
		<label for="ClientName">Client Name</label><br>
		<div class="input_group">
		<input type="text" name="ClientName" value="${reviews.clientName}" required class="input_text"><br>
		</div>
		
		<label for="Phone">Phone</label><br>
		<div class="input_group">
		<input type="text" name="Phone" value="${reviews.phone}" required class="input_text"><br>
		</div>
		
		<label for="Rating">Rating</label><br>
		<div class="input_group">
		<input type="text" name="Rating" value="${reviews.rating}" required class="input_text"><br>
		</div>
		
		<label for="R_Content">Write Review</label><br>
		<div class="input_group">
		<input type="text" name="R_Content" value="${reviews.r_Content}" required class="input_text"><br>
		</div>
		
		<label for="Further_Contact">Further Contact</label><br>
		<div class="input_group">
		<input type="text" name="Further_Contact" value="${reviews.further_Contact}" required class="input_text">
		</div>
		
		<br>
		
		<div class="button_group" id="submit">
			<input type="submit" value="Delete" class="submit-button">		
		</div>
	
	</form>
</c:forEach>

</div>
</div>


</body>
</html>