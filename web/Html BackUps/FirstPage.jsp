<%-- 
    Document   : FirstPage
    Created on : Feb 21, 2016, 11:12:07 PM
    Author     : JoseDesk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    
    if((session.getAttribute("userid")== null ) || (session.getAttribute("userid")== "")){
     %>You are not logged in</br>
    <a href="login.html">Please Login</a>   
   <% } else {
        %>
        Welcome <%=session.getAttribute("userid") %>
        <a href="logout.jsp">Log out</a>
        <%
        }
    %>