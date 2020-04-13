<%@page import=" java.util.* ,data.db , java.sql.* " contentType="text/html" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<%
    HttpSession ss=request.getSession(false);
    String type=request.getParameter("type");
    ArrayList hs=(ArrayList)ss.getAttribute("Shopping_Cart");
    String un=request.getParameter("item_code");
    out.println(un);
    hs.add(un);
    /*
    Iterator itr=hs.iterator();
    while(itr.hasNext())
    {
        out.println(itr.next());
    }*/
   response.sendRedirect("menu.jsp");
    %>