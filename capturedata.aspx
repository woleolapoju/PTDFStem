<%@ Page Language="C#" AutoEventWireup="true" CodeFile="capturedata.aspx.cs" Inherits="capturedata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>PTDF Stem</title>
<!-- metatags-->
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<%--<link rel="stylesheet" href="css/jquery-ui.css"/>--%>
<%--<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/><!--stylesheet-css-->--%>
<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet"/>
	<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i" rel="stylesheet"/>
    <link rel="icon" type="image/png" href="images/favicon.png"/>
    	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
    	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    	<link rel="stylesheet" type="text/css" href="css/animate.css"/>



<!-- //css files -->

    <style>
     
body {
    background:  url(images/ptdf-header1.jpg) no-repeat;
    background-size: cover;
    font-family: 'PT Sans', sans-serif;
    background-attachment: fixed;
    background-position: center;
}
body a{
	transition:0.5s all;
	-webkit-transition:0.5s all;
	-moz-transition:0.5s all;
	-o-transition:0.5s all;
	-ms-transition:0.5s all;
	font-weight:400;
}
input[type="button"],input[type="submit"],input[type="text"],input[type="email"]{
	transition:0.5s all;
	-webkit-transition:0.5s all;
	-moz-transition:0.5s all;
	-o-transition:0.5s all;
	-ms-transition:0.5s all;
	 font-family: 'PT Sans', sans-serif;
}
h1,h2,h3,h4,h5,h6{
	margin:0;	
	font-weight:400;
	transition:0.5s all;
	-webkit-transition:0.5s all;
	-moz-transition:0.5s all;
	-o-transition:0.5s all;
	-ms-transition:0.5s all;
	
}
.clear {
	clear:both;
}
p{
	margin:0;
}

ul{
	margin:0;
	padding:0;
}

label{
	margin:0;
	
}
textarea{
	
}
img {
    width: 100%;
}
footer{
	
}
footer a {
	
}

/*--/Reset code--*/
h1 {
    font-size: 45px;
    font-weight: 500;
    text-align: center;
    text-transform:capitalize;
    letter-spacing: 3px;
    margin: 40px 0 40px 0;
    color: #fff;
     font-family: 'Josefin Sans', sans-serif;
}
.w3l-main{
	width:45%;
	margin: 0 auto;
}
.w3l-from {
    flex-basis: 300px;
    padding: 3em;
    justify-content: center;
	background: rgba(0, 0, 0, 0.5);

}
label.head {
    font-size: 17px;
    font-weight: 600;
    text-align: left;
    text-transform: capitalize;
    letter-spacing: 2px;
    padding: 2px;
    margin: 2px;
    display: block;
    color: #fff;
}
span.title{
	color: #ca5c93;
}
span.w3l-star {
    font-size: 20px;
    vertical-align: middle;
    color: #d60026;
    line-height: 1;
}
.w3l-user input[type="text"] {
    font-size: 15px;
    font-weight: 500;
    text-align: left;
    text-transform: capitalize;
    letter-spacing: 1px;
    box-sizing: border-box;
    border: none;
    border-bottom: 2px solid #fff;
    padding: 10px;
    width: 100%;
    outline: none;
    margin: 0px auto 10px;
    color: #000000;
}
.w3l-mail input[type="email"] {
    font-size: 15px;
    font-weight: 500;
    text-align: left;
    text-transform: capitalize;
    letter-spacing: 1px;
    box-sizing: border-box;
    border: none;
    padding: 10px;
    width: 100%;
    outline: none;
    margin: 0px auto 10px;
    color:#000000;
}
.w3l-num input[type="text"] {
    font-size: 15px;
    font-weight: 500;
    text-align: left;
    text-transform: capitalize;
    letter-spacing: 1px;
    border: none;
    box-sizing: border-box;
    outline: none;
    padding: 10px;
    width: 100%;
    margin: 0 auto;
    color: #000000;
}
.w3l-date input.date {
    font-size: 15px;
    font-weight: 500;
    text-align: left;
    text-transform: capitalize;
    letter-spacing: 1px;
    border: none;
    box-sizing: border-box;
    outline: none;
    padding: 10px;
    width: 100%;
    margin: 0px auto 11px;
    color: #000000;
}
select.form-control {
	font-size: 15px;
    font-weight: 500;
    text-align: center;
    text-transform: capitalize;
    padding: 10px;
    width: 100%;  
    box-sizing: border-box;
    border: none;
    outline: none;
}
.w3l-options1 .category1 {
    font-size: 15px;
    font-weight: 500;
    text-align: center;
    text-transform: capitalize;
    padding: 10px;
    width: 100%;
    margin: 0 auto 10px;
    box-sizing: border-box;
    border: none;
    outline: none;

}
.w3l-options2 .category2 {
    font-size: 15px;
    font-weight: 500;
    text-align: center;
    text-transform: capitalize;
    padding: 10px;
    width: 100%;
    margin: 0  auto 10px;
    box-sizing: border-box;
    border: none;
    outline: none;
}
ul li {
    list-style-type: none;
    display: inline-block;
    line-height: 1.5;
}
.w3l-num {
    float: left;
    width: 48%;
}
.w3l-date {
    float: left;
    width: 48%;
    margin-left: 4%;
}
.w3l-options1 {
    float: left;
    width: 48%;
}
.w3l-options2 {
    float: right;
    width: 48%;
}
.gender {
    float: left;
    width: 48%;
}
.w3l-sym {
    float: right;
    width: 48%;
    margin-left: 4%;
}
.w3l-sym input[type="text"] {
    font-size: 15px;
    font-weight: 500;
    text-align: left;
    text-transform: capitalize;
    letter-spacing: 1px;
    border: none;
    box-sizing: border-box;
    outline: none;
    padding: 10px;
    width: 100%;
    margin: 0px auto 10px;
    color: #000000;

}
.w3l-right textarea {
    font-size: 15px;
    font-weight: 500;
    text-align: left;
    text-transform: capitalize;
    width: 100%;
    padding: 10px;
    resize: none;
    min-height: 100px;
    border: 1px solid #fff;
    outline: none;
    background: #fff;
    box-sizing: border-box;
 
}
label.w3l-set {
    font-size: 15px;
    font-weight: 500;
    text-align: center;
    text-transform: capitalize;
    padding: 2px;
    color: #3ce0b4;
	cursor: pointer;
}
label.w3l-head2 {
    float: left;
    margin-right: 20px;
    letter-spacing: 1px;
}
.w3l-left1 {
    margin-top: 25px;
}

label.w3l-set2 {
    font-size: 17px;
    text-align: left;
    font-weight: 600;
    text-transform: capitalize;
    letter-spacing: 2px;
    color: #fff;
    display: block;
    margin-bottom: 10px;
}

label.w3l-head2 {
    font-size: 15px;
    text-transform: capitalize;
    text-align: center;
	margin-bottom: 20px;
	color: #3ce0b4;
  
}
.btn input[type="submit"] {
    font-size: 15px;
    font-weight: 500;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 2px;
    padding: 10px;
    width: 120px;  /*50%;*/
    /*margin-left:0px;*/
    margin: 20px auto 0px;
    margin-top:25px;
    box-sizing: border-box;
    border: 1px solid #fff;
    outline: none;
	cursor: pointer;
    display: block;
	color:#fff;
	background:  #cd0a0a; /*rgba(199, 65, 132, 0);*/

}
.btn input[type="submit"]:hover{
	background-color: #005ba4;
	
}
footer {
    font-size: 15px;
    font-weight: 500;
    text-align: center;
    text-transform: capitalize;
    letter-spacing: 1px;
    margin: 20px 0 0 0;
    color: #fff;
    line-height: 1.8em;
}
footer a {
    font-size: 15px;
    font-weight: 600;
	text-transform: capitalize;
    text-decoration: none;
	color: #fff;
}
footer a:hover {
	color: #ffd200;
}
/*-- input-effect --*/
.styled-input.agile-styled-input-top {
    margin-top: 0;
} 
.styled-input input:focus ~ label, .styled-input input:valid ~ label,.styled-input textarea:focus ~ label ,.styled-input textarea:valid ~ label{
    font-size: .9em;
    color: #fff;
    top: -1.5em;
    -webkit-transition: all 0.125s;
	-moz-transition: all 0.125s; 
	-o-transition: all 0.125s;
	-ms-transition: all 0.125s;
    transition: all 0.125s;
}
.styled-input {
	width: 100%;
    position: relative;
    margin: 0 0;
    color: #fff;
}
.w3l-lef1 h3 {
    font-size: 25px;
    color: #ffd200;
    margin: 2em 0 1em;
    font-family: 'Josefin Sans', sans-serif;
}
.styled-input:nth-child(1),.styled-input:nth-child(3){
	margin-left:0;
}
.textarea-grid{
	float:none !important;
	width:100% !important;
	margin-left:0 !important;
}
.styled-input label {
	color: #8c8c8c;
    color: #bfbfbf;
    padding: 0.5em .9em;
    position: absolute;
    top: 0;
    left: 0;
    -webkit-transition: all 0.3s;
    -moz-transition: all 0.3s;
    transition: all 0.3s;
    pointer-events: none;
    font-weight: 400;
    font-size: .9em;
    display: block;
    line-height: 1em;
	color:#fff;
	font-family: 'Poppins', sans-serif;
}
.styled-input input ~ span,.styled-input textarea ~ span {
	display: block;
    width: 0;
    height: 2px;
    background: #fff;
    position: absolute;
    bottom: 0;
    left: 0;
    -webkit-transition: all 0.125s;
    -moz-transition: all 0.125s;
    transition: all 0.125s;
}
.styled-input textarea ~ span { 
    bottom: 5px; 
}
.styled-input input:focus.styled-input textarea:focus { 
	outline: 0; 
} 
.styled-input input:focus ~ span,.styled-input textarea:focus ~ span {
	width: 100%;
	-webkit-transition: all 0.075s;
	-moz-transition: all 0.075s;  
	transition: all 0.075s; 
}
.ui-datepicker .ui-datepicker-prev {
    left: 10px;
    width: 20px;
    height: 20px;
    background: url(../images/img-sp1.png) no-repeat 0px 0px;
    cursor: pointer;
}
.ui-datepicker .ui-datepicker-next {
    right: 10px;
    width: 20px;
    height: 20px;
    background: url(../images/img-sp.png) no-repeat 0px 0px;
    cursor: pointer;
} 
.ui-datepicker table {
	    background-color: #005ba4 !important;
}
/*-- //input-effect --*/


/*--responsive--*/
@media(max-width:1920px){

}
@media(max-width:1680px){
	
}
@media(max-width:1600px){

}
@media(max-width:1440px){
	
}
@media(max-width:1366px){
	.w3l-main {
		width: 55%;
	}
}
@media(max-width:1280px){
	.w3l-main {
		width: 55%;
	}
	label.head {
		letter-spacing: 1px;
	}
}
@media(max-width:1080px){
	.w3l-main {
		width: 60%;
	}
}
@media(max-width:1050px){
	.w3l-main {
		width: 60%;
	}
}
@media(max-width:1024px){

}
@media(max-width:991px){
	  .w3l-from{
		padding: 2em;
	}
}
@media(max-width:900px){
	h1{
		font-size: 40px;
	}
}
@media(max-width:800px){
	.w3l-main {
		width: 70%;
	}
}
@media(max-width:768px){
	    .w3l-from{
		padding: 2em;
	}		
}
@media(max-width:736px){
	
}
@media(max-width:667px){
	.w3l-main {
		width: 80%;
	}
	.w3l-from {
        padding: 2em
	}
	h1{
		letter-spacing: 2px;
	}
	.btn input[type="submit"]{
		width: 60%;
	}
}
@media(max-width:640px){
	.w3l-main {
		width: 90%;
	}
	h1{
		letter-spacing: 1px;
	}
	footer {
		letter-spacing: 0px;
	}
}
@media(max-width:600px){
	h1{
		font-size: 35px;
	}
	.w3l-from {
		padding: 2em;
	}
	footer{
		font-size: 14px;
	}
	footer a {
		font-size: 14px;
	}
}
@media(max-width:568px){
	.w3l-from{
		padding: 2em;
	}
	label.head {
		letter-spacing: 0px;
	}
	.w3l-lef1 h3 {
    font-size: 22px;
    margin: 1em 0 0.5em;
	}
}
@media(max-width:480px){
	h1 {
		font-size: 30px;
		line-height: 44px;
	}
	.w3l-from{
		padding: 1em;
	}
	.w3l-num {
		width: 100%;
	}
	.w3l-date {
		width: 100%;
		margin: 0;
	}
	.w3l-options1 .category1{
		margin: 0 auto 30px;
	}
	.w3l-options1 {
		width: 100%;
	}
	.w3l-options2 {
		float: right;
		width: 100%;
	}
	.gender {
		float: left;
		width: 100%;
	}
	.w3l-sym {
		width: 100%;
    }
	.btn input[type="submit"]{
		width: 70%;
	}
}
@media(max-width:414px){
	.w3l-from{
		padding: 1em;
	}
	.w3l-main {
		width: 95%;
	}
	h1 {
		font-size: 28px;
	}
	.btn input[type="submit"] {
        width: 100%;
	}
}
@media(max-width:384px){
	.w3l-from{
		padding: 1em;
	}
	h1{
		font-size: 26px;
	}
	.w3l-options1 {
		float: left;
		width: 100%;
	}
	.w3l-options2 {
		float: right;
		width: 100%;								
	}						
	.gender {
		float: left;
		width: 100%;
	}
	.w3l-sym {
		float: right;
		width: 100%;
		margin-left: 0%;
	}
	
}
@media(max-width:375px){
	.w3l-from{
		padding: 1em;
	}
	.w3l-lef1 h3 {
    font-size: 20px;
}
}
@media(max-width:320px){
	.w3l-from{
		padding: 1em;
	}
	h1 {
    line-height: 36px;
}
.w3l-lef1 h3 {
    font-size: 18px;
}
}
/*--/responsive--*/
    </style>

    <style>
        /*! jQuery UI - v1.9.2 - 2012-11-23
* http://jqueryui.com
* Includes: jquery.ui.core.css, jquery.ui.accordion.css, jquery.ui.autocomplete.css, jquery.ui.button.css, jquery.ui.datepicker.css, jquery.ui.dialog.css, jquery.ui.menu.css, jquery.ui.progressbar.css, jquery.ui.resizable.css, jquery.ui.selectable.css, jquery.ui.slider.css, jquery.ui.spinner.css, jquery.ui.tabs.css, jquery.ui.tooltip.css, jquery.ui.theme.css
* Copyright 2012 jQuery Foundation and other contributors; Licensed MIT */

/* Layout helpers
----------------------------------*/
.ui-helper-hidden { display: none; }
.ui-helper-hidden-accessible { border: 0; clip: rect(0 0 0 0); height: 1px; margin: -1px; overflow: hidden; padding: 0; position: absolute; width: 1px; }
.ui-helper-reset { margin: 0; padding: 0; border: 0; outline: 0; line-height: 1.3; text-decoration: none; font-size: 100%; list-style: none; }
.ui-helper-clearfix:before, .ui-helper-clearfix:after { content: ""; display: table; }
.ui-helper-clearfix:after { clear: both; }
.ui-helper-clearfix { zoom: 1; }
.ui-helper-zfix { width: 100%; height: 100%; top: 0; left: 0; position: absolute; opacity: 0; filter:Alpha(Opacity=0); }

/*----*/
#ui-datepicker-div {
  background:#A9A9A9;
}
}
.ui-datepicker-title span{
	color: #EEE;
	font-size: 1.2em;
}
/* Interaction Cues
----------------------------------*/
.ui-state-disabled { cursor: default !important; }


/* Icons
----------------------------------*/

/* states and images */
.ui-icon { display: block; text-indent: -99999px; overflow: hidden; background-repeat: no-repeat; }


/* Misc visuals
----------------------------------*/

/* Overlays */
.ui-widget-overlay { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }

.ui-accordion .ui-accordion-header { display: block; cursor: pointer; position: relative; margin-top: 2px; padding: .5em .5em .5em .7em; zoom: 1; }
.ui-accordion .ui-accordion-icons { padding-left: 2.2em; }
.ui-accordion .ui-accordion-noicons { padding-left: .7em; }
.ui-accordion .ui-accordion-icons .ui-accordion-icons { padding-left: 2.2em; }
.ui-accordion .ui-accordion-header .ui-accordion-header-icon { position: absolute; left: .5em; top: 50%; margin-top: -8px; }
.ui-accordion .ui-accordion-content { padding: 1em 2.2em; border-top: 0; overflow: auto; zoom: 1; }

.ui-autocomplete {
	position: absolute;
	top: 0;
	left: 0;
	cursor: default;
}

/* workarounds */
* html .ui-autocomplete { width:1px; } /* without this, the menu expands to 100% in IE6 */

.ui-button { display: inline-block; position: relative; padding: 0; margin-right: .1em; cursor: pointer; text-align: center; zoom: 1; overflow: visible; } /* the overflow property removes extra width in IE */
.ui-button, .ui-button:link, .ui-button:visited, .ui-button:hover, .ui-button:active { text-decoration: none; }
.ui-button-icon-only { width: 2.2em; } /* to make room for the icon, a width needs to be set here */
button.ui-button-icon-only { width: 2.4em; } /* button elements seem to need a little more width */
.ui-button-icons-only { width: 3.4em; } 
button.ui-button-icons-only { width: 3.7em; } 

/*button text element */
.ui-button .ui-button-text { display: block; line-height: 1.4;  }
.ui-button-text-only .ui-button-text { padding: .4em 1em; }
.ui-button-icon-only .ui-button-text, .ui-button-icons-only .ui-button-text { padding: .4em; text-indent: -9999999px; }
.ui-button-text-icon-primary .ui-button-text, .ui-button-text-icons .ui-button-text { padding: .4em 1em .4em 2.1em; }
.ui-button-text-icon-secondary .ui-button-text, .ui-button-text-icons .ui-button-text { padding: .4em 2.1em .4em 1em; }
.ui-button-text-icons .ui-button-text { padding-left: 2.1em; padding-right: 2.1em; }
/* no icon support for input elements, provide padding by default */
input.ui-button { padding: .4em 1em; }

/*button icon element(s) */
.ui-button-icon-only .ui-icon, .ui-button-text-icon-primary .ui-icon, .ui-button-text-icon-secondary .ui-icon, .ui-button-text-icons .ui-icon, .ui-button-icons-only .ui-icon { position: absolute; top: 50%; margin-top: -8px; }
.ui-button-icon-only .ui-icon { left: 50%; margin-left: -8px; }
.ui-button-text-icon-primary .ui-button-icon-primary, .ui-button-text-icons .ui-button-icon-primary, .ui-button-icons-only .ui-button-icon-primary { left: .5em; }
.ui-button-text-icon-secondary .ui-button-icon-secondary, .ui-button-text-icons .ui-button-icon-secondary, .ui-button-icons-only .ui-button-icon-secondary { right: .5em; }
.ui-button-text-icons .ui-button-icon-secondary, .ui-button-icons-only .ui-button-icon-secondary { right: .5em; }

/*button sets*/
.ui-buttonset { margin-right: 7px; }
.ui-buttonset .ui-button { margin-left: 0; margin-right: -.3em; }

/* workarounds */
button.ui-button::-moz-focus-inner { border: 0; padding: 0; } /* reset extra padding in Firefox */

.ui-datepicker {width:20%;
padding: 0 0em 0;
}
.ui-datepicker .ui-datepicker-header {
  position: relative;
  padding: .56em 0;
  text-transform: uppercase;
  background: #3ce0b4;    
	color: #000;
}
.ui-datepicker .ui-datepicker-prev, .ui-datepicker .ui-datepicker-next { position:absolute; top: 14px; width: 1.8em; height: 1.8em; }
.ui-datepicker .ui-datepicker-prev { 
	left: 10px;
    width: 20px;
    height: 20px;
     background:url(../images/img-sp1.png) no-repeat 0px 0px;
    cursor: pointer;
}
.ui-datepicker .ui-datepicker-next {
	right: 10px;
	width: 20px;
    height: 20px;
    background:url(../images/img-sp.png) no-repeat 0px 0px;
    cursor: pointer;
 }
.ui-datepicker .ui-datepicker-prev span, .ui-datepicker .ui-datepicker-next span { display: block; position: absolute; left: 50%; margin-left: -8px; top: 50%; margin-top: -8px;  }
.ui-datepicker .ui-datepicker-title { margin: 0 2.3em;
line-height: 1.8em;
text-align: center;
font-size: 0.8em;
font-weight: normal; 

}
.ui-datepicker .ui-datepicker-title select { font-size:1em; margin:1px 0; }
.ui-datepicker select.ui-datepicker-month-year {width: 100%;}
.ui-datepicker select.ui-datepicker-month, 
.ui-datepicker select.ui-datepicker-year { width: 49%;}
.ui-datepicker table {width: 100%; font-size: .7em; border-collapse: collapse; margin:0 0 .4em; }
.ui-datepicker th { padding: .7em .3em; text-align: center; font-weight: bold; border: 0;  }
.ui-datepicker th span{
	
	color: #FFF;
	font-family: 'Open Sans', sans-serif;
	font-size: 0.9em;
	text-transform: uppercase;
	    border-color: grey;
		    
}
.ui-datepicker td { border: 0; padding: 1px; }
.ui-datepicker td span, .ui-datepicker td a {
	display: block; padding: .6em; text-align: center; text-decoration: none;
	color: #EEE;
	font-family: 'Open Sans', sans-serif;
	font-size: 1.2em;
}
	  
.ui-datepicker .ui-datepicker-buttonpane { background-image: none; margin: .7em 0 0 0; padding:0 .2em; border-left: 0; border-right: 0; border-bottom: 0; }
.ui-datepicker .ui-datepicker-buttonpane button { float: right; margin: .5em .2em .4em; cursor: pointer; padding: .2em .6em .3em .6em; width:auto; overflow:visible; }
.ui-datepicker .ui-datepicker-buttonpane button.ui-datepicker-current { float:left; }

/* with multiple calendars */
.ui-datepicker.ui-datepicker-multi { width:auto; }
.ui-datepicker-multi .ui-datepicker-group { float:left; }
.ui-datepicker-multi .ui-datepicker-group table { width:95%; margin:0 auto .4em; }
.ui-datepicker-multi-2 .ui-datepicker-group { width:50%; }
.ui-datepicker-multi-3 .ui-datepicker-group { width:33.3%; }
.ui-datepicker-multi-4 .ui-datepicker-group { width:25%; }
.ui-datepicker-multi .ui-datepicker-group-last .ui-datepicker-header { border-left-width:0; }
.ui-datepicker-multi .ui-datepicker-group-middle .ui-datepicker-header { border-left-width:0; }
.ui-datepicker-multi .ui-datepicker-buttonpane { clear:left; }
.ui-datepicker-row-break { clear:both; width:100%; font-size:0em; }

/* RTL support */
.ui-datepicker-rtl { direction: rtl; }
.ui-datepicker-rtl .ui-datepicker-prev { right: 2px; left: auto; }
.ui-datepicker-rtl .ui-datepicker-next { left: 2px; right: auto; }
.ui-datepicker-rtl .ui-datepicker-prev:hover { right: 1px; left: auto; }
.ui-datepicker-rtl .ui-datepicker-next:hover { left: 1px; right: auto; }
.ui-datepicker-rtl .ui-datepicker-buttonpane { clear:right; }
.ui-datepicker-rtl .ui-datepicker-buttonpane button { float: left; }
.ui-datepicker-rtl .ui-datepicker-buttonpane button.ui-datepicker-current { float:right; }
.ui-datepicker-rtl .ui-datepicker-group { float:right; }
.ui-datepicker-rtl .ui-datepicker-group-last .ui-datepicker-header { border-right-width:0; border-left-width:1px; }
.ui-datepicker-rtl .ui-datepicker-group-middle .ui-datepicker-header { border-right-width:0; border-left-width:1px; }

/* IE6 IFRAME FIX (taken from datepicker 1.5.3 */
.ui-datepicker-cover {
    position: absolute; /*must have*/
    z-index: -1; /*must have*/
    filter: mask(); /*must have*/
    top: -4px; /*must have*/
    left: -4px; /*must have*/
    width: 200px; /*must have*/
    height: 200px; /*must have*/
}
.ui-dialog { position: absolute; top: 0; left: 0; padding: .2em; width: 300px; overflow: hidden; }
.ui-dialog .ui-dialog-titlebar { padding: .4em 1em; position: relative;  }
.ui-dialog .ui-dialog-title { float: left; margin: .1em 16px .1em 0; }
.ui-dialog .ui-dialog-titlebar-close { position: absolute; right: .3em; top: 50%; width: 19px; margin: -10px 0 0 0; padding: 1px; height: 18px; }
.ui-dialog .ui-dialog-titlebar-close span { display: block; margin: 1px; }
.ui-dialog .ui-dialog-titlebar-close:hover, .ui-dialog .ui-dialog-titlebar-close:focus { padding: 0; }
.ui-dialog .ui-dialog-content { position: relative; border: 0; padding: .5em 1em; background: none; overflow: auto; zoom: 1; }
.ui-dialog .ui-dialog-buttonpane { text-align: left; border-width: 1px 0 0 0; background-image: none; margin: .5em 0 0 0; padding: .3em 1em .5em .4em; }
.ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset { float: right; }
.ui-dialog .ui-dialog-buttonpane button { margin: .5em .4em .5em 0; cursor: pointer; }
.ui-dialog .ui-resizable-se { width: 14px; height: 14px; right: 3px; bottom: 3px; }
.ui-draggable .ui-dialog-titlebar { cursor: move; }

.ui-menu { list-style:none; padding: 2px; margin: 0; display:block; outline: none; }
.ui-menu .ui-menu { margin-top: -3px; position: absolute; }
.ui-menu .ui-menu-item { margin: 0; padding: 0; zoom: 1; width: 100%; }
.ui-menu .ui-menu-divider { margin: 5px -2px 5px -2px; height: 0; font-size: 0; line-height: 0; border-width: 1px 0 0 0; }
.ui-menu .ui-menu-item a { text-decoration: none; display: block; padding: 2px .4em; line-height: 1.5; zoom: 1; font-weight: normal; }
.ui-menu .ui-menu-item a.ui-state-focus,
.ui-menu .ui-menu-item a.ui-state-active { font-weight: normal; margin: -1px; }

.ui-menu .ui-state-disabled { font-weight: normal; margin: .4em 0 .2em; line-height: 1.5; }
.ui-menu .ui-state-disabled a { cursor: default; }

/* icon support */
.ui-menu-icons { position: relative; }
.ui-menu-icons .ui-menu-item a { position: relative; padding-left: 2em; }

/* left-aligned */
.ui-menu .ui-icon { position: absolute; top: .2em; left: .2em; }

/* right-aligned */
.ui-menu .ui-menu-icon { position: static; float: right; }

.ui-progressbar { height:2em; text-align: left; overflow: hidden; }
.ui-progressbar .ui-progressbar-value {margin: -1px; height:100%; }
.ui-resizable { position: relative;}
.ui-resizable-handle { position: absolute;font-size: 0.1px; display: block; }
.ui-resizable-disabled .ui-resizable-handle, .ui-resizable-autohide .ui-resizable-handle { display: none; }
.ui-resizable-n { cursor: n-resize; height: 7px; width: 100%; top: -5px; left: 0; }
.ui-resizable-s { cursor: s-resize; height: 7px; width: 100%; bottom: -5px; left: 0; }
.ui-resizable-e { cursor: e-resize; width: 7px; right: -5px; top: 0; height: 100%; }
.ui-resizable-w { cursor: w-resize; width: 7px; left: -5px; top: 0; height: 100%; }
.ui-resizable-se { cursor: se-resize; width: 12px; height: 12px; right: 1px; bottom: 1px; }
.ui-resizable-sw { cursor: sw-resize; width: 9px; height: 9px; left: -5px; bottom: -5px; }
.ui-resizable-nw { cursor: nw-resize; width: 9px; height: 9px; left: -5px; top: -5px; }
.ui-resizable-ne { cursor: ne-resize; width: 9px; height: 9px; right: -5px; top: -5px;}
.ui-selectable-helper { position: absolute; z-index: 100; border:1px dotted black; }

.ui-slider { position: relative; text-align: left; }
.ui-slider .ui-slider-handle { position: absolute; z-index: 2; width: 1.2em; height: 1.2em; cursor: default; }
.ui-slider .ui-slider-range { position: absolute; z-index: 1; font-size: .7em; display: block; border: 0; background-position: 0 0; }

.ui-slider-horizontal { height: .8em; }
.ui-slider-horizontal .ui-slider-handle { top: -.3em; margin-left: -.6em; }
.ui-slider-horizontal .ui-slider-range { top: 0; height: 100%; }
.ui-slider-horizontal .ui-slider-range-min { left: 0; }
.ui-slider-horizontal .ui-slider-range-max { right: 0; }

.ui-slider-vertical { width: .8em; height: 100px; }
.ui-slider-vertical .ui-slider-handle { left: -.3em; margin-left: 0; margin-bottom: -.6em; }
.ui-slider-vertical .ui-slider-range { left: 0; width: 100%; }
.ui-slider-vertical .ui-slider-range-min { bottom: 0; }
.ui-slider-vertical .ui-slider-range-max { top: 0; }
.ui-spinner { position:relative; display: inline-block; overflow: hidden; padding: 0; vertical-align: middle; }
.ui-spinner-input { border: none; background: none; padding: 0; margin: .2em 0; vertical-align: middle; margin-left: .4em; margin-right: 22px; }
.ui-spinner-button { width: 16px; height: 50%; font-size: .5em; padding: 0; margin: 0; text-align: center; position: absolute; cursor: default; display: block; overflow: hidden; right: 0; }
.ui-spinner a.ui-spinner-button { border-top: none; border-bottom: none; border-right: none; } /* more specificity required here to overide default borders */
.ui-spinner .ui-icon { position: absolute; margin-top: -8px; top: 50%; left: 0; } /* vertical centre icon */
.ui-spinner-up { top: 0; }
.ui-spinner-down { bottom: 0; }

/* TR overrides */
.ui-spinner .ui-icon-triangle-1-s {
	/* need to fix icons sprite */
	background-position:-65px -16px;
}

.ui-tabs { position: relative; padding: .2em; zoom: 1; } /* position: relative prevents IE scroll bug (element with position: relative inside container with overflow: auto appear as "fixed") */
.ui-tabs .ui-tabs-nav { margin: 0; padding: .2em .2em 0; }
.ui-tabs .ui-tabs-nav li { list-style: none; float: left; position: relative; top: 0; margin: 1px .2em 0 0; border-bottom: 0; padding: 0; white-space: nowrap; }
.ui-tabs .ui-tabs-nav li a { float: left; padding: .5em 1em; text-decoration: none; }
.ui-tabs .ui-tabs-nav li.ui-tabs-active { margin-bottom: -1px; padding-bottom: 1px; }
.ui-tabs .ui-tabs-nav li.ui-tabs-active a, .ui-tabs .ui-tabs-nav li.ui-state-disabled a, .ui-tabs .ui-tabs-nav li.ui-tabs-loading a { cursor: text; }
.ui-tabs .ui-tabs-nav li a, .ui-tabs-collapsible .ui-tabs-nav li.ui-tabs-active a { cursor: pointer; } /* first selector in group seems obsolete, but required to overcome bug in Opera applying cursor: text overall if defined elsewhere... */
.ui-tabs .ui-tabs-panel { display: block; border-width: 0; padding: 1em 1.4em; background: none; }

.ui-tooltip {
	padding: 8px;
	position: absolute;
	z-index: 9999;
	max-width: 300px;
	-webkit-box-shadow: 0 0 5px #aaa;
	box-shadow: 0 0 5px #aaa;
}
/* Fades and background-images don't work well together in IE6, drop the image */
* html .ui-tooltip {
	background-image: none;
}
body .ui-tooltip { border-width: 2px; }

/* Component containers
----------------------------------*/
.ui-widget { font-family: Verdana,Arial,sans-serif/*{ffDefault}*/; font-size: 1em/*{fsDefault}*/; }
.ui-widget .ui-widget { font-size: 1em; }
.ui-widget input, .ui-widget select, .ui-widget textarea, .ui-widget button { font-family: Verdana,Arial,sans-serif/*{ffDefault}*/; font-size: 1em; }

/* Interaction states
----------------------------------*/
.ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default { /*{borderColorDefault}*/; background:none/*{bgColorDefault}*//*{bgImgUrlDefault}*/ 50%/*{bgDefaultXPos}*/ 50%/*{bgDefaultYPos}*/ repeat-x/*{bgDefaultRepeat}*/; font-weight: normal/*{fwDefault}*/; color: #fff/*{fcDefault}*/; }
.ui-state-default a, .ui-state-default a:link, .ui-state-default a:visited { color: #fff/*{fcDefault}*/; text-decoration: none; }
.ui-state-hover a, .ui-state-hover a:hover, .ui-state-hover a:link, .ui-state-hover a:visited { color: #212121/*{fcHover}*/; text-decoration: none; }
.ui-state-active, .ui-widget-content .ui-state-active, .ui-widget-header .ui-state-active { border: 1px solid #aaaaaa/*{borderColorActive}*/; background: #ffffff/*{bgColorActive}*/ url(ui-bg_glass_65_ffffff_1x400.png)/*{bgImgUrlActive}*/ 50%/*{bgActiveXPos}*/ 50%/*{bgActiveYPos}*/ repeat-x/*{bgActiveRepeat}*/; font-weight: normal/*{fwDefault}*/; color: #212121/*{fcActive}*/; }
.ui-state-active a, .ui-state-active a:link, .ui-state-active a:visited { color: #212121/*{fcActive}*/; text-decoration: none; }

/* Interaction Cues
----------------------------------*/
.ui-state-highlight, .ui-widget-content .ui-state-highlight, .ui-widget-header .ui-state-highlight  {
	border: 1px solid #ffffff;/*{borderColorHighlight}*/; 
	 
	}
.ui-state-highlight a, .ui-widget-content .ui-state-highlight a,.ui-widget-header .ui-state-highlight a { color: #363636/*{fcHighlight}*/; }
.ui-state-error, .ui-widget-content .ui-state-error, .ui-widget-header .ui-state-error {border: 1px solid #cd0a0a/*{borderColorError}*/; background: #fef1ec/*{bgColorError}*/ url(ui-bg_glass_95_fef1ec_1x400.png)/*{bgImgUrlError}*/ 50%/*{bgErrorXPos}*/ 50%/*{bgErrorYPos}*/ repeat-x/*{bgErrorRepeat}*/; color: #cd0a0a/*{fcError}*/; }
.ui-state-error a, .ui-widget-content .ui-state-error a, .ui-widget-header .ui-state-error a { color: #cd0a0a/*{fcError}*/; }
.ui-state-error-text, .ui-widget-content .ui-state-error-text, .ui-widget-header .ui-state-error-text { color: #cd0a0a/*{fcError}*/; }
.ui-priority-primary, .ui-widget-content .ui-priority-primary, .ui-widget-header .ui-priority-primary { font-weight: bold; }
.ui-priority-secondary, .ui-widget-content .ui-priority-secondary,  .ui-widget-header .ui-priority-secondary { opacity: .7; filter:Alpha(Opacity=70); font-weight: normal; }
.ui-state-disabled, .ui-widget-content .ui-state-disabled, .ui-widget-header .ui-state-disabled { opacity: .35; filter:Alpha(Opacity=35); background-image: none; }
.ui-state-disabled .ui-icon { filter:Alpha(Opacity=35); } /* For IE8 - See #6059 */

/* Icons
----------------------------------*/

/* states and images */
.ui-icon.ui-icon-circle-triangle-w {
	
}

/* positioning */
.ui-icon-carat-1-n { background-position: 0 0; }
.ui-icon-carat-1-ne { background-position: -16px 0; }
.ui-icon-carat-1-e { background-position: -32px 0; }
.ui-icon-carat-1-se { background-position: -48px 0; }
.ui-icon-carat-1-s { background-position: -64px 0; }
.ui-icon-carat-1-sw { background-position: -80px 0; }
.ui-icon-carat-1-w { background-position: -96px 0; }
.ui-icon-carat-1-nw { background-position: -112px 0; }
.ui-icon-carat-2-n-s { background-position: -128px 0; }
.ui-icon-carat-2-e-w { background-position: -144px 0; }
.ui-icon-triangle-1-n { background-position: 0 -16px; }
.ui-icon-triangle-1-ne { background-position: -16px -16px; }
.ui-icon-triangle-1-e { background-position: -32px -16px; }
.ui-icon-triangle-1-se { background-position: -48px -16px; }
.ui-icon-triangle-1-s { background-position: -64px -16px; }
.ui-icon-triangle-1-sw { background-position: -80px -16px; }
.ui-icon-triangle-1-w { background-position: -96px -16px; }
.ui-icon-triangle-1-nw { background-position: -112px -16px; }
.ui-icon-triangle-2-n-s { background-position: -128px -16px; }
.ui-icon-triangle-2-e-w { background-position: -144px -16px; }
.ui-icon-arrow-1-n { background-position: 0 -32px; }
.ui-icon-arrow-1-ne { background-position: -16px -32px; }
.ui-icon-arrow-1-e { background-position: -32px -32px; }
.ui-icon-arrow-1-se { background-position: -48px -32px; }
.ui-icon-arrow-1-s { background-position: -64px -32px; }
.ui-icon-arrow-1-sw { background-position: -80px -32px; }
.ui-icon-arrow-1-w { background-position: -96px -32px; }
.ui-icon-arrow-1-nw { background-position: -112px -32px; }
.ui-icon-arrow-2-n-s { background-position: -128px -32px; }
.ui-icon-arrow-2-ne-sw { background-position: -144px -32px; }
.ui-icon-arrow-2-e-w { background-position: -160px -32px; }
.ui-icon-arrow-2-se-nw { background-position: -176px -32px; }
.ui-icon-arrowstop-1-n { background-position: -192px -32px; }
.ui-icon-arrowstop-1-e { background-position: -208px -32px; }
.ui-icon-arrowstop-1-s { background-position: -224px -32px; }
.ui-icon-arrowstop-1-w { background-position: -240px -32px; }
.ui-icon-arrowthick-1-n { background-position: 0 -48px; }
.ui-icon-arrowthick-1-ne { background-position: -16px -48px; }
.ui-icon-arrowthick-1-e { background-position: -32px -48px; }
.ui-icon-arrowthick-1-se { background-position: -48px -48px; }
.ui-icon-arrowthick-1-s { background-position: -64px -48px; }
.ui-icon-arrowthick-1-sw { background-position: -80px -48px; }
.ui-icon-arrowthick-1-w { background-position: -96px -48px; }
.ui-icon-arrowthick-1-nw { background-position: -112px -48px; }
.ui-icon-arrowthick-2-n-s { background-position: -128px -48px; }
.ui-icon-arrowthick-2-ne-sw { background-position: -144px -48px; }
.ui-icon-arrowthick-2-e-w { background-position: -160px -48px; }
.ui-icon-arrowthick-2-se-nw { background-position: -176px -48px; }
.ui-icon-arrowthickstop-1-n { background-position: -192px -48px; }
.ui-icon-arrowthickstop-1-e { background-position: -208px -48px; }
.ui-icon-arrowthickstop-1-s { background-position: -224px -48px; }
.ui-icon-arrowthickstop-1-w { background-position: -240px -48px; }
.ui-icon-arrowreturnthick-1-w { background-position: 0 -64px; }
.ui-icon-arrowreturnthick-1-n { background-position: -16px -64px; }
.ui-icon-arrowreturnthick-1-e { background-position: -32px -64px; }
.ui-icon-arrowreturnthick-1-s { background-position: -48px -64px; }
.ui-icon-arrowreturn-1-w { background-position: -64px -64px; }
.ui-icon-arrowreturn-1-n { background-position: -80px -64px; }
.ui-icon-arrowreturn-1-e { background-position: -96px -64px; }
.ui-icon-arrowreturn-1-s { background-position: -112px -64px; }
.ui-icon-arrowrefresh-1-w { background-position: -128px -64px; }
.ui-icon-arrowrefresh-1-n { background-position: -144px -64px; }
.ui-icon-arrowrefresh-1-e { background-position: -160px -64px; }
.ui-icon-arrowrefresh-1-s { background-position: -176px -64px; }
.ui-icon-arrow-4 { background-position: 0 -80px; }
.ui-icon-arrow-4-diag { background-position: -16px -80px; }
.ui-icon-extlink { background-position: -32px -80px; }
.ui-icon-newwin { background-position: -48px -80px; }
.ui-icon-refresh { background-position: -64px -80px; }
.ui-icon-shuffle { background-position: -80px -80px; }
.ui-icon-transfer-e-w { background-position: -96px -80px; }
.ui-icon-transferthick-e-w { background-position: -112px -80px; }
.ui-icon-folder-collapsed { background-position: 0 -96px; }
.ui-icon-folder-open { background-position: -16px -96px; }
.ui-icon-document { background-position: -32px -96px; }
.ui-icon-document-b { background-position: -48px -96px; }
.ui-icon-note { background-position: -64px -96px; }
.ui-icon-mail-closed { background-position: -80px -96px; }
.ui-icon-mail-open { background-position: -96px -96px; }
.ui-icon-suitcase { background-position: -112px -96px; }
.ui-icon-comment { background-position: -128px -96px; }
.ui-icon-person { background-position: -144px -96px; }
.ui-icon-print { background-position: -160px -96px; }
.ui-icon-trash { background-position: -176px -96px; }
.ui-icon-locked { background-position: -192px -96px; }
.ui-icon-unlocked { background-position: -208px -96px; }
.ui-icon-bookmark { background-position: -224px -96px; }
.ui-icon-tag { background-position: -240px -96px; }
.ui-icon-home { background-position: 0 -112px; }
.ui-icon-flag { background-position: -16px -112px; }
.ui-icon-calendar { background-position: -32px -112px; }
.ui-icon-cart { background-position: -48px -112px; }
.ui-icon-pencil { background-position: -64px -112px; }
.ui-icon-clock { background-position: -80px -112px; }
.ui-icon-disk { background-position: -96px -112px; }
.ui-icon-calculator { background-position: -112px -112px; }
.ui-icon-zoomin { background-position: -128px -112px; }
.ui-icon-zoomout { background-position: -144px -112px; }
.ui-icon-search { background-position: -160px -112px; }
.ui-icon-wrench { background-position: -176px -112px; }
.ui-icon-gear { background-position: -192px -112px; }
.ui-icon-heart { background-position: -208px -112px; }
.ui-icon-star { background-position: -224px -112px; }
.ui-icon-link { background-position: -240px -112px; }
.ui-icon-cancel { background-position: 0 -128px; }
.ui-icon-plus { background-position: -16px -128px; }
.ui-icon-plusthick { background-position: -32px -128px; }
.ui-icon-minus { background-position: -48px -128px; }
.ui-icon-minusthick { background-position: -64px -128px; }
.ui-icon-close { background-position: -80px -128px; }
.ui-icon-closethick { background-position: -96px -128px; }
.ui-icon-key { background-position: -112px -128px; }
.ui-icon-lightbulb { background-position: -128px -128px; }
.ui-icon-scissors { background-position: -144px -128px; }
.ui-icon-clipboard { background-position: -160px -128px; }
.ui-icon-copy { background-position: -176px -128px; }
.ui-icon-contact { background-position: -192px -128px; }
.ui-icon-image { background-position: -208px -128px; }
.ui-icon-video { background-position: -224px -128px; }
.ui-icon-script { background-position: -240px -128px; }
.ui-icon-alert { background-position: 0 -144px; }
.ui-icon-info { background-position: -16px -144px; }
.ui-icon-notice { background-position: -32px -144px; }
.ui-icon-help { background-position: -48px -144px; }
.ui-icon-check { background-position: -64px -144px; }
.ui-icon-bullet { background-position: -80px -144px; }
.ui-icon-radio-on { background-position: -96px -144px; }
.ui-icon-radio-off { background-position: -112px -144px; }
.ui-icon-pin-w { background-position: -128px -144px; }
.ui-icon-pin-s { background-position: -144px -144px; }
.ui-icon-play { background-position: 0 -160px; }
.ui-icon-pause { background-position: -16px -160px; }
.ui-icon-seek-next { background-position: -32px -160px; }
.ui-icon-seek-prev { background-position: -48px -160px; }
.ui-icon-seek-end { background-position: -64px -160px; }
.ui-icon-seek-start { background-position: -80px -160px; }
/* ui-icon-seek-first is deprecated, use ui-icon-seek-start instead */
.ui-icon-seek-first { background-position: -80px -160px; }
.ui-icon-stop { background-position: -96px -160px; }
.ui-icon-eject { background-position: -112px -160px; }
.ui-icon-volume-off { background-position: -128px -160px; }
.ui-icon-volume-on { background-position: -144px -160px; }
.ui-icon-power { background-position: 0 -176px; }
.ui-icon-signal-diag { background-position: -16px -176px; }
.ui-icon-signal { background-position: -32px -176px; }
.ui-icon-battery-0 { background-position: -48px -176px; }
.ui-icon-battery-1 { background-position: -64px -176px; }
.ui-icon-battery-2 { background-position: -80px -176px; }
.ui-icon-battery-3 { background-position: -96px -176px; }
.ui-icon-circle-plus { background-position: 0 -192px; }
.ui-icon-circle-minus { background-position: -16px -192px; }
.ui-icon-circle-close { background-position: -32px -192px; }
.ui-icon-circle-triangle-e { background-position: -48px -192px; }
.ui-icon-circle-triangle-s { background-position: -64px -192px; }
.ui-icon-circle-triangle-w { background-position: -80px -192px; }
.ui-icon-circle-triangle-n { background-position: -96px -192px; }
.ui-icon-circle-arrow-e { background-position: -112px -192px; }
.ui-icon-circle-arrow-s { background-position: -128px -192px; }
.ui-icon-circle-arrow-w { background-position: -144px -192px; }
.ui-icon-circle-arrow-n { background-position: -160px -192px; }
.ui-icon-circle-zoomin { background-position: -176px -192px; }
.ui-icon-circle-zoomout { background-position: -192px -192px; }
.ui-icon-circle-check { background-position: -208px -192px; }
.ui-icon-circlesmall-plus { background-position: 0 -208px; }
.ui-icon-circlesmall-minus { background-position: -16px -208px; }
.ui-icon-circlesmall-close { background-position: -32px -208px; }
.ui-icon-squaresmall-plus { background-position: -48px -208px; }
.ui-icon-squaresmall-minus { background-position: -64px -208px; }
.ui-icon-squaresmall-close { background-position: -80px -208px; }
.ui-icon-grip-dotted-vertical { background-position: 0 -224px; }
.ui-icon-grip-dotted-horizontal { background-position: -16px -224px; }
.ui-icon-grip-solid-vertical { background-position: -32px -224px; }
.ui-icon-grip-solid-horizontal { background-position: -48px -224px; }
.ui-icon-gripsmall-diagonal-se { background-position: -64px -224px; }
.ui-icon-grip-diagonal-se { background-position: -80px -224px; }


/* Misc visuals
----------------------------------*/

/* Corner radius */

/* Overlays */
.ui-widget-shadow { margin: -8px/*{offsetTopShadow}*/ 0 0 -8px/*{offsetLeftShadow}*/; padding: 8px/*{thicknessShadow}*/; background: #aaaaaa/*{bgColorShadow}*/ url(ui-bg_flat_0_aaaaaa_40x100.png)/*{bgImgUrlShadow}*/ 50%/*{bgShadowXPos}*/ 50%/*{bgShadowYPos}*/ repeat-x/*{bgShadowRepeat}*/; opacity: .3;filter:Alpha(Opacity=30)/*{opacityShadow}*/; -moz-border-radius: 8px/*{cornerRadiusShadow}*/; -khtml-border-radius: 8px/*{cornerRadiusShadow}*/; -webkit-border-radius: 8px/*{cornerRadiusShadow}*/; border-radius: 8px/*{cornerRadiusShadow}*/; }
@media only screen and (max-width: 1440px){
	.ui-datepicker {
		width: 17.3%;
	}
}
@media only screen and (max-width: 1366px){
	.ui-datepicker {
		width:18.2%;
	}
}
@media (max-width: 1280px){
	.ui-datepicker {
		width: 19.5%;
	}
}
@media (max-width: 1080px){
	.ui-datepicker {
		width:23.1%;
	}
}
@media (max-width: 1024px){
	.ui-datepicker {
		width: 24.4%;
	}
}
@media (max-width:991px){
	.ui-datepicker {
		width: 25.4%;
	}
}
@media (max-width: 800px){
	.ui-datepicker {
		width: 31.5%;
	}
}
@media (max-width:768px){
	.ui-datepicker {
		width: 31.7%;
	}
}
@media only screen and (max-width: 768px) and (min-width: 640px) {
	.ui-datepicker .ui-datepicker-header {
		padding: 5px 0;
	}
	.ui-datepicker-title span {
		font-size: 0.85em;
	}
	.ui-datepicker th {
		padding: 2px;
	}
	.ui-datepicker td span, .ui-datepicker td a {
		display: block;
		padding: .1em;
		font-size: 1em;
	}
}
@media (max-width: 736px){
}
@media (max-width: 667px){
	.ui-datepicker {
		width: 28.3%;
	}
}
@media (max-width:640px){
}
@media only screen and (max-width: 640px) and (min-width: 480px) {
	.ui-datepicker .ui-datepicker-header {
		padding: 5px 0;
	}
	.ui-datepicker-title span {
		font-size: 0.85em;
	}
	.ui-datepicker th {
		padding: 2px;
	}
	.ui-datepicker td span, .ui-datepicker td a {
		display: block;
		padding: .1em;
		font-size: 1em;
	}
}
@media (max-width: 600px){
	.ui-datepicker {
		width: 37%;
	}
}
@media (max-width: 568px){
	.ui-datepicker {
		width: 37.2%;
	}
}
@media (max-width:480px){
	.ui-datepicker {
		width:85.3%;
	}
}
@media only screen and (max-width: 480px) and (min-width: 320px) {
	.ui-datepicker .ui-datepicker-header {
		padding: 5px 0;
	}
	.ui-datepicker-title span {
		font-size: 0.85em;
	}
	.ui-datepicker th {
		padding: 4px;
	}
	.ui-datepicker td span, .ui-datepicker td a {
		display: block;
		padding: .4em;
		font-size: 1em;
	}
}
@media (max-width: 414px){
	.ui-datepicker {
		width:74.7%;
	}
	.ui-datepicker .ui-datepicker-prev, .ui-datepicker .ui-datepicker-next {
		top: 10px;
	}
}
@media (max-width:384px){
	.ui-datepicker {
		width:75%;
	}
}
@media (max-width: 375px){
	.ui-datepicker {
		width:74.8%;
	}
}
@media only screen and (max-width: 320px) and (min-width: 240px) {
	.ui-datepicker {
		width:75%;
	}
}
    </style>

    	<div class="wrap-menu-header gradient1 trans-0-4">
			<div class="container h-full">
				<div class="wrap_header trans-0-3">
					<!-- Logo -->
					<div class="logo">
						<a  href="index.html" style="display:none">
							<img  src="images/logo.png" alt="IMG-LOGO" data-logofixed="images/logo.png">
                             School information register
						</a>
                     <div class="social flex-w flex-l-m p-r-20">
					<%--	<a href="#"><i class="fa fa-facebook m-l-21" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter m-l-21" aria-hidden="true"></i></a>--%>
                     <%-- <h4>  Intervention School register </h4>--%>
					</div>
					</div>

					<!-- Menu -->
				
					<div class="social flex-w flex-l-m p-r-20">
					<nav class="menu">
                      	<ul class="main_menu">
								<li>
									<a href="default.aspx">Home</a>
								</li>

							</ul>
                         
						</nav>
					</div>
				</div>
			</div>
		</div>

</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="" >
<%--	<h2>PTDF Stem</h2>--%>
<div class="w3l-main">
	<div class="w3l-from">
            <h4 style="color:white">  Intervention School Register </h4>
		<form runat="server">	
			<div class="w3l-user">
				<label class="head">School Name<span class="w3l-star"> * </span></label>
				<input type="text" id="schname" runat="server" name="School Name" placeholder="" required=""/>
			</div>

<%--			<div class="w3l-mail">
				<label class="head">Address<span class="w3l-star"> * </span></label>
				<input type="email" name="email" placeholder="" required="">
			</div>--%>
			<div class="clear"></div>

			<div class="w3l-details1">
			<div  class="w3l-right">
				<label class="head">Address</label>
				<%--<input type="text" name="Address" placeholder="" required="">--%>

					<textarea id="schadd"  rows="2" runat="server"></textarea>
			</div>
			<div class="clear"></div>
			<div class="w3l-options2" style="float:left">
				<label class="head">State<span class="w3l-star"> * </span></label>	
                <asp:DropDownList onchange="myFunction()"  class="category2" ID="cbostate" style="background-color:white" CausesValidation="false"  OnSelectedIndexChanged="cbostate_SelectedIndexChanged" OnTextChanged="cbostate_TextChanged" AutoPostBack="true" EnableViewState="true"  runat="server">
                                         </asp:DropDownList>
    
                <script>
                    function myFunction() {
                        //alert(document.getElementById("schname").value);
                        document.getElementById("schname").removeAttribute("required")
                        document.getElementById("schadd").removeAttribute("required")
                        document.getElementById("btnSample").click();
                        document.getElementById("schname").setAttribute("required", true);
                        document.getElementById("schadd").setAttribute("required", true);
}
</script>

                  <asp:Button runat="server" ID="btnSample" Text="" style="display:none;" OnClick="btnSample_Click" />

               		</div>
			<div class="w3l-options2">
			<label class="head">LGA<span class="w3l-star"> * </span></label>	
				<select class="category2"  id="cboLGA" runat="server" required="">
						
					</select>
			</div>
				<div class="clear"></div>
			<div class="w3l-options2" style="float:left;margin-top:0px">
				<label class="head">Region</label>	
					<select class="category2" id="cboregion" runat="server" required="">
						<option value="NORTH EAST">NORTH EAST</option>
						<option value="NORTH CENTRAL">NORTH CENTRAL</option>
						<option value="NORTH WEST">NORTH WEST</option>
						<option value="SOUTH WEST">SOUTH WEST</option>
						<option value="SOUTH EAST">SOUTH EAST</option>
						<option value="SOUTH SOUTH">SOUTH SOUTH</option>
					</select>
			</div>

                <div class="w3l-options2" style="margin-top:0px" >
				<label class="head">Category</label>	
					<select class="category2" id="cboCategory" runat="server" required="">
						<option value="Unity School">Unity School</option>
						<option value="LGA School">LGA School</option>
						<option value="Other School">Other School</option>
					</select>
			</div>
		 <div class="w3l-rem">
                <div class="btn" style="margin:0px">
			<%--		<input type="submit" name="submit" value="Save"/>--%>
                    <asp:Button ID="cmdSave" OnClick="cmdSave_Click" runat="server" Text="Save" />
				</div>
             </div>
			</div>
			
         <%--   <div class="w3l-rem">--%>

				


			<%--</div>--%>
           
     <%--      
			<div class="clear"></div>--%>
		
		
			<%--<div class="clear"></div>--%>
		</form>
	</div>
</div>
	<%--<footer>&copy; 2018 Sports Camp Registration Form. All Rights Reserved | Design by <a href="http://w3layouts.com/"> W3layouts</a>--%>
	<%--</footer>--%>
	<!-- Default-JavaScript --> 
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

 <script type="text/javascript">    
             window.history.forward();
             function noBack() { 
                  window.history.forward(); 
             }
        </script>

</body>
</html>
