<%@page import=" java.util.* ,data.db , java.sql.* " contentType="text/html" pageEncoding="UTF-8"  errorPage="errorPage.jsp"%>
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
			<a href="department.jsp">Home</a>
		</li>	
		<li>
			<a href="contact_us.jsp"  class="active">ContactUs</a>
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
        Leave a Comment...
        <br>
             <table height="100%" width="100%">
        <form onsubmit="return formValidator2()" action="comment.jsp" >
           
                <tr>
                    <td>
                        <select name="t2">
                            <option>Square One</option>
                            <option>Tea Q</option>
                            <option>La pinoz</option>
                            <option>Burgrill</option>
                        </select>
                    </td>
                    <td>
                        
            <textarea rows="5" cols="50" name="t1" id="t1"></textarea>
            </td>
                    </tr>
                <tr>
                    <td>
            <br>
            <input type="submit" value="send">
                </td>
                    
</tr>
                <tr><td><div id="d2"></div></td></tr>
                
        </form>
      </table>
    </div>
     <script>
    function formValidator2()
        {
            var un2;
            var msg2="<ul>";
            un2=document.getElementById("t1").innerHTML;
            if(un2.length==0)
            {
                 msg2=msg2+"<li>fields cannot be Empty</li>";
            }
            if(un2.length>400)
                {
                   msg2=msg2+"<li>comments length must be less than 400</li>"
                }
                if(msg2.length>4)
                {
                    msg2=msg2+"</ul>";
                    document.getElementById("d2").innerHTML=msg2;
                    return false;
                }
                else
                {
                    return true;
                }
        }
</script>
   
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