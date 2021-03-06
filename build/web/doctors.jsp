<%-- 
    Document   : doctors
    Created on : Jan 10, 2021, 12:31:02 PM
    Author     : Adarsh
--%>

<%@page import="dao.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
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
        </div>
    </header>
    <div class="" id="maincontent">
        <div class="jumbotron " id="j">
            <div class="jumbotron-background">
                <img src="images/t.jpeg" class="blur">
                <p class="display-4 col-5 text-dark" id="para">
                    “Each patient carries <span class="font-weight-bold">his own doctor inside him.”</span>
                </p>
            </div>
        </div>
        <div class="container">
            <h2 class="mb-5 float-left">List of Specialized Doctors</h2>
            <button type="button" class="btn btn-secondary btnn" data-toggle="collapse" data-target="#demo" id="button">Apply Filter</button>
            <div id="demo" class="collapse">
                <form>
                    <ul class="filterSection list-unstyled">
                        <div class="d-inline-block mr-5">
                            <li>

                                <input type="checkbox" value="food"/>
                                <label>Fever and infections</label>
                            </li>
                            <li>
                                <input type="checkbox" value="place"/>
                                <label>Cold</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Constipation</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Respiratory diseases</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Knee Pain</label>
                            </li>

                        </div>
                        <div class="d-inline-block mr-5">
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Fracture</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Dengue</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>High Blood Pressure</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Low Blood Pressure</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Diabetes</label>
                            </li>
                        </div>
                        <div class="d-inline-block mr-5">
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Bone Fracture</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Bone Related Problems</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Chest Paine</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Heart Related Problems</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Myopia</label>
                            </li>
                        </div>
                        <div class="d-inline-block mr-5">
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Cataract</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Hypermetropia</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Eye Realted Problems</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Child Health Problems</label>
                            </li>
                            <li>
                                <input type="checkbox" value="musician"/>
                                <label>Teeth related problems</label>
                            </li>
                        </div>
                    </ul>
                </form>
            </div>
            <ul class="list-unstyled" id="doc">
                <li>
                    <div class="mb-5">
                        <div class="col-3 float-left">
                            <img src="images/sa.jpg">

                        </div>
                        <div class="col-9">
                            <h4>Dr. Siddharth Agarwal</h4>
                            <p class="mb-1 text-secondary">General Physician, Agra</p>
                            <p class="mb-1 text-secondary">Dayalbagh Educational Institute | DEI · Faculty of Science</p>
                            <p class="mb-1 text-secondary">MBBS , MD , PG D D, Email: siddharth@dei.ac.in</p> 
                            <p class="mb-1 text-secondary">Life member at Indian Rheumatology Association</p>
                            <form method="post" action="doctorservlet">
                            <button type="submit" href="loginSignupPage.jsp" class="btn btn-outline-primary" style="margin-top: 5px;">Contact Doctor</button>
                            </form>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mb-5">
                        <div class="col-3 float-left">
                            <img src="images/s.jpg">
                        </div>
                        <div class="col-9">
                            <h4>Dr. Sandeep Saluja</h4>
                            <p class="mb-1 text-secondary">Rheumatologist doctor, Agra</p>
                            <p class="mb-1 text-secondary">Gout, Lupus, Osteoarthritis, Osteoporosis, Psoriatic Arthritis, Scleroderma, Vasculitis & Fibromyalgia</p>
                            <p class="mb-1 text-secondary">33 years of clinical experience</p>
                            <button type="submit" href="loginSignupPage.jsp" class="btn btn-outline-primary" style="margin-top: 5px;">Contact Doctor</button>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mb-5">
                        <div class="col-3 float-left">
                            <img src="images/sk.jpg">
                        </div>
                        <div class="col-9">
                            <h4>Dr. Saran Kumar Satsangi</h4>
                            <p class="mb-1 text-secondary">Ophthalmologist doctor, Agra</p>
                            <p class="mb-1 text-secondary"> MBBS, MS (Ophthalmology)</p>
                            <p class="mb-1 text-secondary">Former Head of Department, Opthalmology, SN Medical College, Agra.</p>
                            <button type="submit" href="loginSignupPage.jsp" class="btn btn-outline-primary" style="margin-top: 5px;">Contact Doctor</button>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mb-5">
                        <div class="col-3 float-left">
                            <img src="images/sahu.png">
                        </div>
                        <div class="col-9">
                            <h4>Dr. Dr. S C Sahu</h4>
                            <p class="mb-1 text-secondary">Orthopaedic Doctor, Agra</p>
                            <p class="mb-1 text-secondary">MBBS, MS (Orthopaedics)</p>
                            <p class="mb-1 text-secondary">Orthopedic Rehabilitation, Physiotherapy Geriatric, Foot Care, Lower Back Pain Treatment</p>
                            <a type="button" href="loginSignupPage.jsp" class="btn btn-outline-primary" style="margin-top: 5px;">Contact Doctor</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mb-5">
                        <div class="col-3 float-left">
                            <img src="images/vn.jpg">
                        </div>
                        <div class="col-9">
                            <h4>Dr. V. Nihar</h4>
                            <p class="mb-1 text-secondary">BDS, </p>
                            <p class="mb-1 text-secondary">Dental Surgeon, Dentist.</p>
                            <p class="mb-1 text-secondary">17 Years Experience Overall.</p>
                            <p class="mb-1 text-secondary">Member of Dental Council of India</p>
                            <a type="button" href="loginSignupPage.jsp" class="btn btn-outline-primary" style="margin-top: 5px;">Contact Doctor</a>
                        </div>
                    </div>
                </li>
                <div class="mb-5">
                    <div class="col-3 float-left">
                        <img src="images/nk.jpg">
                    </div>
                    <div class="col-9">
                        <h4>Dr. Niraj Kumar</h4>
                        <p class="mb-1 text-secondary">Consultant Cardilogist Doctor, Agra </p>
                        <p class="mb-1 text-secondary">M.D., DM (Cardiology)</p>
                        <a type="button" href="loginSignupPage.jsp" class="btn btn-outline-primary" style="margin-top: 5px;">Contact Doctor</a>
                    </div>
                </div>
                </li>
            </ul>

            <div class="mb-5">
                <div class="col-3 float-left">
                    <img src="images/mb.png">
                </div>
                <div class="col-9">
                    <h4>Dr. Anju Bhatnagar</h4>
                    <p class="mb-1 text-secondary">Sr consultant pediatrician,Dayalbagh, Agra </p>
                    <p class="mb-1 text-secondary">MBBS, MD (Pediatrics)</p>
                    <p class="mb-1 text-secondary">Paediatrician cum Neonatologist</p>
                    <a type="button" href="loginSignupPage.jsp" class="btn btn-outline-primary" style="margin-top: 5px;">Contact Doctor</a>
                </div>
            </div>
        </div>
    </li>
</ul>
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
