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

        <%            
            String Airport = request.getParameter("airport");
            String PickDate = request.getParameter("pickUp");
            session.setAttribute("PickUp", PickDate);
            String DropDate = request.getParameter("dropOff");
            session.setAttribute("dropOff", DropDate);

        %>



        <%if (Airport.equals("Miami International Airport")) {

        %>


        <script type="text/javascript">


            function funcCaller() {
                cart.add(1, " maker", " maker", " maker", " maker", " maker");

            }
        </script>


        <h2 class="text-center"><%=Airport%>  </h2>
        <hr>
        <div class="container">
            <div class="row text-center">
                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/FordFiesta.jpg" alt="Thumbnail Image 1" class="img-responsive">
                        <div class="caption">
                            <h3>Ford Fiesta</h3>
                            <p>Compact and reliable at a &nbsp;Low Price</p>
                            <p>$25 Per Day </p>

                            <p><a href="preCart.jsp?carID=17" class="btn btn-primary" role="button" ><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a></p>


                        </div>
                    </div>

                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/TC.jpg" alt="Toyota" class="img-responsive">
                        <div class="caption">
                            <h3>Toyota Corolla</h3>
                            <p>Standard Features For a great Price </p>
                            <p>$56 Per Day </p>
                            <p><a href="preCart.jsp?carID=4" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>

                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/KR.jpg" alt="Thumbnail Image 1" class="img-responsive">
                        <div class="caption">
                            <h3>Kia Rio</h3>
                            <p>Small and Great MPG</p>
                            <p>$16 Per Day </p>
                            <p><a href="cart.jsp" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>

                <div class="row text-center hidden-xs">
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                        <div class="thumbnail"> <img src="images/Cars/VJ.jpg" alt="Thumbnail Image 1" class="img-responsive">
                            <div class="caption">
                                <h3>VW Jetta</h3>
                                <p>Standard Features For a great Price<br>
                                </p>
                                <p>$27 Per Day </p>
                                <p>&nbsp;</p>
                                <p><a href="cart.jsp" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                        <div class="thumbnail"> <img src="images/Cars/R4.jpg" alt="Thumbnail Image 1" class="img-responsive">
                            <div class="caption">
                                <h3>Toyota RAV4</h3>
                                <p>Great SUV at a great price</p>
                                <p>$58 Per Day </p>
                                <p><a href="cart.jsp" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                        <div class="thumbnail"> <img src="images/Cars/CT.jpg" alt="Thumbnail Image 1" class="img-responsive" height="380" width="310">
                            <div class="caption">
                                <h3>Chevy Tahoe </h3>
                                <p>Best In Class SUV </p>
                                <p>$73 Per Day </p>
                                <p><a href="#" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <hr>
            <hr>
            <div class="container"> </div>
            <hr>



            <%        } else {

            %>

            <h2 class="text-center">No Cars</h2>

            <%            }

            %>



            <%@include file="footer.jsp" %>
    </body>
</html>
