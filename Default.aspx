<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>PTDF Stem</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/css/font-awesome.min.css"/>
<!--===============================================================================================-->
<%--	<link rel="stylesheet" type="text/css" href="fonts/themify/themify-icons.css">--%>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/animate.css"/>
<!--===============================================================================================-->
	<%--<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">--%>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/animsition.min.css"/>
<!--===============================================================================================-->
	<%--<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">--%>
<!--===============================================================================================-->
<%--	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">--%>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/slick.css"/>
<!--===============================================================================================-->
	<%--<link rel="stylesheet" type="text/css" href="vendor/lightbox2/css/lightbox.min.css">--%>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
<!--===============================================================================================-->


    <style>
/*body {font-family: Arial, Helvetica, sans-serif;}*/

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}
.submitbtn {
  width: 150px;
  padding: 10px 18px;
  background-color: #4CAF50;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 500px; /*50% Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body class="animsition" onload="checkCookie()">

	<!-- Header -->
	<header>
		<!-- Header desktop -->
		<div class="wrap-menu-header gradient1 trans-0-4">
			<div class="container h-full">
				<div class="wrap_header trans-0-3">
					<!-- Logo -->
					<div class="logo">
						<a  href="index.html" style="display:none">
							<img  src="images/logo.png" alt="IMG-LOGO" data-logofixed="images/logo.png"/>
						</a>
                     <div class="social flex-w flex-l-m p-r-20">
						<a href="#"><i class="fa fa-facebook m-l-21" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter m-l-21" aria-hidden="true"></i></a>
					</div>
					</div>

					<!-- Menu -->
				
					<div class="social flex-w flex-l-m p-r-20">
					<nav class="menu">
                         <div id="divsignin" runat="server">
							<ul class="main_menu">
								<%--<li>
									<a href="index.html">Home</a>
								</li>--%>
								<li>
									<a style="color:crimson" href="#" onclick="document.getElementById('id01').style.display='block'">Sign In</a>
								</li>

							</ul>
                             </div>
                        <div id="divsignout" runat="server" style="display:none">
                            <ul class="main_menu">
								 
								 <li><label id="ousername" style="display:none" runat="server">?</label></li>
                                <li> <a style="color:crimson" href="capturedata.aspx">Capture Data</a></li>
								
                                 <li> <a style="color:crimson" href="#">Analytics</a></li>
								
                                <li> <a style="color:crimson" id="signoff" runat="server"  onserverclick="signoff_click" href="#">Sign Off</a></li>
								

							</ul>
                        </div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>


	<!-- Slide1 -->
	<section class="section-slide">
		<div class="wrap-slick1">
			<div class="slick1">
				<div class="item-slick1 item1-slick1" style="background-image: url(images/ptdf-header1.jpg);">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
					
                <span class="caption1-slide1 tit1 t-center animated visible-false m-b-15" style="color:darkgreen" data-appear="rollIn"> <%--fadeInDown--%>
							PTDF
						</span>

						<h2 class="caption2-slide1 txt1 t-center animated visible-false m-b-37" style="color:black" data-appear="rotateInUpRight"> <%--fadeInUp--%>
							STEM Programme
						</h2>

						<div class="wrap-btn-slide1 animated visible-false" data-appear="rotateIn">
							<!-- Button1 -->
							<a href="mapstatistics.aspx" class="btn1 flex-c-m size1 txt3 trans-0-4" style="background-color:crimson;color:white; width:220px">
							check school stats
							</a>
						</div>

					</div>
				</div>




			</div>

		<%--	<div class="wrap-slick1-dots"></div>--%>
		</div>
	</section>

	

	<!-- Event -->
	<section class="section-event">
		<div class="wrap-slick2">
			<div class="slick2">
				<div class="item-slick2 item1-slick2" style="background-image: url(images/banner.jpg);">
					<div class="wrap-content-slide2 p-t-115 p-b-208">
						<div class="container">
							<!-- - -->
							<div class="title-event t-center m-b-52">
								<span class="tit2 p-l-15 p-r-15">
									About
								</span>

								<h4 class="tit2 t-center p-l-15 p-r-15 p-t-3">
									PTDF STEM Programme
								</h4>
							</div>

							<!-- Block2 -->
							<div class="blo2 flex-w flex-str flex-col-c-m-lg animated visible-false" data-appear="zoomIn">
								<!-- Pic block2 -->
								<a href="#" class="wrap-pic-blo2 bg1-blo2" style="background-image: url(images/banner.jpg);">
									<div class="time-event size10 txt6 effect1">
										<span class="txt-effect1 flex-c-m t-center">
											PTDF Stem
										</span>
									</div>
								</a>

								<!-- Text block2 -->
								<div class="wrap-text-blo2 flex-col-c-m p-l-40 p-r-40 p-t-45 p-b-30">
									<h4 class="tit7 t-center m-b-10">
										About PTDF STEM Programme
									</h4>

									<p class="t-center">
							            It is an all-inclusive Science, Technology, Engineering and  Mathematics (STEM) program at Senior Secondary School level in Nigeria that is aimed at building the capacity of science teachers to effectively deliver STEM education as well as to also provide a stimulating environment for the teaching and learning of science subjects.
									</p>

			
									<a href="#" class="txt4 m-t-40">
										View Details
										<i class="fa fa-long-arrow-right m-l-10" aria-hidden="true"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick2 item2-slick2" style="background-image: url(images/banner.jpg);">
					<div class="wrap-content-slide2 p-t-115 p-b-208">
						<div class="container">
							<!-- - -->
							<div class="title-event t-center m-b-52">
								<span class="tit2 p-l-15 p-r-15">
									About
								</span>

								<h4 class="tit2 t-center p-l-15 p-r-15 p-t-3">
									PTDF STEM Programme
								</h4>
							</div>

							<!-- Block2 -->
							<div class="blo2 flex-w flex-str flex-col-c-m-lg animated visible-false" data-appear="fadeInDown">
								<!-- Pic block2 -->
								<a href="#" class="wrap-pic-blo2 bg2-blo2" style="background-image: url(images/banner.jpg);">
									<div class="time-event size10 txt6 effect1">
										<span class="txt-effect1 flex-c-m">
											PTDF Stem
										</span>
									</div>
								</a>

								<!-- Text block2 -->
								<div class="wrap-text-blo2 flex-col-c-m p-l-40 p-r-40 p-t-45 p-b-30">
									<h4 class="tit7 t-center m-b-10">
										Programme scope
									</h4>

									<p class="t-center">
										One Thousand  (1000) secondary schools across the nation, including the one hundred and four Federal Government owned Unity Schools. 
									</p>

									<div class="flex-sa-m flex-w w-full m-t-40">
										<div class="size11 flex-col-c-m">
											<span class="dis-block t-center txt7 m-b-2 ">
												104
											</span>

											<span class="dis-block t-center txt8">
												Unity Schools
											</span>
										</div>

										<div class="size11 flex-col-c-m">
											<span class="dis-block t-center txt7 m-b-2">
												774
											</span>

											<span class="dis-block t-center txt8">
												1 in every LGA
											</span>
										</div>

										<div class="size11 flex-col-c-m">
											<span class="dis-block t-center txt7 m-b-2">
												122
											</span>

											<span class="dis-block t-center txt8">
												Other Schools
											</span>
										</div>

									<%--	<div class="size11 flex-col-c-m">
											<span class="dis-block t-center txt7 m-b-2 seconds">
												56
											</span>

											<span class="dis-block t-center txt8">
												Seconds
											</span>
										</div>--%>
									</div>

									<a href="#" class="txt4 m-t-40">
										View Details
										<i class="fa fa-long-arrow-right m-l-10" aria-hidden="true"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick2 item3-slick2" style="background-image: url(images/banner.jpg);">
					<div class="wrap-content-slide2 p-t-115 p-b-208">
						<div class="container">
							<!-- - -->
							<div class="title-event t-center m-b-52">
								<span class="tit2 p-l-15 p-r-15">
									About
								</span>

								<h4 class="tit2 t-center p-l-15 p-r-15 p-t-3">
									PTDF STEM Programme
								</h4>
							</div>

							<!-- Block2 -->
							<div class="blo2 flex-w flex-str flex-col-c-m-lg animated visible-false" data-appear="rotateInUpLeft">
								<!-- Pic block2 -->
								<a href="#" class="wrap-pic-blo2 bg3-blo2" style="background-image: url(images/banner.jpg);">
									<div class="time-event size10 txt6 effect1">
										<span class="txt-effect1 flex-c-m">
											PTDF Stem
										</span>
									</div>
								</a>

								<!-- Text block2 -->
								<div class="wrap-text-blo2 flex-col-c-m p-l-40 p-r-40 p-t-45 p-b-30">
									<h4 class="tit7 t-center m-b-10">
										Programme Objectives  
									</h4>

									<p class="t-center">
                                        <ol>
                                            <li> 1. To ensure the acquisition of general literacy in STEM among Nigerian students </li>
                                            <li> 2. To produce highly skilled and qualified persons for future careers in STEM-based professions in Nigeria </li>
                                        </ol>
									</p>

								<%--	<div class="flex-sa-m flex-w w-full m-t-40">
										<div class="size11 flex-col-c-m">
											<span class="dis-block t-center txt7 m-b-2 days">
												25
											</span>

											<span class="dis-block t-center txt8">
												Days
											</span>
										</div>

										<div class="size11 flex-col-c-m">
											<span class="dis-block t-center txt7 m-b-2 hours">
												12
											</span>

											<span class="dis-block t-center txt8">
												Hours
											</span>
										</div>

										<div class="size11 flex-col-c-m">
											<span class="dis-block t-center txt7 m-b-2 minutes">
												59
											</span>

											<span class="dis-block t-center txt8">
												Minutes
											</span>
										</div>

										<div class="size11 flex-col-c-m">
											<span class="dis-block t-center txt7 m-b-2 seconds">
												56
											</span>

											<span class="dis-block t-center txt8">
												Seconds
											</span>
										</div>
									</div>--%>

									<a href="#" class="txt4 m-t-40">
										View Details
										<i class="fa fa-long-arrow-right m-l-10" aria-hidden="true"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

			<%--<div class="wrap-slick2-dots"></div>--%>
		</div>
	</section>

	



	<!-- Footer -->
	<footer class="bg1">

		<div class="end-footer bg2">
			<div class="container">
				<div class="flex-sb-m flex-w p-t-22 p-b-22">
					<div class="txt17 p-r-20 p-t-5 p-b-5">
						Copyright &copy; 2019 powered by <a href="https://stacklogicsystems.com" target="_blank">StackLogic Systems </a> <a href="https://colorlib.com" target="_blank" style="opacity:0">StackLogic Systems</a>
					</div>
				</div>
			</div>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>




<div id="id01" class="modal">
  
  <form class="modal-content animate" runat="server">
    <div class="imgcontainer">
   <%--   <span onclick="document.getElementById('id01').style.display='none'" class="close" style="z-index:3" title="Close Modal">&times;</span>--%>
      <img src="images/loginlogo.jpg" alt="Sign In" class="avatar"> <br />
     <%--   <div class="login100-form-title" style="background-image: url(images/loginlogo.jpg);">--%>
					<span class="login100-form-title-1">
						Sign In
					</span>
		<%--</div>--%>
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" id="userID" runat="server" placeholder="Enter Username" name="uname" required >

      <label for="psw"><b>Password</b></label>
      <input type="password" id="userPwd" runat="server" placeholder="Enter Password" name="psw"  required>
     
    </div>

    <div class="container" style="background-color:#f1f1f1">
<%--         <button id="btnlogin" OnClick="btnLogin_Click"  OnClientClick="rememberUser()" type="submit" runat="server" class="submitbtn">Login</button>--%>
                <asp:Button ID="btnlogin" style="cursor:pointer" runat="server" OnClick="btnLogin_Click"  OnClientClick="rememberUser()"  class="submitbtn" Text="Log In" />

      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
         <label style="float:right">
        <input type="checkbox" id="user_Remember" checked="checked" name="remember"> Remember me
      </label>
     <%-- <span class="psw">Forgot <a href="#">password?</a></span>--%>
    </div>
  </form>
</div>

    <script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

<!--===============================================================================================-->
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="js/popper.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="js/select2.min.js"></script>
<!--===============================================================================================-->
<%--	<script type="text/javascript" src="vendor/daterangepicker/moment.min.js"></script>--%>
	<script type="text/javascript" src="js/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="js/slick.min.js"></script>
	<script type="text/javascript" src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<%--<script type="text/javascript" src="vendor/parallax100/parallax100.js"></script>
	<script type="text/javascript">
        $('.parallax100').parallax100();
	</script>--%>
<!--===============================================================================================-->
<%--	<script type="text/javascript" src="vendor/countdowntime/countdowntime.js"></script>--%>
<!--===============================================================================================-->
	<%--<script type="text/javascript" src="vendor/lightbox2/js/lightbox.min.js"></script>--%>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

      <%--Cookie functions  for remember--%>
    <script>

        function setCookie(cname, cvalue, exdays) {
            var d = new Date();
            d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
            var expires = "expires=" + d.toGMTString();
            document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
        }

        function checkCookie() {
            var useruserId = getCookie("stem_userId");

            if (useruserId != "") {
                document.getElementById("userID").value = useruserId;
                document.getElementById("user_Remember").checked = true;
            }

        }

        function getCookie(cname) {
            var name = cname + "=";
            var decodedCookie = decodeURIComponent(document.cookie);
            var ca = decodedCookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }
    </script>

     <script>
         function rememberUser() {

             var checkBox = document.getElementById("user_Remember");
          
             if (checkBox.checked == true) {
                 setCookie("stem_userId", document.getElementById("userID").value, 365);
             } else {
                 setCookie("stem_userId", "", 365);
             }
        }
    </script>

</body>
</html>

