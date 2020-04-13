<%@page import=" java.util.* ,data.db , java.sql.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<%
    
    String un=request.getParameter("r1");
    out.println(un);
    String up=request.getParameter("r2");
    String uname=request.getParameter("r3");
    String email=request.getParameter("r4");
    String phno=request.getParameter("r5");
    String uque=request.getParameter("r6");
    String uans=request.getParameter("r7");
    String qry="insert into register values('"+un+"','"+up+"','"+uname+"','"+email+"','"+phno+"')";
    db obj=new db();
    db obj2=new db();
    db obj3=new db();
    try
    {
    obj.update(qry);
    String qry2="insert into account values('"+un+"',0)";
    obj3.update(qry2);
    String qry3;
    qry3="insert into tblogin values('"+un+"','"+up+"')";
    String qry4="insert into forgot values('"+un+"','"+uque+"','"+uans+"')";
    obj3.update(qry4);
    obj3.update(qry3);
    response.sendRedirect("index.html");
    }
    catch(Exception e)
    {
        out.println(e);
    }

%>
