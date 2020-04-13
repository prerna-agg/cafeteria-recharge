<%@page import=" java.util.* ,data.db , java.sql.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<html>
    <head>
        
        <style type="text/css">
            body
            {
                background-color: darkslategrey;
            }
            
            .c1
            {
                color: white;
                font-size: large;
                font-family: verdana;
            }
        </style>
        <style type="text/css">
.form-style-9{
    max-width: 450px;
    background: #FAFAFA;
    padding: 30px;
    margin: 50px auto;
    box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
    border-radius: 10px;
    border: 6px solid #305A72;
}
.form-style-9 ul{
    padding:0;
    margin:0;
    list-style:none;
}
.form-style-9 ul li{
    display: block;
    margin-bottom: 10px;
    min-height: 35px;
}
.form-style-9 ul li  .field-style{
    box-sizing: border-box; 
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box; 
    padding: 8px;
    outline: none;
    border: 1px solid #B0CFE0;
    -webkit-transition: all 0.30s ease-in-out;
    -moz-transition: all 0.30s ease-in-out;
    -ms-transition: all 0.30s ease-in-out;
    -o-transition: all 0.30s ease-in-out;

}.form-style-9 ul li  .field-style:focus{
    box-shadow: 0 0 5px #B0CFE0;
    border:1px solid #B0CFE0;
}
.form-style-9 ul li .field-split{
    width: 49%;
}
.form-style-9 ul li .field-full{
    width: 100%;
}
.form-style-9 ul li input.align-left{
    float:left;
}
.form-style-9 ul li input.align-right{
    float:right;
}
.form-style-9 ul li textarea{
    width: 100%;
    height: 100px;
}
.form-style-9 ul li input[type="button"], 
.form-style-9 ul li input[type="submit"] {
    -moz-box-shadow: inset 0px 1px 0px 0px #3985B1;
    -webkit-box-shadow: inset 0px 1px 0px 0px #3985B1;
    box-shadow: inset 0px 1px 0px 0px #3985B1;
    background-color: #216288;
    border: 1px solid #17445E;
    display: inline-block;
    cursor: pointer;
    color: #FFFFFF;
    padding: 8px 18px;
    text-decoration: none;
    font: 12px Arial, Helvetica, sans-serif;
}
.form-style-9 ul li input[type="button"]:hover, 
.form-style-9 ul li input[type="submit"]:hover {
    background: linear-gradient(to bottom, #2D77A2 5%, #337DA8 100%);
    
    background-color: #28739E;
}
.c1
{
    font-family: cursive;
    font-size: xx-large;
    font-variant: small-caps;
    color: white;
    text-align: center;
}
</style>
    </head>
<body>
    <form onsubmit="return formValidator2()" class="form-style-9" action="forgot3.jsp" method="post">
        <% 
                String un=request.getParameter("t1");
                //HttpSession ss2=request.getSession(true);
                session.setAttribute("un",un);
                         db obj=new db();
                         String qry="select ques from chef_forgot where card_no=('"+un+"')";
                         ResultSet rs=obj.execute(qry);
                         String ques;
                         if(rs.next())
                         {
                             %>
            <fieldset>
                <legend align="center">Enter cardNumber</legend>
<ul>
     
<li>
    <label class="field-style field-split align-left"><%= rs.getString("ques") %> </label></li>
<li>
    <input type="text" name="t2" id="t2" class="field-style field-split align-left" placeholder="Enter Answer">
</li>
    <li><input type="submit" value="submit"></li>
    

<li>
    <div id="d2"></div>
    </li>
</ul>
            </fieldset>
</form>
                             
            <%
                         }
                         else
                         {
                             out.println("invalid card number");
                         }
            %>
         
<script>
           
            
            
       
        function formValidator2()
        {
            var un2;
            var msg2="<ol>";
            un2=document.getElementById("t2").value;
            
            if(un2.length==0)
            {
                 msg2=msg2+"<li>fields cannot be Empty</li>";
            }
                if(msg2.length>4)
                {
                    msg2=msg2+"</ol>";
                    document.getElementById("d2").innerHTML=msg2;
                    return false;
                }
                else
                {
                    return true;
                }
        }
        </script>
</body>    
</html>

