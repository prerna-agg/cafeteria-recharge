<%@page import="java.sql.*, data.db,java.util.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"[]>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <!--
    Created by Artisteer v3.1.0.46558
    Base template (without user's data) checked by http://validator.w3.org : "This page is valid XHTML 1.0 Transitional"
    -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Remove Item</title>



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
			<a href="view_orders.jsp">View Orders</a>
		</li>	
		<li>
			<a href="remove_item.jsp"  class="active">Remove Item</a>
		</li>
                <li>
                        <a href="ready_orders.jsp">Ready Orders</a>
                </li>
                <li>
                        <a href="view_comments.jsp">Comments</a>
                </li>
                <li>
                    <a href="account_settings.jsp">Account</a>
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
         <table height="100%" width="100%" border="1">
             <tr>
             <th>id</th>
             <th>name</th>
             <th>price</th>
             <th>description</th>
             <th>image</th>
             <th>remove</th>
             </tr>
        <%
        
        HttpSession ss=request.getSession(false);
        if(ss.getAttribute("cardNo")!=null)
        {
        try
        {
        String type=ss.getAttribute("type").toString();
        String qry="select item_id,item_name,item_price,item_desp,image,item_type from menu where item_type='"+type+"'";
        String qry2="select IFNULL(max(item_id),0) as max from menu";
        db obj=new db();
        db obj2=new db();
        int n;
        ResultSet rs=obj.execute(qry);
        ResultSet rs2=obj2.execute(qry2);
        while(rs.next())
        {
            %>
           
                <tr>
                    
                    <td><%= rs.getString("item_id") %></td>
                
                    <td>
                        <img src="images/<%= rs.getString("image") %>" height="100" width="100">
                        </img>
                    </td>
                    <td style="color:brown"><b><%= rs.getString("item_name") %></b></td>
                
                
                    <td><%= rs.getString("item_price") %></td>
                
                    <td><%= rs.getString("item_desp") %></td>
                
                
                    
                
                
                
                
                    <td width="10"><a href="delete.jsp?id=<%=rs.getString("item_id")%>">delete item</a></td>
                </tr>
            <%
        }
        %>
       
        </table>
      <%
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
