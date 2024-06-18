<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Create Quotation Form</title>
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
    var phoneNumber = document.forms["insertClient"]["phone"].value;

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
          <div class="toggle"> 	
              <span class="first"></span>
              <span class="middle"></span>
              <span class="last"></span>
          </div>
          <div class="navigation-bar">
              <ul>
                  <li><a href='Home.jsp'>HOME<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/clientdisplayservlet">EVENTS<span class="underline"></span></a></li>
                  <li class="active"><a href="#">QUOTATION<span class="underline"></span></a></li>
                  
                  <li><a href="/OnlineEvent/displayReviewsSerrvlet">REVIEW<span class="underline"></span></a></li>
                  <li><a href='Login.jsp'>LOGIN<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>
	
	
	<div class="events_form_container2">
   	<div class="events_form">
   	
   	<h2>Create Quotation</h2>
   	
	
	<form action="/OnlineEvent/QuotationInsertServlet" method="post" name="insertClient" onsubmit="return validatePhoneNumber()">
		Client Name : 
		<div class="input_group">
			<input type="text" name="name" placeholder="Enter client's name" class="input_text"><br>
		</div>
		Phone Number : 
		
		<div class="input_group">
			<input type="text" name="phone" placeholder="Enter phone number" class="input_text"><br>
		</div>
		Email : 
		<div class="input_group">
			<input type="email" name="email" placeholder="Enter email" class="input_text"><br>
		</div>
		<div class="input_group">
		<label for="Event"> Event Type:   </label>
		<select name="eType" id="eType">
			<option value="Birthday">Birthday</option>
			<option value="Wedding">Wedding</option>
			<option value="Baby Shower">Baby Shower</option>
			<option value="Gender Reveal">Gender Reveal</option>
			<option value="Cooperate Event">Cooperate Event</option>
			<option value="Other">Other</option>
		</select><br>
		</div>
		
		Date : 
		<div class="input_group">
			<input type="date" name="edate" placeholder="Enter event date" class="input_text" id="datePicker" onchange="checkDate()"><br>
		</div>
		Venue : 
		<div class="input_group">
			<input type="text" name="venue" placeholder="Enter event venue" class="input_text"><br><br>
		</div>
		Special Request <br> 
		<div class="input_group">
			<textarea name="specialReq" rows="4" cols="50" placeholder="Enter special requests (If available)" class="input_text"></textarea><br>
		</div>	
		<br><br>
		<div class="button_group" id="submit">
		
			<input type="submit" name="submit" value="Create Quotation" class="submit-button">
		</div>
	</form>
	
	</div>
	</div>
	
	
	
</body>
</html>