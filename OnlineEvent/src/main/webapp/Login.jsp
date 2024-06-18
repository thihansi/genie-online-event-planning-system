<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

  <meta charset="utf-8">
  <title>GENIE: Sign in</title>
  <link rel="stylesheet" type="text/css" href="Login.css">
</head>
<head>
<body>
<header>
      <nav>
          
          <div class="navigation-bar">
              <ul>
                  <li ><a href='Home.jsp'>HOME<span class="underline"></span></a></li>
                  <li><a href="/OnlineEvent/clientdisplayservlet">EVENTS<span class="underline"></span></a></li>
                  <li><a href="ClientQuotationCreate.jsp">QUOTATION<span class="underline"></span></a></li>
                 
                  <li><a href="/OnlineEvent/displayReviewsSerrvlet">REVIEW<span class="underline"></span></a></li>
                  <li class="active"><a href='Login.jsp'>LOGIN<span class="underline"></span></a></li>
              </ul>
          </div>
      </nav>

  </header>

<div class="login-root">
    <div class="box-root flex-flex flex-direction--column" style="min-height: 100vh;flex-grow: 1;">
      <div class="loginbackground box-background--white padding-top--64">
        <div class="loginbackground-gridContainer">
          </div>
        </div>
      </div>
      <div class="box-root padding-top--24 flex-flex flex-direction--column" style="flex-grow: 1; z-index: 9;">
        <div class="box-root padding-top--48 padding-bottom--24 flex-flex flex-justifyContent--center">
          <h1><a href="http://blog.stackfindover.com/" rel="dofollow">GENIE</a></h1>
        </div>
        <div class="formbg-outer">
          <div class="formbg">
            <div class="formbg-inner padding-horizontal--48">
              <span class="padding-bottom--15">Sign in to your account</span>
              
              
              <form id="stripe-login" action="/OnlineEvent/LoginServlet" method="POST">
                <div class="field padding-bottom--24">
                  <label for="username">UserName</label>
                  <input type="text" name="UserName">
                </div>
                <div class="field padding-bottom--24">
                  <div class="grid--50-50">
                    <label for="password">Password</label>
                    <div class="reset-pass">
                      <a href="#">Forgot your password?</a>
                    </div>
                  </div>
                  <input type="password" id="password" placeholder="Password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Should contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  required>
           
                </div>
                <div class="field field-checkbox padding-bottom--24 flex-flex align-center">
                  <label for="checkbox">
                    <input type="checkbox" name="checkbox"> Stay signed in for a week
                  </label>
                </div>
                <div class="field padding-bottom--24">
                  <input type="submit" name="submit" value="Continue">
                </div>
                    </form>
          <div class="footer-link padding-top--24">
           
            <div class="listing padding-top--24 padding-bottom--24 flex-flex center-center">
             
              <span><a href="#">Contact</a></span>
              <span><a href="#">Privacy  terms</a></span>
             
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
    <!--Start Footer-->
  <footer>
      <div class="text">
          <h2>Our Mission</h2>
          <div><i class="fas fa-asterisk"></i></div>
          <p>Our mission is to empower individuals and businesses to host extraordinary events effortlessly. We believe that every event, no matter the size or occasion, should be a reflection of your unique style and personality. We are dedicated to providing a seamless, stress-free, and enjoyable planning experience for all our users, turning your vision into a reality.     </div>
      <div class="contact-container">
        <div class="social-media">
            <h3>Follow Along</h3>
            <div class="links">
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-facebook-square"></i></a>
                <a href="#"><i class="fab fa-pinterest"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
            </div>
        </div>
          <div class="newsletter">
            <h3>NewsLetter</h3>
              <form method="post">
                  <input type="email" name="email" placeholder="Type Your Email">
                  <i class="fas fa-envelope"></i>
              </form>
          </div>
      </div>
  </footer>
<!--End Footer-->

<!--Start Copy-Right-->
  <div class="copyright">
      <svg class="svg-up" width="192" height="61" version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 160.7 61.5" enable-background="new 0 0 160.7 61.5" xml:space="preserve"><path fill="#262526" d="M80.3,61.5c0,0,22.1-2.7,43.1-5.4s41-5.4,36.6-5.4c-21.7,0-34.1-12.7-44.9-25.4S95.3,0,80.3,0c-15,0-24.1,12.7-34.9,25.4S22.3,50.8,0.6,50.8c-4.3,0-6.5,0,3.5,1.3S36.2,56.1,80.3,61.5z"></path></svg>
      <i class="fas fa-angle-double-up arrow-up"></i>
      <ul class="info">
          <li>&copy; GENIE 2017</li>
          <li>452/A Flower Road, Colombo 7</li>
          <li>Tel: 071494563</li>
         
      </ul>
      <ul class="CTA">
          <li><a href="#">PERMISSIONS AND COPYRIGHT</a></li>
          <li><a href="#">CONTACT THE TEAM</a></li>
      </ul>
  </div>
  <!--End Copy-Right-->

  <!-- Add your site or application content here -->
  <script src="home.js"></script>
  
</body>
</html>