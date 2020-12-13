<%-- 
    Document   : information
    Created on : Nov 1, 2020, 1:14:47 PM
    Author     : LongBody
--%>

<%@page import="model.AccountUser"%>
<%@page import="dal.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home Mie</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="./css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
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

                            <%
                                Cookie cookie = null;
                                Cookie[] cookies = null;
                                String email = "";
                                String password = "";
                                String phone = "";
                                String name = (String) request.getAttribute("UserLogin");
                                // Get an array of Cookies associated with this domain
                                cookies = request.getCookies();
                                if (cookies != null) {
                                    for (int i = 0; i < cookies.length; i++) {
                                        cookie = cookies[i];
                                        if (cookie.getName().equals("email")) {
                                            email = cookie.getValue();
                                        }
                                        if (cookie.getName().equals("password")) {
                                            password = cookie.getValue();
                                        }
                                        if (cookie.getName().equals("phone")) {
                                            phone = cookie.getValue();
                                        }

                                    }
                                }
                                AccountDAO dal = new AccountDAO();
                                AccountUser account = dal.getAccountByUP(email, password);

                                if (account != null) {
                                    name = account.getName();
                                    phone =account.getPhone();
                                }


                            %>            

                            <%      if (name != null) {


                            %>
                            <div class="dropdown">
                                <a class="btn btn-secondary dropdown-toggle btn-sm"  href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <%= name%>
                                </a>

                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <a class="dropdown-item" href="information.jsp">Thông tin</a>
                                    <a class="dropdown-item" href="carRentHistoryController">Thuê Xe</a>
                                    <a class="dropdown-item" href="bookingHistoryController">Lịch sử Booking</a>                                
                                    <a class="dropdown-item" href="listLikeController">Danh sách yêu thích</a>
                                    <a class="dropdown-item" href="logoutController" style="color: Red">Đăng xuất</a>
                                </div>
                            </div>


                            <%
                            } else {
                            %>
                            <li class="nav-item active">
                                <a class="nav-link" href="./signup.jsp">Đăng Kí </a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="./login.jsp">Đăng Nhập</a>
                            </li>
                            <%
                                }
                            %>

                        </ul>
                    </div>
                </div>
            </nav>
        </section>

        <section style="padding-top: 120px">
            <div class="container">

                <div class="card" style="padding: 30px;">
                    <form action="changeInforUserController" method="get">
                         <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Họ và tên</label>
                            <input type="text" class="form-control" id="inputEmail4" name="name"  value="<%= name%>" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Số điện thoại</label>
                            <input type="text" class="form-control" id="inputPassword4"  name="phone" value="<%= phone%>"  required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputAddress">Email</label>
                        <input type="text" class="form-control" id="inputAddress"value="<%= email%>">
                        <small id="emailHelp" class="form-text text-muted">Bạn không thể thay đổi email</small>
                    </div>
                        <h6 style="color:green">${success}</h6>
                    <button type="submit" class="btn btn-primary" style="width: 100px">Lưu</button>
                    </form>
                   
                </div>
                <div class="card" style="padding: 30px; margin-top: 40px">
                    <h5>Thay đổi mật khẩu</h5>
                    <form action="changePasswordController" method="post">
                        <div class="form-row ">

                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Password</label>
                                <input type="password" name="password" value="${password}" class="form-control" id="inputEmail4" placeholder="Password" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Confirm Password</label>
                                <input name="confirmpassword" value="${confirmpassword}" type="password" class="form-control" id="inputPassword4" placeholder="Confirm Password" required>
                            </div>
                        </div>
                        <h6 style="color:red">${signupError}</h6>
                        <h6 style="color:green">${signupSuccess}</h6>
                        <button type="submit" class="btn btn-primary" style="width: 100px">Thay Đổi</button>
                    </form>
                </div>





            </div>

        </section>


        <section class="footer__section" style="margin-top: 50px">
            <!-- Footer -->
            <footer class="page-footer font-small mdb-color lighten-3 pt-4 footer__wrapper">

                <!-- Footer Links -->
                <div class="container text-center text-md-left">

                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 mr-auto my-md-4 my-0 mt-4 mb-1">

                            <!-- Content -->
                            <h5 class="font-weight-bold text-uppercase mb-4">Home Mie</h5>
                            <p>Home Mie hiện là nền tảng đặt phòng trực tuyến #1 Việt Nam</p>
                            <p>Đồng hành cùng chúng tôi, bạn có những chuyến đi mang đầy trải nghiệm. Với Home Mie, việc đặt chỗ ở, biệt thự nghỉ dưỡng, khách sạn, nhà riêng, chung cư... trở nên nhanh chóng, thuận tiện và dễ dàng.</p>

                        </div>
                        <!-- Grid column -->

                        <hr class="clearfix w-100 d-md-none">

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 mx-auto my-md-4 my-0 mt-4 mb-1">

                            <!-- Links -->
                            <h5 class="font-weight-bold text-uppercase mb-4">About</h5>

                            <ul class="list-unstyled">
                                <li>
                                    <p>
                                        <a href="#!" class="link__footer">Home</a>
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        <a href="#!" class="link__footer">About Us</a>
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        <a href="#!" class="link__footer">Contact</a>
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        <a href="#!" class="link__footer">Help</a>
                                    </p>
                                </li>
                            </ul>

                        </div>
                        <!-- Grid column -->

                        <hr class="clearfix w-100 d-md-none">

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1">

                            <!-- Contact details -->
                            <h5 class="font-weight-bold text-uppercase mb-4">Address</h5>

                            <ul class="list-unstyled">
                                <li>
                                    <p>
                                        <i class="fas fa-home mr-3"></i> FPT University </p>
                                </li>
                                <li>
                                    <p>
                                        <i class="fas fa-envelope mr-3"></i> longnthe140271@gmail.com</p>
                                </li>
                                <li>
                                    <p>
                                        <i class="fas fa-phone mr-3"></i> + 03 449 142 82</p>
                                </li>
                                <li>
                                    <p>
                                        <i class="fas fa-print mr-3"></i> + 03 645 345 12</p>
                                </li>
                            </ul>

                        </div>


                        <hr class="clearfix w-100 d-md-none">


                        <div class="col-md-2 col-lg-2 text-center mx-auto my-4">

                            <h5 class="font-weight-bold text-uppercase mb-4">Follow Us</h5>


                            <a type="button" class="btn-floating btn-fb">
                                <i class="fab fa-facebook-f"></i>
                            </a>

                            <a type="button" class="btn-floating btn-gplus">
                                <i class="fab fa-google-plus-g"></i>
                            </a>


                        </div>


                    </div>


                </div>



                <div class="footer-copyright text-center py-3">© 2020 Copyright:
                    <a href="./index.html"> Homie</a>
                </div>


            </footer>

        </section>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
