<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Event</title>
    
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
                  <li><a href='adminhome.jsp'>HOME<span class="underline"></span></a></li>
                  <li  class="active"><a href="/OnlineEvent/displaysetailsservlet">EVENTS<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/DisplayQuotationServlet">QUATATION<span class="underline"></span></a></li>
            
                  <li><a href="/OnlineEvent/admindisplayServlet">REVIEW<span class="underline"></span></a></li>
                  <li><a href='home.jsp'>LOGOUT<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>
	<div class="events_form_container2">
   	<div class="events_form">
   	

    <c:forEach var="cus" items="${cusDetails}">
        <form action="update" method="post">
        
        	
        	<label for="Id">Id :</label>
        	  <div class="input_group">
            <input type="text" name="id" value="${cus.id}"class="input_text"><br>
            </div>
         
            <label for="clientName">Name:</label>
              <div class="input_group">
            <input type="text" name="name" value="${cus.name}" required class="input_text"><br>
            </div>
            
            <label for="phone">Description:</label>
              <div class="input_group">
            <input type="text" name="description" value="${cus.description}" required class="input_text"><br>
            </div>
         
            <label for="email">Price_range:</label>
              <div class="input_group">
            <input type="text" name="price_range" value="${cus.price_Range}" required class="input_text"><br>
            </div>
            
            <label for="edate">contact:</label>
              <div class="input_group">
            <input type="text" name="contact" value="${cus.contact}" required class="input_text"><br>
            </div>
            
            <label for="venue">Availability:</label>
              <div class="input_group">
            <input type="text" name="availability" value="${cus.availability}" required class="input_text"><br>
            </div>
            
            
            <div class="button_group" id="submit">
		
			<input type="submit" name="submit" value="Update" class="submit-button">
			</div>
        </form>
    </c:forEach>
    
    </div>
    </div>
</body>
</html>