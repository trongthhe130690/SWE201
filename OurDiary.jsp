<%-- 
    Document   : OurDiary
    Created on : Oct 16, 2020, 2:41:24 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/gallery.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="left">
                    <c:forEach var="x" items="${gallery}">
                        <div class="wrapper">
                            <div class="wrapper_title">
                                <h3>${x.name}</h3> 
                            </div>
                            <div class="wrapper_des">
                                <c:if test="${x.image==null}">
                                   
                                        <div class="wrapper_des_left">
                                            <p>${x.description}</p> 
                                        </div>
                                    

                                </c:if>
                                <c:if test="${x.image!=null}">
                                    <div style="display: flex;">
                                        <div class="wrapper_des_left">
                                        <p>${x.description}</p> 
                                    </div>
                                    <div class="wrapper_des_right">
                                        <img src="images/${x.image}" alt="">
                                    </div>



                                    </div>

                                </c:if>
                                <p>

                                </p>

                            </div>
                        </div>
                    </c:forEach>

                </div>
                <jsp:include page="Right.jsp"/>
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
