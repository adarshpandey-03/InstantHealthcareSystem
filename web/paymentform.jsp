<%-- 
    Document   : paymentform
    Created on : Jan 30, 2021, 10:14:37 AM
    Author     : Adarsh
--%>

<%@page import="dao.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-eqiv="X-UA-Compatible" content="ie=edge">
        <title>Doctor Info</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
              crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

                    <div class="collapse navbar-collapse" id="Navbarnav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link text-dark" href="index.html">
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
                            <% } else {
                            %>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-dark" data-toggle="dropdown">
                                    <%= u.getUserName().toString().trim()%>
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
        </div>
    </header>

    <div class="container align-items-center">
        <div class="card text-center col-md-8">
            <div class="card-header">
                <h3>Pay Doctor's Fee</h3>
            </div>
            <div class="card-body">
                <form method="post" action="sendNotificationServlet">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Rs.</span>
                    </div>
                    
                    <input type="text" id="payment_field" name="amount" class="form-control" aria-label="Amount (to the nearest dollar)" value="400" readonly>
                    <div class="input-group-append">
                        <span class="input-group-text">.00</span>
                    </div>
                </div>
                    <button type="submit" class="btn btn-primary">PAY</button>
                </form>
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
                                
<script src="js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

</body>
</html>
