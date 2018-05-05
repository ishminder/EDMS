<%@page import="com.EDMS.bean.Pfolder"%>
<%@page import="com.EDMS.Dao.PfolderDao"%>
<%@page import="java.util.List"%>

<html>
    <head></head>
    <body>
        <%
            String level = null;
            HttpSession sess = request.getSession();
            level = String.valueOf(sess.getAttribute("level"));

            List<Pfolder> pfolderList = PfolderDao.view_pfolder();

        %>
        <h1>Welcome to EDMS Level=<%=level%></h1>
        <h2>Create Virtual Folder</h2>
        <form action="CreateDir" method="post">
            <table style="text-align: left">
                <tr>
                    <th>Directory name</th>
                    <td> <input type="text" name="dirname"/></td>
                </tr>
                <tr>
                    <th>Enter Path to Create new directory</th>
                    <td><input type="text" name="path"/></td>
                </tr>
                <tr>
                    <th>Description</th>
                    <td><input type="text" name="description"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="submit"/></td>
                </tr>
            </table>
        </form>
        <h2>Virtual Folders</h2>
        <table >
            <tr>
                <th >Folder Name</th>
                <th>Description</th>
            </tr>
            <%                 for (Pfolder p : pfolderList) {
            %>
            <tr>
                <td><a href="viewFiles.jsp?name=<%=p.getPath()%>"><%=p.getName()%></a></td>
                <td><%=p.getDescription()%></td>


            </tr>
            <%              }
            %>
        </table>
    </body>
</html>