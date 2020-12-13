<%-- 
    Document   : place
    Created on : Oct 26, 2020, 10:40:42 AM
    Author     : LongBody
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="model.AccountUser"%>
<%@page import="dal.AccountDAO"%>
<%@page import="model.AccountUser"%>
<%@page import="dal.AccountDAO"%>
<%@page import="model.Room"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="./css/style.css">
        <link rel="stylesheet" href="./css/login.css">
        <link rel="stylesheet" href="./css/place.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
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

                            <input class="form-control " type="text" name="keyword" placeholder="Nhập tên khách sạn, địa danh" aria-label="Search" value="${keyword}">

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

        <%
            String pageSize = (String) request.getAttribute("pageSize");
            String pageCurrent = (String) request.getAttribute("pageCurrent");
            String sort = (String) request.getAttribute("sort");
        %>

        <section style="padding: 120px">
            <div class="container">
                <%if (pageSize != null) {%>
                <form name="sort" action="sortController" method="GET" style="margin-bottom: 20px">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" name="sort" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="<%=pageCurrent%>/asc"
                               onclick="javascript:document.sort.submit();"
                               <%

                                   if (sort != null && sort.equals("asc")) {
                                       out.print("checked");
                                   }%>
                               >
                        <label class="form-check-label" for="inlineRadio1">Giá từ thấp đến cao</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" name="sort" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="<%=pageCurrent%>/desc"
                               onclick="javascript:document.sort.submit();"
                               <%

                                   if (sort != null && sort.equals("desc")) {
                                       out.print("checked");
                                   }%>
                               >
                        <label class="form-check-label" for="inlineRadio2">Giá từ cao đến thấp</label>
                    </div>

                </form>




                <%}%>


                <div class="row">

<!--                    <div style="color: red">${notfound}</div>-->


                    <%
                        ArrayList<Room> Rooms = (ArrayList<Room>) request.getAttribute("rooms");


                    %> 


                    <% for (Room s : Rooms) {
                    %>


                    <div class="place__column__wrapper col-lg-3 ">

                        <div  style="height: 14rem" class="detailRoom_wrapper">
                            <a href="roomDetailController?id=<%=s.getId()%>" style="text-decoration: none" >
                                <img class="card-img-top img-fluid" style="height: 160px"  src=<%=s.getImageRoom()%> alt="Card image cap">
                                     <div style="padding-top: 5px">
                                    <span class="card-text" style="color: black; font-size: 14px; font-weight: bold"> <i class="fas fa-bolt" ></i>
                                        <%=s.getRoomName()%> -
                                    </span>
                                    <span class="card-text" style="font-size: 12px; color:grey " > 
                                        <%=s.getQuantityBed()%> phòng ngủ 
                                    </span>
                            </a>
                            <% if (s.isIsLike()) {%> 
                            <span class="card-text" style="font-size: 15px; color:grey ; float: right; margin-top: 3px" > 
                                <form action="isLikeController" method="get">

                                    <input  name="isLike" value="true/<%=s.getId()%>/<%=pageCurrent%>" style="display: none"/>
                                    <button style="border: none ; background: none;outline:none;" onclick="javascript:document.isLike.submit();"><i class="fas fa-heart"  style="color: rgb(255, 56, 92)"  ></i> </button>

                                </form>
                            </span>

                            <%} else {%>
                            <span class="card-text" style="font-size: 15px; color:grey ; float: right; margin-top: 3px" > 
                                <form action="isLikeController" method="get">

                                    <input  name="isLike" value="false/<%=s.getId()%>/<%=pageCurrent%>" style="display: none"/>
                                    <button style="border: none ; background: none;outline:none;" onclick="javascript:document.isLike.submit();"><i class="far fa-heart" ></i></button>
                                </form>
                            </span>


                            <%}%>
                            <div class="place__price__wrapper" style="color: #f65e38; padding-left: 6px">
                                <% String price = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"))
                                            .format(s.getPrice());
                                    out.print(price);
                                %>/đêm   
                                <span style="color: grey;  padding-left: 10px ; font-size: 13px">   <%=s.getName()%></span>
                                <span style="color: grey; float: right;padding-right: 10px"><%=s.getStar()%> <i class="fas fa-star" style="color:  rgb(255, 176, 37)"></i></span>
                            </div>

                        </div>

                    </div>

                </div>




                <%}%>





            </div>


            <%

                if (pageSize != null) {
                    int pageCurrentInt = Integer.parseInt(pageCurrent);
                    int pageSizeInt = Integer.parseInt(pageSize);
            %>            
            <nav aria-label="Page navigation example">
                <ul class="pagination">

                    <%
                        for (int i = 1; i <= pageSizeInt; i++) { %> 

                    <% if (pageCurrentInt == i) {%>
                    <li class="page-item active"><a class="page-link " href="homestayController?page=<%=i%> "> <%=i%> </a></li>

                    <% } else {
                    %>
                    <li class="page-item "><a class="page-link " href="homestayController?page=<%=i%> "> <%=i%> </a></li>                        

                    <%
                        }
                    %>
                    <% } %>




                </ul>
            </nav>


            <%}%>


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
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
