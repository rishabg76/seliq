<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@include file="header.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seliq - Home Page</title>
        <script src="/Project1/bootstrap/jquery.js"></script>
        <script src="/Project1/bootstrap/bootstrap.js"></script>
        <link rel="stylesheet" type="text/css" href="/Project1/css/body.css">
        <link rel="stylesheet" type="text/css" href="/Project1/css/styles.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        
        <script src="/Project1/JS/registration.js"></script>
        <script src="/Project1/JS/availability.js"></script>
        
    </head>
    <body>
        
        <main>
            <%--<%String fname = (String) session.getAttribute("email"); %>--%>
            <div class="bulletin">
                <span class="Blogo"></span>
                <div class="news"> News bulletin here </div>
                <span class="cross_logo"></span>
            </div>

            <!--Cover section-->

            <section>
                <div class="cover_section">
                    <div class="cover_img">
                        <div class="overlay">
                            <div class="card_container">
                                <h1>Welcome to StuClona</h1>
                                <p class="text-muted">Sell anything here.</p>
                                <p class="text-muted">Sell Online Quickly</p>

                                <% if(fname==null){%>
                                <a href="#account" class="get_started" data-toggle="modal" data-target="#signin">
                                    <div>
                                        Create Account
                                    </div>
                                </a><%}%>


                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <!--  Sign in  Model   -->
            <div class="modal" id="signin" tabindex="-1" role="dialog" arai-laballedby="exampleM0dalLabel" aria-hidden="true">
                
                <div class="modal-dialog" role="document">              
                    <div id="account" class="connection_section modal-content">
                        <div class="signup_form_header">
                            <div class="signup_form_heading modal-header">
                                <h2>Create your account</h2>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="signup_form_subheading">
                                <p>It will just take few minutes</p>
                            </div>
                        </div>
                        <form class="signup_form_container" action="/Project1/fc/?page=Registration&type=model" method="POST">
                            <div class="signup_form_caption">Name</div>
                            <div class="signup_box_row">

                                <input type="text" name="firstname" placeholder="First Name" class="signup_textbox w50">

                                <input type="text" name="lastname" placeholder="Last Name" class="signup_textbox w50">
                            </div>
                            <div class="signup_form_caption">Email</div>
                            <div class="signup_box_row">
                                <input type="email" id="fid" name="email" placeholder="Enter your email" class="signup_textbox w100" onblur="acaller('fid','sid')">
                                <span id="sid"></span>
                            </div>

                            <div class="signup_form_caption">Mobile Number</div>
                            <div class="signup_box_row">
                                <input type="number" name="phone" placeholder="Enter your mobile number" class="signup_textbox w100">
                            </div>

                            
                            <div class="signup_form_caption">Password</div>
                            <div class="signup_box_row">
                                <input type="password" name="password" placeholder="Enter Password" class="signup_textbox w50">

                                <input type="password" name="password2" placeholder="Confirm Password" class="signup_textbox w50">
                            </div>
                            <button type="submit" class="signup_submit_button">Submit</button>
                            <%--<submit>
                                <input class="signup_submit_button" type="button" value="Submit">


</submit>--%>
                            <p>Already have an account ? <a href="/Project1/fc/ab?type=view&page=loginpage">Login</a></p>
                        </form>

                    </div>
                </div>
            </div>

            
            <!--                   Search Tab                  -->
            <section class="tab_section">
                <form class="tab">
                    <select name="category" class="input categorybox">
                            <option value="electronics">Electronics</option>
                            <option value="gadgets">Gadgets</option>
                            <option value="books">Books</option>
                            <option value="households">Households</option>
                            <option value="mobiles">Mobiles</option>
                            <option value="vehicles">Vehicles</option>
                        </select>

                        <input type="text" name="search" class="input searchbox" placeholder="search any product">

                    </div>
                </form>
            </section>

            <!--Carousal-->


            <!--Categories-->
            <section class="categories">


                <!--<div class="circles">
                    <div class="circle1"></div>
                    <div class="circle2"></div>
                    <div class="circle3"></div>
                    <div class="circle4"></div>
                </div>-->

                <div class="background">
                    <div>
                        <h3>looking for ?</h3>
                    </div>



                    <div class="CT_container">
                        <a href="/Project1/fc/ab?page=product&type=view">
                        <div class="thumbs">
                            
                            <div class="image_container">
                                <img class="icon" src="/Project1/Icons/kettle.svg" alt="Electronics"/>
                            </div>
                            <div class="title_container">
                                <div class="info_button">
                                Electronics
                                </div>
                            </div>
                        </div>
                        </a>

                        <a href="/Project1/fc/ab?page=product&type=view">
                        <div class="thumbs">
                            <div class="image_container">
                                <img class="icon" src="/Project1/Icons/gadgets.svg" alt="gadgets" />
                            </div>
                            <div class="title_container">
                                <div class="info_button">
                                    Gadgets
                                </div>
                            </div>
                        </div>
                        </a>
                        <a href="/Project1/fc/ab?page=product&type=view">
                        <div class="thumbs">
                            <div class="image_container">
                                <img class="icon" src="/Project1/Icons/households.svg" alt="households" />
                            </div>
                            <div class="title_container">
                                <div class="info_button">
                                    Households
                                </div>
                            </div>
                        </div></a>
                        <a href="/Project1/fc/ab?page=product&type=view">

                        <div class="thumbs">
                            <div class="image_container">
                                <img class="icon" src="/Project1/Icons/mobile.svg" alt="mobiles" />
                            </div>
                            <div class="title_container">
                                <div class="info_button">
                                    Mobiles
                                </div>
                            </div>
                        </div></a>

                        <a href="/Project1/fc/ab?page=product&type=view">
                        <div class="thumbs">
                            <div class="image_container">
                                <img class="icon" src="/Project1/Icons/bike.svg" alt="vehicles" />
                            </div>
                            <div class="title_container">
                                <div class="info_button">
                                    Vehicles
                                </div>
                            </div>
                        </div></a>

                        <a href="/Project1/fc/ab?page=product&type=view">
                        <div class="thumbs">
                            <div class="image_container">
                                <img class="icon" src="/Project1/Icons/other.svg" alt="others" />
                            </div>
                            <div class="title_container">
                                <div class="info_button">
                                    Other
                                </div>
                            </div>
                        </div></a>


                    </div>

                </div>

            </section>
            <!--team-->
            <section></section>

        </main>
        <footer class="page_footer">

            <div class="wrap_one">

                <div class="Fcaption">
                    <a href="about.html">About StuClona</a>
                </div>

                <div class="Fcaption">
                    <a href="support.html">Support Us</a>
                </div>

                <div class="Fcaption">
                    <a href="privacy.html">Privacy</a>
                </div>

            </div>

            <div class="wrap_two">

                <div class="Fcaption">Contact</div>
                <ul>
                    <li class=contact_number>+98-1234567890</li>
                    <li class="email">Seliq@gmail.com</li>
                </ul>

                <div class="Fcaption">Stay Connected</div>
                <ul>
                    <li><a href="http://www.facebook.com/seliq">Facebook</a></li>
                    <a href="http://www.instagram.com/seliq">Instagram</a>
                </ul>
            </div>

            <div class="wrap_three">

                <div class="block">
                    @2019 Dasauli , Lucknow , 226026
                </div>

            </div>

        </footer>



    </body>
</html>