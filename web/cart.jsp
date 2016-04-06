 



<%@page import="java.sql.SQLException"%>
<%@page import="beans.*"%>
<%@page import="java.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="cart" scope="session" class="beans.Cart"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Your Cart</title>

            <!-- Bootstrap  -->
            <link rel="stylesheet" href="css/bootstrap.css">
            <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
            <script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
            <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
            <link type="text/css" rel="stylesheet" href="css/style.css" />
        </head>
        <body>
        <%@include file="NavBar.jsp" %>


        <h2 class="text-center">Shopping Cart:</h2>

        <%            HttpSession sessionc = request.getSession(true);
            Cart cart1;
            synchronized (sessionc) {  // synchronized to prevent concurrent updates
                // Retrieve the shopping cart for this session, if any. Otherwise, create one.
                cart = (Cart) sessionc.getAttribute("cart");
                if (cart == null) {  // No cart, create one.
                    cart1 = new Cart();
                    session.setAttribute("cart", cart1);  // Save it into session

                }

            }

            try {
                //get the session todo object
                String todo = request.getParameter("todo");

                if (todo == null) {
                    todo = "view";
                }

                if (todo.equals("remove")) {
                    String id = request.getParameter("id");  // Only one id for remove case
                    cart.remove(Integer.parseInt(id));// will remove the id from the list
                }

                if (todo.equals("clear")) {
                    cart.clear();
                    //clears all the items 
                }
                if (cart.isEmpty()) {

        %>  

        <h2 class="text-center">Empty shopping cart</h2>

        <%                   } else {

            int cartItems = cart.size();
            // get the cart size

            for (cars item : cart.getItems()) {
            //get the items from the cart while there are some
                int id = item.getId();
                String Make = item.getMake();
                String model = item.getModel();
                String style = item.getStyle();
                String Airport = item.getAirport();
                String Pick = item.getPick();
                String Drop = item.getDrop();
                int Days = item.getTotalDays();
                double RegPrice = item.getPrice();
                String test = "remove";


        %>



        <table border="5" cellpadding="60" align="center" id="t01">
            <tr>
                <th>Make</th>
                <th>Model</th>
                <th>Style</th>
                <th>Airport</th>

                <th>Pick Up Date</th>
                <th>Drop Off Date</th>
                <th>Total Days</th>
                <th>Price Per Day</th>
                <th>Remove</th>
            </tr>
            <tr>
                <td> <%=Make%> </td>
                <td>  <%=model%>  </td>
                <td>  <%=style%>   </td>
                <td>  <%=Airport%>   </td>

                <td><%=Pick%></td>
                <td><%=Drop%></td>
                <td><%=Days%></td>
                <td><%=RegPrice%></td>
                <td> 
                    <form  method="get" action="cart.jsp">
                        <input class="one_half last, btn btn_red" type="submit" name="Remove" value="Remove" >
                        <input  type="hidden" name="todo" value='<%=test%>'>
                        <input  type="hidden" name="id" value="<%=id%>">
                    </form>
                </td>
            </tr>

        </table>

        <br>




        <%
            }


        %>

        <br><br>
        <div align="center" >
            <form  method="get" action="cart.jsp" >
                <input type="submit" name="Remove" value="Clear Cart" class="one_half last, btn btn_red">
                <input  type="hidden" name="todo" value="clear">

            </form>  
        </div>

        <%            if (cartItems == 1 && (session.getAttribute("userid") != null)) {

        %>

        <br><br>
        <div align="center" >
            <form   action="ReviewOrder.jsp" >
                <input class="one_half last, btn btn_red" type="submit" name="Order" value="Proceed With Order" >


            </form>  
        </div>
        <%                        } else {


        %>

        <div align="center">
            <input class="btn back_btn" type="button"  value="Login to Proceed" >
        </div>

        <%            }

                }

            } catch (Exception ex) {
                out.println("");

            }
        %>

        <br>
        <div style="align-content: center">
            <img src="images/keys1.jpg"
                 style="align-items: center"
                 alt="Airport"
                 />

        </div>
        <br>
        <br>
        <br>
        <br> 
        <div>
            <br>
        </div>



        <%@include file="footer.jsp" %>
    </body>
</html>
