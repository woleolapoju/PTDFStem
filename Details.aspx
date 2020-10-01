<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

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


</head>
<body class="animsition">

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
                                 <li>
									<a href="mapstatistics.aspx">Back</a>
								</li>
								<li>
									<a href="default.aspx">Home</a>
								</li>
                               
								

							</ul>
                             </div>
                       
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>


   

	<!-- Main menu -->
	<section class="section-mainmenu p-t-110 p-b-70 bg1-pattern">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-lg-6 p-r-35 p-r-15-lg m-l-r-auto">
					<div class="wrap-item-mainmenu p-b-22">
						
						<div class="item-mainmenu m-b-36">
						<div class="content-video t-center p-t-225 p-b-250" id="divImage" runat="server" > <%--style="background-image: url(images/header-menu-01.jpg);"--%>
			<span class="tit4 p-l-15 p-r-15" id="dState" runat="server">
				Discover
			</span>

            <h3 class="tit2 t-center p-l-15 p-r-15 p-t-3">
				Nigeria
			</h3>

		</div>

						</div>

					
					
					</div>

					<%--<div class="wrap-item-mainmenu p-b-22">
						<h3 class="tit-mainmenu tit10 p-b-25">
							Drinks
						</h3>--%>

						<!-- Item mainmenu -->
						<%--<div class="item-mainmenu m-b-36">
							<div class="flex-w flex-b m-b-3">
								<a href="#" class="name-item-mainmenu txt21">
									Vivamus pretium
								</a>

								<div class="line-item-mainmenu bg3-pattern"></div>

								<div class="price-item-mainmenu txt22">
									$29.79
								</div>
							</div>

							<span class="info-item-mainmenu txt23">
								Sed fermentum eros vitae eros
							</span>
						</div>--%>


				<%--	</div>--%>
				</div>

				<div class="col-md-10 col-lg-6 p-l-35 p-l-15-lg m-l-r-auto">
					<div class="wrap-item-mainmenu p-b-22"  id="divUnity" runat="server">
						<h3 class="tit-mainmenu tit10 p-b-25">
							UNITY SCHOOLS
						</h3>

						<!-- Item mainmenu -->
						<%--<div class="item-mainmenu m-b-36">
							<div class="flex-w flex-b m-b-3">
								<a href="#" class="name-item-mainmenu txt21">
									Duis sed aliquet
								</a>

								<div class="line-item-mainmenu bg3-pattern"></div>

								<div class="price-item-mainmenu txt22">
									$31.18
								</div>
							</div>

							<span class="info-item-mainmenu txt23">
								Proin lacinia nisl ut ultricies posuere nulla
							</span>
						</div>--%>

					
					</div>

					<div class="wrap-item-mainmenu p-b-22" id="divLGA" runat="server">
						<h3 class="tit-mainmenu tit10 p-b-25">
							LGA SCHOOLS
						</h3>

						<!-- Item mainmenu -->
						<%--<div class="item-mainmenu m-b-36">
							<div class="flex-w flex-b m-b-3">
								<a href="#" class="name-item-mainmenu txt21">
									tempus aliquet
								</a>

								<div class="line-item-mainmenu bg3-pattern"></div>

								<div class="price-item-mainmenu txt22">
									$9.79
								</div>
							</div>

							<span class="info-item-mainmenu txt23">
								Proin lacinia nisl ut ultricies posuere nulla
							</span>
						</div>--%>

					

					</div>

                    <div class="wrap-item-mainmenu p-b-22" id="divOther" runat="server">
						<h3 class="tit-mainmenu tit10 p-b-25">
							OTHER SCHOOLS
						</h3>

						<!-- Item mainmenu -->
						<%--<div class="item-mainmenu m-b-36">
							<div class="flex-w flex-b m-b-3">
								<a href="#" class="name-item-mainmenu txt21">
									tempus aliquet
								</a>

								<div class="line-item-mainmenu bg3-pattern"></div>

								<div class="price-item-mainmenu txt22">
									$9.79
								</div>
							</div>

							<span class="info-item-mainmenu txt23">
								Proin lacinia nisl ut ultricies posuere nulla
							</span>
						</div>--%>

					

					</div>
				</div>
			</div>
		</div>
	</section>




	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>


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


</body>
</html>
