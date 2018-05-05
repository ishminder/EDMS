<%-- 
    Document   : viewFiles
    Created on : 5 May, 2018, 5:27:07 PM
    Author     : Ish
--%>

<%@page import="com.EDMS.Dao.FilesDao"%>
<%@page import="com.EDMS.bean.Files"%>
<%@page import="java.util.List"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String file_name = request.getParameter("name");
            request.setAttribute("path", file_name);
              
       HttpSession sessfile=request.getSession();
        sessfile.setAttribute("path",file_name);  
            System.out.print("file name = " + file_name);
            
            List<Files> file_List = FilesDao.view_files(file_name);
        %>
        <h2>Upload Files</h2>
        <form action="UploadFile" method="post" enctype="multipart/form-data">  
            Select File:<input type="file" name="fname"/><br/>  
          
            <input type="submit" value="upload"/>  
        </form>  
        <h2>Files</h2>
        <table >
            <tr>
                <th >Name</th>
                <th>Description</th>
            </tr>
            <%                 for (Files p : file_List) {
            %>
            <tr>
                <td><a href=""><%=p.getName()%></a></td>
                <td><%=p.getDescription()%></td>
                <td><%=p.getAuthor()%></td>

            </tr>
            <%              }
            %>
        </table>
    </body>
</html>
