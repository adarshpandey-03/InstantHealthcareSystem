<%-- 
    Document   : adminpanel
    Created on : Mar 30, 2021, 10:00:30 AM
    Author     : Adarsh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-eqiv="X-UA-Compatible" content="ie=edge">
        <title>DoctorLogin</title>
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
                                <a class="nav-link text-dark" href="index.html">
                                    Home</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-dark" data-toggle="dropdown">Services</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item lead text-dark" href="doctors.html">Doctors</a>
                                    <a class="dropdown-item lead text-dark" href="nurses.html">Nurses</a>
                                    <a class="dropdown-item lead text-dark" href="c.html">Compounder</a>
                                </div>
                            </li>
                            <li>

                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>

        <div class="jumbotron py-3">
            
            <h1 class="text-center">Doctor Panel</h1>
            <br/>

            <main class="d-flex align-items-center primary-background banner-background" style="height: 80vh;">     
                
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 offset-md-4">

                            <div class="card">
                                <div class="card-header primary-background text-white text-center bg-dark">
                                    <span class="fa fa-user-circle fa-2x"></span>
                                    <br>
                                    <p>Login Here</p>                        
                                </div>
                                

                                <div class="card-body">
                                    <form action="adminpanel" method="post">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">UserName</label>
                                            <input type="text" class="form-control" name="username" id="exampleInputEmail1" aria-describedby="emailHelp">
                                            <small id="emailHelp" class="form-text text-muted">We'll never share your details with anyone else.</small>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Password</label>
                                            <input type="password" class="form-control" id="exampleInputPassword1" name="password">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        
        <footer class="panel-footer">
            <div class="container">
                <div class="row">

                    <section id="about" class="col-sm-4">
                        <div>
                            <a href="about.html" target="blanck.html">About us</a>
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
