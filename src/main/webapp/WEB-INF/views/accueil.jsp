<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-15"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Theme Made By www.w3schools.com - No Copyright -->
    <title>Alert coin</title>
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
            <a class="navbar-brand" href="#myPage">Logo</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/inscription">Vous etes un professionel</a></li>
                <li><a href="#services">Besoin d'aides</a></li>

            </ul>
        </div>
    </div>
</nav>

<div class="jumbotron text-center">
    <h1>Alert Coin</h1>
    <p>Abonnez-vous à une annonce en un click </p>
    <form:form modelAttribute="annonce" >
        <div class="form-group">
            <div class="col-sm-6 form-group">
                <form:input path="text" class="form-control" id="text" placeholder="Que recherchez-vous ?"/>
            </div>
            <div class="col-sm-3 form-group">
                <form:select path="categorie" class="form-control" id="categorie">
                    <form:option value="cate">cate</form:option>
                    <form:option value="cate">cate</form:option>
                </form:select>
            </div>

            <div class="col-sm-3">
                <button type="submit" class="btn btn-danger" id="search">S'abonner</button>
            </div>
        </div>
    </form:form>
</div>


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
            /* geolocalisation */
            var x = $("#locateMe");
            $("#locateMe").click(function () {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(showPosition);
                } else {
                    x.innerHTML = "La g�olocalisation n'est pas support�e par votre navigateur, veuillez preciser votre position";
                }
            });

            function showPosition(position) {
                $("#cityOrPotalCode").val("Votre position");
                $("#cityOrPotalCode").attr("disabled", "true");
                $("#latitude").val(position.coords.latitude);
                $("#longitude").val(position.coords.longitude);
            }
        })
</script>

</body>
</html>
