<%-- 
    Document   : login
    Created on : 29 Apr, 2018, 1:15:27 PM
    Author     : Ish
--%>

    <%@page import="com.EBMS.bean.Login"%>  
    <jsp:useBean id="obj" class="com.EBMS.bean.Login"/>  
      
    <jsp:setProperty property="*" name="obj"/>  
      
    <%  
    boolean status=LoginDao.validate(obj);  
    if(status){  
    out.println("You r successfully logged in");  
    session.setAttribute("session","TRUE");  
    }  
    else  
    {  
    out.print("Sorry, email or password error");  
    %>  
    <jsp:include page="index.jsp"></jsp:include>  
    <%  
    }  
    %>  