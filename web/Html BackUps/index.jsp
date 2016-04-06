<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Car Rental Group</title>

        <!-- Bootstrap  -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="css/style.css" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->


        <!-- Main Page  -->
    </head>
    <body>
        <nav>
            <div class="container"> 

                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    <a class="navbar-brand" href="index.html  ">  Rental Maxx    <img src="images/Rental Maxx.png" alt="Thumbnail Image 1"  height="100" width="200""> </a></div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="navbar-form">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="Boook.jsp">Book <span class="sr-only">(current)</span></a> </li>
                        <li><a href="Cars.jsp">Cars</a> </li>
                        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true">Locations <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Map.html">See Map</a> </li>
                                <li><a href="#">Top Locations</a> </li>
                                <li><a href="#">Locations Near You</a> </li>

                                <li role="separator" class="divider"></li>
                                <li><a href="About US.jsp">About Us</a> </li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>

                    <ul class="nav navbar-nav navbar-right hidden-sm">
                        <li class="active"><a href="index.jsp">   <%

                            if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                                %>You are not logged in</br>

                                <% } else {
                                %>
                                Welcome <%=session.getAttribute("userid")%>
                                <a href="logout.jsp">Log out</a>
                                
                                <%
                                    }
                                %> <span class="sr-only">(current)</span></a> </li>
                        
                        <li class="active"><a href="Boook.jsp">Cart <span class="sr-only">(current)</span></a> </li>
                        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true">Account <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a id="modal_trigger" href="#modal"  class="btn">Sign Up/ Register</a> </li>



                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse --> 
            </div>
            <!-- /.container-fluid --> 
        </nav>



        <div class="container">


            <div id="modal" class="popupContainer" style="display:none;">
                <header class="popupHeader">
                    <span class="header_title">Login</span>
                    <span class="modal_close"><i class="fa fa-times"></i></span>
                </header>

                <section class="popupBody">
                    <!-- Social Login -->
                    <div class="MainPopUp">

                        <div class="centeredText">
                            <span>RENTAL MAXX</span>
                        </div>

                        <div class="action_btns">
                            <div class="one_half"><a href="#" id="login_form" class="btn">Login</a></div>
                            <div class="one_half last"><a href="#" id="register_form" class="btn">Sign up</a></div>
                        </div>
                    </div>

                    <!-- Username & Password Login form -->
                    <div class="user_login">
                        <form>
                            <label>Email / Username</label>
                            <input type="text" />
                            <br />

                            <label>Password</label>
                            <input type="password" />
                            <br />



                            <div class="action_btns">
                                <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                                <div class="one_half last"><a href="#" class="btn btn_red">Login</a></div>
                            </div>
                        </form>


                    </div>

                    <!-- Register Form -->
                    <div class="user_register">
                        <form>
                            <label>Full Name</label>
                            <input type="text" />
                            <br />

                            <label>Email Address</label>
                            <input type="email" />
                            <br />

                            <label>Password</label>
                            <input type="password" />
                            <br />



                            <div class="action_btns">
                                <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                                <div class="one_half last"><a href="#" class="btn btn_red">Register</a></div>
                            </div>
                        </form>
                    </div>
                </section>
            </div>
        </div>

        <script type="text/javascript">
            $("#modal_trigger").leanModal({top: 200, overlay: 0.6, closeButton: ".modal_close"});

            $(function () {
                // Calling Login Form
                $("#login_form").click(function () {
                    $(".MainPopUp").hide();
                    $(".user_login").show();
                    return false;
                });

                // Calling Register Form
                $("#register_form").click(function () {
                    $(".MainPopUp").hide();
                    $(".user_register").show();
                    $(".header_title").text('Register');
                    return false;
                });

                // Going back to the SignUp/ Register Page
                $(".back_btn").click(function () {
                    $(".user_login").hide();
                    $(".user_register").hide();
                    $(".MainPopUp").show();
                    $(".header_title").text('Login');
                    return false;
                });

            })
        </script>






        <nav>&nbsp;</nav>
        <nav>&nbsp;</nav>
        <nav>&nbsp;</nav>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-11">
                    <div id="carousel1" class="carousel slide">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel1" data-slide-to="0" class="active"> </li>
                            <li data-target="#carousel1" data-slide-to="1" class=""> </li>
                            <li data-target="#carousel1" data-slide-to="2" class=""> </li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item"> <img class="img-responsive" src="images/rentacarbelgrade_1345643019_24.jpg" alt="thumb">
                                <div class="carousel-caption"> <font size="+3">   Brands You Know and Trust </font></div>
                            </div>
                            <div class="item active"> 
                                <div class="carousel-caption"><strong> <font size="+4" color="Bue"></font>  </strong></div>
                                <img class="img-responsive" src="images/cars.png" alt="thumb">            </div>
                            <div class="item"> <img class="img-responsive" src="images/car-rental_352x170.jpg" alt="thumb">
                                <div class="carousel-caption">  <font size="+3" color="Blue">    </font> </div>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#carousel1" data-slide="prev"><span class="icon-prev"></span></a> <a class="right carousel-control" href="#carousel1" data-slide="next"><span class="icon-next"></span></a></div>
                </div>
            </div>
            <hr>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <div class="row">
                        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-2"><img class="img-circle" alt="Free Shipping" src="images/Icons/cash.png" width="20"></div>
                        <div class="col-lg-6 col-md-9 col-sm-9 col-xs-9">
                            <h4>Name Your Price</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <div class="row">
                        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-2"><img class="img-circle" alt="Free Shipping" src="images/Icons/agent.jpg" width="40"></div>
                        <div class="col-lg-6 col-md-9 col-sm-9 col-xs-9">
                            <h4>Over 30 agencies </h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <div class="row">
                        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-2"><img class="img-circle" alt="Free Shipping" src="images/Icons/cash.png" width="20"></div>
                        <div class="col-lg-6 col-md-9 col-sm-9 col-xs-9">
                            <h4>Low Prices</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <h2 class="text-center">RECOMMENDED PRODUCTS</h2>
        <hr>
        <div class="container">
            <div class="row text-center">
                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/FordFiesta.jpg" alt="Thumbnail Image 1" class="img-responsive">
                        <div class="caption">
                            <h3>Ford Fiesta</h3>
                            <p>Compact and realiable at a &nbsp;Low Price</p>
                            <p>$25 Per Day </p>
                            <p>&nbsp;</p>
                            <p><a href="#" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/TC.jpg" alt="Toyota" class="img-responsive">
                        <div class="caption">
                            <h3>Toyota Corolla</h3>
                            <p>Standard Features For a great Price </p>
                            <p>$56 Per Day </p>
                            <p><a href="#" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                    <div class="thumbnail"> <img src="images/Cars/KR.jpg" alt="Thumbnail Image 1" class="img-responsive">
                        <div class="caption">
                            <h3>Kia Rio</h3>
                            <p>Small and Great MPG</p>
                            <p>$16 Per Day </p>
                            <p><a href="#" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
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
                                <p><a href="#" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                        <div class="thumbnail"> <img src="images/Cars/R4.jpg" alt="Thumbnail Image 1" class="img-responsive">
                            <div class="caption">
                                <h3>Toyota RAV4</h3>
                                <p>Great SUV at a great price</p>
                                <p>$58 Per Day </p>
                                <p><a href="#" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</a> </p>
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
            <div class="container well">
                <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                        <div class="row">
                            <div class="col-sm-4 col-md-4 col-xs-6 col-lg-10">
                                <div>
                                    <ul class="list-unstyled">
                                        <li>  <h4> Site Map</h4> </li>
                                        <li><a href="index.html"><font color="#337ab7">Home Page</font></a> </li>
                                        <li><a href="dbTest.jsp"><font color="#337ab7">Book</font></a> </li>
                                        <li><a href="Cars.jsp"><font color="#337ab7">Cars</font></a> </li>
                                        <li><a href="Map.html"><font color="#337ab7">See Map </font></a> </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-5">
                        <address>
                            <strong>Rental Maxx , Inc.</strong><br>
                            10501 FGCU Blvd, South
                            <br>
                            Fort Myers, FL 33965-6565<br>
                            <abbr title="Phone">P:</abbr> (123) 456-7890
                        </address>
                        <address>
                            <strong>Email Us </strong><br>
                            <a href="mailto:#">cargroup@eagles.fgcu.edu</a>
                        </address>
                    </div>
                </div>
            </div>

            <footer class="text-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <p>Copyright © Rental MAXX J-A. All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
            <script src="js/jquery-1.11.3.min.js"></script> 
            <!-- Include all compiled plugins (below), or include individual files as needed --> 
            <script src="js/bootstrap.js"></script>
    </body>
</html>