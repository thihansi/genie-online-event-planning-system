<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>	
<head>
    <meta charset="UTF-8">
    <title>Update Quotation</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	/>

	<link rel="stylesheet" href="ThamiduFormCSS.css" />
	<link rel="stylesheet" type="text/css" href="header.css">
    
    
    <script>
function checkDate() {
    const datePicker = document.getElementById('datePicker');
    const selectedDate = new Date(datePicker.value);
    const currentDate = new Date();

    if (selectedDate < currentDate) {
        alert("Please select a future date.");
        datePicker.value = ''; // Clear the input field
    }
}

function validatePhoneNumber() {
    var phoneNumber = document.forms["updateClient"]["phone"].value;

    // Regular expression to match only digits
    var regex = /^[0-9]+$/;

    if (!regex.test(phoneNumber)) {
        alert("Invalid phone number. Please enter a valid phone number with no letters.");
        return false;
    }

    return true;
}

</script>
</head>
<body>
<header>
      <nav>
          
          <div class="navigation-bar">
              <ul>
                  <li><a href='Home.jsp'>HOME<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/clientdisplayservlet">EVENTS<span class="underline"></span></a></li>
                  <li class="active"><a href="ClientQuotationCreate.jsp">QUOTATION<span class="underline"></span></a></li>
         
                  <li><a href="/OnlineEvent/displayReviewsSerrvlet">REVIEW<span class="underline"></span></a></li>
                  <li><a href='Login.jsp'>LOGIN<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>
	
	

	<div class="events_form_container2">
   	<div class="events_form">
   	
   	
    <c:forEach var="qut" items="${qutDetails}">
        <form action="updateClient" method="post" name="updateClient" onsubmit="return validatePhoneNumber()">
            <label for="QID">QID</label>
            <div class="input_group">
            <input type="text" name="id" value="${qut.qid}" readonly class="input_text"><br>
            </div>
            <label for="clientName">Client Name:</label>
            <div class="input_group">
            <input type="text" name="clientName" value="${qut.clientName}" required class="input_text"><br>
            </div>
            <label for="phone">Phone Number:</label>
            <div class="input_group">
            <input type="text" name="phone" value="${qut.phone}" required class="input_text"><br>
            </div>
            <label for="email">Email:</label>
            <div class="input_group">
            <input type="text" name="email" value="${qut.email}" required class="input_text"><br>
            </div>
            <label for="type">Event Type:</label>
            <div class="input_group">
            <input type="text" name="type" value="${qut.type}" required class="input_text"><br>
            </div>
            <label for="edate">Event Date:</label>
            <div class="input_group">
            <input type="date" name="edate" value="${qut.eDate}" required class="input_text" id="datePicker" onchange="checkDate()"><br>
            </div>
            <label for="venue">Venue:</label>
            <div class="input_group">
            <input type="text" name="venue" value="${qut.venue}" required class="input_text"><br>
            </div>
            <label for="sr">Special Requests:</label>
            <div class="input_group">
            <input type="text" name="sr" value="${qut.specialReq}" required class="input_text"><br>
            
            <div class="button_group" id="submit">
		
			<input type="submit" name="submit" value="Update" class="submit-button">
			
			</div>
        </form>
    </c:forEach>
    </div>
	</div>
</body>
</html>
