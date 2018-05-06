<%-- 
    Document   : createPf
    Created on : 6 May, 2018, 5:37:16 PM
    Author     : Ish
--%>
<%@page import="java.util.List"%>
<%@page import="com.EDMS.Dao.UserDao"%>
<%@page import="com.EDMS.bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
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


        </style>
    </head>
    <body>
        <%
            List<User> userlist = UserDao.allUsers();
            if (userlist.isEmpty()) {
                System.out.print("Userlist is empty");
            } else {
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
                        <li ><a href="home.jsp">Virtual Folders</a></li>
                        <li ><a href="#">Files</a></li>
                        <li class="active"><a href="#">User Management</a></li>
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
                    <p><a href="home.jsp">User Management</a></p>
                    <p><a href="home.jsp">Manage Virtual Folders</a></p>
                </div>
                <div class="col-sm-8 text-left"> 
                    <h1>User Management</h1>
                    <p>Modify User Details</p>
                    <hr>
                    <h3>All Users</h3>
                    <table >
                        <tr>
                            <th >User Id</th>
                            <th>Password</th>
                            <th>Email</th>
                            <th>Level</th>
                            <th>Enable</th>
                        </tr>
                        <%
                            for (User u : userlist) {
                                int id = 0;
                                ++id;
                        %>
                        <tr>
                           
                            <td><input  type="text" name ="userid<%=id%>" value="<%=u.getUserid()%>"/></td>
                            <td><input  type="password" name ="password<%=id%>" value="<%=u.getPasswd()%>"/></td>
                            <td><input  type="text" name ="email<%=id%>" value="<%=u.getEmail()%>"/></td>
                            <td><input  type="text" name ="level<%=id%>" value="<%=u.getLevel()%>"/></td>
                            <td><input  type="text" name ="enable<%=id%>" value="<%=u.getEnable()%>"/></td>
                        </tr>
                        <%              
                                }
                            }
                        %>
                    </table>
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
