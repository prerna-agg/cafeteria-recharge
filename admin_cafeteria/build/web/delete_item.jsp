<%@page import=" java.util.* ,data.db , java.sql.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<%
        String un=request.getParameter("orderId");
        String qry="select * from ready where order_id='"+un+"' and item_codes!=''";
        HttpSession ss=request.getSession(false);
        String type=ss.getAttribute("type").toString(); 
        ResultSet rs2;
        String qry2;
        db obj=new db();
        db obj2=new db();
        db obj3=new db();
        db obj4=new db();
        db obj5=new db();
        String qry5="select order_id from orders where order_id='"+un+"'";
        
        //db obj5=new db();
        String qry3;
        String qry4;
        ResultSet rs=obj.execute(qry);
        if(rs.next())
        {
        String order=rs.getString("item_codes");
        int flag=0;
            String[] words=(rs.getString("item_codes")).split(" ");
            flag=0;
                    for(String w:words)
                    {
                         //flag=0;
                         qry2="select item_id from menu where item_id='"+w+"' and item_type='"+type+"'";
                         rs2=obj2.execute(qry2);
                         
                              if(rs2.next())
                               {
                            
                                 flag=1;
                                 w=w+" ";
                                 order=order.replace(w,"");
                                 ResultSet rs5=obj5.execute(qry5);
                                 if(rs5.next())
                                 {
                                     
                                 }
                                 else
                                 {
                                 if(order.equals(""))
                                 {
                                     qry4="delete from ready where order_id="+request.getParameter("orderId");
                                     obj4.update(qry4);
                                     flag=0;
                                 }
                                 }
                               }
                            
                         
                    }
                    if(flag==1)
                    {
                        qry3="update ready set item_codes='"+order+"' where order_id='"+un+"'";
                        obj3.update(qry3);
                    }
        }
    response.sendRedirect("ready_orders.jsp");
        %>

