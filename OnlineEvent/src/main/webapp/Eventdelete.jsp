
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Delete</title>
	<link rel="stylesheet" type="text/css" href="header.css">
	 <link rel="stylesheet" href="createvent.css" />
 
</head>
<body>
<header>
      <nav>
          	
          <div class="navigation-bar">
              <ul>
                  <li><a href='adminhome.jsp'>HOME<span class="underline"></span></a></li>
                  <li class="active"><a href="/OnlineEvent/DisplayQuotationServlet">EVENTS<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/DisplayQuotationServlet">QUOTATION<span class="underline"></span></a></li>
           
                  <li><a href="/OnlineEvent/admindisplayServlet">REVIEW<span class="underline"></span></a></li>
                  <li><a href="Home.jsp">LOGOUT<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>
	<%
		String Id = request.getParameter("Id");
		String name = request.getParameter("name");
		String description = request.getParameter("Description");
		String price_range = request.getParameter("Price_range");
		String contact = request.getParameter("contact");
		String availability = request.getParameter("availability");	
	%>
	<div class="events_form_container1">
   	<div class="events_form">	
	    <c:forEach var="cus" items="${cusDetails}">
        <form action="delete" method="post">
        
        	<label for="Id">Id :</label>
        	<div class="input_group">
            <input type="text" name="id" value="${param.id}"class="input_text"><br>
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
            <input type="text" name="Price_range" value="${cus.price_Range}" required class="input_text"><br>
            </div>
            
            <label for="edate">contact:</label>
            <div class="input_group">
            <input type="text" name="contact" value="${cus.contact}" required class="input_text"><br>
            </div>
            
            <label for="venue">Availability:</label>
            <div class="input_group">
            <input type="text" name="Availability" value="${cus.availability}" required class="input_text"><br>
            </div>
            <div class="button_group" id="submit">
            <input type = "submit" name = "submit" value = "Delete My Event"class="submit-button">
      </div>
        </form>
    </c:forEach>
    </div>
    </div>
    

</body>
</html>
