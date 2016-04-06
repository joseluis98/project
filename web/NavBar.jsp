<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NavBar</title>

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
    </head>
    <body>


        <nav>
            <div class="container"> 

                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    <a class="navbar-brand" href="index.jsp  ">  Rental Maxx    <img src="images/Rental Maxx.png" alt="Thumbnail Image 1"  height="100" width="200""> </a></div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="navbar-form">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="Boook.jsp">Book <span class="sr-only">(current)</span></a> </li>
                        <li><a href="Cars.jsp">Cars</a> </li>
                        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true">More Information <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="map.jsp">See Map</a> </li>
                                

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
                        <li class="active"><a href="cart.jsp">Cart <span class="sr-only">(current)</span></a> </li>
                        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true">Account <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a id="modal_trigger" href="#modal"  class="btn">Log In/ Register</a> </li>



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
                        <form action="login.jsp" method="post">
                            User Name:<input type="text" name="usern" />
                            Password :<input type="password" name="password" />



                            <div class="action_btns">
                                <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                                <input type="submit" class="one_half last, btn btn_red" value="Login">
                            </div>
                        </form>


                    </div>

                    <!-- Register Form -->
                    <div class="user_register">

                        <form action="register.jsp" method="post">
                            First Name: <input type="text" name="fName"  size="50" />
                            Last Name :<input type="text" name="lName"  size="-5" />
                            Credit Card : <input type="text" name="CC" size="-5" />
                            Street: <input type="text" name="street" size="-5" />
                            City:    <input type="text" name="city" size="-5"  />
                            State:  <input type="text" name="state" size="-5" />
                            Zip:  <input type="text" name="zip" size="-5" />
                            Email : <input  type="email" name="mail" size="-5"  />
                            Phone : <input type="text" name="phone" size="-5" />
                            Age : <input type="text" name="age" size="-5" />
                            User Name:<input type="text" name="usern" size="-5" />
                            Password :<input type="password" name="password" size="-5" />









                            <div class="action_btns" >
                                <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                                <input type="submit" class="action_btns ,one_half last, btn btn_red " value="Register" >


                            </div>
                        </form>
                    </div>
                </section>
            </div>
        </div>

        <script type="text/javascript">
            $("#modal_trigger").leanModal({top: 10, overlay: 0.6, closeButton: ".modal_close"});

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





        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="js/jquery-1.11.3.min.js"></script>

        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="js/bootstrap.js"></script>
    </body>
</html>
