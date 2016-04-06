<%-- 
    Document   : viewcars
    Created on : Feb 29, 2016, 9:13:06 PM
    Author     : JoseDesk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.*"%>
<%@page import="java.*"%>
<jsp:useBean id="cart" scope="session" class="beans.Cart"></jsp:useBean>

    <!DOCTYPE html>

    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
            <!-- Bootstrap  -->
            <link rel="stylesheet" href="css/bootstrap.css">
            <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
            <script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
            <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
            <link type="text/css" rel="stylesheet" href="css/style.css" />
        </head>
        <body>

        <%@include file="database.jsp" %>
        <%@include file="NavBar.jsp" %>

        <%            //getting the parameters
            String Airport = request.getParameter("airport");

            String PickDate = request.getParameter("pickUp");
            String DropDate = request.getParameter("dropOff");

            session.setAttribute("dropOff", DropDate);
            session.setAttribute("PickUp", PickDate);
        %>



        <%if (Airport.equals("Miami International Airport")) {

        %>


        <script type="text/javascript">

            //not used
            function funcCaller() {
                cart.add(1, " maker", " maker", " maker", " maker", " maker");

            }
        </script>


        <h2 class="text-center"><%=Airport%>  </h2>
        <hr>
        <div class="container">
            <div class="row text-center">
                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/FordFiesta.jpg" alt="Thumbnail Image 1" class="img-responsive" height="380" width="310">
                        <div class="caption">
                            <h3>Ford Fiesta</h3>
                            <p>Compact and reliable at a &nbsp;Low Price-Budget</p>
                            <p>$11 Per Day- Miami International Airport </p>

                            <p><a href="preCart.jsp?carID=17" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a></p>
                        </div>
                    </div>
                </div>




                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <div class="thumbnail"> <img src="images/Cars/Lamborghini.jpg" alt="Thumbnail Image 1" class="img-responsive">
                        <div class="caption">
                            <h3>Lamborghini Veneno</h3>
                            <p>Head turner-Hertz</p>
                            <p>$200 Per Day-Miami International Airport </p>
                            <p><a href="preCart.jsp?carID=30" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>
                <div class="row text-center hidden-xs">
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                        <div class="thumbnail"> <img src="images/Cars/VJ.jpg" alt="Thumbnail Image 1" class="img-responsive">
                            <div class="caption">
                                <h3>VW Jetta</h3>
                                <p>Standard Features For a great Price
                                </p>
                                <p>$21 Per Day- Miami International Airport</p>
                                <p><a href="preCart.jsp?carID=5" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>




        <%        } else if (Airport.equals("Hartsfield-Jackson Atlant International Airpo")) {

        %>

        <h2 class="text-center"><%=Airport%>  </h2>
        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/TC.jpg" alt="Toyota" class="img-responsive" height="380" width="310">
                        <div class="caption">
                            <h3>Toyota Corolla</h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$15 Per Day-Atlanta International Airport </p>
                            <p><a href="preCart.jsp?carID=2" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/KR.jpg" alt="Thumbnail Image 1" class="img-responsive" height="380" width="310">
                        <div class="caption">
                            <h3>Kia Rio</h3>
                            <p>Small and Great MPG-Alamo</p>

                            <p>$11 Per Day-Atlanta International Airport</p>
                            <p><a href="preCart.jsp?carID=7" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>



                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <div class="thumbnail"> <img src="images/Cars/CT.jpg" alt="Thumbnail Image 1" class="img-responsive" height="380" width="310">
                        <div class="caption">
                            <h3>Chevy Tahoe </h3>
                            <p>Best In Class SUV -Hertz</p>
                            <p>$70 Per Day-Atlanta International Airport </p>
                            <p><a href="preCart.jsp?carID=25" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>
            </div>

        </div>



        <%} else if (Airport.equals("Nashville International Airport")) {

        %>

        <h2 class="text-center"><%=Airport%>  </h2>
        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Buick Lacrosse.jpg" alt="Toyota" class="img-responsive" height="380" width="310">
                        <div class="caption">
                            <h3>Buick Lacrosse </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Nashville International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Equinox.jpg" alt="Thumbnail Image 1"  height="380" width="390">
                        <div class="caption">
                            <h3>Chevy Equinox</h3>
                            <p>Great SUV</p>

                            <p>$11 Per Day-Nashville International Airport</p>
                            <p><a href="preCart.jsp?carID=23" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>




            </div>

        </div>


        <%

        } else if (Airport.equals("Logan International Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>


        <%} else if (Airport.equals("Charlotte Douglas International Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("Denver International Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("Dallas/Fort Worth International Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("Detroit Metropolitan Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("Newark Liberty International Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("Fort Lauderdale-Hollywood International Airpo")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("George Bush International Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("John F. Kennedy International Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("McCarran International Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("Los Angeles International Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("LaGuardia Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("Orlando International Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("Minneapolis–Saint Paul International Airport ")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("O'Hare International Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("Philadelphia International Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("Phoenix Sky Harbor International Airport	")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else if (Airport.equals("Seattle–Tacoma International Airport")) {

        %>

        <div class="container">
            <div class="row text-center">

                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/Chevy Impala.jpg" alt="CI"  >
                        <div class="caption">
                            <h3>Chevy Impala </h3>
                            <p>Standard Features For a great Price -Hertz </p>
                            <p>$38 Per Day-Logan International Airport </p>
                            <p><a href="preCart.jsp?carID=24" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>





            </div>

        </div>
        <%} else {

        %>

        <h2 class="text-center">No Cars</h2>

        <%            }

        %>



        <%@include file="footer.jsp" %>
    </body>
</html>
