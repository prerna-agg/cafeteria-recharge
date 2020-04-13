package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import data.db;
import java.sql.*;

public final class forgot_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                background-color: darkslategrey;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .c1\n");
      out.write("            {\n");
      out.write("                color: white;\n");
      out.write("                font-size: large;\n");
      out.write("                font-family: verdana;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write(".form-style-9{\n");
      out.write("    max-width: 450px;\n");
      out.write("    background: #FAFAFA;\n");
      out.write("    padding: 30px;\n");
      out.write("    margin: 50px auto;\n");
      out.write("    box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);\n");
      out.write("    border-radius: 10px;\n");
      out.write("    border: 6px solid #305A72;\n");
      out.write("}\n");
      out.write(".form-style-9 ul{\n");
      out.write("    padding:0;\n");
      out.write("    margin:0;\n");
      out.write("    list-style:none;\n");
      out.write("}\n");
      out.write(".form-style-9 ul li{\n");
      out.write("    display: block;\n");
      out.write("    margin-bottom: 10px;\n");
      out.write("    min-height: 35px;\n");
      out.write("}\n");
      out.write(".form-style-9 ul li  .field-style{\n");
      out.write("    box-sizing: border-box; \n");
      out.write("    -webkit-box-sizing: border-box;\n");
      out.write("    -moz-box-sizing: border-box; \n");
      out.write("    padding: 8px;\n");
      out.write("    outline: none;\n");
      out.write("    border: 1px solid #B0CFE0;\n");
      out.write("    -webkit-transition: all 0.30s ease-in-out;\n");
      out.write("    -moz-transition: all 0.30s ease-in-out;\n");
      out.write("    -ms-transition: all 0.30s ease-in-out;\n");
      out.write("    -o-transition: all 0.30s ease-in-out;\n");
      out.write("\n");
      out.write("}.form-style-9 ul li  .field-style:focus{\n");
      out.write("    box-shadow: 0 0 5px #B0CFE0;\n");
      out.write("    border:1px solid #B0CFE0;\n");
      out.write("}\n");
      out.write(".form-style-9 ul li .field-split{\n");
      out.write("    width: 49%;\n");
      out.write("}\n");
      out.write(".form-style-9 ul li .field-full{\n");
      out.write("    width: 100%;\n");
      out.write("}\n");
      out.write(".form-style-9 ul li input.align-left{\n");
      out.write("    float:left;\n");
      out.write("}\n");
      out.write(".form-style-9 ul li input.align-right{\n");
      out.write("    float:right;\n");
      out.write("}\n");
      out.write(".form-style-9 ul li textarea{\n");
      out.write("    width: 100%;\n");
      out.write("    height: 100px;\n");
      out.write("}\n");
      out.write(".form-style-9 ul li input[type=\"button\"], \n");
      out.write(".form-style-9 ul li input[type=\"submit\"] {\n");
      out.write("    -moz-box-shadow: inset 0px 1px 0px 0px #3985B1;\n");
      out.write("    -webkit-box-shadow: inset 0px 1px 0px 0px #3985B1;\n");
      out.write("    box-shadow: inset 0px 1px 0px 0px #3985B1;\n");
      out.write("    background-color: #216288;\n");
      out.write("    border: 1px solid #17445E;\n");
      out.write("    display: inline-block;\n");
      out.write("    cursor: pointer;\n");
      out.write("    color: #FFFFFF;\n");
      out.write("    padding: 8px 18px;\n");
      out.write("    text-decoration: none;\n");
      out.write("    font: 12px Arial, Helvetica, sans-serif;\n");
      out.write("}\n");
      out.write(".form-style-9 ul li input[type=\"button\"]:hover, \n");
      out.write(".form-style-9 ul li input[type=\"submit\"]:hover {\n");
      out.write("    background: linear-gradient(to bottom, #2D77A2 5%, #337DA8 100%);\n");
      out.write("    \n");
      out.write("    background-color: #28739E;\n");
      out.write("}\n");
      out.write(".c1\n");
      out.write("{\n");
      out.write("    font-family: cursive;\n");
      out.write("    font-size: xx-large;\n");
      out.write("    font-variant: small-caps;\n");
      out.write("    color: white;\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("<body>\n");
      out.write("    <form onsubmit=\"return formValidator2()\" class=\"form-style-9\" action=\"forgot2.jsp\" method=\"post\">\n");
      out.write("            <fieldset>\n");
      out.write("                <legend align=\"center\">Enter cardNumber</legend>\n");
      out.write("<ul>\n");
      out.write("<li>\n");
      out.write("    <input type=\"text\" name=\"t1\" id=\"t1\" class=\"field-style field-split align-left\" placeholder=\"Enter CardNumber\" />\n");
      out.write("    <input type=\"submit\" value=\"get Password\">\n");
      out.write("</li>\n");
      out.write("\n");
      out.write("<li>\n");
      out.write("    <div id=\"d2\"></div>\n");
      out.write("    </li>\n");
      out.write("</ul>\n");
      out.write("            </fieldset>\n");
      out.write("</form>\n");
      out.write("<script>\n");
      out.write("           \n");
      out.write("            \n");
      out.write("            \n");
      out.write("       \n");
      out.write("        function formValidator2()\n");
      out.write("        {\n");
      out.write("            var un2;\n");
      out.write("            var msg2=\"<ol>\";\n");
      out.write("            un2=document.getElementById(\"t1\").value;\n");
      out.write("            \n");
      out.write("            if(un2.length==0)\n");
      out.write("            {\n");
      out.write("                 msg2=msg2+\"<li>fields cannot be Empty</li>\";\n");
      out.write("            }\n");
      out.write("            if(isNaN(un2) && un2.length!=0)\n");
      out.write("                {\n");
      out.write("                   msg2=msg2+\"<li>card no should be numeric</li>\"\n");
      out.write("                }\n");
      out.write("                if(msg2.length>4)\n");
      out.write("                {\n");
      out.write("                    msg2=msg2+\"</ol>\";\n");
      out.write("                    document.getElementById(\"d2\").innerHTML=msg2;\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                else\n");
      out.write("                {\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("</body>    \n");
      out.write("</html>\n");
      out.write("\n");
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
