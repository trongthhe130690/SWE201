<%-- 
    Document   : Right
    Created on : Oct 13, 2020, 11:21:38 PM
    Author     : dell
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="Css/right.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="right">
            <div class="share_box">
                <div class="share_header">Share this page</div>
                <div class="share_content">
                    <c:forEach items="${share}" var="i">
                        <div class="link">
                        <a href="#">
                            <img src="images/${i.icon}" alt=""/>
                            Share on ${i.social_network}
                        </a>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
</html>
