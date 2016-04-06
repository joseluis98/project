<%-- 
    Document   : redirect
    Created on : Mar 20, 2016, 2:49:03 PM
    Author     : JoseDesk
--%>




<%--
    Document   : newjsp
    Created on : Feb 29, 2016, 3:16:21 PM
    Author     : Jose-Lap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="css/style.css" />
        <!-- Load jQuery from Google's CDN -->
        <!-- Load jQuery UI CSS  -->
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />

        <!-- Load jQuery JS -->
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <!-- Load jQuery UI Main JS  -->
        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

        <style type="text/css">
            .fieldset-auto-width {
                display: inline-block;
            }

            .leftcustom {
                position: relative;
                top: 30%;
                left: 40%;
                margin-top: 40px;
                margin-left: -200px;
            }

        </style>


    </head>

    <body>



        <div class="leftcustom">


            <form action="preCart.jsp?carID=<%=carID%>" method="post" style="display: inline-block">

                <fieldset class="fieldset-auto-width">
                    Pick a date: <br>
                    <input type="text" id="datepicker"  class="selector " name="pickUp" required/>
                    <br>

                    Drop off date: <br> <input type="text" id="departing"  class="selector" name="dropOff" required/>
                    <br>
                    <br> 

                    Airport: <br>
                    <select name="airport">
                        
                        <option ><%=Airport%></option>
                        
                    </select>

                    <br>
                    <br>

                    <input type="submit" class="one_half last, btn btn_red" value="Continue">
                </fieldset>
            </form> 





        </div>




        <script>
            //script for the date picker GUI
            /*  jQuery ready function. Specify a function to execute when the DOM is fully loaded.  */
            $(document).ready(
                    /* This is the function that will get executed after the DOM is fully loaded */
                            function () {
                                $("#departing").datepicker();
                                $("#returning").datepicker();


                            }

                    );
                    $(".selector").datepicker({
                        dateFormat: "yy-mm-dd"
                    });

        </script>
    </body>
</html>
