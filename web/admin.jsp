<%-- 
    Document   : admin
    Created on : Nov 13, 2020, 10:23:49 AM
    Author     : LongBody
--%>

<%@page import="model.CarRent"%>
<%@page import="model.AccountUser"%>
<%@page import="model.Room"%>
<%@page import="model.Place"%>
<%@page import="model.Booking"%>
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
        <link rel=stylesheet type="/text/css" href="http://localhost:8080/HomeMie/css/style.css">
        <link rel=stylesheet type="/text/css" href="http://localhost:8080/HomeMie/css/form.css">
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
                                <p class="nav-link" style="color: #f65e38">Admin </p>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="logoutController">Đăng Xuất</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </section>

        <%
            ArrayList<Booking> RoomBooking = (ArrayList<Booking>) request.getAttribute("history");
            ArrayList<Room> Rooms = (ArrayList<Room>) request.getAttribute("rooms");
            ArrayList<Room> restoreRooms = (ArrayList<Room>) request.getAttribute("restoreRooms");
            ArrayList<AccountUser> users = (ArrayList<AccountUser>) request.getAttribute("listUser");
            ArrayList<CarRent> cars = (ArrayList<CarRent>) request.getAttribute("historyCars");
            int numberOfBooking = RoomBooking.size();
            int numberOfUser = users.size();
            int numberOfCar = cars.size();
            int numberOfRestoreRooms = restoreRooms.size();
            int numberOfRoom = Rooms.size() - numberOfRestoreRooms;
        %>

        <section style="padding-top: 120px">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title"> <i class="fas fa-users"></i> User Register</h5>
                                <p class="card-text"><%= numberOfUser%> users</p>
                                <a href="adminListUserController" class="btn btn-warning">More Info <i class="fas fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title" ><i class="fas fa-home"></i> Homestay</h5>
                                <p class="card-text"><%= numberOfRoom%> homestay</p>
                                <a href="adminListHomestayController" class="btn btn-success">More Info <i class="fas fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title"> <i class="fas fa-list-alt"></i> List Booking Room</h5>
                                <p class="card-text"><%= numberOfBooking%> orders</p>
                                <a href="adminListBooking" class="btn btn-danger">More Info <i class="fas fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>                    <div class="col-lg-3">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title"> <i class="fas fa-car"></i> List Booking Car</h5>
                                <p class="card-text"><%= numberOfCar%> orders</p>
                                <a href="adminListBookingCar" class="btn btn-info">More Info <i class="fas fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3" style="margin-top:5px">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title"> <i class="fas fa-trash-restore"></i> Restore Homestay</h5>
                                <p class="card-text"><%= numberOfRestoreRooms%> homestay</p>
                                <a href="adminListRestoreRooms" class="btn btn-secondary">More Info <i class="fas fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class ="col-lg-6" style="margin-top:10px ; margin-left: 20px">
                        <div class="card">


                            <div class="mapouter"><div class="gmap_canvas"><iframe width="823" height="319" id="gmap_canvas" src="https://maps.google.com/maps?q=FPT%20university&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://123movies-to.org">123movies</a></div><style>.mapouter{position:relative;text-align:right;height:319px;width:823px;}.gmap_canvas {overflow:hidden;background:none!important;height:319px;width:823px;}</style></div>
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
