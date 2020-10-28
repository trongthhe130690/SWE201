<%-- 
    Document   : TrekkingLinks
    Created on : Oct 22, 2020, 9:43:28 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/link.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="left">

                    <div class="heading">
                        <h1 class="page_title">Trekking Links</h1>
                    </div>
                    <div class="section">
                        <c:forEach var="x" items="${link}">

                            <div class="title_link">
                                <h4><a href="#">${x.title}</a> </h4>
                            </div>
                            <div class="description_link">
                                ${x.description}
                            </div>
                        </c:forEach>
                    </div>                  

                </div>
                <jsp:include page="Right.jsp"/>
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
