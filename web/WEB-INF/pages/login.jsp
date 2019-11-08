<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="false" %>
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
        
        <%--
        <script src="/Project1/JS/registration.js"></script>
        <script src="/Project1/JS/availability.js"></script>
        <link rel="stylesheet" href="/Project1/css/styles.css">
        --%>
    </head>
    <body>
        <header class="header">
            <nav class="navbar fixed-top shadow navbar-expand-lg navbar-dark nav-bg-color">
                <a class="navbar-brand ml-lg-4" href="/Project1/fc/ab?page=login&type=view">
                    <img src="/Project1/Images/logo.png" width="50%" height="50%" alt="logo">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">


                    <form>
                        <div class="search">

                            <div class="first_wrap">
                                <input class="SB" type="search" placeholder="Search" aria-label="Search">
                            </div>


                            <!--
                      <div class="second_wrap">
                          <div class="icon">
                          </div>
                      </div>
                            -->

                        </div>
                    </form>

                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="modal" data-target="#loginModal" href="#">LOGIN</a>
                        </li>
                        <li class="nav-item">
                            <a href="#account" data-toggle="modal" data-target="#signin" class="nav-link">
                                SIGNUP
                            </a>
                        </li>


                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Profile
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">My Account</a>
                                <a class="dropdown-item" href="#">Log Out</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <main>

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
                                <h1>Welcome to Seliq</h1>
                                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus delectus quisquam reiciendis</p>

                                <a href="#account" class="get_started" data-toggle="modal" data-target="#signin">
                                    <div>
                                        Create Account
                                    </div>
                                </a>


                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <!--  Sign in  Model   -->
            <div class="fmodal fade" id="signin" tabindex="-1" role="dialog" arai-laballedby="exampleM0dalLabel" aria-hidden="true">
                <span class="close_model"> </span>
               
                <div class="fmodal-dialog" role="document">              
                   <div id="account" class="connection_section">
                        <div class="signup_form_header">
                            <div class="signup_form_heading">
                                <h2>Create your account</h2>
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
                                <input type="email" name="email" placeholder="Enter your email" class="signup_textbox w100">
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
                            <submit>
                                <input class="signup_submit_button" type="button" value="Submit">


                            </submit>
                            <p>Already have an account ? <a href="">Login</a></p>
                        </form>
                        
                    </div>
                </div>
            </div>

            <!-- Login Modal -->
            <div class="modal" id="loginModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="login_section">

                            <div class="login_form_heading modal-header">
                                <h2>Login to your account</h2>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <form class="login_form_container" action="/Project1/fc/?page=Login&type=model" method="POST">

                                <div class="login_form_caption">Email</div>
                                <div class="login_box_row">
                                    <input type="email" placeholder="Enter your email" name="email" class="textbox w100">
                                </div>


                                <div class="login_form_caption">Password</div>
                                <div class="login_box_row">
                                    <input type="password" placeholder="Enter Password" name="password" class="textbox w100">

                                </div>


                                <button type="submit" class="submit_button">Login</button>
                                <%--<submit>
                                    <input class="submit_button" type="button" value="Submit">

                            </submit>--%>
                                <div class="form-group">
                                    <a href="/Project1/fc/ab?page=forgotPassword&type=view">Forgot Your Password</a>
                                </div>

                                <p>Create an account <a data-toggle="modal" data-target="#signin">here</a></p>
                            </form>
                        </div>



                    </div>
                </div>
            </div>



            <!--       Account   login section          -->



            <!--                   Search Tab                  -->
            <section>
                <form>
                    <div class="tab">

                        <select name="category" class="input categorybox">
                            <option value="electronics">Electronics</option>
                            <option value="gadgets">Gadgets</option>
                            <option value="books">Books</option>
                            <option value="households">Households</option>
                            <option value="bikes">Bikes</option>
                        </select>

                        <input type="text" name="search" class="input searchbox" placeholder="search any product">

                    </div>
                </form>
            </section>

            <!--Carousal-->


            <!--Categories-->
            <section class="categories">


                <div class="circles">
                    <div class="circle1"></div>
                    <div class="circle2"></div>
                    <div class="circle3"></div>
                    <div class="circle4"></div>
                </div>

                <div class="background">
                    <div>
                        <h3>looking for ?</h3>
                    </div>



                    <div class="CT_container">

                        <div class="thumbs">
                            <div class="info_button">
                                Electronics
                            </div>
                        </div>

                        <div class="thumbs">
                            <div class="info_button">
                                Gadgets
                            </div>
                        </div>

                        <div class="thumbs">
                            <div class="info_button">
                                Books
                            </div>
                        </div>

                        <div class="thumbs">
                            <div class="info_button">
                                Households
                            </div>
                        </div>

                        <div class="thumbs">
                            <div class="info_button">
                                Bikes
                            </div>
                        </div>
                        <div class="thumbs">
                            <div class="info_button">
                                MIsc.
                            </div>
                        </div>

                    </div>

                </div>

            </section>
            <!--team-->
            <section></section>

        </main>
        <footer class="page_footer">

            <div class="wrap_one">

                <div class="Fcaption">
                    <a href="about.html">About Seliq</a>
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