<%@page import="java.sql.*, data.db,java.util.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<%
String card=session.getAttribute("cardNo").toString();
String un=request.getParameter("t1");
String ue=request.getParameter("t2");
String uph=request.getParameter("t3");
String qry="update register set uname='"+un+"',email='"+ue+"',phno='"+uph+"' where card_no='"+card+"'";
db obj=new db();
obj.update(qry);
response.sendRedirect("account_settings.jsp");
%>
