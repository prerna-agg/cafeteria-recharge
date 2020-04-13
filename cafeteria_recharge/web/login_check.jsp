<%@page import="java.sql.*, data.db,java.util.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>


<% 
    try
    {
        
String un=request.getParameter("t1");
String up=request.getParameter("t2");
String qry="select * from tblogin where card_no=('"+un+"')and pass='"+up+"'";
db obj=new db();
ResultSet rs=obj.execute(qry);
if(rs.next())
{
    //HttpSession ss=request.getSession(true);
    session.setAttribute("cardNo",un);
    //HashMap hm=new HashMap();
    //ss.setAttribute("Shopping_Cart",hm);
    ArrayList hs =new ArrayList();
    session.setAttribute("Shopping_Cart", hs);
    //hs.add(1234);
    response.sendRedirect("department.jsp");   
}
else
{
    response.sendRedirect("forgot.jsp");
}
    }
    catch(Exception e)
            {
                System.out.println(e);
            }
%>