<html>
    <head></head>
    <body>
        <%
            String level=null;
        HttpSession sess=request.getSession();
       level = String.valueOf(sess.getAttribute("level"));
        %>
        <h1>Welcome to EDMS Level=<%=level%></h1>
        <form action="CreateDir" method="post">
        Directory name
            <input type="text" name="dirname"/>
            Enter Path to Create new directory
        <input type="text" name="path"/>
        <input type="submit" value="submit"/>
        </form>
    </body>
</html>