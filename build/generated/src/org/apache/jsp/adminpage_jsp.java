package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class adminpage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=iso-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <title>eNno Bootstrap Template</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap -->\r\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/animate.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/jquery.bxslider.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/normalize.css\" />\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/demo.css\" />\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/set1.css\" />\r\n");
      out.write("\t<link href=\"css/overwrite.css\" rel=\"stylesheet\">\r\n");
      out.write("\t<link href=\"css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("    <!--[if lt IE 9]>\r\n");
      out.write("      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\r\n");
      out.write("      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write(".style1 {\r\n");
      out.write("\tfont-size: 18px;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("  <body>\r\n");
      out.write("\t<nav class=\"navbar navbar-default navbar-fixed-top\" role=\"navigation\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<!-- Brand and toggle get grouped for better mobile display -->\r\n");
      out.write("\t\t\t<div class=\"navbar-header\">\r\n");
      out.write("\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\".navbar-collapse.collapse\">\r\n");
      out.write("\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t<a class=\"navbar-brand\" href=\"index.html\"><span>E-waste alert portal with realtime googlemaps</span></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"navbar-collapse collapse\">\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t<div class=\"menu\">\r\n");
      out.write("\t\t\t\t\t<ul class=\"nav nav-tabs\" role=\"tablist\">\r\n");
      out.write("                        <li role=\"presentation\"><a href=\"regareas.jsp\">Register Areas</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li role=\"presentation\"><a href=\"aregstaff.jsp\">Register Staff</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li role=\"presentation\"><a href=\"aviewcomplaints.jsp\">View Complaints</a></li>\r\n");
      out.write("\t\t\t\t\t<li role=\"presentation\"><a href=\"search.jsp\">Search </a></li>\r\n");
      out.write("                    \t<li role=\"presentation\"><a href=\"propertytax.jsp\">Property Tax</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li role=\"presentation\"><a href=\"aedpwd.jsp\">Edit Password</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li role=\"presentation\"><a href=\"index.jsp\">SignOut</a></li>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\t\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<div class=\"slider\">\r\n");
      out.write("\t\t\t\t<div class=\"img-responsive\">\r\n");
      out.write("\t\t\t\t\t<p align=\"center\" class=\"style1\">Welcome Administrator </p>\r\n");
      out.write("\t\t\t\t\t<p>&nbsp;</p>\r\n");
      out.write("\t\t\t\t\t<p>&nbsp;</p>\r\n");
      out.write("\t\t\t  </div>\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t  <div class=\"row\"></div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t  <div class=\"box\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t  <div class=\"row\"></div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("    <footer>\r\n");
      out.write("\t\t<div class=\"inner-footer\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t  <div class=\"row\">\r\n");
      out.write("\t\t\t    <p>&nbsp;</p>\r\n");
      out.write("\t\t\t    <p>&nbsp;</p>\r\n");
      out.write("\t\t\t    <p>&nbsp;</p>\r\n");
      out.write("\t\t\t    <p>&nbsp;</p>\r\n");
      out.write("\t\t\t    <p>&nbsp;</p>\r\n");
      out.write("\t\t\t    <p>&nbsp;</p>\r\n");
      out.write("\t\t\t  </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"last-div\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t<div class=\"copyright\">\r\n");
      out.write("\t\t\t\t\t\t 2014 eNno Multi-purpose theme | <a target=\"_blank\" href=\"http://bootstraptaste.com\">Bootstraptaste</a>\r\n");
      out.write("\t\t\t\t\t</div>\t\r\n");
      out.write("                    <!-- \r\n");
      out.write("                        All links in the footer should remain intact. \r\n");
      out.write("                        Licenseing information is available at: http://bootstraptaste.com/license/\r\n");
      out.write("                        You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=eNno\r\n");
      out.write("                    -->\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t<ul class=\"social-network\">\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Facebook\"><i class=\"fa fa-facebook fa-1x\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Twitter\"><i class=\"fa fa-twitter fa-1x\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Linkedin\"><i class=\"fa fa-linkedin fa-1x\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Pinterest\"><i class=\"fa fa-pinterest fa-1x\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" data-placement=\"top\" title=\"Google plus\"><i class=\"fa fa-google-plus fa-1x\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<a href=\"\" class=\"scrollup\"><i class=\"fa fa-chevron-up\"></i></a>\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t</div>\t\r\n");
      out.write("\t</footer>\r\n");
      out.write("\t\r\n");
      out.write("    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n");
      out.write("    <script src=\"js/jquery-2.1.1.min.js\"></script>\r\n");
      out.write("    <!-- Include all compiled plugins (below), or include individual files as needed -->\r\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/wow.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/jquery.easing.1.3.js\"></script>\r\n");
      out.write("\t<script src=\"js/jquery.isotope.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/jquery.bxslider.min.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/fliplightbox.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/functions.js\"></script>\t\r\n");
      out.write("\t<script type=\"text/javascript\">$('.portfolio').flipLightBox()</script>\r\n");
      out.write("  </body>\r\n");
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
