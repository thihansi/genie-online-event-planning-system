<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Review</title>

    <link rel="stylesheet" href="createvent.css" />
    <link rel="stylesheet" type="text/css" href="header.css">
	<script src="Thihansi.js"></script>
	
</head>
<body>
<header>
      <nav>
          	
          <div class="navigation-bar">
              <ul>
                  <li><a href='adminhome.jsp'>HOME<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/displaysetailsservlet">EVENTS<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/DisplayQuotationServlet">QUOTATION<span class="underline"></span></a></li>
                 
                   <li class="active"><a href="/OnlineEvent/admindisplayServlet">REVIEW<span class="underline"></span></a></li>
                  <li><a href='Home.jsp'>LOGIN<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>

	<div class="events_form_container">
   	<div class="events_form">
    <h1>Update Reviews</h1>


	<c:forEach var="reviews" items="${reviewsDetails}">
	
	<form id = "RForm" action ="updateh" method="post">
	
		<div class="input_group">
			<input type = "hidden" name="id" value="${reviews.id}" class="input_text">
		</div>

			<label for="Event">Event</label>
		<div class="input_group">
			<input type="text" name="Event" value="${reviews.event}" class="input_text"required>
		</div>
		Review Title
		<div class="input_group">
			<input type="text" name="ReviewTitle" value ="${reviews.reviewTitle}" class="input_text" required >
		</div>
		Client Name
		<div class="input_group">
			<input type="text" name="ClientName" value="${reviews.clientName}" class="input_text" required>
		</div>
		Phone number
		<div class="input_group">
			<input type="text" name="Phone" value="${reviews.phone}" class="input_text" required>
		</div>
		Rating
		<div class="input_group">
			<input type="text" name="Rating" value="${reviews.rating}" class="input_text" required>
		</div>
		Review Content
		<div class="input_group">
			<input type="text" id="rid" name="R_Content" value="${reviews.r_Content}" class="input_text" required>
		</div>
		Do you want us to contact you for further questions? (1-Yes, 0-No) <br>
		<div class="input_group">
			<input type="text" name="Further_Contact" value="${reviews.further_Contact}" class="input_text" required>
		</div>
		
		<div class="button_group" id="submit">
			<input type="submit" value="Update" class="submit-button">		
		</div>
	
		
	</form>
	
	</c:forEach>
	<span id="character-count"></span>
	</div>
	</div>

</body>
</html>