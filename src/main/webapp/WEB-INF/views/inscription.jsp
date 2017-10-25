<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Theme Made By www.w3schools.com - No Copyright -->
    <title>Bootstrap Theme Company Page</title>
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
                <li><a href="/">Accueil</a></li>
                <li><a href="#services">Besoin d'aides</a></li>

            </ul>
        </div>
    </div>
</nav>

<div class="jumbotron text-center">
    <h1>Befab</h1>
    <div class="form">
        <div class="tab-content">
            <div id="signup">
                <h1>S'inscrire</h1>

                <form:form modelAttribute="salon" method="post">

                    <div class="top-row">
                        <div class="field-wrap">
                            <label>
                                Nom<span class="req">*</span>
                            </label>
                            <form:input type="text" autocomplete="off" path="gerant.nom"/>
                        </div>

                        <div class="field-wrap">
                            <label>
                                Prenom<span class="req">*</span>
                            </label>
                            <form:input type="text" autocomplete="off" path="gerant.prenom"/>
                        </div>
                    </div>

                    <div class="field-wrap">
                        <label>
                            Description<span class="req">*</span>
                        </label>
                        <form:input type="text" autocomplete="off" path="gerant.description"/>
                    </div>

                    <div class="field-wrap">
                        <label>
                            Numero (rue)<span class="req">*</span>
                        </label>
                        <form:input path="adresse.ligne1" autocomplete="off"/>
                    </div>
                    <div class="field-wrap">
                        <label>
                            Ville<span class="req">*</span>
                        </label>
                        <form:input path="adresse.ville" autocomplete="off"/>
                    </div>

                    <button type="submit" class="button button-block"/>Enregistrer</button>

                </form:form>

            </div>

            <div id="login">
                <h1>Welcome Back!</h1>

                <form action="/" method="post">

                    <div class="field-wrap">
                        <label>
                            Email Address<span class="req">*</span>
                        </label>
                        <input type="email" required autocomplete="off"/>
                    </div>

                    <div class="field-wrap">
                        <label>
                            Password<span class="req">*</span>
                        </label>
                        <input type="password" required autocomplete="off"/>
                    </div>

                    <p class="forgot"><a href="#">Forgot Password?</a></p>

                    <button class="button button-block"/>
                    Log In</button>

                </form>

            </div>

        </div><!-- tab-content -->

    </div> <!-- /form -->


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


    $('.form').find('input, textarea').on('keyup blur focus', function (e) {

        var $this = $(this),
            label = $this.prev('label');

        if (e.type === 'keyup') {
            if ($this.val() === '') {
                label.removeClass('active highlight');
            } else {
                label.addClass('active highlight');
            }
        } else if (e.type === 'blur') {
            if ($this.val() === '') {
                label.removeClass('active highlight');
            } else {
                label.removeClass('highlight');
            }
        } else if (e.type === 'focus') {

            if ($this.val() === '') {
                label.removeClass('highlight');
            }
            else if ($this.val() !== '') {
                label.addClass('highlight');
            }
        }

    });

    $('.tab a').on('click', function (e) {

        e.preventDefault();

        $(this).parent().addClass('active');
        $(this).parent().siblings().removeClass('active');

        target = $(this).attr('href');

        $('.tab-content > div').not(target).hide();

        $(target).fadeIn(600);

    });
</script>


</body>
</html>
