package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;
import java.util.*;
import java.io.*;
import javax.servlet.http.Cookie;
import java.sql.*;

public final class aregstaff_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  </head>\r\n");
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
      out.write("\r\n");
      out.write("\t\t\t\t\t<li role=\"presentation\"><a href=\"aedpwd.jsp\">Edit Password</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li role=\"presentation\"><a href=\"aregstaff.jsp\">Register Staff</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li role=\"presentation\"><a href=\"aviewcomplaints.jsp\">View Complaints</a></li>\r\n");
      out.write("\t\t\t\t\t<li role=\"presentation\"><a href=\"search.jsp\">Search Clients & Payments</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li role=\"presentation\"><a href=\"index.jsp\">SignOut</a></li>\t\t\t\t\t\t\t\t\r\n");
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
      out.write("\t\t\t\t\t<form name=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("\t\t\t\t\t  <table width=\"100%\" border=\"0\">\r\n");
      out.write("                        <caption>\r\n");
      out.write("                          Register Staff\r\n");
      out.write("                        </caption>\r\n");
      out.write("\t\t\t\t\t    <tr>\r\n");
      out.write("                          <td>Staff Id </td>\r\n");
      out.write("\t\t\t\t\t      <td><input type=\"text\" id=\"bookname5\" name=\"t1\" value=\"\r\n");
try
{
   Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ewaste","root","mysql"); 
      Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
	     rs=stmt.executeQuery("select * from staffreg ");
	      int count=1;
      while(rs.next())
      {
			count++;
				  
		}
		
		String s="";
		s="J-"+s.valueOf(count);
  		out.println(s.trim());
		  }

 catch(Exception e)
    {
     
     out.println("Exception occured" +e);
    }
      out.write("\"/></td>\r\n");
      out.write("\t\t\t\t\t      <td rowspan=\"9\"><img src=\"images/employees.jpg\" width=\"450\" height=\"314\" /></td>\r\n");
      out.write("\t\t\t\t        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td>FullName</td>\r\n");
      out.write("                          <td><input name=\"t2\" type=\"text\" id=\"t2\"></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td>Address</td>\r\n");
      out.write("                          <td><input name=\"t3\" type=\"text\" id=\"t3\"></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td>Gender</td>\r\n");
      out.write("                          <td><label>\r\n");
      out.write("                            <input name=\"t4\" type=\"radio\" value=\"M\">\r\n");
      out.write("                          M\r\n");
      out.write("                          <input name=\"t4\" type=\"radio\" value=\"F\">\r\n");
      out.write("                          F</label></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td>Date of Birth </td>\r\n");
      out.write("                          <td><input name=\"t5\" type=\"date\" id=\"t5\"></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td>Email</td>\r\n");
      out.write("                          <td><input name=\"t6\" type=\"email\" id=\"t6\"></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td>Password</td>\r\n");
      out.write("                          <td><input name=\"t7\" type=\"text\" id=\"t7\"></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td>Area</td>\r\n");
      out.write("                          <td><select name=\"t8\" id=\"t8\">\r\n");
      out.write("                            <option value=\"Malleswaram\">Malleswaram</option>\r\n");
      out.write("                            <option value=\"Banshankari\">Banshankari</option>\r\n");
      out.write("                            <option value=\"Kormangala\">Kormangala</option>\r\n");
      out.write("                            <option value=\"Nagarabhavi\">Nagarabhavi</option>\r\n");
      out.write("                          </select>                          </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td><input type=\"submit\" name=\"Submit\" value=\"Register Staff\"></td>\r\n");
      out.write("                          <td>&nbsp;</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                      </table>\r\n");
      out.write("                  </form>\r\n");
      out.write("\t\t\t\t\t<p align=\"center\">\r\n");
      out.write("\t\t\t\t\t  \r\n");
      out.write("                      ");

   
if(request.getParameter("Submit")!= null)
	{
try
{
       Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/ewaste","root","mysql"); 
		 Statement stmt=con.createStatement();
       	 String t1=request.getParameter("t1").trim();
		 String t2=request.getParameter("t2").trim();
		 String t3=request.getParameter("t3").trim();
	     String t4=request.getParameter("t4").trim();
		  String t5=request.getParameter("t5").trim();
		 String t6=request.getParameter("t6").trim();
		 String t7=request.getParameter("t7").trim();
	     String t8=request.getParameter("t8").trim();
        

        PreparedStatement pstmt=con.prepareStatement("insert into staffreg values(?,?,?,?,?,?,?,?)");   
		  pstmt.setString(1,t1);
		  pstmt.setString(2,t2);
		  pstmt.setString(3,t3);
		  pstmt.setString(4,t4);
		   pstmt.setString(5,t1);
		  pstmt.setString(6,t2);
		  pstmt.setString(7,t3);
		  pstmt.setString(8,t4);
	
		 
		  

		 
		  
           	
            
                          
            pstmt.executeUpdate(); 
            
           
            
            pstmt.close();  
     
           
		  
		   
            con.close(); 
     		out.println("Staff Registered successfully");
}
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	
	}

      out.write("\r\n");
      out.write("                    &nbsp;</p>\r\n");
      out.write("\t\t\t\t\t<p>&nbsp;</p>\r\n");
      out.write("\t\t\t\t\t<p>&nbsp;</p>\r\n");
      out.write("\t\t\t  </div>\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<div class=\"col-md-6 col-md-offset-3\">\r\n");
      out.write("\t\t\t\t<div class=\"text-center\">\r\n");
      out.write("\t\t\t\t\t<h2>Multi Purpose Theme</h2>\r\n");
      out.write("\t\t\t\t\t<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Cras suscipit arcu<br>\r\n");
      out.write("\t\t\t\t\tvestibulum volutpat libero sollicitudin vitae Curabitur ac aliquam <br>\r\n");
      out.write("\t\t\t\t\tlorem sit amet scelerisque justo</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<hr>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<div class=\"box\">\r\n");
      out.write("\t\t\t\t<div class=\"col-md-4\">\r\n");
      out.write("\t\t\t\t\t<div class=\"wow bounceIn\" data-wow-offset=\"0\" data-wow-delay=\"0.4s\">\r\n");
      out.write("\t\t\t\t\t\t<h4>Responsive</h4>\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"icon\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-heart-o fa-3x\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Cras suscipit arcu libero</p>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"ficon\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-default\" role=\"button\">Read more</a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<div class=\"col-md-4\">\r\n");
      out.write("\t\t\t\t\t<div class=\"wow bounceIn\" data-wow-offset=\"0\" data-wow-delay=\"1.0s\">\r\n");
      out.write("\t\t\t\t\t\t<h4>Multi Purpose</h4>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"icon\">\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-desktop fa-3x\"></i>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Cras suscipit arcu libero</p>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"ficon\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-default\" role=\"button\">Read more</a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<div class=\"col-md-4\">\r\n");
      out.write("\t\t\t\t\t<div class=\"wow bounceIn\" data-wow-offset=\"0\" data-wow-delay=\"1.6s\">\r\n");
      out.write("\t\t\t\t\t\t<h4>Easy Customize</h4>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"icon\">\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-location-arrow fa-3x\"></i>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Cras suscipit arcu libero</p>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"ficon\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-default\" role=\"button\">Read more</a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<div class=\"col-md-6 col-md-offset-3\">\r\n");
      out.write("\t\t\t\t<div class=\"text-center\">\r\n");
      out.write("\t\t\t\t\t<h2>Galleries</h2>\r\n");
      out.write("\t\t\t\t\t<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Cras suscipit arcu<br>\r\n");
      out.write("\t\t\t\t\tvestibulum volutpat libero sollicitudin vitae Curabitur ac aliquam <br>\r\n");
      out.write("\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<hr>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"content\">\r\n");
      out.write("\t\t<div class=\"grid\">\r\n");
      out.write("\t\t\t<figure class=\"effect-zoe\">\r\n");
      out.write("\t\t\t\t<img src=\"img/25.jpg\" alt=\"img25\"/>\r\n");
      out.write("\t\t\t\t<figcaption>\r\n");
      out.write("\t\t\t\t\t<h2>Title <span>Name</span></h2>\r\n");
      out.write("\t\t\t\t\t<p class=\"icon-links\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><span class=\"icon-heart\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><span class=\"icon-eye\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><span class=\"icon-paper-clip\"></span></a>\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t<p class=\"description\">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>\r\n");
      out.write("\t\t\t\t</figcaption>\t\t\t\r\n");
      out.write("\t\t  </figure>\r\n");
      out.write("\t\t\t<figure class=\"effect-zoe\">\r\n");
      out.write("\t\t\t\t<img src=\"img/26.jpg\" alt=\"img26\"/>\r\n");
      out.write("\t\t\t\t<figcaption>\r\n");
      out.write("\t\t\t\t\t<h2>Title <span>Name</span></h2>\r\n");
      out.write("\t\t\t\t\t<p class=\"icon-links\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><span class=\"icon-heart\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><span class=\"icon-eye\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><span class=\"icon-paper-clip\"></span></a>\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t<p class=\"description\">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>\r\n");
      out.write("\t\t\t\t</figcaption>\t\t\t\r\n");
      out.write("\t\t  </figure>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"content\">\r\n");
      out.write("\t\t<div class=\"grid\">\r\n");
      out.write("\t\t\t<figure class=\"effect-zoe\">\r\n");
      out.write("\t\t\t\t<img src=\"img/27.jpg\" alt=\"img27\"/>\r\n");
      out.write("\t\t\t\t<figcaption>\r\n");
      out.write("\t\t\t\t\t<h2>Title <span>Name</span></h2>\r\n");
      out.write("\t\t\t\t\t<p class=\"icon-links\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><span class=\"icon-heart\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><span class=\"icon-eye\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><span class=\"icon-paper-clip\"></span></a>\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t<p class=\"description\">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>\r\n");
      out.write("\t\t\t\t</figcaption>\t\t\t\r\n");
      out.write("\t\t  </figure>\r\n");
      out.write("\t\t\t<figure class=\"effect-zoe\">\r\n");
      out.write("\t\t\t\t<img src=\"img/30.jpg\" alt=\"img30\"/>\r\n");
      out.write("\t\t\t\t<figcaption>\r\n");
      out.write("\t\t\t\t\t<h2>Title <span>Name</span></h2>\r\n");
      out.write("\t\t\t\t\t<p class=\"icon-links\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><span class=\"icon-heart\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><span class=\"icon-eye\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><span class=\"icon-paper-clip\"></span></a>\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t<p class=\"description\">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>\r\n");
      out.write("\t\t\t\t</figcaption>\t\t\t\r\n");
      out.write("\t\t  </figure>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<footer>\r\n");
      out.write("\t\t<div class=\"inner-footer\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-md-4 f-about\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"index.html\"><h1><span>e</span>Nno</h1></a>\r\n");
      out.write("\t\t\t\t\t\t<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Cras suscipit arcu libero\r\n");
      out.write("\t\t\t\t\t\tvestibulum volutpat libero sollicitudin vitae Curabitur ac aliquam  consectetur adipiscing elit Cras suscipit arcu libero\r\n");
      out.write("\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-md-4 l-posts\">\r\n");
      out.write("\t\t\t\t\t\t<h3 class=\"widgetheading\">Latest Posts</h3>\r\n");
      out.write("\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">This is awesome post title</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Awesome features are awesome</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Create your own awesome website</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Wow, this is fourth post title</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-md-4 f-contact\">\r\n");
      out.write("\t\t\t\t\t\t<h3 class=\"widgetheading\">Stay in touch</h3>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><p><i class=\"fa fa-envelope\"></i> example@gmail.com</p></a>\r\n");
      out.write("\t\t\t\t\t\t<p><i class=\"fa fa-phone\"></i>  +345 578 59 45 416</p>\r\n");
      out.write("\t\t\t\t\t\t<p><i class=\"fa fa-home\"></i> Enno inc  |  PO Box 23456 \r\n");
      out.write("\t\t\t\t\t\t\tLittle Lonsdale St, New York <br>\r\n");
      out.write("\t\t\t\t\t\t\tVictoria 8011 USA</p>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
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
