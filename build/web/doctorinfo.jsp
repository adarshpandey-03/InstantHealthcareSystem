<%-- 
    Document   : doctorinfo
    Created on : Jan 25, 2021, 11:40:25 AM
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

    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="col-3 float-left">
                    <img src="images/s.jpg">
                </div>
                <div class="col-md-9">
                    <h4>Dr. Sandeep Saluja</h4>                            
                </div>                    
                <button type="button" data-toggle="modal" data-target="#onlineAppointmentModal" class="btn btn-outline-primary" style="margin-top: 5px;">Book Appointment Online</button>
                <button type="button"  data-toggle="modal" data-target="#offlineAppointmentModal" class="btn btn-outline-primary" style="margin-top: 5px;">Book Appointment Offline</button>

            </div>
        </div>
        <div class="row">
            <div class="col-md-9">                    
                <p class="mb-1 text-secondary">Rheumatologist doctor, Agra</p>
                <p class="mb-1 text-secondary">Gout, Lupus, Osteoarthritis, Osteoporosis, Psoriatic Arthritis, Scleroderma, Vasculitis & Fibromyalgia</p>
                <p class="mb-1 text-secondary">33 years of clinical experience</p>
            </div>
        </div>
    </div>

    <!--Offline Appointment Form Modal Start -->   
    <div class="modal fade" id="offlineAppointmentModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Book Offline Appointment</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="post" action="doctorOfflineAppointmentServlet" id="offlineAppointmentform" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Full Name</label>
                            <input type="text" name="fullname" class="form-control" id="recipient-name">
                        </div>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Age</label>
                            <input type="text" name="patientage" class="form-control" id="recipient-name">
                        </div>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Country</label>
                            <select class="form-control" id="country" name="countryselect">
                                <option value="Afganistan">Afghanistan</option>
                                <option value="Albania">Albania</option>
                                <option value="Algeria">Algeria</option>
                                <option value="American Samoa">American Samoa</option>
                                <option value="Andorra">Andorra</option>
                                <option value="Angola">Angola</option>
                                <option value="Anguilla">Anguilla</option>
                                <option value="Antigua & Barbuda">Antigua & Barbuda</option>
                                <option value="Argentina">Argentina</option>
                                <option value="Armenia">Armenia</option>
                                <option value="Aruba">Aruba</option>
                                <option value="Australia">Australia</option>
                                <option value="Austria">Austria</option>
                                <option value="Azerbaijan">Azerbaijan</option>
                                <option value="Bahamas">Bahamas</option>
                                <option value="Bahrain">Bahrain</option>
                                <option value="Bangladesh">Bangladesh</option>
                                <option value="Barbados">Barbados</option>
                                <option value="Belarus">Belarus</option>
                                <option value="Belgium">Belgium</option>
                                <option value="Belize">Belize</option>
                                <option value="Benin">Benin</option>
                                <option value="Bermuda">Bermuda</option>
                                <option value="Bhutan">Bhutan</option>
                                <option value="Bolivia">Bolivia</option>
                                <option value="Bonaire">Bonaire</option>
                                <option value="Bosnia & Herzegovina">Bosnia & Herzegovina</option>
                                <option value="Botswana">Botswana</option>
                                <option value="Brazil">Brazil</option>
                                <option value="British Indian Ocean Ter">British Indian Ocean Ter</option>
                                <option value="Brunei">Brunei</option>
                                <option value="Bulgaria">Bulgaria</option>
                                <option value="Burkina Faso">Burkina Faso</option>
                                <option value="Burundi">Burundi</option>
                                <option value="Cambodia">Cambodia</option>
                                <option value="Cameroon">Cameroon</option>
                                <option value="Canada">Canada</option>
                                <option value="Canary Islands">Canary Islands</option>
                                <option value="Cape Verde">Cape Verde</option>
                                <option value="Cayman Islands">Cayman Islands</option>
                                <option value="Central African Republic">Central African Republic</option>
                                <option value="Chad">Chad</option>
                                <option value="Channel Islands">Channel Islands</option>
                                <option value="Chile">Chile</option>
                                <option value="China">China</option>
                                <option value="Christmas Island">Christmas Island</option>
                                <option value="Cocos Island">Cocos Island</option>
                                <option value="Colombia">Colombia</option>
                                <option value="Comoros">Comoros</option>
                                <option value="Congo">Congo</option>
                                <option value="Cook Islands">Cook Islands</option>
                                <option value="Costa Rica">Costa Rica</option>
                                <option value="Cote DIvoire">Cote DIvoire</option>
                                <option value="Croatia">Croatia</option>
                                <option value="Cuba">Cuba</option>
                                <option value="Curaco">Curacao</option>
                                <option value="Cyprus">Cyprus</option>
                                <option value="Czech Republic">Czech Republic</option>
                                <option value="Denmark">Denmark</option>
                                <option value="Djibouti">Djibouti</option>
                                <option value="Dominica">Dominica</option>
                                <option value="Dominican Republic">Dominican Republic</option>
                                <option value="East Timor">East Timor</option>
                                <option value="Ecuador">Ecuador</option>
                                <option value="Egypt">Egypt</option>
                                <option value="El Salvador">El Salvador</option>
                                <option value="Equatorial Guinea">Equatorial Guinea</option>
                                <option value="Eritrea">Eritrea</option>
                                <option value="Estonia">Estonia</option>
                                <option value="Ethiopia">Ethiopia</option>
                                <option value="Falkland Islands">Falkland Islands</option>
                                <option value="Faroe Islands">Faroe Islands</option>
                                <option value="Fiji">Fiji</option>
                                <option value="Finland">Finland</option>
                                <option value="France">France</option>
                                <option value="French Guiana">French Guiana</option>
                                <option value="French Polynesia">French Polynesia</option>
                                <option value="French Southern Ter">French Southern Ter</option>
                                <option value="Gabon">Gabon</option>
                                <option value="Gambia">Gambia</option>
                                <option value="Georgia">Georgia</option>
                                <option value="Germany">Germany</option>
                                <option value="Ghana">Ghana</option>
                                <option value="Gibraltar">Gibraltar</option>
                                <option value="Great Britain">Great Britain</option>
                                <option value="Greece">Greece</option>
                                <option value="Greenland">Greenland</option>
                                <option value="Grenada">Grenada</option>
                                <option value="Guadeloupe">Guadeloupe</option>
                                <option value="Guam">Guam</option>
                                <option value="Guatemala">Guatemala</option>
                                <option value="Guinea">Guinea</option>
                                <option value="Guyana">Guyana</option>
                                <option value="Haiti">Haiti</option>
                                <option value="Hawaii">Hawaii</option>
                                <option value="Honduras">Honduras</option>
                                <option value="Hong Kong">Hong Kong</option>
                                <option value="Hungary">Hungary</option>
                                <option value="Iceland">Iceland</option>
                                <option value="Indonesia">Indonesia</option>
                                <option value="India">India</option>
                                <option value="Iran">Iran</option>
                                <option value="Iraq">Iraq</option>
                                <option value="Ireland">Ireland</option>
                                <option value="Isle of Man">Isle of Man</option>
                                <option value="Israel">Israel</option>
                                <option value="Italy">Italy</option>
                                <option value="Jamaica">Jamaica</option>
                                <option value="Japan">Japan</option>
                                <option value="Jordan">Jordan</option>
                                <option value="Kazakhstan">Kazakhstan</option>
                                <option value="Kenya">Kenya</option>
                                <option value="Kiribati">Kiribati</option>
                                <option value="Korea North">Korea North</option>
                                <option value="Korea Sout">Korea South</option>
                                <option value="Kuwait">Kuwait</option>
                                <option value="Kyrgyzstan">Kyrgyzstan</option>
                                <option value="Laos">Laos</option>
                                <option value="Latvia">Latvia</option>
                                <option value="Lebanon">Lebanon</option>
                                <option value="Lesotho">Lesotho</option>
                                <option value="Liberia">Liberia</option>
                                <option value="Libya">Libya</option>
                                <option value="Liechtenstein">Liechtenstein</option>
                                <option value="Lithuania">Lithuania</option>
                                <option value="Luxembourg">Luxembourg</option>
                                <option value="Macau">Macau</option>
                                <option value="Macedonia">Macedonia</option>
                                <option value="Madagascar">Madagascar</option>
                                <option value="Malaysia">Malaysia</option>
                                <option value="Malawi">Malawi</option>
                                <option value="Maldives">Maldives</option>
                                <option value="Mali">Mali</option>
                                <option value="Malta">Malta</option>
                                <option value="Marshall Islands">Marshall Islands</option>
                                <option value="Martinique">Martinique</option>
                                <option value="Mauritania">Mauritania</option>
                                <option value="Mauritius">Mauritius</option>
                                <option value="Mayotte">Mayotte</option>
                                <option value="Mexico">Mexico</option>
                                <option value="Midway Islands">Midway Islands</option>
                                <option value="Moldova">Moldova</option>
                                <option value="Monaco">Monaco</option>
                                <option value="Mongolia">Mongolia</option>
                                <option value="Montserrat">Montserrat</option>
                                <option value="Morocco">Morocco</option>
                                <option value="Mozambique">Mozambique</option>
                                <option value="Myanmar">Myanmar</option>
                                <option value="Nambia">Nambia</option>
                                <option value="Nauru">Nauru</option>
                                <option value="Nepal">Nepal</option>
                                <option value="Netherland Antilles">Netherland Antilles</option>
                                <option value="Netherlands">Netherlands (Holland, Europe)</option>
                                <option value="Nevis">Nevis</option>
                                <option value="New Caledonia">New Caledonia</option>
                                <option value="New Zealand">New Zealand</option>
                                <option value="Nicaragua">Nicaragua</option>
                                <option value="Niger">Niger</option>
                                <option value="Nigeria">Nigeria</option>
                                <option value="Niue">Niue</option>
                                <option value="Norfolk Island">Norfolk Island</option>
                                <option value="Norway">Norway</option>
                                <option value="Oman">Oman</option>
                                <option value="Pakistan">Pakistan</option>
                                <option value="Palau Island">Palau Island</option>
                                <option value="Palestine">Palestine</option>
                                <option value="Panama">Panama</option>
                                <option value="Papua New Guinea">Papua New Guinea</option>
                                <option value="Paraguay">Paraguay</option>
                                <option value="Peru">Peru</option>
                                <option value="Phillipines">Philippines</option>
                                <option value="Pitcairn Island">Pitcairn Island</option>
                                <option value="Poland">Poland</option>
                                <option value="Portugal">Portugal</option>
                                <option value="Puerto Rico">Puerto Rico</option>
                                <option value="Qatar">Qatar</option>
                                <option value="Republic of Montenegro">Republic of Montenegro</option>
                                <option value="Republic of Serbia">Republic of Serbia</option>
                                <option value="Reunion">Reunion</option>
                                <option value="Romania">Romania</option>
                                <option value="Russia">Russia</option>
                                <option value="Rwanda">Rwanda</option>
                                <option value="St Barthelemy">St Barthelemy</option>
                                <option value="St Eustatius">St Eustatius</option>
                                <option value="St Helena">St Helena</option>
                                <option value="St Kitts-Nevis">St Kitts-Nevis</option>
                                <option value="St Lucia">St Lucia</option>
                                <option value="St Maarten">St Maarten</option>
                                <option value="St Pierre & Miquelon">St Pierre & Miquelon</option>
                                <option value="St Vincent & Grenadines">St Vincent & Grenadines</option>
                                <option value="Saipan">Saipan</option>
                                <option value="Samoa">Samoa</option>
                                <option value="Samoa American">Samoa American</option>
                                <option value="San Marino">San Marino</option>
                                <option value="Sao Tome & Principe">Sao Tome & Principe</option>
                                <option value="Saudi Arabia">Saudi Arabia</option>
                                <option value="Senegal">Senegal</option>
                                <option value="Seychelles">Seychelles</option>
                                <option value="Sierra Leone">Sierra Leone</option>
                                <option value="Singapore">Singapore</option>
                                <option value="Slovakia">Slovakia</option>
                                <option value="Slovenia">Slovenia</option>
                                <option value="Solomon Islands">Solomon Islands</option>
                                <option value="Somalia">Somalia</option>
                                <option value="South Africa">South Africa</option>
                                <option value="Spain">Spain</option>
                                <option value="Sri Lanka">Sri Lanka</option>
                                <option value="Sudan">Sudan</option>
                                <option value="Suriname">Suriname</option>
                                <option value="Swaziland">Swaziland</option>
                                <option value="Sweden">Sweden</option>
                                <option value="Switzerland">Switzerland</option>
                                <option value="Syria">Syria</option>
                                <option value="Tahiti">Tahiti</option>
                                <option value="Taiwan">Taiwan</option>
                                <option value="Tajikistan">Tajikistan</option>
                                <option value="Tanzania">Tanzania</option>
                                <option value="Thailand">Thailand</option>
                                <option value="Togo">Togo</option>
                                <option value="Tokelau">Tokelau</option>
                                <option value="Tonga">Tonga</option>
                                <option value="Trinidad & Tobago">Trinidad & Tobago</option>
                                <option value="Tunisia">Tunisia</option>
                                <option value="Turkey">Turkey</option>
                                <option value="Turkmenistan">Turkmenistan</option>
                                <option value="Turks & Caicos Is">Turks & Caicos Is</option>
                                <option value="Tuvalu">Tuvalu</option>
                                <option value="Uganda">Uganda</option>
                                <option value="United Kingdom">United Kingdom</option>
                                <option value="Ukraine">Ukraine</option>
                                <option value="United Arab Erimates">United Arab Emirates</option>
                                <option value="United States of America">United States of America</option>
                                <option value="Uraguay">Uruguay</option>
                                <option value="Uzbekistan">Uzbekistan</option>
                                <option value="Vanuatu">Vanuatu</option>
                                <option value="Vatican City State">Vatican City State</option>
                                <option value="Venezuela">Venezuela</option>
                                <option value="Vietnam">Vietnam</option>
                                <option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
                                <option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
                                <option value="Wake Island">Wake Island</option>
                                <option value="Wallis & Futana Is">Wallis & Futana Is</option>
                                <option value="Yemen">Yemen</option>
                                <option value="Zaire">Zaire</option>
                                <option value="Zambia">Zambia</option>
                                <option value="Zimbabwe">Zimbabwe</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">State</label>
                            <select class="form-control" id="country" name="stateselect">
                                <option value="Andhra Pradesh">Andhra Pradesh</option>
                                <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                <option value="Assam">Assam</option>
                                <option value="Bihar">Bihar</option>
                                <option value="Chandigarh">Chandigarh</option>
                                <option value="Chhattisgarh">Chhattisgarh</option>
                                <option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
                                <option value="Daman and Diu">Daman and Diu</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Lakshadweep">Lakshadweep</option>
                                <option value="Puducherry">Puducherry</option>
                                <option value="Goa">Goa</option>
                                <option value="Gujarat">Gujarat</option>
                                <option value="Haryana">Haryana</option>
                                <option value="Himachal Pradesh">Himachal Pradesh</option>
                                <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                <option value="Jharkhand">Jharkhand</option>
                                <option value="Karnataka">Karnataka</option>
                                <option value="Kerala">Kerala</option>
                                <option value="Madhya Pradesh">Madhya Pradesh</option>
                                <option value="Maharashtra">Maharashtra</option>
                                <option value="Manipur">Manipur</option>
                                <option value="Meghalaya">Meghalaya</option>
                                <option value="Mizoram">Mizoram</option>
                                <option value="Nagaland">Nagaland</option>
                                <option value="Odisha">Odisha</option>
                                <option value="Punjab">Punjab</option>
                                <option value="Rajasthan">Rajasthan</option>
                                <option value="Sikkim">Sikkim</option>
                                <option value="Tamil Nadu">Tamil Nadu</option>
                                <option value="Telangana">Telangana</option>
                                <option value="Tripura">Tripura</option>
                                <option value="Uttar Pradesh">Uttar Pradesh</option>
                                <option value="Uttarakhand">Uttarakhand</option>
                                <option value="West Bengal">West Bengal</option>                                    
                            </select>
                        </div>                            
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">City</label>
                            <input type="text" name="city" class="form-control" id="recipient-name">
                        </div>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Phone Number</label>
                            <input type="text" name="phonenumber" class="form-control" id="recipient-name">
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="recipient-name" class="col-form-label">Appointment Date</label>
                                    <input type="date" name="appointmentDate" class="form-control" id="appointmentdateinput">
                                </div>
                                <div class="col-md-4" style="margin-top: 40px;">
                                    <button type="button" class="btn btn-secondary" id="checkappointmentBtn">Check</button>
                                </div>
                            </div>
                        </div>   
                        <div class="form-group" id="slotDiv" style="display: none">
                            <div class="row">
                                <div class="col-md-4 ml-2">      
                                    <h5>Morning</h5>                                                             
                                        <input type="radio" id="defaultRadio" name="Time" value="08:00am">
                                        <label for="defaultRadio">08:00am</label>
                                        <br>             
                                        <input type="radio" id="defaultRadio" name="Time" value="08:30am">
                                        <label for="defaultRadio">08:30am</label>
                                        <br>             
                                        <input type="radio" id="defaultRadio" name="Time" value="09:00am">
                                        <label for="defaultRadio">09:00am</label>
                                        <br>             
                                        <input type="radio" id="defaultRadio" name="Time" value="09:30am">
                                        <label for="defaultRadio">09:30am</label>
                                        <br>             
                                        <input type="radio" id="defaultRadio" name="Time" value="10:00am">
                                        <label for="defaultRadio">10:00am</label>
                                        <br>             
                                </div>
                                <div class="col-md-4 ml-2">
                                    <h5>After noon</h5>
                                         <input type="radio" id="defaultRadio" name="Time" value="12:00pm">
                                        <label for="defaultRadio">12:00pm</label>
                                        <br>             
                                        <input type="radio" id="defaultRadio" name="Time" value="12:30am">
                                        <label for="defaultRadio">12:30pm</label>
                                        <br>             
                                        <input type="radio" id="defaultRadio" name="Time" value="01:00pm">
                                        <label for="defaultRadio">01:00pm</label>
                                        <br>             
                                        <input type="radio" id="defaultRadio" name="Time" value="01:30pm">
                                        <label for="defaultRadio">01:30pm</label>
                                        <br>             
                                        <input type="radio" id="defaultRadio" name="Time" value="02:00pm">
                                        <label for="defaultRadio">02:00pm</label>
                                        <br>             
                                </div>                            
                            </div>                                
                        </div>

                        <div class="form-group">
                            <label for="message-text" class="col-form-label">Write Your Problem</label>
                            <textarea class="form-control" name="aboutproblem" id="message-text" placeholder="Briefly write about your problem..."></textarea>
                        </div>                            
                        <div class="form-group">
                            <label for="message-text" class="col-form-label">Any Medical Report</label>
                            <input type="file" class="form-control" id="medicalreport" name="medicalreport" accept="image/*">
                        </div>                    
                        <div class="container text-center" id="loader" style="display:none">
                                    <span class="fa fa-refresh fa-spin fa-2x"></span>
                                    <h4>Please wait...</h4>
                        </div>
                        <div class="modal-footer">
                            <button type="button" id="close-btn" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" id="submit-btn" class="btn btn-primary">Send Appointment Request</button>
                        </div>
                    </form>
                </div>

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
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
    crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#checkappointmentBtn").click(function () {
                $("#slotDiv").show();

            });
        });
    </script>

    <script>
            $(document).ready(function () {
                console.log("loaded...")

                $('#offlineAppointmentform').on('submit', function (event) {     //On click submit button on registerForm event function call
                    event.preventDefault();         //this statement prevents register form to go on register servlet

        //var form = $(this).serialize();
                    let form = new FormData(this);      //this will collect all our form data 
                    
                    $("#submit-btn").hide();
                    $("#close-btn").hide();
                    $("#loader").show();
                    //send form data to register servlet:

                    $.ajax({
                        url: "doctorOfflineAppointmentServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                           
                            console.log("success....")
                            $("#submit-btn").show();
                            $("#close-btn").show();
                            $("#loader").hide();
                            if(data.trim() === 'done')
                            {
                                swal("You Are Successfully Registered!", "Proceed to Pay", "success")
                                        .then((value) => {
                                            window.location = "paymentform.jsp"
                                        });
                            } else
                            {
                                swal(data)
                            }


                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            cosnole.log(jqXHR)
                            console.log("error.....")
                            $("#submit-btn").show();
                            $("#loader").hide();
                            swal("Oops..Something went wrong!", "Please try again later..!!", "warning");
                        },
                        processData: false,
                        contentType: false
                    })

                })
            })
        </script>
</body>
</html>
