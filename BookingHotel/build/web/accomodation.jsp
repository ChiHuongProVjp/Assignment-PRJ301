<%-- 
    Document   : accomodation
    Created on : Mar 4, 2022, 01:45:30 AM
    Author     : Admin
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Room"%>
<%@page import="Dal.roomDBContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    roomDBContext room = new roomDBContext();
    ArrayList<Room> list = room.loadProduct();
%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="image/favicon.png" type="image/png">
        <title>Ninh Binh Hotel</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="vendors/linericon/style.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
        <!-- main css -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">


    </head>
    <body>
        <!--================Header Area =================-->
        <header class="header_area">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <a class="navbar-brand logo_h" href="index.html"><img src="image/Logo.png" alt=""></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>

                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto">
                            <li class="nav-item "><a class="nav-link" href="index.jsp">Home</a></li>
                            <li class="nav-item "><a class="nav-link" href="aboutUs.jsp">About us</a></li>
                            <li class="nav-item active"><a class="nav-link" href="accomodation.jsp">Accomodation</a></li>
                            <li class="nav-item "><a class="nav-link" href="gallery.jsp">Gallery</a></li>
                            <li class="nav-item "><a class="nav-link" href="register.jsp">Register</a></li>
                            <li class="nav-item "><a class="nav-link" href="login.jsp">Login</a></li>
                            <li class="nav-item "><a class="nav-link" href="contact.jsp">Contact</a></li>

                        </ul>
                    </div> 
                </nav>
            </div>
        </header>
        <!--================Header Area =================-->


        <!--================Banner Area =================-->
        <section class="banner_area">
            <div class="booking_table d_flex align-items-center">
                <div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div>
                <div class="container">
                    <div class="banner_content text-center">

                        <div class="container">
                            <div class="page-cover text-center">
                                <h2 class="page-cover-tittle">Accomodation</h2>
                                <ol class="breadcrumb">
                                    <h3><li><a href="index.html">Home</a></li>
                                        <li class="active">Accomodation</li></h3>
                                </ol>
                            </div>
                        </div>
                        <a href="#" class="btn theme_btn button_hover">Get Started</a>
                    </div>
                </div>
            </div>
            <div class="hotel_booking_area position">
                <div class="container">
                    <div class="hotel_booking_table">
                        <div class="col-md-3">
                            <h2>Book<br> Your Room</h2>
                        </div>
                        <div class="col-md-9">
                            <div class="boking_table">
                                <form action="OrderServlet" method="post">
                                    <div class="row">

                                        <div class="col-md-4">
                                            <div class="book_tabel_item">
                                                <div class="form-group">
                                                    <div class='input-group date' id='datetimepicker11'>
                                                        <input type='text' id="dateAr" name="dateAr" class="form-control" placeholder="Arrival Date"/>
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class='input-group date' id='datetimepicker1'>
                                                        <input type='text' id="dateDe" name="dateDe" class="form-control" placeholder="Departure Date"/>
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="book_tabel_item">
                                                <div class="input-group">
                                                    <select id="roomID" name="roomID" class="wide">
                                                        <%
                                                            for (int i = 0; i < list.size(); i++) {
                                                        %>
                                                        <option value="<%=list.get(i).getRoomId()%>"><%=list.get(i).getRoomName()%></option>
                                                        <%}%>
                                                    </select>
                                                </div>

                                                <button type="submit" value="submit" class="btn theme_btn button_hover">Book Now</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================Banner Area =================-->



        <!--================ Accomodation Area  =================-->
        <section class="accomodation_area section_gap">
            <div class="container">
                <main class="rooms-list-view">
                    <div class="container">

                        <div class="room-list-item">
                            <div class="row">
                                <div class="col-lg-4">
                                    <figure class="gradient-overlay-hover link-icon">
                                        <a href="room.html"><img src="image/accomodation/single1.jpg" class="img-fluid" alt="Image"></a>
                                    </figure>
                                </div>
                                <div class="col-lg-6">
                                    <div class="room-info">
                                        <h3 class="room-title">
                                            <a href="room.html">SINGLE ROOM</a>
                                        </h3>
                                        <span class="room-rates">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <a href="room.html#room-reviews">5.00 Based on 3 Ratings</a>
                                        </span>
                                        <p>This type of room is very suitable for people who like to be alone, quiet or travel / work alone. Features of Single Room Depending on the guest, the single room is arranged and furnished differently. 
                                            However, we can identify them through the following criteria: area, size, interior layout, comfort level, accompanying services, ...</p>
                                        <div class="room-services">
                                            <i class="fa fa-coffee" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Breakfast Included" data-original-title="Breakfast"></i>
                                            <i class="fa fa-wifi" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Free WiFi" data-original-title="WiFi"></i>
                                            <i class="fa fa-television" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Plasma TV with cable channels" data-original-title="TV"></i>
                                            <span>Beds: 1 King</span>
                                            <span>Max Guests: 2</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="room-price">
                                        <span class="price">€89 / night</span>
                                        <a href="room.html" class="btn btn-sm">VIEW DETAILS</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="room-list-item">
                            <div class="favorite-item">
                                <i class="fa fa-star-o"></i>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <figure class="gradient-overlay-hover link-icon">
                                        <a href="room.html"><img src="image/accomodation/double.jpg" class="img-fluid" alt="Image"></a>
                                    </figure>
                                </div>
                                <div class="col-lg-6">
                                    <div class="room-info">
                                        <h3 class="room-title">
                                            <a href="room.html">DOUBLE ROOM</a>
                                        </h3>
                                        <span class="room-rates">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <a href="room.html#room-reviews">5.00 Based on 3 Ratings</a>
                                        </span>
                                        <p>The double room is originally a room for 2 people, so the room size is average - quite and doesn't need to be too big. Hotels of different sizes will also have different quality standards in double rooms. 
                                            The selection of double room construction size for the hotel needs to take into account the comfort factor of the customer... 
                                        </p>
                                        <div class="room-services">
                                            <i class="fa fa-coffee" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Breakfast Included" data-original-title="Breakfast"></i>
                                            <i class="fa fa-wifi" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Free WiFi" data-original-title="WiFi"></i>
                                            <i class="fa fa-television" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Plasma TV with cable channels" data-original-title="TV"></i>
                                            <span>Beds: 2 King</span>
                                            <span>Max Guests: 4</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="room-price">
                                        <span class="price">€129 / night</span>
                                        <a href="room.html" class="btn btn-sm">VIEW DETAILS</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="room-list-item">
                            <div class="row">
                                <div class="col-lg-4">
                                    <figure class="gradient-overlay-hover link-icon">
                                        <a href="room.html"><img src="image/accomodation/deluxe.jpg" class="img-fluid" alt="Image"></a>
                                    </figure>
                                </div>
                                <div class="col-lg-6">
                                    <div class="room-info">
                                        <h3 class="room-title">
                                            <a href="room.html">DELUXE ROOM</a>
                                        </h3>
                                        <span class="room-rates">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <a href="room.html#room-reviews">5.00 Based on 3 Ratings</a>
                                        </span>
                                        <p>Deluxe room (DLX) is a superior room type, with better quality than Superior room. DLX rooms are usually designed with a large area, on a high floor, with a beautiful view and equipped with high-class facilities 
                                            and equipment to bring convenience and comfort to guests staying here. Normally, a DLX room has an area of 30 - 50 square meters... 
                                        </p>
                                        <div class="room-services">
                                            <i class="fa fa-coffee" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Breakfast Included" data-original-title="Breakfast"></i>
                                            <i class="fa fa-wifi" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Free WiFi" data-original-title="WiFi"></i>
                                            <i class="fa fa-television" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Plasma TV with cable channels" data-original-title="TV"></i>
                                            <span>Beds: 1 King</span>
                                            <span>Max Guests: 2</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="room-price">
                                        <span class="price">€189 / night</span>
                                        <a href="room.html" class="btn btn-sm">VIEW DETAILS</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="room-list-item">
                            <div class="row">
                                <div class="col-lg-4">
                                    <figure class="gradient-overlay-hover link-icon">
                                        <a href="room.html"><img src="image/accomodation/family.jpg" class="img-fluid" alt="Image"></a>
                                    </figure>
                                </div>
                                <div class="col-lg-6">
                                    <div class="room-info">
                                        <h3 class="room-title">
                                            <a href="room.html">FAMILY ROOM</a>
                                        </h3>
                                        <span class="room-rates">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <a href="room.html#room-reviews">5.00 Based on 3 Ratings</a>
                                        </span>
                                        <p>Family room is the Family room. This is the Vietnamese meaning of the term Family room - a term used in the business field.
                                            Tourist accommodation with a master bed for the parents, and one or more beds or beds for the children...</p>
                                        <div class="room-services">
                                            <i class="fa fa-coffee" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Breakfast Included" data-original-title="Breakfast"></i>
                                            <i class="fa fa-wifi" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Free WiFi" data-original-title="WiFi"></i>
                                            <i class="fa fa-television" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Plasma TV with cable channels" data-original-title="TV"></i>
                                            <span>Beds: 2 King and 1 Sofabed</span>
                                            <span>Max Guests: 4</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="room-price">
                                        <span class="price">€149 / night</span>
                                        <a href="room.html" class="btn btn-sm">VIEW DETAILS</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="room-list-item">
                            <div class="row">
                                <div class="col-lg-4">
                                    <figure class="gradient-overlay-hover link-icon">
                                        <a href="room.html"><img src="image/accomodation/king.jpg" class="img-fluid" alt="Image"></a>
                                    </figure>
                                </div>
                                <div class="col-lg-6">
                                    <div class="room-info">
                                        <h3 class="room-title">
                                            <a href="room.html">KING ROOM</a>
                                        </h3>
                                        <span class="room-rates">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <a href="room.html#room-reviews">5.00 Based on 3 Ratings</a>
                                        </span>
                                        <p>King Room is the most luxurious and high-class room type. As a luxury room of the hotel, the King room is usually located on the top floor of the hotel. 
                                            With an area of ​​about 150m2, King room includes 2 bedrooms, 1 living room, kitchen, 1 sauna, private balcony, etc. The interior equipment in the room are the most advanced products, 
                                            most modern and comfortable...</p>
                                        <div class="room-services">
                                            <i class="fa fa-coffee" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Breakfast Included" data-original-title="Breakfast"></i>
                                            <i class="fa fa-bath" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="2 Bathrooms" data-original-title="Bathroom"></i>
                                            <i class="fa fa-wifi" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Free WiFi" data-original-title="WiFi"></i>
                                            <i class="fa fa-television" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Plasma TV with cable channels" data-original-title="TV"></i>
                                            <span>Beds: 1 King</span>
                                            <span>Max Guests: 2</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="room-price">
                                        <span class="price">€289 / night</span>
                                        <a href="room.html" class="btn btn-sm">VIEW DETAILS</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="room-list-item">
                            <div class="favorite-item">
                                <i class="fa fa-star-o"></i>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <figure class="gradient-overlay-hover link-icon">
                                        <a href="room.html"><img src="image/accomodation/honeymoon.jpg" class="img-fluid" alt="Image"></a>
                                    </figure>
                                </div>
                                <div class="col-lg-6">
                                    <div class="room-info">
                                        <h3 class="room-title">
                                            <a href="room.html">HONEYMOON ROOM</a>
                                        </h3>
                                        <span class="room-rates">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <a href="room.html#room-reviews">5.00 Based on 3 Ratings</a>
                                        </span>
                                        <p>Decorating the Honey moon room is considered one of the important factors contributing to preserving the most beautiful moments of the big day of couples.
                                            When your hotel receives a reservation request with the information that this is a honeymoon couple, 
                                            you must definitely decorate the Honeymoon room in the hotel so that it is beautiful and romantic...</p>
                                        <div class="room-services">
                                            <i class="fa fa-coffee" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Breakfast Included" data-original-title="Breakfast"></i>
                                            <i class="fa fa-wifi" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Free WiFi" data-original-title="WiFi"></i>
                                            <i class="fa fa-television" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Plasma TV with cable channels" data-original-title="TV"></i>
                                            <span>Beds: 1 King</span>
                                            <span>Max Guests: 2</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="room-price">
                                        <span class="price">€169 / night</span>
                                        <a href="room.html" class="btn btn-sm">VIEW DETAILS</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="room-list-item">
                            <div class="row">
                                <div class="col-lg-4">
                                    <figure class="gradient-overlay-hover link-icon">
                                        <a href="room.html"><img src="image/accomodation/view.jpg" class="img-fluid" alt="Image"></a>
                                    </figure>
                                </div>
                                <div class="col-lg-6">
                                    <div class="room-info">
                                        <h3 class="room-title">
                                            <a href="room.html">ROOM WITH VIEW</a>
                                        </h3>
                                        <span class="room-rates">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <a href="room.html#room-reviews">5.00 Based on 3 Ratings</a>
                                        </span>
                                        <p>is the most luxurious room class of each hotel. And for the purpose of increasing the level of VIP, the SUT room is often named: Royal Suite Room, President Room...
                                            A noticeable feature is that the Suite room is usually located in the location for the guests. 
                                            The best view and in each such room can have many different function rooms: living room, bedroom, meeting room, dining room...</p>
                                        <div class="room-services">
                                            <i class="fa fa-coffee" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Breakfast Included" data-original-title="Breakfast"></i>
                                            <i class="fa fa-wifi" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Free WiFi" data-original-title="WiFi"></i>
                                            <i class="fa fa-television" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Plasma TV with cable channels" data-original-title="TV"></i>
                                            <span>Beds: 1 King and 1 Sofabed</span>
                                            <span>Max Guests: 4</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="room-price">
                                        <span class="price">€119 / night</span>
                                        <a href="room.html" class="btn btn-sm">VIEW DETAILS</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="room-list-item">
                            <div class="row">
                                <div class="col-lg-4">
                                    <figure class="gradient-overlay-hover link-icon">
                                        <a href="room.html"><img src="image/accomodation/luxury.jpg" class="img-fluid" alt="Image"></a>
                                    </figure>
                                </div>
                                <div class="col-lg-6">
                                    <div class="room-info">
                                        <h3 class="room-title">
                                            <a href="room.html">LUXURY ROOM</a>
                                        </h3>
                                        <span class="room-rates">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <a href="room.html#room-reviews">5.00 Based on 3 Ratings</a>
                                        </span>
                                        <p>Deluxe room (DLX) is a superior room type, with better quality than Superior room. Deluxe rooms are usually designed with a large area, on a high floor, 
                                            with a beautiful view and equipped with high-class appliances and equipment. Normally, a DLX room has an area of 30 - 50 square meters. 
                                            The spacious and luxurious space of the DLX room is suitable for many different customers: leisure travel, business trips, couples with small children......</p>
                                        <div class="room-services">
                                            <i class="fa fa-coffee" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Breakfast Included" data-original-title="Breakfast"></i>
                                            <i class="fa fa-wifi" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Free WiFi" data-original-title="WiFi"></i>
                                            <i class="fa fa-television" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Plasma TV with cable channels" data-original-title="TV"></i>
                                            <span>Beds: 2 King</span>
                                            <span>Max Guests: 4</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="room-price">
                                        <span class="price">€349 / night</span>
                                        <a href="room.html" class="btn btn-sm">VIEW DETAILS</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="room-list-item">
                            <div class="row">
                                <div class="col-lg-4">
                                    <figure class="gradient-overlay-hover link-icon">
                                        <a href="room.html"><img src="image/accomodation/small.jpg" class="img-fluid" alt="Image"></a>
                                    </figure>
                                </div>
                                <div class="col-lg-6">
                                    <div class="room-info">
                                        <h3 class="room-title">
                                            <a href="room.html">SMALL ROOM</a>
                                        </h3>
                                        <span class="room-rates">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <a href="room.html#room-reviews">5.00 Based on 3 Ratings</a>
                                        </span>
                                        <p>This type of room is very suitable for people who like to be alone, quiet or travel / work alone. Features of Single Room Depending on the guest, the single room is arranged and furnished differently. 
                                            However, we can identify them through the following criteria: area, size, interior layout, comfort level, accompanying services, ...</p>
                                        <div class="room-services">
                                            <i class="fa fa-coffee" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Breakfast Included" data-original-title="Breakfast"></i>
                                            <i class="fa fa-television" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Plasma TV with cable channels" data-original-title="TV"></i>
                                            <span>Beds: 1 King</span>
                                            <span>Max Guests: 2</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="room-price">
                                        <span class="price">€39 / night</span>
                                        <a href="room.html" class="btn btn-sm">VIEW DETAILS</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </section>
        <!--================ Accomodation Area  =================-->
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
                <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">Previous</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                </li>
            </ul>
        </nav>

        <!--================ Accomodation Area  =================-->
        <section class="accomodation_area section_gap">
            <div class="container">
                <div class="section_title text-center">
                    <h2 class="title_color">Normal Accomodation</h2>
                    <p>We all live in an age that belongs to the young at heart. Life that is becoming extremely fast,</p>
                </div>
                <div class="row accomodation_two">
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="image/room1_1.jpg" alt="">
                                <a href="#" class="btn theme_btn button_hover">Book Now</a>
                            </div>
                            <a href="#"><h4 class="sec_h4">Double Deluxe Room</h4></a>
                            <h5>$250<small>/night</small></h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="image/room2.jpg" alt="">
                                <a href="#" class="btn theme_btn button_hover">Book Now</a>
                            </div>
                            <a href="#"><h4 class="sec_h4">Single Deluxe Room</h4></a>
                            <h5>$200<small>/night</small></h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="image/room3.jpg" alt="">
                                <a href="#" class="btn theme_btn button_hover">Book Now</a>
                            </div>
                            <a href="#"><h4 class="sec_h4">Honeymoon Suit</h4></a>
                            <h5>$750<small>/night</small></h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="image/room4.jpg" alt="">
                                <a href="#" class="btn theme_btn button_hover">Book Now</a>
                            </div>
                            <a href="#"><h4 class="sec_h4">Economy Double</h4></a>
                            <h5>$200<small>/night</small></h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="image/room1_1.jpg" alt="">
                                <a href="#" class="btn theme_btn button_hover">Book Now</a>
                            </div>
                            <a href="#"><h4 class="sec_h4">Double Deluxe Room</h4></a>
                            <h5>$250<small>/night</small></h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="image/room2.jpg" alt="">
                                <a href="#" class="btn theme_btn button_hover">Book Now</a>
                            </div>
                            <a href="#"><h4 class="sec_h4">Single Deluxe Room</h4></a>
                            <h5>$200<small>/night</small></h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="image/room3.jpg" alt="">
                                <a href="#" class="btn theme_btn button_hover">Book Now</a>
                            </div>
                            <a href="#"><h4 class="sec_h4">Honeymoon Suit</h4></a>
                            <h5>$750<small>/night</small></h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="image/room4.jpg" alt="">
                                <a href="#" class="btn theme_btn button_hover">Book Now</a>
                            </div>
                            <a href="#"><h4 class="sec_h4">Economy Double</h4></a>
                            <h5>$200<small>/night</small></h5>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================ Accomodation Area  =================-->

        <!--================ start footer Area  =================-->	
        <footer class="footer-area section_gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3  col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">About Agency</h6>
                            <p>Ninh Binh is a province in the southernmost province of the Red River Delta, more than 90km south of Hanoi capital, 
                                with an area of ​​nearly 1,391 square kilometers, on the North-South arterial traffic route. With the advantage of being close to the capital and the northern economic center, 
                                Ninh Binh has a geographical position and corresponding traffic for socio-economic development. </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">Navigation Links</h6>
                            <div class="row">
                                <div class="col-4">
                                    <ul class="list_style">
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">Feature</a></li>
                                        <li><a href="#">Services</a></li>
                                        <li><a href="#">Portfolio</a></li>
                                    </ul>
                                </div>
                                <div class="col-4">
                                    <ul class="list_style">
                                        <li><a href="#">Team</a></li>
                                        <li><a href="#">Pricing</a></li>
                                        <li><a href="#">Blog</a></li>
                                        <li><a href="#">Contact</a></li>
                                    </ul>
                                </div>										
                            </div>							
                        </div>
                    </div>							
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">Newsletter</h6>
                            <p>For business professionals caught between high OEM price and mediocre print and graphic output, </p>		
                            <div id="mc_embed_signup">
                                <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative">
                                    <div class="input-group d-flex flex-row">
                                        <input name="EMAIL" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '" required="" type="email">
                                        <button class="btn sub-btn"><span class="lnr lnr-location"></span></button>		
                                    </div>									
                                    <div class="mt-10 info"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget instafeed">
                            <h6 class="footer_title">InstaFeed</h6>
                            <ul class="list_style instafeed d-flex flex-wrap">
                                <li><img src="image/instagram/Image-01.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-02.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-03.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-04.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-05.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-06.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-07.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-08.jpg" alt=""></li>
                            </ul>
                        </div>
                    </div>						
                </div>
                <div class="border_line"></div>
                <div class="row footer-bottom d-flex justify-content-between align-items-center">
                    <p class="col-lg-8 col-sm-12 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    <div class="col-lg-4 col-sm-12 footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </div>
                </div>
            </div>
        </footer>
        <!--================ End footer Area  =================-->


        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.js"></script>
        <script src="vendors/nice-select/js/jquery.nice-select.js"></script>
        <script src="js/mail-script.js"></script>
        <script src="js/stellar.js"></script>
        <script src="vendors/lightbox/simpleLightbox.min.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>