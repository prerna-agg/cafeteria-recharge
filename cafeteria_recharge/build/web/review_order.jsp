<%@page import="java.sql.*, data.db,java.util.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"[]>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <!--
    Created by Artisteer v3.1.0.46558
    Base template (without user's data) checked by http://validator.w3.org : "This page is valid XHTML 1.0 Transitional"
    -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Review Order</title>



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
			<a href="department.jsp">Home</a>
		</li>	
		<li>
			<a href="contact_us.jsp">ContactUs</a>
		</li>
                <li>
                        <a href="view_cart.jsp">View Cart</a>
                </li>
                <li>
                        <a href="review_order.jsp" class="active">Review order</a>
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
        Not ready order :
      <table height="100%" widht="100%" border="1">
               <tr>
                   <th>
                       Item Name
                   </th>
                   <th>
                       State
                   </th>
               </tr>
          
       <%
       HttpSession ss=request.getSession(false);
       if(ss.getAttribute("cardNo")!=null)
       {
       String id=ss.getAttribute("cardNo").toString();
       String qry1="select * from orders where card_no="+id;
       String qry2="select * from ready where card_no='"+id+"' and item_codes!=''";
       String qry3;
       db obj=new db();
       db obj2=new db();
       db obj3=new db();
       
       ResultSet rs=obj.execute(qry1);
       ResultSet rs2=obj2.execute(qry2);
       ResultSet rs3;
       while(rs.next())
       {
           String[] words=(rs.getString("item_codes")).split(" ");
                    for(String w:words)
                    {
                        
                         qry3="select item_name from menu where item_id="+w;
                         rs3=obj3.execute(qry3);
                         if(rs3.next())
                         {
            %>
            <tr>
                <td>
                            <%= rs3.getString("item_name") %>
                </td>
                <td align="center">
                    <img src="loading2.gif" height="70" width="70" alt="not showing">
                </td>
            </tr>
                            <%
                          }
                        
                    }
                           
       }
         %>
        </table>
       Ready Orders :
       <br>
           <table height="100%" widht="100%" border="1">
               <tr>
                   <th>
                       Item Name
                   </th>
                   <th>
                       State
                   </th>
               </tr>
      <%
       db obj4=new db();
       String qry4;
       while(rs2.next())
        {
            //out.println("order is " + rs2.getString("item_codes"));
         // if(rs2.getString("item_codes")!="")
          //{
              try
              {
           String[] words=(rs2.getString("item_codes")).split(" ");
                    for(String w:words)
                    {
                        
                         if(w!=" ")
                         {
                         qry4="select item_name from menu where item_id="+w;
                         ResultSet rs4=obj4.execute(qry4);
                         if(rs4.next())
                         {
            %>
            <tr>
                <td>
                            <%= rs4.getString("item_name") %>
                </td>
                <td>
                            <img src="loading.gif" height="70" width="70" alt="not showing">
                </td>
            </tr>
                            <%
                         }
                        }
                        }
                        
                    }
              catch(Exception e)
                        {
                            out.println(e);
                        }
                        
       //   }
                           
       }
    }
    else
    {
        response.sendRedirect("index.html");
    }%>
           </table>
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
