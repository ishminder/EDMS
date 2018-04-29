<%-- 
    Document   : header
    Created on : 21 Jan, 2017, 1:09:12 AM
    Author     : Ish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KPSCampusCare</title>
        <!--        <link href="css/student.css" rel="stylesheet" type="text/css"/>-->
        <style>
            <jsp:include page="../css/admin.css"/>
        </style>  
    </head>
    <body>
        <header>
            <div class="leftheader">
                <h1>KPSCampusCare</h1>
            </div>
            <div class="rightheader">
                <%
                    if (session != null) {
                %>
                <h2 class="welcomeName">Welcome, <%=session.getAttribute("name")%>
                    <input style="margin-left: 20px;" type="button" value="Logout" name="logout" onclick="location.href = '../logout.jsp'"/>
                </h2> 
                <%
                    } else {%>
                <h2>Session Expired</h2>
                <%}%>
            </div>
        </header>
