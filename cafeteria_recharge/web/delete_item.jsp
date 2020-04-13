<%@page import=" java.util.* ,data.db , java.sql.* " contentType="text/html" pageEncoding="UTF-8"  errorPage="errorPage.jsp"%>
<%
    HttpSession ss=request.getSession(false);
    if(ss.getAttribute("cardNo")!=null)
    {
    ArrayList hs=(ArrayList)ss.getAttribute("Shopping_Cart");
    hs.remove(request.getParameter("item_code"));
    String t=ss.getAttribute("total").toString();
    int total=Integer.parseInt(t);
    db obj=new db();
    String qry;
    int price=0;
    qry="select item_price from menu where item_id="+request.getParameter("item_code");
        ResultSet rs=obj.execute(qry);
         while(rs.next())
         {
             price=Integer.parseInt(rs.getString("item_price"));
         }
         
         total=total-price;
    response.sendRedirect("view_cart.jsp");
    }
    else
    {
        response.sendRedirect("index.html");
    }
    %>
