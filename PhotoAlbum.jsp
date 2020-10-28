<%-- 
    Document   : PhotoAlbum
    Created on : Oct 27, 2020, 10:57:06 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/album.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
       <jsp:include page="Header.jsp"/>
        <div class="content">
            <div class="left">
                <div class="slide" onmouseover="showPauseIcon()" onmouseleave="hidePauseIcon()">
                    <img id="currentShowImage" class="imgSlide" src="images/${gallery.image}" style="width:100%">
                    <c:forEach var="x" items="${imgs}" varStatus="loop">
                        <img class="imgSlide" src="images/${x.image}" style="width:100%">
                    </c:forEach>
                        <div>
                            <span id="btnPlay" style="left: 460px; top: 0; position: absolute; z-index: 100; cursor: pointer;    " onclick="autoPlay()">
                                <img style="background-color: rgba(255, 255, 255, 0.6);" src="images/playicon.png" />
                            </span>

                            <span id="btnPause" style="left: 460px; top: 0; position: absolute; z-index: 100; cursor: pointer; visibility: hidden;" onclick="autoPlay()">
                                <img style="background-color: rgba(255, 255, 255, 0.6);" src="images/pauseicon.png" />
                            </span>
                        </div>
                    

                    <span class="btn-prev" onclick="plusDivs(-1)">&#10094;</span>
                    <span class="btn-next" onclick="plusDivs(1)">&#10095;</span>
                </div>

                <div class="grid-container">
                    <c:forEach var="x" items="${imgs}" varStatus="loop">
                        <div class="grid-item" onclick="changeImage(${loop.index})">
                            <img src="${imagePath}${x.image}" >
                            
                        </div>
                    </c:forEach>
                </div>
            </div>

            <jsp:include page="Right.jsp"/>
        </div>

        <jsp:include page="Footer.jsp"/>
    </body>
     <script>
        var slideIndex = 1;
        var autoplay = false;
        showDivs(slideIndex);

        function autoPlay() {
            autoplay = !autoplay;
            if (autoplay) {
                // play
                document.getElementById("btnPlay").style.visibility = "hidden";
                document.getElementById("btnPause").style.visibility = "visible";

            } else {
                // pause
                document.getElementById("btnPlay").style.visibility = "visible";
                document.getElementById("btnPause").style.visibility = "hidden";
 }
        }

        function showPauseIcon() {
            if (autoplay)
            document.getElementById('btnPause').style.visibility = 'visible'
        }
        
        function hidePauseIcon() {
            document.getElementById('btnPause').style.visibility = 'hidden'
        }

        function plusDivs(n) {
            showDivs(slideIndex += n);
        }
        
        function changeImage(imgIndex) {
            autoplay = false;
            slideIndex = imgIndex + 2;
            showDivs(slideIndex);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("imgSlide");
            if (n > x.length) {
                slideIndex = 1;
            }
            if (n < 1) {
                slideIndex = x.length;
            }
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            x[slideIndex - 1].style.display = "block";
        }

        setInterval(() => {
            if (autoplay) {
                showDivs(slideIndex += 1);
            }
        }, 2000);
    </script>
</html>
