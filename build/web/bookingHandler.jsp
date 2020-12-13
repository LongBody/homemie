<%-- 
    Document   : bookingHandler
    Created on : Oct 28, 2020, 10:42:27 AM
    Author     : LongBody
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Locale"%>
<%@page import="dal.AccountDAO"%>
<%@page import="model.AccountUser"%>
<%@page import="dal.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

                       <form style="width: 500px; display: flex" action="searchRooms" method="get">

                        <input class="form-control " type="text" name="keyword" placeholder="Nhập tên khách sạn, địa danh" aria-label="Search">

                        <button type="submit" class=" btn btn-outline-secondary" style="margin-left:  3px">Search</button>
                    </form> 
                        <ul class="navbar-nav ml-auto mt-2 mt-lg-0">

                            <%
                                Cookie cookie = null;
                                Cookie[] cookies = null;
                                String email = "";
                                String password = "";
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

                                    }
                                }
                                AccountDAO dal = new AccountDAO();

                                AccountUser account = dal.getAccountByUP(email, password);

                                if (account != null) {
                                    name = account.getName();
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



        <section style="padding-top: 150px;  background-color: #F4F4F4; border-radius : 34px ; padding-bottom: 50px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <h6 style="font-size: 16px; font-weight: 700;">${dayBetween} đêm tại ${bookingRoom.getRoomName()}</h6>
                        <div style="display: flex; margin-bottom: 20px;">
                            <div style="background-color: #fff; border-radius: 10px; padding:30px 20px; width: 250px;">
                                <div style="height: 2px; width: 60%; background-color: green;"></div>
                                <div> Nhận Phòng</div>
                                <div>${checkin}</div>
                            </div>
                            <div style="background-color: #fff; border-radius: 10px; padding:30px 20px; margin-left: 20px;width: 250px;">
                                <div style="height: 2px; width: 60%; background-color: tomato;"></div>
                                <div>Trả Phòng</div>
                                <div>${checkout}</div>
                            </div>
                        </div>

                        <h6 style="font-size: 16px; font-weight: 700;">Trách nhiệm vật chất</h6>
                        <p style="margin-bottom: 30px; color: gray; font-size: 14px;">
                            Khách hàng chịu mọi trách nhiệm thiệt hại về tài sản đã gây ra tại chỗ ở trong thời gian lưu trú .
                        </p>

                        <h6 style="font-size: 16px; font-weight: 700;">Nội quy chỗ ở</h6>
                        <p style="color: gray; font-size: 14px; display: grid;margin-bottom: 50px;">
                            Yêu cầu chứng minh thư , thẻ căn cước/hộ chiếu hoặc đặt cọc chỗ nghỉ
                            <span>Hạn chế làm ồn sau 10h tối</span>
                        </p>


                        <%
                            String priceRoom = (String) request.getAttribute("sum");
                            int priceConvert = Integer.parseInt(priceRoom);
                            String price = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"))
                                    .format(priceConvert);
                        %>



                        <h6 style="font-size: 24px; font-weight: 700;">Thông tin của bạn</h6>
                        <div style="display: flex;">
                            <span style="color: #f65e38;">* </span>
                            <h6 style="font-size: 14px; font-weight: 600; margin-left: 5px;"> Tên khách hàng</h6>
                        </div>
                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Tên khách hàng" style="width: 90%; margin-top: 10px; "value ="${name}">
                        <div style="display: flex; margin-top: 20px;">
                            <div>
                                <div style="display: flex;">
                                    <span style="color: #f65e38;">* </span>
                                    <h6 style="font-size: 14px; font-weight: 600; margin-left: 5px;">Số điện thoại</h6>
                                </div>
                                <div>
                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Số điện thoại" style="width: 90%; margin-top: 10px; "value ="${phone}">
                                </div>
                            </div>

                            <div style="margin-left: 20px;">
                                <div style="display: flex;">
                                    <span style="color: #f65e38;">* </span>
                                    <h6 style="font-size: 14px; font-weight: 600; margin-left: 5px;"> Email</h6>
                                </div>
                                <div>
                                    <input type="email" class="form-control" id="exampleInputPassword1" placeholder="Địa chỉ Email" style="width: 90%; margin-top: 10px; " value ="${email}">
                                </div>
                            </div>
                        </div>

                        <div style="color: green">${success}</div>

                        <a  class="btn" type="submit" href="paymentController?id=${bookingRoom.getId()}&quantity=${dayBetween}&dobBefore=${checkin}&dobAfter=${checkout}" style="background-color: #f65e38; color: white; margin-top: 20px;">Thanh Toán
                        </a>


                        <p style="color: gray; font-size: 14px; display: grid;">

                        </p>

                    </div>
                    <div class="col-lg-4" style="background-color: #fff; border-radius: 10px; padding:30px 20px 50px 20px; height:100%;margin-top: 20px">
                        <div style="display: flex;width: 100%;">
                            <div style="display: inline-block;width: 50%;">
                                <span style="font-weight: bold; font-family: sans-serif; font-size: 15px">${bookingRoom.getRoomName()}</span>
                                <p> <i class="fas fa-map-marker-alt" style="color: #f65e38;"></i><span style="color: gray; font-size: 14px; margin-left: 5px;">${bookingRoom.getName()} , Việt Nam</span> </p>
                            </div>
                            <div style="margin-left: 50px;width: 50%; justify-content: flex-end;">
                                <img src=${bookingRoom.getImageRoom()} style="height: 100px;" />
                            </div>
                        </div>
                        <hr/>
                        <div>
                            <div>
                                <i class="fas fa-calendar-alt" style="color: #f65e38;margin-right: 3px;"></i> ${dayBetween} đêm  <span style="color: #f65e38;">* </span>  ${checkin} - ${checkout}
                            </div>
                        </div>
                        <hr/>
                        <div>
                            <div>
                                <span style="font-weight: bold; font-family: sans-serif;font-size: 14px;">Tổng Tiền : </span> <span>
                                    <%
                                        out.print(price);
                                    %>

                                </span>
                            </div>
                        </div>
                        <hr/>
                        <div>
                            <div>
                                <span style="font-weight: bold; font-family: sans-serif; font-size: 14px;">Chính Sách Huỷ Phòng : </span> <span> Miễn phí huỷ phòng trong vòng 48h và sau khi đặt phòng thành công trước 5 ngày so với thời gian check in</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>

        <section class="footer__section">
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
