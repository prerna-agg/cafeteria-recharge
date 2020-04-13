<%@page import=" java.util.* ,data.db , java.sql.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<%
    if(session.getAttribute("cardNo")!=null)
    {
try {
int card=Integer.parseInt(session.getAttribute("cardNo").toString());
String comment=request.getParameter("t1");
String type=request.getParameter("t2");
String qry="insert into comments values("+card+",'"+comment+"','"+type+"')";
db obj=new db();
obj.update(qry);
response.sendRedirect("contact_us.jsp");
}
catch(Exception e)
{
    out.println(e);
}
}
    else
    {
        response.sendRedirect("index.html");
    }
%>
