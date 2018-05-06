<<<<<<< HEAD
<%@page import="com.EDMS.bean.Pfolder"%>
<%@page import="com.EDMS.Dao.PfolderDao"%>
<%@page import="java.util.List"%>

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
=======
<html>
    <head></head>
>>>>>>> parent of 2aed2ee... Merge branch 'master' of https://github.com/ishminder/EDMS
    <body>
        <%
            String level=null;
        HttpSession sess=request.getSession();
       level = String.valueOf(sess.getAttribute("level"));
        %>
<<<<<<< HEAD
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
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="home.jsp">Virtual Folders</a></li>
                        <li ><a href="#">Files</a></li>
                        <li><a href="userManage.jsp">User Management</a></li>
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
                    <p><a href="createPf.jsp">Create Virtual Folder</a></p>

                </div>
                <div class="col-sm-8 text-left"> 
                    <h1>Virtual Folders</h1>
                    <p>Virtual Folders are parent folders through which you can download and upload books</p>
                    <hr>
                    <h2>Folders</h2>
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

=======
        <h1>Welcome to EDMS Level=<%=level%></h1>
        <form action="CreateDir" method="post">
        Directory name
            <input type="text" name="dirname"/>
            Enter Path to Create new directory
        <input type="text" name="path"/>
        <input type="submit" value="submit"/>
        </form>
>>>>>>> parent of 2aed2ee... Merge branch 'master' of https://github.com/ishminder/EDMS
    </body>
</html>
