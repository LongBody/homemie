<%-- 
    Document   : carRent
    Created on : Nov 1, 2020, 4:22:42 PM
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
        <link rel="stylesheet" href="./css/room.css">
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

        <section style="margin-top: 120px">
             <div class="container-fluid">
                <div class="row">
                    <div style="display: flex; justify-content: center;" class="col-lg-12">
                        <div>
                            <img src="https://car-api-upload.luxstay.com/upload/file/1594883594-jmoI_nhrt5ugb0fUVIukKfii.jpg" style="height: 300px;padding-right: 10px;" class="image-roomDetail">
                        </div>
                        <div>
                            <img src="https://car-api-upload.luxstay.com/upload/file/1594883594-n7IGkYYwdFd096puQ9SYPlEf.jpg" style="height: 300px;padding-right: 10px;" class="image-roomDetail">
                        </div>
                        <div>
                            <img src="https://car-api-upload.luxstay.com/upload/file/1595308537-BeVzdW9pAyxjobv_BoddAkeG.jpg" style="height: 300px;padding-right: 10px;" class="image-roomDetail">
                        </div>
                    </div>
                </div>


            </div>
            
                        <div class="container">
                <div class="row" style="padding-top: 50px;">
                    <div class="col-lg-8">          

                        <h2>Thuê xe ô tô tự lái tại Hà Nội và TP. HCM</h2>
                        <p>Đặt ngay dịch vụ cho thuê xe sang của Home Mie với các trải nghiệm đẳng cấp tại Hà Nội và Hồ Chí Minh:</p>


                        <div style="margin-top: 5px;">
                            <p> + 🚗 Dòng xe Lux số tự động, chạy xăng tiết kiệm nhiên liệu.</p>
                            <p> + 🌐 Wifi tốc độ cao không mất kết nối khi di chuyển</p>
                            <p> + 🎼 Kết nối bluetooth, khe cắm USB gọn nhẹ, cùng thưởng thức bài ca mà bạn yêu thích.</p>
                            <p> + 📲 Ổ cắm sạc laptop, cáp sạc điện thoại đa năng không sợ hết pin</p>
                            <p> + 🏠 Ghế ngồi rộng rãi, tận hưởng cảm giác thư giãn như ở nhà.</p>
                            <p> + 📎 Định vị GPS và Camera lùi an toàn khi di chuyển.</p>
                        </div>
                        
                        <b>Vui lòng đặt xe trước ít nhất 02 tiếng so với giờ nhận xe.</b>

                    </div>
                    <div class="col-lg-4" style="display:flex ; justify-content: flex-end; cursor: pointer;">
                        <div class="card" style="width: 18rem; height: 270px">
                            <div class="card-body">
                                <h6>
                                    Giá Thuê : 1,399,999₫ / ngày
                                </h6>

                                <form action="carRentController" method="post"> 
                                    <input type="date" class="form-control" id="exampleInputPassword1" style="margin-bottom: 5px;" name="date-checkIn"/>
                                    <label for="exampleInputPassword1" style="font-weight: bold; font-size: small; color: gray;">Thuê Đến</label>
                                    <input type="date" class="form-control" id="exampleInputPassword1" style="margin-bottom: 5px;" name="date-checkOut"/>                           
                                    <input type="text" class="form-control" id="exampleInputPassword1" style="display: none" name="name" value="${room.getRoomName()}"/> 
                                    <p style="color: red">${messError}</p>
                                    <input type="submit"  class="btn " style="background-color: #f65e38; color: white; margin-top: 10px;" value="Đặt Xe"/>
                                </form>
                            </div>
                        </div>
                    </div>
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
