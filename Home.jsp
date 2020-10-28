<%-- 
    Document   : Home
    Created on : Oct 14, 2020, 11:12:44 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        jkfjksdnjknfjksdn
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="left">
                    <div class="top3">
                        <c:forEach var="x" items="${gallery}">
                            <div class="pertop3">
                                <div class="top3_image">
                                    <img src="images/${x.image}" alt="">
                                </div>
                                <div class="top3_title">
                                    ${x.name}
                                </div>
                                <div class="top3_description">
                                    ${x.description}
                                </div>
                            </div>
                        </c:forEach>
                        
                        <div>nao chung ta cùng sửa<div/>
                    </div>
                    <div class="intro">
                        <div class="intro_image">
                            <img src="images/${intro.image}" alt="">
                        </div>
                        <div class="intro_content">
                            <div class="intro_title">
                                <p>${intro.title}<p/>
                            </div>
                            <div class="intro_des">
                                <p>${intro.description}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="Right.jsp"/>
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
