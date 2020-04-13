<%@page import=" java.util.* ,data.db , java.sql.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<%
HttpSession ss=request.getSession(false);
if(ss.getAttribute("cardNo")!=null)
{
String type=request.getParameter("type").toString();
ss.setAttribute("orderType",type);
response.sendRedirect("menu.jsp");
}
else
{
    response.sendRedirect("index.html");
}
%>