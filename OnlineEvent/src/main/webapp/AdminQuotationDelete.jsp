<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Quotation</title>
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
          <div class="toggle">
              <span class="first"></span>
              <span class="middle"></span>
              <span class="last"></span>
          </div>
          <div class="navigation-bar">
              <ul>
                  <li><a href="adminhome.jsp">HOME<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/clientdisplayservlet">EVENTS<span class="underline"></span></a></li>
                  <li class="active"><a href="/OnlineEvent/DisplayQuotationServlet">QUATATION<span class="underline"></span></a></li>
                  
                  <li><a href="/OnlineEvent/admindisplayServlet">REVIEW<span class="underline"></span></a></li>
                  <li><a href='Home.jsp'>LOGOUT<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>
	<div class="events_form_container2">
   	<div class="events_form">
	
	
	<c:forEach var="qut" items="${qutDetails}">
        <form action="deleteAdmin" method="post">
        	
        	<label for="QID">QID</label>
        	<div class="input_group">
            <input type="text" name="id" value="${qut.qid}" readonly class="input_text"><br>
            </div>
            <label for="clientName">Name:</label>
            <div class="input_group">
            <input type="text" name="clientName" value="${qut.clientName}" readonly class="input_text"><br>
            </div>
            <label for="phone">Phone Number:</label>
            <div class="input_group">
            <input type="text" name="phone" value="${qut.phone}" readonly class="input_text"><br>
            </div>
            <label for="email">Email:</label>
            <div class="input_group">
            <input type="text" name="email" value="${qut.email}" readonly class="input_text"><br>
            </div>
            <label for="edate">Event Date:</label>
            <div class="input_group">
            <input type="date" name="edate" value="${qut.eDate}" readonly class="input_text"><br>
            </div>
            <label for="venue">Venue:</label>
            <div class="input_group">
            <input type="text" name="venue" value="${qut.venue}" readonly class="input_text"><br>
            </div>
            <label for="sr">Special Requests:</label>
            <div class="input_group">
            <input type="text" name="sr" value="${qut.specialReq}" readonly class="input_text"><br>
            </div>
            <label for="type">Type:</label>
            <div class="input_group">
            <input type="text" name="type" value="${qut.type}" readonly class="input_text"><br>
            </div>
            
            <div class="button_group" id="submit">
		
			<input type="submit" name="submit" value="Delete" class="submit-button">
			
			</div>
			
        </form>
    </c:forEach>
    </div>
	</div>
</body>
</html>