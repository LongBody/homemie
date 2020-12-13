<%-- 
    Document   : adminListUser
    Created on : Nov 13, 2020, 3:02:05 PM
    Author     : LongBody
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Locale"%>
<%@page import="model.Room"%>
<%@page import="model.AccountUser"%>
<%@page import="java.util.ArrayList"%>
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>

        <section>
            <nav class="navbar navbar-expand-sm navbar-light bg-light">
                <div class="container">
                    <a class="navbar-brand" href="adminController"><img src="./image/logo_brand.png" class="logo__brand" style="height: 70px;"></a>
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
                                <a class="nav-link" href="#">Admin </a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="./login.jsp">Đăng Xuất</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </section>

        <section style="padding-top: 120px">
            <div class="container">
                <a type="button" href="./adminAddNewHomestay.jsp" class="btn btn-secondary" style="margin-top: 10px ; margin-bottom: 10px; " role="button">Add New Homestay ( Thêm mới )</a>
                <table class="table">
                    <thead class="thead-light">
                        <tr style="font-size: 14px">
                            <th scope="col">Ảnh</th>
                            <th scope="col">Tên</th>
                            <th scope="col">Địa điểm</th>
                            <th scope="col">Giá</th>
                            <th scope="col">Phòng</th>
                            <th scope="col">Miêu Tả</th>
                            <th scope="col"><i class="fas fa-star"></i></th>
                            <th scope="col">Thao Tác</th>

                        </tr>
                    </thead>
                    <tbody>

                        <%
                            ArrayList<Room> Rooms = (ArrayList<Room>) request.getAttribute("rooms");

                        %> 


                        <% for (Room s : Rooms) {
                        %>


                        <% if (s.isIsExist()) {
                        %>


                        <tr>
                            <th scope="row"><image src="<%=s.getImageRoom()%>" style="height: 50px"/></th>
                            <th scope="row">
                                <p style="white-space: nowrap; overflow: hidden !important; text-overflow: ellipsis;width: 200px;">
                                    <%=s.getRoomName()%>
                                </p>
                            </th>                       
                            <th scope="row" ><p style="white-space: nowrap; overflow: hidden !important; text-overflow: ellipsis;width: 100px;">
                                    <%=s.getName()%>
                                </p></th>                       
                            <td>
                                <% String price = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"))
                                            .format(s.getPrice());
                                    out.print(price);
                                %>/đêm 
                            </td>
                            <td><%=s.getQuantityBed()%></td>
                            <td ><p style="white-space: nowrap; overflow: hidden !important; text-overflow: ellipsis;width: 400px;">
                                    <%=s.getDescription()%>
                                </p>
                            </td>
                            <td><%=s.getStar()%></td>

                            <td style="display: flex">
                                <% if (s.isIsActive()) {
                                %>
                                <a  class="btn btn-sm" type="submit" href="limitRoomAdmin?id=<%=s.getId()%>" role="button" style="background-color: #28a745; color: white; margin-right: 5px">Active
                                </a>

                                <%} else {%>
                                <a  class="btn btn-sm" type="submit" href="activeRoomAdmin?id=<%=s.getId()%>" role="button" style="background-color: #dc3545; color: white; margin-right: 5px">Limit
                                </a>
                                <%}%>

                                <a  class="btn btn-sm"  href="changeRoomAdmin?id=<%=s.getId()%>" type="submit"  role="button" style="background-color:  #ffc107; color: black;margin-right: 5px">Sửa
                                </a>
                                <a  class="btn btn-sm" type="submit" href="adminDeleteRoomToRestoreList?id=<%=s.getId()%>" role="button" style="background-color:#dc3545; color: white;">Xoá
                                </a>

                            </td>
                        </tr>

                


                    <%}%>

                    <%}%>


                    </tbody>
                </table>
            </div>

        </section>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>

</html>
