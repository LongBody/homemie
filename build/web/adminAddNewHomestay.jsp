<%-- 
    Document   : adminAddNewHomestay.jsp
    Created on : Nov 15, 2020, 9:31:34 PM
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

                <form action="adminAddNewHomestay" method="post">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Ảnh (Imgae URL)</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" name="imageRoom" aria-describedby="emailHelp" required/>
                    </div>

                    <div class="row">
                        <div class="form-group col">
                            <label for="exampleInputPassword1">Tên Homestay</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" name="roomName" required/>
                        </div>
                        <div class="form-group col">
                            <label for="exampleInputPassword1">Địa điểm</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" name="place" required/>
                        </div>
                    </div>
                    
                     <div class="row">
                        <div class="form-group col">
                        <label for="exampleInputPassword1">Giá (VND )</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="price" required/>
                    </div>
                    <div class="form-group col">
                        <label for="exampleInputPassword1">Phòng</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="quantityBed" required/>
                    </div>
                    <div class="form-group col">
                        <label for="exampleInputPassword1">Đánh Giá <i class="fas fa-star" style="color: rgb(255, 176, 37)"></i></label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="star" required/>
                    </div>
                    </div>

                   
                    <div class="form-group">
                        <label for="exampleInputPassword1">Miêu tả</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="descriptions" required/>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Ảnh phòng 1 (Imgae URL)</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="detailImageRoom1" required/>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Ảnh phòng 2 (Imgae URL)</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="detailImageRoom2" required/>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Ảnh phòng 3 (Imgae URL)</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="detailImageRoom3" required/>
                    </div>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="id" style="display: none" />
                    <button type="submit" class="btn btn-success">Add ( Thêm Mới )</button>
                </form>

            </div>

        </section>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>

</html>
