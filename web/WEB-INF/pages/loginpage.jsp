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
        <link rel="stylesheet" type="text/css" href="/Project1/css/login.css">
        <link rel="stylesheet" type="text/css" href="/Project1/css/styles.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


        <script src="/Project1/JS/registration.js"></script>
        <script src="/Project1/JS/availability.js"></script>

    </head>
    <body>
        <%@include file="/Fragments/header.jspf" %>
        <main>
            <div class="body_section">

                <div class="headings">
                    <h2>Login to your account</h2>
                    
                </div>

                <form class="f_container" action="/Project1/fc/?page=Login&type=model" method="POST">

                    <div class="caption">Email</div>
                    <div class="row">
                        <input type="email" placeholder="Enter your email" name="email" class="textbox w100">
                    </div>


                    <div class="caption">Password</div>
                    <div class="row">
                        <input type="password" placeholder="Enter Password" name="password" class="textbox w100">

                    </div>


                    <button type="submit" class="button submit_button">Login</button>
                    
                    <%--<submit>
                        <input class="submit_button" type="button" value="Submit">

                            </submit>--%>
                    <div class="form-group">
                        <a href="/Project1/fc/ab?page=forgotPassword&type=view">Forgot Your Password</a>
                    </div>

                    <p>Create an account <a data-toggle="modal" data-target="#signin">here</a></p>
                </form>
            </div>

            
            
            
            
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