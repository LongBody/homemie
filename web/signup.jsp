<%-- 
    Document   : signup.jsp
    Created on : Oct 21, 2020, 11:03:07 AM
    Author     : LongBody
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">

    <head>
        <title>Title</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="./css/style.css">
        <link rel="stylesheet" href="./css/login.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>

        <section>
            <nav class="navbar navbar-expand-sm navbar-light bg-light">
                <div class="container">
                    <a class="navbar-brand" href="indexController"><img src="./image/logo_brand.png" class="logo__brand" style="height: 70px;"></a>
                    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsibleNavId">

                        <!-- <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="text" placeholder="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form> -->
                        <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                            <li class="nav-item active">
                                <a class="nav-link" href="./signup.jsp">Đăng Kí </a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="./login.jsp">Đăng Nhập</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </section>

        <section class="section__login__form">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div id="first">
                            <div class="myform form ">
                                <div class="logo mb-3">
                                    <div class="col-md-12 text-center">
                                        <h1>Đăng Kí</h1>
                                    </div>
                                </div>
                                <form action="signupController" method="post" name="login">
                                    <div class="form-group">

                                        <input type="text" name="name" value="${name}" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter Name" required>
                                    </div>
                                    <div class="form-group">

                                        <input type="email" name="email" value="${email}" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter Email" required>
                                    </div>
                                    <div class="form-group">

                                        <input type="text" name="phone" value="${phone}" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter Phone" required>
                                    </div>
                                    <div class="form-group">

                                        <input type="password" name="password" value="${password}" id="password" class="form-control" aria-describedby="emailHelp" placeholder="Enter Password" required>
                                    </div>
                                    <div class="form-group">

                                        <input type="password" name="confirmpassword" value="${confirmpassword}" id="password" class="form-control" aria-describedby="emailHelp" placeholder="Enter Confirm Password" required>
                                    </div>

                                    <div class="col-md-12 text-center ">
                                        <h6 style="color:red">${signupError}</h6>
                                        <h6 style="color:green">${signupSuccess}</h6>
                                        <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Sign Up</button>
                                    </div>
                                    <div class="col-md-12 ">
                                        <div class="login-or">
                                            <hr class="hr-or">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <p class="text-center">Have account? <a href="./login.jsp" id="signup">Sign in here</a></p>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>

</html>
