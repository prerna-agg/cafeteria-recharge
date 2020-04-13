package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import data.db;
import java.util.*;

public final class ready_005forders_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"[]>\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"ltr\" lang=\"en-US\" xml:lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <!--\r\n");
      out.write("    Created by Artisteer v3.1.0.46558\r\n");
      out.write("    Base template (without user's data) checked by http://validator.w3.org : \"This page is valid XHTML 1.0 Transitional\"\r\n");
      out.write("    -->\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("    <title>Contact Us</title>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\" media=\"screen\" />\r\n");
      out.write("    <!--[if IE 6]><link rel=\"stylesheet\" href=\"style.ie6.css\" type=\"text/css\" media=\"screen\" /><![endif]-->\r\n");
      out.write("    <!--[if IE 7]><link rel=\"stylesheet\" href=\"style.ie7.css\" type=\"text/css\" media=\"screen\" /><![endif]-->\r\n");
      out.write("\r\n");
      out.write("    <script type=\"text/javascript\" src=\"jquery.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"script.js\"></script>\r\n");
      out.write("   <style type=\"text/css\">\r\n");
      out.write(".art-post .layout-item-0 { padding: 15px; }\r\n");
      out.write("   .ie7 .art-post .art-layout-cell {border:none !important; padding:0 !important; }\r\n");
      out.write("   .ie6 .art-post .art-layout-cell {border:none !important; padding:0 !important; }\r\n");
      out.write("   </style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"art-page-background-glare-wrapper\">\r\n");
      out.write("    <div id=\"art-page-background-glare\"></div>\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"art-main\">\r\n");
      out.write("    <div class=\"cleared reset-box\"></div>\r\n");
      out.write("    <div class=\"art-header\">\r\n");
      out.write("<div class=\"art-bar art-nav\">\r\n");
      out.write("<div class=\"art-nav-outer\">\r\n");
      out.write("<div class=\"art-nav-wrapper\">\r\n");
      out.write("<div class=\"art-nav-inner\">\r\n");
      out.write("\t<div class=\"art-nav-center\">\r\n");
      out.write("\t<ul class=\"art-hmenu\">\r\n");
      out.write("\t\t<li>\r\n");
      out.write("\t\t\t<a href=\"view_orders.jsp\" class=\"active\">View Orders</a>\r\n");
      out.write("\t\t</li>\t\r\n");
      out.write("\t\t<li>\r\n");
      out.write("\t\t\t<a href=\"remove_item.jsp\">Remove Item</a>\r\n");
      out.write("\t\t</li>\r\n");
      out.write("                <li>\r\n");
      out.write("                        <a href=\"ready_orders.jsp\">Ready Orders</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                        <a href=\"view_comments.jsp\">Comments</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"account_settings.jsp\">Account</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                        <a href=\"signout.jsp\">SignOut</a>\r\n");
      out.write("                </li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"cleared reset-box\"></div>\r\n");
      out.write("<div class=\"art-header-position\">\r\n");
      out.write("            <div class=\"art-header-wrapper\">\r\n");
      out.write("                <div class=\"cleared reset-box\"></div>\r\n");
      out.write("                <div class=\"art-header-inner\">\r\n");
      out.write("                <div class=\"art-headerobject\"></div>\r\n");
      out.write("                <div class=\"art-logo\">\r\n");
      out.write("                                 <h1 class=\"art-logo-name\"><a href=\"./index.html\">                      </a></h1>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"cleared reset-box\"></div>\r\n");
      out.write("    <div class=\"art-box art-sheet\">\r\n");
      out.write("        <div class=\"art-box-body art-sheet-body\">\r\n");
      out.write("            <div class=\"art-layout-wrapper\">\r\n");
      out.write("                <div class=\"art-content-layout\">\r\n");
      out.write("                    <div class=\"art-content-layout-row\">\r\n");
      out.write("                        <div class=\"art-layout-cell art-content\">\r\n");
      out.write("<div class=\"art-box art-post\">\r\n");
      out.write("    <div class=\"art-box-body art-post-body\" style=\"left: 0px; top: 0px\">\r\n");
      out.write("<div class=\"art-post-inner art-article\">\r\n");
      out.write("                                <div class=\"art-postcontent\">\r\n");
      out.write("<div class=\"art-content-layout\">\r\n");
      out.write("    <div class=\"art-content-layout-row\">\r\n");
      out.write("        <table height=\"100%\" width=\"100%\" border=\"1\">\r\n");
      out.write("            <tr>\r\n");
      out.write("            <th>\r\n");
      out.write("                UserId\r\n");
      out.write("            </th>\r\n");
      out.write("            <th>\r\n");
      out.write("                Order\r\n");
      out.write("            </th>\r\n");
      out.write("            <th>\r\n");
      out.write("                Prepared\r\n");
      out.write("            </th>\r\n");
      out.write("            </tr>\r\n");
      out.write("        ");

        
        HttpSession ss=request.getSession(false);
        if(ss.getAttribute("cardNo")!=null)
        {
            String qry="select * from ready";
        String type=ss.getAttribute("type").toString(); 
        ResultSet rs2;
        ResultSet ptr;
        String qry2;
        db obj=new db();
        db obj2=new db();
        ResultSet rs=obj.execute(qry);
        //ArrayList hs2=new ArrayList();
        while(rs.next())
        {
            //hs2.add(rs);
        
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        <tr>\r\n");
      out.write("            ");

            String[] words=(rs.getString("item_codes")).split(" ");
            int i=0,flag=0;
                    for(String w:words)
                    {
                         qry2="select item_name from menu where item_id='"+w+"' and item_type='"+type+"'";
                         rs2=obj2.execute(qry2);
                        // rs2.next();
                         if(rs2.next())
                         {
                             flag=1;
                             if(i==0)
                             {
            
      out.write("\r\n");
      out.write("            <td>\r\n");
      out.write("                 ");
      out.print( rs.getString("card_no") 
                 
                 );
      out.write("\r\n");
      out.write("                 \r\n");
      out.write("                 \r\n");
      out.write("            </td>\r\n");
      out.write("                            ");

                             }
                            
      out.write(" \r\n");
      out.write("           ");
  if(i==0)  
      out.write(" <td>  \r\n");
      out.write("                    ");
 
                           out.println(rs2.getString("item_name"));
                           
      out.write("\r\n");
      out.write("           \r\n");
      out.write("                ");

                               i++;
                         }
                    }
                    
      out.write("\r\n");
      out.write("                \r\n");
      out.write("                            </td>\r\n");
      out.write("               \r\n");
      out.write("                ");

                   if(flag==1)
                   {
                
      out.write("\r\n");
      out.write("                <td>\r\n");
      out.write("                    <a href=\"delete_item.jsp?orderId=");
      out.print( rs.getString("order_id"));
      out.write("\">Order Taken By Customer</a>\r\n");
      out.write("                </td>\r\n");
      out.write("                ");

                   }
                
      out.write("\r\n");
      out.write("            </tr>\r\n");
      out.write("        ");

        
        }//while ends
        
      out.write("\r\n");
      out.write("        </table>\r\n");
      out.write("    <br><br>\r\n");
      out.write("\r\n");
      out.write("   ");

        
   //hs.clear();
        }
        else
        {
            response.sendRedirect("index.html");
        }
   
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"art-content-layout\">\r\n");
      out.write("    <br>\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<br>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"cleared\"></div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"cleared\"></div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("                          <div class=\"cleared\"></div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"cleared\"></div>\r\n");
      out.write("    \t\t<div class=\"cleared\"></div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"cleared\"></div>\r\n");
      out.write("    <p class=\"art-page-footer\"></p>\r\n");
      out.write("    <div class=\"cleared\"></div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
