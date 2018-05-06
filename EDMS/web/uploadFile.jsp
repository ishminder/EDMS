<%-- 
    Document   : uploadFile
    Created on : 6 May, 2018, 5:01:18 PM
    Author     : Ish
--%>

<%@page import="java.util.List"%>
<%@page import="com.EDMS.bean.Pfolder"%>
<%@page import="com.EDMS.Dao.PfolderDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>EDMS</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            /* Remove the navbar's default margin-bottom and rounded borders */ 
            .navbar {
                margin-bottom: 0;
                border-radius: 0;
            }

            /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
            .row.content {height: 450px}

            /* Set gray background color and 100% height */
            .sidenav {
                padding-top: 20px;
                background-color: #f1f1f1;
                height: 100%;
            }

            /* Set black background color, white text and some padding */
            footer {
                background-color: #555;
                color: white;
                padding: 15px;
            }

            /* On small screens, set height to 'auto' for sidenav and grid */
            @media screen and (max-width: 767px) {
                .sidenav {
                    height: auto;
                    padding: 15px;
                }
                .row.content {height:auto;} 
            }
        </style>
    </head>
    <body>
        <%
            HttpSession sessfile = request.getSession();
            String path = String.valueOf(sessfile.getAttribute("path"));

        %>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#">EDMS</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li ><a href="#">Home</a></li>
                        <li><a href="home.jsp">Virtual Folders</a></li>
                        <li class="active"><a href="#">Files</a></li>
                        <li><a href="#">Admin tools</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid text-center">    
            <div class="row content">
                <div class="col-sm-2 sidenav">
                    <p><a href="viewFiles.jsp?name=<%=path%>">View Files</a></p>
                    <p><a href="#">Manage Files</a></p>

                </div>
                <div class="col-sm-8 text-left"> 
                    <h1>Upload File</h1>
                    <p>Select File from below tag and provide description</p>
                    <hr>
                    <h3>Test</h3>
                    <form action="UploadFile" method="post" enctype="multipart/form-data">  
                        <table>
                            <tr>
                                <th>Select File:</th>
                                <td><input type="file" name="fname"/></td>
                            </tr>
                            <tr>
                                <th>Description:</th>
                                <td><input type="text" name="description" /></td>
                            </tr>
                            <tr>
                                <td><input type="submit" value="upload"/></td>
                            </tr>
                        </table> 
                    </form>  
                </div>
                <div class="col-sm-2 sidenav">
                    <div class="well">
                        <p>ADS</p>
                    </div>
                    <div class="well">
                        <p>ADS</p>
                    </div>
                </div>
            </div>
        </div>

        <footer class="container-fluid text-center">
            <p>2018 &copy; EDMS</p>
        </footer>

    </body>
</html>
