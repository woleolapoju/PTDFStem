<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mapstatistics.aspx.cs" Inherits="mapstatistics" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 	<title>PTDF Stem</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>

 <%-- --------------------------  The Source of Program---------------------------
    https://mapsvg.com
     https://mapsvg.com/mapsvg/js/mapsvg.min.js FOR THE CSS and JS
  --------------------------------------------------------------------------%>
<link href="/mapsvg/mapsvg.css" rel="stylesheet"/>
<link href="/mapsvg/nanoscroller.css" rel="stylesheet"/>
<script src="/mapsvg/jquery.js"></script>
<script src="/mapsvg/jquery.mousewheel.min.js"></script>
<script src="/mapsvg/jquery.nanoscroller.min.js"></script>
<script src="/mapsvg/mapsvg.min.js"></script>


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
        body {
 background-image: url("images/ptdf-header1.jpg");
 background-repeat: no-repeat;
 background-size:cover;
}
    </style>

</head>
<body>

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

    <!-- Content page -->
	<section>
	

		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9" >
					<div class="p-t-80 p-b-124 bo5-r h-full p-r-50 p-r-0-md bo-none-md" >
						
						<!-- Block4 -->
						<div class="blo4 p-b-63" >
							<div class="pic-blo4 hov-img-zoom bo-rad-10 pos-relative">
								<%--<a href="#">--%>
									<%--<img src="images/blog-06.jpg" alt="IMG-BLOG">--%>
                                    <div id="mapsvg"> </div>
								<%--</a>--%>


								<div class="date-blo4 flex-col-c-m">
									<span class="txt31 m-b-4">
										PTDF
									</span>

									<span class="txt31">
										Stem
									</span>
								</div>

							</div>

							<div class="text-blo4 p-t-33">
								<h4 class="p-b-16">
									<a href="blog-detail.html" class="tit9">Map of Nigeria</a>
								</h4>

								<div class="txt32 flex-w p-b-24">
									<span>
										Showing states
										<span class="m-r-6 m-l-4">|</span>
									</span>

									<span>
										Color shaded by Regions
										<span class="m-r-6 m-l-4">|</span>
									</span>

									<span>
										Tooltip Statistics
										<span class="m-r-6 m-l-4"></span>
									</span>

								
								</div>

								<p>
							           PTDF STEM - is an all-inclusive Science, Technology, Engineering and  Mathematics (STEM) program at Senior Secondary School level in Nigeria that is aimed at building the capacity of science teachers to effectively deliver STEM education as well as to also provide a stimulating environment for the teaching and learning of science subjects.
								</p>

								<a href="#" class="dis-block txt4 m-t-30">
									Continue Reading
									<i class="fa fa-long-arrow-right m-l-10" aria-hidden="true"></i>
								</a>
							</div>
						</div>



                        		<div class="blo4 p-b-63">
							<!-- Archive -->
						<div class="archive" style="float:left">
							<h4 class="txt33 p-b-20 p-t-43">
								Intervention by Region
							</h4>

							<ul>
								<li class="flex-sb-m p-t-8 p-b-8">
									<a href="#" class="txt27">
                                        <asp:Label ID="lblr1" runat="server" Text="Label"></asp:Label>
									</a>

									<span class="txt29">
                                         (<asp:Label ID="lblc1" runat="server" Text="Label"></asp:Label>)
									</span>
								</li>

								<li class="flex-sb-m p-t-8 p-b-8">
									<a href="#" class="txt27">
										 <asp:Label ID="lblr2" runat="server" Text="Label"></asp:Label>
									</a>

									<span class="txt29">
										 (<asp:Label ID="lblc2" runat="server" Text="Label"></asp:Label>)
									</span>
								</li>

								<li class="flex-sb-m p-t-8 p-b-8">
									<a href="#" class="txt27">
										 <asp:Label ID="lblr3" runat="server" Text="Label"></asp:Label>
									</a>

									<span class="txt29">
										 (<asp:Label ID="lblc3" runat="server" Text="Label"></asp:Label>)
									</span>
								</li>

								<li class="flex-sb-m p-t-8 p-b-8">
									<a href="#" class="txt27">
										 <asp:Label ID="lblr4" runat="server" Text="Label"></asp:Label>
									</a>

									<span class="txt29">
										(<asp:Label ID="lblc4" runat="server" Text="Label"></asp:Label>)
									</span>
								</li>

								<li class="flex-sb-m p-t-8 p-b-8">
									<a href="#" class="txt27">
										 <asp:Label ID="lblr5" runat="server" Text="Label"></asp:Label>
									</a>

									<span class="txt29">
										 (<asp:Label ID="lblc5" runat="server" Text="Label"></asp:Label>)
									</span>
								</li>

								<li class="flex-sb-m p-t-8 p-b-8">
									<a href="#" class="txt27">
										 <asp:Label ID="lblr6" runat="server" Text="Label"></asp:Label>
									</a>

									<span class="txt29">
										 (<asp:Label ID="lblc6" runat="server" Text="Label"></asp:Label>)
									</span>
								</li>

								
							</ul>
						</div>
						</div>

						<!-- Block4 -->
					<%--	<div class="blo4 p-b-63">
							<div class="pic-blo4 hov-img-zoom bo-rad-10 pos-relative">
								<a href="blog-detail.html">
									<img src="images/blog-04.jpg" alt="IMG-BLOG">
								</a>

								<div class="date-blo4 flex-col-c-m">
									<span class="txt30 m-b-4">
										16
									</span>

									<span class="txt31">
										Dec, 2018
									</span>
								</div>
							</div>

							<div class="text-blo4 p-t-33">
								<h4 class="p-b-16">
									<a href="blog-detail.html" class="tit9">Style the Wedding Party</a>
								</h4>

								<div class="txt32 flex-w p-b-24">
									<span>
										by Admin
										<span class="m-r-6 m-l-4">|</span>
									</span>

									<span>
										16 December, 2018
										<span class="m-r-6 m-l-4">|</span>
									</span>

									<span>
										Cooking, Food
										<span class="m-r-6 m-l-4">|</span>
									</span>

									<span>
										8 Comments
									</span>
								</div>

								<p>
									Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget dictum tortor. Donec dictum vitae sapien eu varius
								</p>

								<a href="blog-detail.html" class="dis-block txt4 m-t-30">
									Continue Reading
									<i class="fa fa-long-arrow-right m-l-10" aria-hidden="true"></i>
								</a>
							</div>
						</div>--%>

						<!-- Block4 -->
						<%--<div class="blo4 p-b-63">
							<div class="pic-blo4 hov-img-zoom bo-rad-10 pos-relative">
								<a href="blog-detail.html">
									<img src="images/blog-07.jpg" alt="IMG-BLOG">
								</a>

								<div class="date-blo4 flex-col-c-m">
									<span class="txt30 m-b-4">
										15
									</span>

									<span class="txt31">
										Dec, 2018
									</span>
								</div>
							</div>

							<div class="text-blo4 p-t-33">
								<h4 class="p-b-16">
									<a href="blog-detail.html" class="tit9">Best Places for Wine</a>
								</h4>

								<div class="txt32 flex-w p-b-24">
									<span>
										by Admin
										<span class="m-r-6 m-l-4">|</span>
									</span>

									<span>
										15 December, 2018
										<span class="m-r-6 m-l-4">|</span>
									</span>

									<span>
										Cooking, Food
										<span class="m-r-6 m-l-4">|</span>
									</span>

									<span>
										8 Comments
									</span>
								</div>

								<p>
									Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget dictum tortor. Donec dictum vitae sapien eu varius
								</p>

								<a href="blog-detail.html" class="dis-block txt4 m-t-30">
									Continue Reading
									<i class="fa fa-long-arrow-right m-l-10" aria-hidden="true"></i>
								</a>
							</div>
						</div>--%>

						<!-- Block4 -->
					<%--	<div class="blo4 p-b-63">
							<div class="pic-blo4 hov-img-zoom bo-rad-10 pos-relative">
								<a href="blog-detail.html">
									<img src="images/blog-10.jpg" alt="IMG-BLOG">
								</a>

								<div class="date-blo4 flex-col-c-m">
									<span class="txt30 m-b-4">
										12
									</span>

									<span class="txt31">
										Dec, 2018
									</span>
								</div>
							</div>

							<div class="text-blo4 p-t-33">
								<h4 class="p-b-16">
									<a href="blog-detail.html" class="tit9">Best Places for Wine</a>
								</h4>

								<div class="txt32 flex-w p-b-24">
									<span>
										by Admin
										<span class="m-r-6 m-l-4">|</span>
									</span>

									<span>
										12 December, 2018
										<span class="m-r-6 m-l-4">|</span>
									</span>

									<span>
										Cooking, Food
										<span class="m-r-6 m-l-4">|</span>
									</span>

									<span>
										8 Comments
									</span>
								</div>

								<p>
									Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget dictum tortor. Donec dictum vitae sapien eu varius
								</p>

								<a href="blog-detail.html" class="dis-block txt4 m-t-30">
									Continue Reading
									<i class="fa fa-long-arrow-right m-l-10" aria-hidden="true"></i>
								</a>
							</div>
						</div>--%>

						<!-- Pagination -->
						<%--<div class="pagination flex-l-m flex-w m-l--6 p-t-25">
							<a href="#" class="item-pagination flex-c-m trans-0-4 active-pagination">1</a>
							<a href="#" class="item-pagination flex-c-m trans-0-4">2</a>
						</div>--%>
					</div>
				</div>

				<div class="col-md-4 col-lg-3">
					<div class="sidebar2 p-t-80 p-b-80 p-l-20 p-l-0-md p-t-0-md">

						<!-- Categories -->
						<div class="categories">
							<h4 class="txt33 bo5-b p-b-35 p-t-58">
								States + FCT
							</h4>

                                     <ul id="mapsvg-menu-regions"></ul>  

						<%--	<ul>
								<li class="bo5-b p-t-8 p-b-8">
									<a href="#" class="txt27">
										Cooking recipe
									</a>
								</li>

								<li class="bo5-b p-t-8 p-b-8">
									<a href="#" class="txt27">
										Delicious foods
									</a>
								</li>

								<li class="bo5-b p-t-8 p-b-8">
									<a href="#" class="txt27">
										Events Design
									</a>
								</li>

								<li class="bo5-b p-t-8 p-b-8">
									<a href="#" class="txt27">
										Restaurant Place
									</a>
								</li>

								<li class="bo5-b p-t-8 p-b-8">
									<a href="#" class="txt27">
										WordPress
									</a>
								</li>
							</ul>--%>

                    

						</div>

						<!-- Most Popular -->
					<%--	<div class="popular">
							<h4 class="txt33 p-b-35 p-t-58">
								Most popular
							</h4>

							<ul>
								<li class="flex-w m-b-25">
									<div class="size16 bo-rad-10 wrap-pic-w of-hidden m-r-18">
										<a href="#">
											<img src="images/blog-11.jpg" alt="IMG-BLOG">
										</a>
									</div>

									<div class="size28">
										<a href="#" class="dis-block txt28 m-b-8">
											Best Places for Wine
										</a>

										<span class="txt14">
											3 days ago
										</span>
									</div>
								</li>

								<li class="flex-w m-b-25">
									<div class="size16 bo-rad-10 wrap-pic-w of-hidden m-r-18">
										<a href="#">
											<img src="images/blog-12.jpg" alt="IMG-BLOG">
										</a>
									</div>

									<div class="size28">
										<a href="#" class="dis-block txt28 m-b-8">
											Eggs and Cheese
										</a>

										<span class="txt14">
											July 2, 2017
										</span>
									</div>
								</li>

								<li class="flex-w m-b-25">
									<div class="size16 bo-rad-10 wrap-pic-w of-hidden m-r-18">
										<a href="#">
											<img src="images/blog-13.jpg" alt="IMG-BLOG">
										</a>
									</div>

									<div class="size28">
										<a href="#" class="dis-block txt28 m-b-8">
											Style the Wedding Party
										</a>

										<span class="txt14">
											May 28, 2017
										</span>
									</div>
								</li>

								<li class="flex-w m-b-25">
									<div class="size16 bo-rad-10 wrap-pic-w of-hidden m-r-18">
										<a href="#">
											<img src="images/blog-14.jpg" alt="IMG-BLOG">
										</a>
									</div>

									<div class="size28">
										<a href="#" class="dis-block txt28 m-b-8">
											Cooking recipe Delicious
										</a>

										<span class="txt14">
											May 25, 2017
										</span>
									</div>
								</li>

								<li class="flex-w m-b-25">
									<div class="size16 bo-rad-10 wrap-pic-w of-hidden m-r-18">
										<a href="#">
											<img src="images/blog-15.jpg" alt="IMG-BLOG">
										</a>
									</div>

									<div class="size28">
										<a href="#" class="dis-block txt28 m-b-8">
											Pizza is prepared fresh
										</a>

										<span class="txt14">
											May 2, 2017
										</span>
									</div>
								</li>
							</ul>
						</div>--%>


					<%--	<!-- Archive -->
						<div class="archive">
							<h4 class="txt33 p-b-20 p-t-43">
								Intervention by Region
							</h4>

							<ul>
								<li class="flex-sb-m p-t-8 p-b-8">
									<a href="#" class="txt27">
                                        <asp:Label ID="lblr1" runat="server" Text="Label"></asp:Label>
									</a>

									<span class="txt29">
                                         (<asp:Label ID="lblc1" runat="server" Text="Label"></asp:Label>)
									</span>
								</li>

								<li class="flex-sb-m p-t-8 p-b-8">
									<a href="#" class="txt27">
										 <asp:Label ID="lblr2" runat="server" Text="Label"></asp:Label>
									</a>

									<span class="txt29">
										 (<asp:Label ID="lblc2" runat="server" Text="Label"></asp:Label>)
									</span>
								</li>

								<li class="flex-sb-m p-t-8 p-b-8">
									<a href="#" class="txt27">
										 <asp:Label ID="lblr3" runat="server" Text="Label"></asp:Label>
									</a>

									<span class="txt29">
										 (<asp:Label ID="lblc3" runat="server" Text="Label"></asp:Label>)
									</span>
								</li>

								<li class="flex-sb-m p-t-8 p-b-8">
									<a href="#" class="txt27">
										 <asp:Label ID="lblr4" runat="server" Text="Label"></asp:Label>
									</a>

									<span class="txt29">
										(<asp:Label ID="lblc4" runat="server" Text="Label"></asp:Label>)
									</span>
								</li>

								<li class="flex-sb-m p-t-8 p-b-8">
									<a href="#" class="txt27">
										 <asp:Label ID="lblr5" runat="server" Text="Label"></asp:Label>
									</a>

									<span class="txt29">
										 (<asp:Label ID="lblc5" runat="server" Text="Label"></asp:Label>)
									</span>
								</li>

								<li class="flex-sb-m p-t-8 p-b-8">
									<a href="#" class="txt27">
										 <asp:Label ID="lblr6" runat="server" Text="Label"></asp:Label>
									</a>

									<span class="txt29">
										 (<asp:Label ID="lblc6" runat="server" Text="Label"></asp:Label>)
									</span>
								</li>

								
							</ul>
						</div>--%>
					</div>
				</div>
			</div>
		</div>
	</section>
    <form id="form1" runat="server">
    <div  id="divhide" style="display:none" runat="server">


            </div>

<script type="text/javascript">
jQuery(document).ready(function(){
    jQuery("#mapsvg").mapSvg({
        width: 744.24182, height: 599.92847, colors: { baseDefault: "#000000", background: "#eeeeee00", selected: 40, hover: 20, directory: "#fafafa", status: {}, base: "#0b9191", stroke: "#f5efef" }, //base: "#040a38", stroke: "#c23719" }
        regions: {
            'NG-FC': { id: "NG-FC", 'id_no_spaces': "NG-FC", title: "Federal Capital Territory", fill: "#1d4d47", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("abu").value), popover: "FCT, ABUJA", href: "Details.aspx?selectedstate=abu", data: {}, onclick: "determin()" },
            'NG-AB': { id: "NG-AB", 'id_no_spaces': "NG-AB", title: "Abia", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("abi").value), popover: "Abia", href: "Details.aspx?selectedstate=abi", data: {} },
            'NG-AD': { id: "NG-AD", 'id_no_spaces': "NG-AD", title: "Adamawa", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("ada").value), popover: "Adamawa", href: "Details.aspx?selectedstate=ada", data: {} },
            'NG-AK': { id: "NG-AK", 'id_no_spaces': "NG-AK", title: "Akwa Ibom", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("akw").value), popover: "Akwa Ibom", href: "Details.aspx?selectedstate=akw", data: {} },
            'NG-AN': { id: "NG-AN", 'id_no_spaces': "NG-AN", title: "Anambra", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("ana").value), popover: "Anambra", href: "Details.aspx?selectedstate=ana", data: {} },
            'NG-BA': { id: "NG-BA", 'id_no_spaces': "NG-BA", title: "Bauchi", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("bau").value), popover: "Bauchi", href: "Details.aspx?selectedstate=bau", data: {} },
            'NG-BE': { id: "NG-BE", 'id_no_spaces': "NG-BE", title: "Benue", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("ben").value), popover: "Benue", href: "Details.aspx?selectedstate=ben", data: {} },
            'NG-BO': { id: "NG-BO", 'id_no_spaces': "NG-BO", title: "Borno", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("bor").value), popover: "Borno", href: "Details.aspx?selectedstate=bor", data: {} },
            'NG-BY': { id: "NG-BY", 'id_no_spaces': "NG-BY", title: "Bayelsa", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("bay").value), popover: "Bayelsa", href: "Details.aspx?selectedstate=bay", data: {} },
            'NG-CR': { id: "NG-CR", 'id_no_spaces': "NG-CR", title: "Cross River", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("cro").value), popover: "Cross River", href: "Details.aspx?selectedstate=cro", data: {} },
            'NG-DE': { id: "NG-DE", 'id_no_spaces': "NG-DE", title: "Delta", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("del").value), popover: "Delta", href: "Details.aspx?selectedstate=del", data: {} },
            'NG-EB': { id: "NG-EB", 'id_no_spaces': "NG-EB", title: "Ebonyi", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("ebo").value), popover: "Ebonyi", href: "Details.aspx?selectedstate=ebo", data: {} },
            'NG-ED': { id: "NG-ED", 'id_no_spaces': "NG-ED", title: "Edo", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("edo").value), popover: "Edo", href: "Details.aspx?selectedstate=edo", data: {} },
            'NG-EK': { id: "NG-EK", 'id_no_spaces': "NG-EK", title: "Ekiti", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("eki").value), popover: "Ekiti", href: "Details.aspx?selectedstate=eki", data: {} },
            'NG-EN': { id: "NG-EN", 'id_no_spaces': "NG-EN", title: "Enugu", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("enu").value), popover: "Enugu", href: "Details.aspx?selectedstate=enu", data: {} },
            'NG-GO': { id: "NG-GO", 'id_no_spaces': "NG-GO", title: "Gombe", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("gom").value), popover: "Gombe", href: "Details.aspx?selectedstate=gom", data: {} },
            'NG-IM': { id: "NG-IM", 'id_no_spaces': "NG-IM", title: "Imo", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("imo").value), popover: "Imo", href: "Details.aspx?selectedstate=imo", data: {} },
            'NG-JI': { id: "NG-JI", 'id_no_spaces': "NG-JI", title: "Jigawa", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("jig").value), popover: "Jigawa", href: "Details.aspx?selectedstate=jig", data: {} },
            'NG-KD': { id: "NG-KD", 'id_no_spaces': "NG-KD", title: "Kaduna", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("kad").value), popover: "Kaduna", href: "Details.aspx?selectedstate=kad", data: {} },
            'NG-KE': { id: "NG-KE", 'id_no_spaces': "NG-KE", title: "Kebbi", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("keb").value), popover: "Kebbi", href: "Details.aspx?selectedstate=keb", data: {} },
            'NG-KN': { id: "NG-KN", 'id_no_spaces': "NG-KN", title: "Kano", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("kan").value), popover: "Kano", href: "Details.aspx?selectedstate=kan", data: {} },
            'NG-KO': { id: "NG-KO", 'id_no_spaces': "NG-KO", title: "Kogi", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("kog").value), popover: "Kogi", href: "Details.aspx?selectedstate=kog", data: {} },
            'NG-KT': { id: "NG-KT", 'id_no_spaces': "NG-KT", title: "Katsina", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("kat").value), popover: "Katsina", href: "Details.aspx?selectedstate=kat", data: {} },
            'NG-KW': { id: "NG-KW", 'id_no_spaces': "NG-KW", title: "Kwara", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("kwa").value), popover: "Kwara", href: "Details.aspx?selectedstate=kwa", data: {} },
            'NG-LA': { id: "NG-LA", 'id_no_spaces': "NG-LA", title: "Lagos", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("lag").value), popover: "Lagos", href: "Details.aspx?selectedstate=lag", data: {} },
            'NG-NA': { id: "NG-NA", 'id_no_spaces': "NG-NA", title: "Nassarawa", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("nas").value), popover: "Nassarawa", href: "Details.aspx?selectedstate=nas", data: {} },
            'NG-NI': { id: "NG-NI", 'id_no_spaces': "NG-NI", title: "Niger", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("nig").value), popover: "Niger", href: "Details.aspx?selectedstate=nig", data: {} },
            'NG-OG': { id: "NG-OG", 'id_no_spaces': "NG-OG", title: "Ogun", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("ogu").value), popover: "Ogun", href: "Details.aspx?selectedstate=ogu", data: {} },
            'NG-ON': { id: "NG-ON", 'id_no_spaces': "NG-ON", title: "Ondo", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("ond").value), popover: "Ondo", href: "Details.aspx?selectedstate=ond", data: {} },
            'NG-OS': { id: "NG-OS", 'id_no_spaces': "NG-OS", title: "Osun", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("osu").value), popover: "Osun", href: "Details.aspx?selectedstate=osu", data: {} },
            'NG-OY': { id: "NG-OY", 'id_no_spaces': "NG-OY", title: "Oyo", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("oyo").value), popover: "Oyo", href: "Details.aspx?selectedstate=oyo", data: {} },
            'NG-PL': { id: "NG-PL", 'id_no_spaces': "NG-PL", title: "Plateau", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("pla").value), popover: "Plateau", href: "Details.aspx?selectedstate=pla", data: {} },
            'NG-RI': { id: "NG-RI", 'id_no_spaces': "NG-RI", title: "Rivers", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("riv").value), popover: "Rivers", href: "Details.aspx?selectedstate=riv", data: {} },
            'NG-SO': { id: "NG-SO", 'id_no_spaces': "NG-SO", title: "Sokoto", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("sok").value), popover: "Sokoto", href: "Details.aspx?selectedstate=sok", data: {} },
            'NG-TA': { id: "NG-TA", 'id_no_spaces': "NG-TA", title: "Taraba", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("tar").value), popover: "Taraba", href: "Details.aspx?selectedstate=tar", data: {} },
            'NG-YO': { id: "NG-YO", 'id_no_spaces': "NG-YO", title: "Yobe", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("yob").value), popover: "Yobe", href: "Details.aspx?selectedstate=yob", data: {} },
            'NG-ZA': { id: "NG-ZA", 'id_no_spaces': "NG-ZA", title: "Zamfara", tooltip: htmlForTextWithEmbeddedNewlines(document.getElementById("zam").value), popover: "Zamfara", href: "Details.aspx?selectedstate=zam", data: {} }
        }, viewBox: [0, 0, 744.24182, 599.92847], cursor: "pointer", zoom: {on: true,limit: "-100;100",delta: 2,buttons: {on: true,location: "right"},mousewheel: true},popovers: { mode: "off", on: false, priority: "local", position: "top", centerOn: false, width: 300, maxWidth: 50, maxHeight: 50, resetViewboxOnClose: true }, gauge: { on: false, labels: { low: "low", high: "high" }, colors: { lowRGB: { r: 85, g: 0, b: 0, a: 1 }, highRGB: { r: 238, g: 0, b: 0, a: 1 }, low: "#550000", high: "#ee0000", diffRGB: { r: 153, g: 0, b: 0, a: 0 } }, min: 0, max: false }, source: "/mapsvg/nigeria.svg", title: "Nigeria", responsive: "1", menu: {
            on: true, containerId: "mapsvg-menu-regions", template: function (region) {
                return '<li  class="bo5-b p-t-8 p-b-8"><a  class="txt27" href="#' + region.id + '">' + (region.title || region.id) + '</a></li>'
            }
        }
        });
    });



</script>



        <script>
            function htmlForTextWithEmbeddedNewlines(text) {
                var htmls = [];
                var lines = text.split(/\n/);
                var tmpDiv = jQuery(document.createElement('div'));
                for (var i = 0 ; i < lines.length ; i++) {
                    htmls.push(tmpDiv.text(lines[i]).html());
                }
                return htmls.join("<br>");
            }
        </script>



    </form>
</body>
</html>

