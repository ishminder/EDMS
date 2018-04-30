<html>
    <head></head>
    <body>
        <%
            String level=null;
        HttpSession sess=request.getSession();
       level = String.valueOf(sess.getAttribute("level"));
        %>
        <h1>Welcome to EDMS Level=<%=level%></h1>
    </body>
</html>