<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html lang="ko">
<head>

<!-- Basic -->
<title>Venue | Page Not Found</title>

<!-- Define Charset -->
<meta charset="utf-8">
<c:import url="util.jsp"/>
</head>
<body>

<!-- Container -->
<div id="container">
    
	<c:import url="header.jsp"/>
    
    <!-- Start Content -->
    <div id="content">
        <div class="container">
            <div class="page-content">
                <div class="error-page">
                    <h1>
                        404
                    </h1>
                    <h3>File not Found</h3>
                    <p>We're sorry, but the page you were looking for doesn't exist.</p>
                    <div class="text-center">
                        <a href="index.html" class="btn-custom btn-medium border-btn btn-gray"> Back To Home </a>
                    </div>
                </div>
            </div>  
        </div>
    </div>
    <!-- End Content -->
    
	<c:import url="footer.jsp"/>
</body>
</html>