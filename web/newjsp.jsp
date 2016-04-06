<%--
    Document   : newjsp
    Created on : Feb 29, 2016, 3:16:21 PM
    Author     : Jose-Lap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        </style>


    </head>
    <body>
        <form >
            <fieldset class="fieldset-auto-width">
                Pick a date: <br>
                <input type="text" id="datepicker"  class="selector"/>
                <br>

                Drop off date: <br> <input type="text" id="departing"  class="selector"/>
                <br>
                <br>
                Airport: <br> <input type="text" id="returning"  class="selector"/>
                <br>
                <br>
                <input type="submit" value="View Cars">
            </fieldset>
        </form>





        <script>

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
