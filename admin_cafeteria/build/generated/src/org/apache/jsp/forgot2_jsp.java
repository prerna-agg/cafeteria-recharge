package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import data.db;
import java.sql.*;

public final class forgot2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"forgot3.jsp\">\n");
      out.write("            ");
 
                String un=request.getParameter("t1");
                HttpSession ss2=request.getSession(true);
                ss2.setAttribute("un",un);
                         db obj=new db();
                         String qry="select ques from chef_forgot where card_no=('"+un+"')";
                         ResultSet rs=obj.execute(qry);
                         String ques;
                         if(rs.next())
                         {
                             
      out.write("\n");
      out.write("                             Question : ");
      out.print( rs.getString("ques") );
      out.write("   \n");
      out.write("                             <br>\n");
      out.write("                             Answer : <input type=\"text\" name=\"t2\" id=\"t2\">\n");
      out.write("                             <br>\n");
      out.write("                             <input type=\"submit\" value=\"submit\">\n");
      out.write("            ");

                         }
                         else
                         {
                             out.println("invalid card number");
                         }
            
      out.write("\n");
      out.write("        </form>    \n");
      out.write("    </body>\n");
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
