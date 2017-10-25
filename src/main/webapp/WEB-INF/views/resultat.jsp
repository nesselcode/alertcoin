<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Theme Made By www.w3schools.com - No Copyright -->
    <title>Resultat de recherche</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat"
          rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato"
          rel="stylesheet" type="text/css">


    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="<c:url value="/resources/css/befab.css" />" rel="stylesheet"/>

</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
      data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#myNavbar">
                <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>

        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#about">Vous etes un professionel</a></li>
                <li><a href="#services">Besoin d'aides</a></li>
            </ul>
        </div>
    </div>
</nav>

<%--<div class="panel panel-inverse">--%>
<%--<div class="panel-heading">--%>
<%--<h2>--%>
<%--<c:if test="${not empty listSalon}">--%>
<%--<ul>--%>
<%--<c:forEach var="salon" items="${listSalon}">--%>
<%--<div class="container">--%>
<%--<div class="row" style="margin-bottom: 20px">--%>
<%--<div class="col-xs-12 col-sm-6 col-md-6">--%>
<%--<div>--%>
<%--<div class="row">--%>
<%--<div class="col-sm-6 col-md-4">--%>
<%--<img src="http://placehold.it/150x150" alt=""/>--%>
<%--</div>--%>
<%--<div class="col-sm-6 col-md-8">--%>
<%--<h4>${salon.gerant.nom}</h4>--%>
<%--<small>--%>
<%--<cite--%>
<%--title="${salon.adresse.ville}">${salon.adresse.ville},--%>
<%--FRANCE--%>
<%--</cite>--%>
<%--</small>--%>
<%--<p>--%>

<%--</div>--%>

<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>

<%--</c:forEach>--%>
<%--</ul>--%>

<%--</c:if>--%>
<%--</h2>--%>
<%--</div>--%>
<%--</div>--%>


<div id="resources" style="margin-top: 65px;">
    <c:if test="${not empty listSalon}">
        <ul class="list-group">
            <c:forEach var="salon" items="${listSalon}">


                <li class="list-group-item resource-info">
                    <div class="row">
                        <div class="col-sm-5 col-md-4 resource-thumbnail">
                            <img src="http://cdn.placedescommerces.com/ver-38051716231805/dynimages/photos_annonces/247693/24.jpg.pagespeed.ce.XAXNygMSAp.jpg"
                                 class="img-thumbnail img-responsive image_square">
                        </div>
                        <div class="col-sm-7 resource-contents">
                            <h2 class="resouce-name"><a
                                    href="https://s3.amazonaws.com/planyo-extras/website/index.html?feedback_url=https%3A%2F%2Fs3.amazonaws.com%2Fplanyo-extras%2Fwebsite%2Findex.html&amp;presentation_mode=1&amp;planyo_lang=en&amp;resource_id=43368&amp;mode=resource_desc">${salon.nom}(Lyon)</a>
                            </h2>
                            <div class="lead resource-description">${salon.nom}</div>
                        </div>
                        <div class="col-sm-12 col-md-5 resource-props">

                            <div class="action-buttons">
                                <a class="btn btn-primary" role="button" href="#">Prendre rendez-vous</a>
                                <a class="btn btn-primary" role="button" href="#">Appeler</a>
                            </div>

                        </div>
                    </div>
                    <hr>
                </li>
            </c:forEach>
        </ul>
    </c:if>
</div>

<!-- Container (Services Section) -->


<footer class="container-fluid text-center">
    <a href="#myPage" title="To Top"> <span
            class="glyphicon glyphicon-chevron-up"></span>
    </a>
</footer>

<script>
    $(document).ready(
        function () {
            // Add smooth scrolling to all links in navbar + footer link
            $(".navbar a, footer a[href='#myPage']").on('click',
                function (event) {
                    // Make sure this.hash has a value before overriding default behavior
                    if (this.hash !== "") {
                        // Prevent default anchor click behavior
                        event.preventDefault();

                        // Store hash
                        var hash = this.hash;

                        // Using jQuery's animate() method to add smooth page scroll
                        // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                        $('html, body').animate({
                            scrollTop: $(hash).offset().top
                        }, 900, function () {

                            // Add hash (#) to URL when done scrolling (default click behavior)
                            window.location.hash = hash;
                        });
                    } // End if
                });

            $(window).scroll(function () {
                $(".slideanim").each(function () {
                    var pos = $(this).offset().top;

                    var winTop = $(window).scrollTop();
                    if (pos < winTop + 600) {
                        $(this).addClass("slide");
                    }
                });
            });
        })
</script>

</body>
</html>
