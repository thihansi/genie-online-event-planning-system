<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Event</title>

	 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="createvent.css" />
 	<link rel="stylesheet" type="text/css" href="header.css">  
 	
<script>
function showPopup() {
    const phoneNumberInput = document.getElementById('phoneNumber');
    const phoneValidationMessage = document.getElementById('phoneValidationMessage');

    const phoneNumber = phoneNumberInput.value;
    const phoneNumberPattern = /^\d{10}$/; // Change the pattern as needed (e.g., for a 10-digit phone number)

    if (!phoneNumberPattern.test(phoneNumber)) {
        phoneValidationMessage.textContent = "Please enter a valid phone number.";
        return false; // Prevent default form submission
    }

    alert("Popup Message: Phone number is valid, but the form will not be submitted.");
}
</script>
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
              	  <li class="active"><a href="/OnlineEvent/displaysetailsservlet">EVENTS<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/DisplayQuotationServlet">QUOTATION<span class="underline"></span></a></li>
           
                  <li><a href="/OnlineEvent/admindisplayServlet">REVIEW<span class="underline"></span></a></li>
                  <li><a href='Home.jsp'>LOGOUT<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>

	<div class="events_form_container1">
   	<div class="events_form">	
   	
	
		<form action="/OnlineEvent/createventservlet" method="post">
	<h2>Insert Event</h2>
	
	Name :<br> 
	<div class="input_group">
		<input type="text" name="name" placeholder="Enter event name" class="input_text"><br>
	</div>
	Description :<br>
	<div class="input_group">
		<input type="text" name="para" placeholder="Enter descirption" class="input_text"><br>	
	</div>
	Price_range :<br> 
	<div class="input_group">
		<input type="text" name="prange"placeholder="Enter price range" class="input_text"><br>
	</div>
	Contact :<br> 
	<div class="input_group">
	
	<p id="phoneValidationMessage"></p>
		<input type="text" id = "phoneNumber "name="phone" placeholder="Enter telephone number" class="input_text"><br>	
	</div>
	Availability :<br> 
	<div class="input_group">
		<input type="text" name="availability" placeholder="Enter availability" class="input_text"><br>	
	</div>
	
	
	<div class="button_group" id="submit">
	
			<input type="submit" name="submit" value="Create Event" class="submit-button">
	<!-- <input onclick ="showPopup()" -->
	</div>
	</form>
	
<p id="phoneValidationMessage"></p>
  </div>
</div>
</body>
</body>
</html>