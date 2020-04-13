package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import data.db;
import java.util.*;

public final class view_005fcomments_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"[]>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"ltr\" lang=\"en-US\" xml:lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <!--\n");
      out.write("    Created by Artisteer v3.1.0.46558\n");
      out.write("    Base template (without user's data) checked by http://validator.w3.org : \"This page is valid XHTML 1.0 Transitional\"\n");
      out.write("    -->\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n");
      out.write("    <title>Comments</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\" media=\"screen\" />\n");
      out.write("    <!--[if IE 6]><link rel=\"stylesheet\" href=\"style.ie6.css\" type=\"text/css\" media=\"screen\" /><![endif]-->\n");
      out.write("    <!--[if IE 7]><link rel=\"stylesheet\" href=\"style.ie7.css\" type=\"text/css\" media=\"screen\" /><![endif]-->\n");
      out.write("\n");
      out.write("    <script type=\"text/javascript\" src=\"jquery.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"script.js\"></script>\n");
      out.write("   <style type=\"text/css\">\n");
      out.write(".art-post .layout-item-0 { padding: 15px; }\n");
      out.write("   .ie7 .art-post .art-layout-cell {border:none !important; padding:0 !important; }\n");
      out.write("   .ie6 .art-post .art-layout-cell {border:none !important; padding:0 !important; }\n");
      out.write("   </style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"art-page-background-glare-wrapper\">\n");
      out.write("    <div id=\"art-page-background-glare\"></div>\n");
      out.write("</div>\n");
      out.write("<div id=\"art-main\">\n");
      out.write("    <div class=\"cleared reset-box\"></div>\n");
      out.write("    <div class=\"art-header\">\n");
      out.write("<div class=\"art-bar art-nav\">\n");
      out.write("<div class=\"art-nav-outer\">\n");
      out.write("<div class=\"art-nav-wrapper\">\n");
      out.write("<div class=\"art-nav-inner\">\n");
      out.write("\t<div class=\"art-nav-center\">\n");
      out.write("\t<ul class=\"art-hmenu\">\n");
      out.write("\t\t<li>\n");
      out.write("\t\t\t<a href=\"view_orders.jsp\">View Orders</a>\n");
      out.write("\t\t</li>\t\n");
      out.write("\t\t<li>\n");
      out.write("\t\t\t<a href=\"remove_item.jsp\">Remove Item</a>\n");
      out.write("\t\t</li>\n");
      out.write("                <li>\n");
      out.write("                        <a href=\"ready_orders.jsp\">Ready Orders</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                        <a href=\"view_comments.jsp\"  class=\"active\">Comments</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"account_settings.jsp\">Account</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                        <a href=\"signout.jsp\">SignOut</a>\n");
      out.write("                </li>\n");
      out.write("\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"cleared reset-box\"></div>\n");
      out.write("<div class=\"art-header-position\">\n");
      out.write("            <div class=\"art-header-wrapper\">\n");
      out.write("                <div class=\"cleared reset-box\"></div>\n");
      out.write("                <div class=\"art-header-inner\">\n");
      out.write("                <div class=\"art-headerobject\"></div>\n");
      out.write("                <div class=\"art-logo\">\n");
      out.write("                                 <h1 class=\"art-logo-name\"><a href=\"./index.html\">                      </a></h1>\n");
      out.write("                                                </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("    <div class=\"cleared reset-box\"></div>\n");
      out.write("    <div class=\"art-box art-sheet\">\n");
      out.write("        <div class=\"art-box-body art-sheet-body\">\n");
      out.write("            <div class=\"art-layout-wrapper\">\n");
      out.write("                <div class=\"art-content-layout\">\n");
      out.write("                    <div class=\"art-content-layout-row\">\n");
      out.write("                        <div class=\"art-layout-cell art-content\">\n");
      out.write("<div class=\"art-box art-post\">\n");
      out.write("    <div class=\"art-box-body art-post-body\" style=\"left: 0px; top: 0px\">\n");
      out.write("<div class=\"art-post-inner art-article\">\n");
      out.write("                                <div class=\"art-postcontent\">\n");
      out.write("<div class=\"art-content-layout\">\n");
      out.write("    <div class=\"art-content-layout-row\">\n");
      out.write("        <table height=\"100%\" width=\"100%\" border=\"1\" rules=\"none\" style=\"border-image:url('images/border.jpg');\">\n");
      out.write("            <tr><th>Comments</th></tr>\n");
      out.write("        ");

      if(session.getAttribute("cardNo")!=null)
      {
        String type=session.getAttribute("type").toString();
        String qry="select comment from comments where type='"+type+"'";
        db obj=new db();
        ResultSet rs=obj.execute(qry);
        while(rs.next())
        {
        
      out.write("\n");
      out.write("        <tr><td align=\"center\" style=\"color:blue;\">\n");
      out.write("           <b> ");
      out.print(rs.getString("comment"));
      out.write("</b>\n");
      out.write("                </td></tr>\n");
      out.write("        ");
}
      }
      else
      {
          response.sendRedirect("index.html");
      }
        
      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<div class=\"art-content-layout\">\n");
      out.write("    <br>\n");
      out.write("\t<br>\n");
      out.write("\t<br>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"cleared\"></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\t\t<div class=\"cleared\"></div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("                          <div class=\"cleared\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"cleared\"></div>\n");
      out.write("    \t\t<div class=\"cleared\"></div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"cleared\"></div>\n");
      out.write("    <p class=\"art-page-footer\"></p>\n");
      out.write("    <div class=\"cleared\"></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
