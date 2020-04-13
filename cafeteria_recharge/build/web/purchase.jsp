<%@page import=" java.util.* ,data.db , java.sql.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"[]>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <!--
    Created by Artisteer v3.1.0.46558
    Base template (without user's data) checked by http://validator.w3.org : "This page is valid XHTML 1.0 Transitional"
    -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Contact Us</title>



    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
    <!--[if IE 6]><link rel="stylesheet" href="style.ie6.css" type="text/css" media="screen" /><![endif]-->
    <!--[if IE 7]><link rel="stylesheet" href="style.ie7.css" type="text/css" media="screen" /><![endif]-->

    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="script.js"></script>
   <style type="text/css">
.art-post .layout-item-0 { padding: 15px; }
   .ie7 .art-post .art-layout-cell {border:none !important; padding:0 !important; }
   .ie6 .art-post .art-layout-cell {border:none !important; padding:0 !important; }
   </style>

</head>
<body>
<div id="art-page-background-glare-wrapper">
    <div id="art-page-background-glare"></div>
</div>
<div id="art-main">
    <div class="cleared reset-box"></div>
    <div class="art-header">
<div class="art-bar art-nav">
<div class="art-nav-outer">
<div class="art-nav-wrapper">
<div class="art-nav-inner">
	<div class="art-nav-center">
	<ul class="art-hmenu">
		<li>
			<a href="department.jsp" class="active">Home</a>
		</li>	
		<li>
			<a href="contact_us.jsp">ContactUs</a>
		</li>
                <li>
                        <a href="view_cart.jsp">View Cart</a>
                </li>
                <li>
                        <a href="review_order.jsp">Review order</a>
                </li>
                <li>
                        <a href="recharge.jsp">Recharge</a>
                </li>
                <li>
                        <a href="signout.jsp">SignOut</a>
                </li>
	</ul>
	</div>
</div>
</div>
</div>
</div>
<div class="cleared reset-box"></div>
<div class="art-header-position">
            <div class="art-header-wrapper">
                <div class="cleared reset-box"></div>
                <div class="art-header-inner">
                <div class="art-headerobject"></div>
                <div class="art-logo">
                                 <h1 class="art-logo-name"><a href="./index.html">                      </a></h1>
                                                </div>
                </div>
            </div>
        </div>
        
    </div>
    <div class="cleared reset-box"></div>
    <div class="art-box art-sheet">
        <div class="art-box-body art-sheet-body">
            <div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content">
<div class="art-box art-post">
    <div class="art-box-body art-post-body" style="left: 0px; top: 0px">
<div class="art-post-inner art-article">
                                <div class="art-postcontent">
<div class="art-content-layout">
    <div class="art-content-layout-row">
   <%
    HttpSession ss=request.getSession(false);
    if(ss.getAttribute("cardNo")!=null)
    {
    ArrayList hs=(ArrayList)ss.getAttribute("Shopping_Cart");
    String id=ss.getAttribute("cardNo").toString();
    String t=ss.getAttribute("total").toString();
    int total=Integer.parseInt(t);
    db obj=new db();
    db obj2=new db();
    db obj3=new db();
    String qry;
    String qry2;
    String qry3;
    int price=0;
    String order="";
    //qry="select amount from account where card_no="+id;
    qry="select amount from account where card_no='"+id+"'";
    qry2="select IFNULL(max(order_id),0) as max_value from orders";
    
        ResultSet rs=obj.execute(qry);
        ResultSet rs2=obj2.execute(qry2);
        int orderId=0;
        if(rs2.next())
        {
          orderId=Integer.parseInt(rs2.getString("max_value"))+1; 
        }
        //qry3="insert into ready(order_id,card_no,item_codes) values('"+orderId+"','"+id+"')";
        qry3="insert into ready values('"+orderId+"','"+id+"','')";
         if(rs.next())
         {
             
             price=Integer.parseInt(rs.getString("amount"));
             if(total<=price)
             {
                 price=price-total;
                 qry="update account set amount=('"+price+"')where card_no="+id;
                 obj.update(qry);
                 out.println("Purchased successfully");
                 Iterator itr=hs.iterator();
                 while(itr.hasNext())
                 {
                     order=order+((itr.next()).toString())+" ";
                 }
                 qry="insert into orders values("+id+",'"+order+"',"+orderId+")";
                 obj.update(qry);
                 obj3.update(qry3);
                 out.println("Balance="+price);
                 %>
   
                 Review order : <a href="review_order.jsp">Check order is ready or not</a>
        
        <%
                 hs.clear();
             }
             else
             {
                 out.println("Not sufficient Balance  ");
                 out.println("Balance is "+price);
                 out.println("and Total is "+total);
             }
         }
    %>
    <br><br>

   <%
   //hs.clear();
     }
    else
    {
        response.sendRedirect("index.html");
    }
   %>
    </div>
</div>
<div class="art-content-layout">
    <br>
	<br>
	<br>
</div>

                </div>
                <div class="cleared"></div>
</div>

		<div class="cleared"></div>
    </div>
</div>

                          <div class="cleared"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cleared"></div>
    		<div class="cleared"></div>
        </div>
    </div>
    <div class="cleared"></div>
    <p class="art-page-footer"></p>
    <div class="cleared"></div>
</div>

</body>
</html>
