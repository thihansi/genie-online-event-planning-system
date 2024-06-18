<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Insert Review</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />

    <link rel="stylesheet" href="createvent.css" />
	<link rel="stylesheet" type="text/css" href="header.css">
	<script src="Thihansi.js"></script>

</head>
<body>
<header>
      <nav>
          	
          <div class="navigation-bar">
              <ul>
                  <li><a href='Home.jsp'>HOME<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/clientdisplayservlet">EVENTS<span class="underline"></span></a></li>
                  <li><a href="ClientQuotationCreate.jsp">QUOTATION<span class="underline"></span></a></li>
               
                  <li  class="active"><a href="/OnlineEvent/displayReviewsSerrvlet">REVIEW<span class="underline"></span></a></li>
                  <li><a href='Login.jsp'>LOGIN<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>
    	<div class="events_form_container">
      	<div class="events_form">	
      	
      	
      	<form id = "RForm" action="inserth" method="post">
		
		<h2>Insert Review</h2>
		
		<div class="input_group">
		<label for="Event">Event Type:   </label>
		<select name="Event" id="Event">
			<option value="Birthday">Birthday</option>
			<option value="Wedding">Wedding</option>
			<option value="Baby Shower">Baby Shower</option>
			<option value="Gender Reveal">Gender Reveal</option>
			<option value="Cooparate Events">Cooperate Event</option>
			<option value="Other">Other</option>
		</select><br>
		
		</div>
		
		<br>
	
		Review Title:
		<div class="input_group">
		<input 
			type="text" 
			name="ReviewTitle" 
			placeholder="Enter your review title"
			class="input_text"><br>		
		</div>
		<br>
		Phone Number :
		<div class="input_group">
		<input type="text" name="Phone" placeholder="Enter your telephone number" class="input_text"><br>
		</div>
		Name :
		<div class="input_group">
		<input type="text" name="ClientName" placeholder="Enter your name" class="input_text"><br>
		</div>

		Rating:<br>
		
			<input type="radio" name="Rating" value="1" id="rating1" ><label for="rating1">★<br></label>
			<input type="radio" name="Rating" value="2" id="rating2"><label for="rating2">★★<br></label>
			<input type="radio" name="Rating" value="3" id="rating3"><label for="rating3">★★★<br></label>
			<input type="radio" name="Rating" value="4" id="rating4"><label for="rating4">★★★★<br></label>
			<input type="radio" name="Rating" value="5" id="rating5"><label for="rating5">★★★★★<br></label><br>
		
		Review Content
		<div class="input_group">
		 <br><textarea id="rid" name="R_content" rows="4" cols="50" placeholder="Enter the review" class="input_text"></textarea>
		</div>
	
		<br>
		Do you want us to contact you for further questions? <br>
		
		<div class="container">
		<input type="radio" name="Further_contact" value=1><label class="no-label">YES</label><br>
		<input type="radio" name="Further_contact" value=0><label class="no-label">NO</label><br>
		
		</div>
		<br>
		<div class="button_group" id="submit">
		<input type="submit" name="submit" value="Submit Review" class="submit-button">

		</div>

        
        
        
	</form>

		<span id="character-count"></span>
	</div>
	</div>

</body>
</html>