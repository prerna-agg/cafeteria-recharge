<%@page import=" java.util.* ,data.db , java.sql.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<%
    try
    {
String s="";
HttpSession ss=request.getSession(false);

if(session.getAttribute("un")!=null)
{  
String un=session.getAttribute("un").toString();
db obj=new db();
db obj2=new db();
 
                String ans=request.getParameter("t2");
                String qry2="select * from forgot where card_no='"+un+"' and ans='"+ans+"'";
                ResultSet rs2=obj.execute(qry2);
                if(rs2.next())
                {
                    String qry3="select pass from tblogin where card_no='"+un+"'";
                    ResultSet rs3=obj2.execute(qry3);
                    if(rs3.next())
                    {
                        
                        out.println("your password " +rs3.getString("pass"));
                    }
                    
                }
                else
                    {
                       out.println("Invalid answer");
                      %> <a href="forgot.jsp"> return </a><%
                        //response.sendRedirect("forgot.jsp");
                    }
                
}
else
{
    response.sendRedirect("index.html");
}
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
