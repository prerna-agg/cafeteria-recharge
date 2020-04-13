<%@page import="java.sql.*, data.db,java.util.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<%
String id=request.getParameter("id");
String qry="delete from menu where item_id='"+id+"'";
db obj=new db();
obj.update(qry);
response.sendRedirect("remove_item.jsp");
%>
