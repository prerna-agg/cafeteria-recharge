<%@page import=" java.util.* ,data.db , java.sql.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<%
    HttpSession ss=request.getSession(false);
    if(ss.getAttribute("cardNo")!=null)
    {
    db obj=new db();
    String id=ss.getAttribute("cardNo").toString();
    String qry;
    int price;
    String qry2;
    int n;
    qry2="select amount from account where card_no="+id;
    ResultSet rs=obj.execute(qry2);
    if(rs.next())
    {
        n=Integer.parseInt(rs.getString("amount"));
        n=n+Integer.parseInt(request.getParameter("t2"));
    qry="update account set amount='"+n+"' where card_no="+id;
    obj.update(qry);
    response.sendRedirect("recharge.jsp");
    } }
    else
    {
        response.sendRedirect("index.html");
    }
%>