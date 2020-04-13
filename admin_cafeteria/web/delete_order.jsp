 <%@page import=" java.util.* ,data.db , java.sql.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<%
        String un=request.getParameter("orderId");
        String qry="select * from orders where order_id="+un;
        HttpSession ss=request.getSession(false);
        String type=ss.getAttribute("type").toString(); 
        ResultSet rs2;
        String qry2;
        db obj=new db();
        db obj2=new db();
        db obj3=new db();
        db obj4=new db();
        db obj5=new db();
        db obj6=new db();
        //db obj5=new db();
        String qry3;
        String qry4;
        String qry5;
        String qry6;
        String rOrder="";
        String rId="";
        qry6="select * from ready where order_id="+un;
        ResultSet rs=obj.execute(qry);
        ResultSet rs6=obj6.execute(qry6);
        if(rs6.next())
        {
            rOrder=rs6.getString("item_codes");
            rId=rs6.getString("order_id");
        }
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
                                 rOrder=rOrder+w;
                                 //out.println(rOrder);
                                 order=order.replace(w,"");
                                 if(order.equals(""))
                                 {
                                     qry4="delete from orders where order_id="+request.getParameter("orderId");
                                     obj4.update(qry4);
                                     qry5="update ready set item_codes='"+rOrder+"' where order_id="+rId;
                                     obj5.update(qry5);
                                     //obj5.update(qry5);
                                     flag=0;
                                 }
                               }
                            
                         
                    }
                    if(flag==1)
                    {
                        qry3="update orders set item_codes='"+order+"' where order_id="+un;
                        obj3.update(qry3);
                       // out.println(rOrder);
                       // out.println(un);
                        qry5="update ready set item_codes='"+rOrder+"' where order_id="+rId;
                        obj5.update(qry5);
                        
                    }
        }
    response.sendRedirect("view_orders.jsp");
        %>
