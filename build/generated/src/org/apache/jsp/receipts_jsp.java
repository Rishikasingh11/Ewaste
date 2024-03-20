package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;
import java.util.*;
import java.io.*;
import javax.servlet.http.Cookie;
import java.util.*;
import java.io.*;
import javax.servlet.http.Cookie;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.sql.*;

public final class receipts_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t\t\t\t\t<li role=\"presentation\"><a href=\"seditpwd.jsp\">Edit Password</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li role=\"presentation\"><a href=\"sviewcomplaints.jsp\">View Complaints</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li role=\"presentation\"><a href=\"clients.jsp\">Clients</a></li>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<li role=\"presentation\"><a href=\"receipts.jsp\">Receipts </a></li>\r\n");
      out.write("\t\t\t\t\t\t<li role=\"presentation\"><a href=\"index.jsp\">SignOut</a></li>\t\t\t\t\r\n");
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
      out.write("\t\t\t\t\t<p align=\"center\">Welcome Staff </p>\r\n");
      out.write("\t\t\t\t\t<form name=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("\t\t\t\t\t  <table width=\"100%\" border=\"0\">\r\n");
      out.write("                        <caption>\r\n");
      out.write("                          Waste Payment Collection\r\n");
      out.write("                        </caption>\r\n");
      out.write("\t\t\t\t\t    <tr>\r\n");
      out.write("                          <td>Receipt Id </td>\r\n");
      out.write("\t\t\t\t\t      <td><input type=\"text\" id=\"textfield\" name=\"t1\" value=\"\r\n");
try
{
   Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ewaste","root","mysql"); 
      Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
	     rs=stmt.executeQuery("select * from receipt ");
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
      out.write("\t\t\t\t\t      <td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td>Receipt Date </td>\r\n");
      out.write("                          <td><input id=\"t2\" name=\"t2\" required=\"required\" value=\"");
	
		Calendar  calendar = null;
	    calendar = Calendar.getInstance();
	    java.util.Date trialTime = new java.util.Date();
	    calendar.setTime(trialTime);	


	    int year = calendar.get(Calendar.YEAR);
	    int month = 1 + calendar.get(Calendar.MONTH);
	    
	    int dayofmonth = calendar.get(Calendar.DAY_OF_MONTH);

	    String date = month + "/" + dayofmonth + "/" +  year;
		
		String dot="";

 	    int hour = calendar.get(Calendar.HOUR_OF_DAY);
	    int min = calendar.get(Calendar.MINUTE);
	    int sec = calendar.get(Calendar.SECOND);
 dot = dot +" "+ hour + ":" + min  ; 

		
         date=month+"/"+dayofmonth+"/"+year+"  "+dot;
   out.println(date);
 
      out.write("\"/></td>\r\n");
      out.write("                          <td>&nbsp;</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td>Bussiness Name or From Client ID </td>\r\n");
      out.write("                          <td><select name=\"t3\" id=\"t3\">\r\n");
      out.write("                              \r\n");
      out.write("                              ");




 Class.forName("com.mysql.jdbc.Driver");

Connection conn=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/ewaste","root","mysql"); 
		ResultSet rs,rs1;
		
		Statement st=conn.createStatement();
		
		String sql="select distinct(cid) from clients"; 
			rs=st.executeQuery(sql);
			int found=0;
			while(rs.next())
			{
				String mfrom=rs.getString("cid").trim();
//				String mto=rs.getString("too").trim();
	
		
      out.write("\r\n");
      out.write("                              <option value=");
 out.println(mfrom); 
      out.write(">\r\n");
      out.write("                                ");
 out.println(mfrom); 
      out.write("\r\n");
      out.write("                              </option>\r\n");
      out.write("                              ");
 }
		rs.close();
		 
      out.write("\r\n");
      out.write("                            </select></td>\r\n");
      out.write("                          <td>&nbsp;</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td>Amount</td>\r\n");
      out.write("                          <td><input name=\"t4\" type=\"text\" id=\"t4\"></td>\r\n");
      out.write("                          <td>&nbsp;</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td>Payment Mode </td>\r\n");
      out.write("                          <td><input name=\"t5\" type=\"text\" id=\"t5\" value=\"Cash\"></td>\r\n");
      out.write("                          <td>&nbsp;</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td><div align=\"center\">\r\n");
      out.write("                            <input type=\"submit\" name=\"Submit\" value=\"Submit\">\r\n");
      out.write("                          </div></td>\r\n");
      out.write("                          <td><input type=\"reset\" name=\"Submit2\" value=\"Reset\"></td>\r\n");
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
		
        

        PreparedStatement pstmt=con.prepareStatement("insert into receipt values(?,?,?,?,?)");   
		  pstmt.setString(1,t1);
		  pstmt.setString(2,t2);
		  pstmt.setString(3,t3);
		  pstmt.setString(4,t4);
		   pstmt.setString(5,t5);
		 
	
		 
		  

		 
		  
           	
            
                          
            pstmt.executeUpdate(); 
            
           
            
            pstmt.close();  
     
           
		  
		   
            con.close(); 
     		out.println("Receipts details updated successfully");
}
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	
	}

      out.write("\r\n");
      out.write("&nbsp;</p>\r\n");
      out.write("\t\t\t\t\t<p>&nbsp;</p>\r\n");
      out.write("\t\t\t  </div>\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t  <div class=\"col-md-6 col-md-offset-3\">\r\n");
      out.write("\t\t    <div class=\"text-center\">\r\n");
      out.write("\t\t\t    <h2>&nbsp;</h2>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t  <div class=\"box\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<div class=\"col-md-6 col-md-offset-3\">\r\n");
      out.write("\t\t\t\t<div class=\"text-center\">\r\n");
      out.write("\t\t\t\t\t<h2><br>\r\n");
      out.write("\t\t\t\t\t</h2>\r\n");
      out.write("\t\t\t  </div>\r\n");
      out.write("\t\t\t\t<hr>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("  <div class=\"content\"></div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"content\"></div>\r\n");
      out.write("\t\r\n");
      out.write("\t<footer>\r\n");
      out.write("\t\t<div class=\"inner-footer\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t  <div class=\"row\"></div>\r\n");
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
