<%@page import=" java.util.* ,data.db , java.sql.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<%

String un=request.getParameter("t1");
String up=request.getParameter("t2");
String us=request.getParameter("t3");
String ud=request.getParameter("t4");
String qry="insert into tblogin values("+un+",'"+up+"',"+us+",'"+ud+"')";
db obj=new db();
obj.update(qry);
response.sendRedirect("view3.jsp");
%>