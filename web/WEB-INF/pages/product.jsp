<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seliq - Home Page</title>
        <script src="/Project1/bootstrap/jquery.js"></script>
        <script src="/Project1/bootstrap/bootstrap.js"></script>
        <link rel="stylesheet" type="text/css" href="/Project1/css/body.css">
        <link rel="stylesheet" type="text/css" href="/Project1/css/styles.css">
        <link rel="stylesheet" type="text/css" href="/Project1/css/products.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


        <script src="/Project1/JS/registration.js"></script>
        <script src="/Project1/JS/availability.js"></script>

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
                        <%String fname = (String) session.getAttribute("email"); %>
                        <li class="nav-item">
                            <a class="nav-link"  href="/Project1/fc/ab?type=view&page=additem">Post Free Ad</a>
                        </li>
                        <% if (fname == null) {%>
                        <li class="nav-item">
                            <a class="nav-link"  href="/Project1/fc/ab?type=view&page=loginpage">LOGIN</a>
                        </li>
                        <li class="nav-item">
                            <a href="#account" data-toggle="modal" data-target="#signin" class="nav-link">
                                SIGNUP
                            </a>
                        </li>
                        <%} else {%>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <%=fname%>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="/Project1/fc/ab?type=view&page=profile">My Account</a>
                                <a class="dropdown-item" href="/Project1/fc/?page=Logout&type=model">Log Out</a>
                            </div>
                        </li>
                        <%}%>
                    </ul>
                </div>
            </nav>
        </header>
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
                                            <input type="email" id="fid" name="email" placeholder="Enter your email" class="signup_textbox w100" onblur="acaller('fid', 'sid')">
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
        <main>      
      


                            <section>
                                <p>No Products to show at the time</p>
                                <a href="/Project1/fc/ab?page=login&type=view">Visit Later</a>
                            </section>

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