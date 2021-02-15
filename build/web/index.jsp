<%@page import="dao.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-eqiv="X-UA-Compatible" content="ie=edge">
        <title>Hospise</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
              crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@200&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&display=swap" rel="stylesheet">
    </head>
    <body>
        <!--Drodown navbar-->
        <header>
            <nav class="navbar navbar-expand-sm navbar-light mb-3">
                <div class="container">
                    <div class="navbar-brand">
                        <a class="text-dark" id="nb" href="index.html"><img src="images/heart.png" class="float-left"><h1>Hospise</h1></a></div> 

                    <button class="navbar-toggler" data-toggle="collapse" data-target="#Navbarnav">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="Navbarnav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link text-dark" href="#">
                                    Home</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-dark" data-toggle="dropdown">Services</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item lead text-dark" href="doctors.jsp">Doctors</a>
                                    <a class="dropdown-item lead text-dark" href="nurses.html">Nurses</a>
                                    <a class="dropdown-item lead text-dark" href="c.html">Compounder</a>
                                </div>
                            </li>
                            <%
                                user u = (user) session.getAttribute("currentUser");
                                if (u == null) {
                            %>   
                            <li><a type="button" href="loginSignupPage.jsp" class="btn btn-outline-primary" style="margin-left: 20px; margin-top: 5px;">Login</a>
                            </li>
                            <% } else{
                            %>
                            <li class="nav-item dropdown">
                             <a class="nav-link dropdown-toggle text-dark" data-toggle="dropdown">
                                 <%= u.getUserName().toString().trim() %>
                             </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item lead text-dark" href="dashboard.jsp">Dashboard</a>
                                    <form method="post" action="logoutservlet">
                                    <button class="dropdown-item lead text-dark">Logout</button>
                                    </form>
                                </div>
                            </li>
                            <%
                            }%>


                        </ul>
                    </div>
                </div>
            </nav>
       </header>
    <div class="" id="maincontent">
        <div class="jumbotron " id="j">
            <div class="jumbotron-background">
                <img src="images/i3.jpg" class="blur">
                <p class="display-4 col-4 text-white" id="para">
                    "Your health is <span class="font-weight-bold">always in the first place."</span>
                </p>
            </div>
        </div>
        <div class="container">
            <h2 class="col-6 ml-auto float-right text-capitalize">Ensuring Access To Health Services In Rural Area</h2>
            <img src="images/j.jpg" class="col-6 float-left">
            <p class="col-6 float-left text-secondary mb-5">Health is a basic human right. Hospise wants to ensure that everybody has access to quality health care. Especially women and youth in rural area, where access or availability of such services is not a given. We are committed to increase access to healthcare services for peopl. We contribute to more adequate and more affordable health care services through result-based financing. 
            </p>
        </div>

        <img src="images/g.jpg" class="ml-auto mb-5">

        <div class="container col-7">
            <h2>What we do?</h2>
            <p class="text-secondary">We had started an initiative via a website based system which will handle online booking, home services and medical facilities.We had started this intitative mainly for people from rural area. Here we are providing location of nearest doctors and other healthcare workers available in the locality. We are providing an  intelligent filter system which will recommend doctors according to the systems of the patient. It also provides facility to put your problem via text messages and recorded videos. </p>
        </div>
    </div>
</div>

<footer class="panel-footer">
    <div class="container">
        <div class="row">

            <section id="about" class="col-sm-4">
                <div>
                    <a href="#" target="blanck.html">About us</a>
                </div>
                <div>
                    <a href="#" target="blanck.html">Terms and conditions</a>
                </div>
                <div>
                    <a href="#" target="blanck.html">Privacy & Policy</a>
                </div>
                <div>
                    <a href="#" target="blanck.html">FAQ</a>
                </div>
                <hr class="d-block d-sm-none">
            </section>
            <section id="connect" class="col-sm-4">
                <span>Connect with us</span>
                <div id="imgs" class="mt-3">
                    <a href="https://www.instagram.com/amol_satsangi_/" target="blanck.html"><img src="images/i.png"></a>
                    <a href="https://web.telegram.org/#/im?p=g451954091" target="blanck.html"><img src="images/te.jpg"></a>
                    <a href="https://twitter.com/AmolSatsangi" target="blanck.html"><img src="images/tw.png"></a>
                </div>
                <p class="mt-3">amolsatsangi2@gmail.com</p>
                <hr class="d-block d-sm-none">
            </section>
            <section id="testimonials" class="col-sm-4">
                <div>“Healthy citizens are the greatest asset any country can have.”</div> 
                <div>“Take care of your body. It’s your only place to live.”</div>  
                <hr class="d-block d-sm-none">
            </section>
        </div>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
crossorigin="anonymous"></script>

</body>
</html>
