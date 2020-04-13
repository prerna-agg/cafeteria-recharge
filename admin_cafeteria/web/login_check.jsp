<%@page import="java.sql.*, data.db,java.util.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>


<% 
    try
    {
String un=request.getParameter("t1");
String up=request.getParameter("t2");
String ut=request.getParameter("s1");
String qry="select * from chef_login where chef_id=('"+un+"')and chef_pass=('"+up+"') and chef_type=('"+ut+"')";
db obj=new db();
ResultSet rs=obj.execute(qry);
if(rs.next())
{
    //HttpSession ss=request.getSession(true);
    session.setAttribute("cardNo",un);
    session.setAttribute("type",ut);
    //HashMap hm=new HashMap();
    //ss.setAttribute("Shopping_Cart",hm);
    ArrayList hs =new ArrayList();
    session.setAttribute("Shopping_Cart", hs);
    //hs.add(1234);
    response.sendRedirect("view_orders.jsp");   
}
else
{
    response.sendRedirect("index.html");
}
    }
    catch(Exception e)
            {
                System.out.println(e);
            }
%>