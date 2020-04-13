<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!Doctype html>  
<!--[if IE 6 ]><html lang="en-us" class="ie6"> <![endif]-->
<!--[if IE 7 ]><html lang="en-us" class="ie7"> <![endif]-->
<!--[if IE 8 ]><html lang="en-us" class="ie8"> <![endif]-->
<!--[if (gt IE 7)|!(IE)]><!-->
<html lang="ko"><!--<![endif]-->
<head>
	<title>Venue - Documentation</title>
	<c:import url="common/util.jsp"/>
</head>

<body>
	<c:import url="common/header.jsp"/>
    <div class="page-sections">
    
    	<div id="start">
        
        	<div class="title"><h1><i class="glyphicon glyphicon-send"></i> Start</h1></div>
            
            <ul>
            	<li><span class="highlight-color">Created:</span> 12/06/2015</li>
                <li><span class="highlight-color">By:</span> Square Media</li>
            </ul>
            
            <p>Thanks for purchasing Venue Template. If you have any question you can ask through comments. Also you can find a lot of useful information right there. Thanks so much!</p>
        
        </div>
        
        <hr/>
        
        <div id="installing">
        
        	<div class="title"><h1><i class="glyphicon glyphicon-download-alt"></i> Installing The Template</h1></div>
            <p>
            	<h2>Setting the base color scheme</h2>
                <ol>
                	<li>Locate <span class="label label-success">css/colors</span> folder, you have all the colors in there.</li>
                	<li>Choose your color.</li>
                	<li>Open the html files.</li>
                	<li>Go to Line 40 and replace the color name with your chosen color.</li>
            	</ol>
            	<pre>&lt;link rel="stylesheet" type="text/css" href="css/colors/blue.css" media="screen"&gt;</pre>
            <p></p>
            <p>
            	<h2>Setting the Top-Bar color <span class="label label-warning">optional</span></h2>
                <ol>
                	<li>Open all html files.</li>
                	<li>Go to Line 81 and add <span class="label label-success">dark-bar</span> or <span class="label label-success">color-bar</span> class to the container.</li>
            	</ol>
            	<pre>&lt;div class="top-bar"&gt;</pre>
            <p></p>
            <p>
            	<h2>Setting the Boxed Layout <span class="label label-warning">optional</span></h2>
                <ol>
                	<li>Open all html files.</li>
                	<li>Go to Line 74 and add <span class="label label-success">boxed-page</span> class to the container.</li>
            	</ol>
            	<pre>&lt;div id="container" class="boxed-page"&gt;</pre>
            <p></p>
            <p>
            
        </div>
        
        <hr/>
        
        <div id="html-struc">
        
        	<div class="title"><h1><i class="glyphicon glyphicon-list-alt"></i> HTML Structure</h1></div>
            
            <p>This theme is a responsive layout based on <a class="label label-primary" href="http://getbootstrap.com/">Bootstrap.</a></p>
            
            <h2>Grid System</h2>
            
            <p>Bootstrap includes a responsive, mobile first fluid grid system that appropriately scales up to 12 columns as the device or viewport size increases. It includes predefined classes for easy layout options, as well as powerful mixins for generating more semantic layouts. <span class="label label-success">Examples:</span></p>
            
            <div class="row show-grid">
                <div class="col-md-1">.col-md-1</div>
                <div class="col-md-1">.col-md-1</div>
                <div class="col-md-1">.col-md-1</div>
                <div class="col-md-1">.col-md-1</div>
                <div class="col-md-1">.col-md-1</div>
                <div class="col-md-1">.col-md-1</div>
                <div class="col-md-1">.col-md-1</div>
                <div class="col-md-1">.col-md-1</div>
                <div class="col-md-1">.col-md-1</div>
                <div class="col-md-1">.col-md-1</div>
                <div class="col-md-1">.col-md-1</div>
                <div class="col-md-1">.col-md-1</div>
            </div>
            
            <div class="row show-grid">
                <div class="col-md-8">.col-md-8</div>
                <div class="col-md-4">.col-md-4</div>
            </div>
            
            <div class="row show-grid">
                <div class="col-md-4">.col-md-4</div>
                <div class="col-md-4">.col-md-4</div>
                <div class="col-md-4">.col-md-4</div>
            </div>
            
            <div class="row show-grid" style="margin-bottom:20px;">
                <div class="col-md-3">.col-md-3</div>
                <div class="col-md-3">.col-md-3</div>
                <div class="col-md-3">.col-md-3</div>
                <div class="col-md-3">.col-md-3</div>
            </div>
            
            <div class="alert alert-info"><strong>Shortcodes!</strong> Feel free to use the custom elements in shortcodes, or use the general Bootstrap elements.</div>
            
            <div class="alert alert-info"><strong>Icons!</strong> You have over 1000 Font Icons, You can uses with Icons, buttons, milestones, tabs and toggles. Just copy icon name and paste.</div>
            
        </div>
        
        <hr/>
        
        <div id="css-struc">
        
        	<div class="title"><h1><i class="glyphicon glyphicon-list-alt"></i> CSS Structure</h1></div>
            
            <p>I'm using a set of three main CSS files (style.css, responsive.css and color css file) in this theme which you are free to modify depending on the customization you require. There are also four additional style sheet that we do not recommend changing. Those style sheets reside in the 'CSS' folder. The style sheets are:</p>
            <ol>
            	<li><strong>style.css</strong> - The main stylesheet.</li>
            	<li><strong>responsive.css</strong> - Responsive Styles.</li>
            	<li><strong>bootstrap.css</strong> - Bootstrap.</li>
                <li><strong>settings.css</strong> - Slider Revolution settings.</li>
            </ol>
            
            <br/>
            
            <p>Finished color scheme template in the /css/colors/ directory:</p>
            <ol>
            	<li><strong>blue.css</strong></li>
                <li><strong>sky-blue.css</strong></li>
                <li><strong>jade.css</strong></li>
                <li><strong>peach.css</strong></li>
                <li><strong>red.css</strong></li>
                <li><strong>green.css</strong></li>
            </ol>
            
            <p><div class="alert alert-info">If you would like to edit a specific section of the site, simply find the appropriate label in the style.css file, and then scroll down until you find the appropriate style that needs to be edited.</div><p></p>
        
        </div>
        
        <hr/>
        
        <div id="setup-map">
        
        	<div class="title"><h1><i class="glyphicon glyphicon-map-marker"></i> Setup Google Map</h1></div>
            
            <p>Open contact.html file and go to line 209 (contact.html)</p>
            <pre>
&lt;!-- Map --&gt;
&lt;div id="map"&gt;&lt;/div&gt;</pre>
        	                    
        </div>
        
        <hr/>
        
        <div id="setup-contact">
        
        	<div class="title"><h1><i class="glyphicon glyphicon-envelope"></i> Setup Contact Form</h1></div>
            
            <ol>
            	<li>Open the mail.php file.</li>
                <li>Go to Line 15-16, and replace with your E-mail.</li>
            </ol>
            
            <pre>
// put your email address here
mail("xyzs@gmail.com", $subject, $body, $headers);</pre>
			<p></p>
        
        </div>
        
        <hr/>
        
        <div id="credits">
        
        	<div class="title"><h1><i class="glyphicon glyphicon-heart"></i> Credits</h1></div>
            
            <p>I would like to say a big thnx to all the people who created an awesome stuff:</p>
            <ul>
            	<li><strong>Bootstrap</strong> - Copyright 2013 Twitter.</li>
                <li><strong>jquery.js</strong> - jQuery Foundation, Inc.</li>
                <li><strong>modernizrr.js</strong> - Copyright © MIT & BSD.</li>
                <li><strong>jquery.isotope.js</strong> - Copyright © 2013 Metafizzy.</li>
                <li><strong>jquery.appear.js</strong> - Copyright © 2009 Michael Hixson.</li>
                <li><strong>jquery.fitvids.js</strong> - Author: Chris Coyier.</li>
                <li><strong>nivo-lightbox.min.js</strong> - Copyright 2013, Dev7studios.</li>
                <li><strong>owl.carousel.min.js</strong> - Copyright © 2013 Bartosz Wojciechowski.</li>
            </ul>
            <br/>
            <br/>
        
        </div>
    
    </div>
	<c:import url="common/footer.jsp"/>
</body>
</html>