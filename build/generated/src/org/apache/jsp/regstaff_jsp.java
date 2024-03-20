package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;
import java.util.*;
import java.io.*;
import javax.servlet.http.Cookie;

public final class regstaff_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--Author: W3layouts\r\n");
      out.write("Author URL: http://w3layouts.com\r\n");
      out.write("License: Creative Commons Attribution 3.0 Unported\r\n");
      out.write("License URL: http://creativecommons.org/licenses/by/3.0/\r\n");
      out.write("-->\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"zxx\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <title>E-Waste2020</title>\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("    <meta name=\"keywords\" content=\"Chronicle Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \r\n");
      out.write("\tSmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design\" />\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("    <script>\r\n");
      out.write("        addEventListener(\"load\", function () {\r\n");
      out.write("            setTimeout(hideURLbar, 0);\r\n");
      out.write("        }, false);\r\n");
      out.write("\r\n");
      out.write("        function hideURLbar() {\r\n");
      out.write("            window.scrollTo(0, 1);\r\n");
      out.write("        }\r\n");
      out.write("    </script>\r\n");
      out.write("    <!-- Custom Theme files -->\r\n");
      out.write("    <link href=\"css/bootstrap.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("    <!-- shop css -->\r\n");
      out.write("    <link href=\"css/shop.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("    <link href=\"css/style.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("    <!-- font-awesome icons -->\r\n");
      out.write("    <link href=\"css/font-awesome.css\" rel=\"stylesheet\">\r\n");
      out.write("    <!-- //Custom Theme files -->\r\n");
      out.write("    <!-- online-fonts -->\r\n");
      out.write("    <!-- logo -->\r\n");
      out.write("    <link href=\"//fonts.googleapis.com/css?family=Fredericka+the+Great\" rel=\"stylesheet\">\r\n");
      out.write("    <!-- titles -->\r\n");
      out.write("    <link href=\"//fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800,800i\" rel=\"stylesheet\">\r\n");
      out.write("    <!-- body -->\r\n");
      out.write("    <link href=\"//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i\" rel=\"stylesheet\">\r\n");
      out.write("    <!-- //online-fonts -->\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body id=\"page-top\" data-spy=\"scroll\" data-target=\".navbar-fixed-top\">\r\n");
      out.write("    <div id=\"home\">\r\n");
      out.write("        <!-- header -->\r\n");
      out.write("        <!-- navbar -->\r\n");
      out.write("        <nav class=\"navbar navbar-default navbar-fixed-top\">\r\n");
      out.write("            <div class=\"main-nav\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"navbar-header page-scroll\">\r\n");
      out.write("                        <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-ex1-collapse\">\r\n");
      out.write("                            <span class=\"sr-only\">Chronicle</span>\r\n");
      out.write("                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                        </button>\r\n");
      out.write("                        <h1>\r\n");
      out.write("                            <a class=\"navbar-brand\" href=\"index.html\">E-waste alert portal</a>\r\n");
      out.write("                        </h1>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- Collect the nav links, forms, and other content for toggling -->\r\n");
      out.write("                  <div class=\"collapse navbar-collapse navbar-ex1-collapse nav-right\">\r\n");
      out.write("                        <ul class=\"nav navbar-nav navbar-left cl-effect-15\">\r\n");
      out.write("                            <!-- Hidden li included to remove active class from about link when scrolled up past about section -->\r\n");
      out.write("                            <li class=\"hidden\">\r\n");
      out.write("                                <a class=\"page-scroll\" href=\"#page-top\"></a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"epwa.jsp\">Edit Password</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"regstaff.jsp\">Register Staff</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                           \r\n");
      out.write("                           <li>\r\n");
      out.write("                                <a href=\"search.jsp\">Search</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            \r\n");
      out.write("                             <li>\r\n");
      out.write("                                <a href=\"index.html\">Signout</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"login.html\" title=\"SignIn & SignUp\">\r\n");
      out.write("                                    <span class=\"fa fa-user nav-icon\" aria-hidden=\"true\"></span>\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <!-- search-bar -->\r\n");
      out.write("                        <div class=\"search-bar-agileits\">\r\n");
      out.write("                            <div class=\"cd-main-header\">\r\n");
      out.write("                                <ul class=\"cd-header-buttons\">\r\n");
      out.write("                                    <li>\r\n");
      out.write("                                        <a class=\"cd-search-trigger\" href=\"#cd-search\">\r\n");
      out.write("                                            <span></span>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                                <!-- cd-header-buttons -->\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div id=\"cd-search\" class=\"cd-search\">\r\n");
      out.write("                                <form action=\"#\" method=\"post\">\r\n");
      out.write("                                    <input name=\"Search\" type=\"search\" placeholder=\"Type and Hit Enter...\">\r\n");
      out.write("                                </form>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- //search-bar ends here -->\r\n");
      out.write("                        <!-- shopping cart -->\r\n");
      out.write("                        <div class=\"cart-mainf\">\r\n");
      out.write("                            <div class=\"chrcart chrcart2 cart cart box_1\">\r\n");
      out.write("                                <form action=\"#\" method=\"post\" class=\"last\">\r\n");
      out.write("                                    <input type=\"hidden\" name=\"cmd\" value=\"_cart\">\r\n");
      out.write("                                    <input type=\"hidden\" name=\"display\" value=\"1\">\r\n");
      out.write("                                    <button class=\"top_chr_cart\" type=\"submit\" name=\"submit\" value=\"\">\r\n");
      out.write("                                        <i class=\"fa fa-cart-arrow-down\" aria-hidden=\"true\"></i>\r\n");
      out.write("                                    </button>\r\n");
      out.write("                                </form>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- //shopping cart ends here -->\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- /.navbar-collapse -->\r\n");
      out.write("                    <div class=\"clearfix\"></div>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                <p id=\"demos\"></p>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("var myVar = setInterval(myTimer ,1000);\r\n");
      out.write("function myTimer() {\r\n");
      out.write("    var d = new Date();\r\n");
      out.write("    document.getElementById(\"demos\").innerHTML = d.toLocaleTimeString();\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("                \r\n");
      out.write("                <!-- /.container -->\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <!-- //navbar ends here -->\r\n");
      out.write("        <!-- banner -->\r\n");
      out.write("        <!-- //banner -->\r\n");
      out.write("        <!-- about -->\r\n");
      out.write("        <!-- //footer -->\r\n");
      out.write("<div class=\"cpy-right\">\r\n");
      out.write("           \r\n");
      out.write("            </p>\r\n");
      out.write("            <p>&nbsp;</p>\r\n");
      out.write("            <p>&nbsp;</p>\r\n");
      out.write("            <p>&nbsp;</p>\r\n");
      out.write("            <p>&nbsp;</p>\r\n");
      out.write("            <p>&nbsp;</p>\r\n");
      out.write("            <p>&nbsp;</p>\r\n");
      out.write("</div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- //home -->\r\n");
      out.write("    <!-- js -->\r\n");
      out.write("    <script src=\"js/jquery-2.2.3.min.js\"></script>\r\n");
      out.write("\t<br>\t<br>\t<br>\t<br>\r\n");
      out.write("    <form name=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("      <table width=\"65%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <th width=\"51%\" scope=\"col\"><div align=\"right\">Staff  ID : </div></th>\r\n");
      out.write("          <th width=\"2%\" scope=\"col\">&nbsp;</th>\r\n");
      out.write("          <th width=\"47%\" scope=\"col\"><div align=\"left\">\r\n");
      out.write("              <input name=\"t1\" type=\"text\" id=\"t1\">\r\n");
      out.write("          </div></th>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><div align=\"right\"><strong>Full Name </strong></div></td>\r\n");
      out.write("          <td>&nbsp;</td>\r\n");
      out.write("          <td><label>\r\n");
      out.write("              <div align=\"left\">\r\n");
      out.write("                <input name=\"t2\" type=\"text\" id=\"t2\">\r\n");
      out.write("              </div>\r\n");
      out.write("            </label></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><div align=\"right\"><strong>Address</strong></div></td>\r\n");
      out.write("          <td>&nbsp;</td>\r\n");
      out.write("          <td><div align=\"left\">\r\n");
      out.write("              <label>\r\n");
      out.write("              <textarea name=\"t3\" id=\"t3\"></textarea>\r\n");
      out.write("              </label>\r\n");
      out.write("          </div></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><div align=\"right\"><strong>Gender</strong></div></td>\r\n");
      out.write("          <td>&nbsp;</td>\r\n");
      out.write("          <td><label>\r\n");
      out.write("              <div align=\"left\">\r\n");
      out.write("                <select name=\"t4\" id=\"t4\">\r\n");
      out.write("                  <option value=\"male\">Male</option>\r\n");
      out.write("                  <option value=\"female\">Female</option>\r\n");
      out.write("                </select>\r\n");
      out.write("              </div>\r\n");
      out.write("            </label></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><div align=\"right\"><strong>Date Of Birth </strong></div></td>\r\n");
      out.write("          <td>&nbsp;</td>\r\n");
      out.write("          <td><label>\r\n");
      out.write("              <div align=\"left\">\r\n");
      out.write("                <input name=\"t5\" type=\"date\" id=\"t5\">\r\n");
      out.write("              </div>\r\n");
      out.write("            </label></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><div align=\"right\"><strong>Email</strong></div></td>\r\n");
      out.write("          <td>&nbsp;</td>\r\n");
      out.write("          <td><label>\r\n");
      out.write("              <div align=\"left\">\r\n");
      out.write("                <input name=\"t6\" type=\"text\" id=\"t6\">\r\n");
      out.write("              </div>\r\n");
      out.write("            </label></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><div align=\"right\"><strong>Password</strong></div></td>\r\n");
      out.write("          <td>&nbsp;</td>\r\n");
      out.write("          <td><div align=\"left\">\r\n");
      out.write("              <input name=\"t7\" type=\"text\" id=\"t7\">\r\n");
      out.write("          </div></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><label>\r\n");
      out.write("              <div align=\"center\"></div>\r\n");
      out.write("            </label></td>\r\n");
      out.write("          <td>&nbsp;</td>\r\n");
      out.write("          <td><input type=\"Submit\" name=\"Submit\" value=\"Submit\">\r\n");
      out.write("            <input type=\"reset\" name=\"Submit2\" value=\"Reset\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td colspan=\"3\">&nbsp;</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t   \r\n");
      out.write("      ");

   

try
{
if(request.getParameter("Submit")!= null)
	
   	{
   		Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ewaste","root","mysql");  
       	 String t1=request.getParameter("t1").trim();
		 String t2=request.getParameter("t2").trim();
		 String t3=request.getParameter("t3").trim();
	     String t4=request.getParameter("t4").trim();
         String t5=request.getParameter("t5").trim();
         String t6=request.getParameter("t6").trim();
         String t7=request.getParameter("t7").trim();
		
       
        Statement stmt=con.createStatement();
		       int count=0;
	        ResultSet rs,rs1;
			 rs=stmt.executeQuery("select * from staffreg where email="+"'"+t6+"'");

      int found=0;
      while(rs.next())
      {
			count++;
		}

			 if(count==0)
	  {
       

		
       
        PreparedStatement pstmt=con.prepareStatement("insert into staffreg values(?,?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,t5);
            pstmt.setString(6,t6);
            pstmt.setString(7,t7);
			
           
            
             pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
			out.println("<h1>SUCCESFULLY REGISTERED</h1>");
            //response.sendRedirect("http://localhost:8084/Quickmail/succsignup.html");
    }
	
	else
		{
			out.println("<h2 style='color:red'>User already Registrered with us ....</h2>");
		}
		}
}
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }

      out.write("\r\n");
      out.write("\t\t       \r\n");
      out.write("<!-- //js -->\r\n");
      out.write("<!--search jQuery-->\r\n");
      out.write("<script src=\"js/main.js\"></script>\r\n");
      out.write("    <!--search jQuery-->\r\n");
      out.write("    <!-- cart-js -->\r\n");
      out.write("    <script src=\"js/minicart.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("        chr.render();\r\n");
      out.write("\r\n");
      out.write("        chr.cart.on('new_checkout', function (evt) {\r\n");
      out.write("            var items, len, i;\r\n");
      out.write("\r\n");
      out.write("            if (this.subtotal() > 0) {\r\n");
      out.write("                items = this.items();\r\n");
      out.write("\r\n");
      out.write("                for (i = 0, len = items.length; i < len; i++) {}\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("    <!-- //cart-js -->\r\n");
      out.write("    <!-- Scrolling Nav JavaScript -->\r\n");
      out.write("    <script src=\"js/scrolling-nav.js\"></script>\r\n");
      out.write("    <!-- //fixed-scroll-nav-js -->\r\n");
      out.write("    <!-- dropdown nav -->\r\n");
      out.write("    <script>\r\n");
      out.write("        $(document).ready(function () {\r\n");
      out.write("            $(\".dropdown\").hover(\r\n");
      out.write("                function () {\r\n");
      out.write("                    $('.dropdown-menu', this).stop(true, true).slideDown(\"fast\");\r\n");
      out.write("                    $(this).toggleClass('open');\r\n");
      out.write("                },\r\n");
      out.write("                function () {\r\n");
      out.write("                    $('.dropdown-menu', this).stop(true, true).slideUp(\"fast\");\r\n");
      out.write("                    $(this).toggleClass('open');\r\n");
      out.write("                }\r\n");
      out.write("            );\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("    <!-- //dropdown nav -->\r\n");
      out.write("    <!-- start-smooth-scrolling -->\r\n");
      out.write("    <script src=\"js/move-top.js\"></script>\r\n");
      out.write("    <script src=\"js/easing.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("        jQuery(document).ready(function ($) {\r\n");
      out.write("            $(\".scroll\").click(function (event) {\r\n");
      out.write("                event.preventDefault();\r\n");
      out.write("\r\n");
      out.write("                $('html,body').animate({\r\n");
      out.write("                    scrollTop: $(this.hash).offset().top\r\n");
      out.write("                }, 1000);\r\n");
      out.write("            });\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("    <!-- //end-smooth-scrolling -->\r\n");
      out.write("    <!-- smooth-scrolling-of-move-up -->\r\n");
      out.write("    <script>\r\n");
      out.write("        $(document).ready(function () {\r\n");
      out.write("            /*\r\n");
      out.write("            var defaults = {\r\n");
      out.write("                containerID: 'toTop', // fading element id\r\n");
      out.write("                containerHoverID: 'toTopHover', // fading element hover id\r\n");
      out.write("                scrollSpeed: 1200,\r\n");
      out.write("                easingType: 'linear' \r\n");
      out.write("            };\r\n");
      out.write("            */\r\n");
      out.write("\r\n");
      out.write("            $().UItoTop({\r\n");
      out.write("                easingType: 'easeOutQuart'\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("    <script src=\"js/SmoothScroll.min.js\"></script>\r\n");
      out.write("    <!-- //smooth-scrolling-of-move-up -->\r\n");
      out.write("    <!-- about bottom grid Numscroller -->\r\n");
      out.write("    <script src=\"js/numscroller-1.0.js\"></script>\r\n");
      out.write("    <!-- //about bottom grid Numscroller -->\r\n");
      out.write("    <!-- Bootstrap core JavaScript\r\n");
      out.write(" ================================================== -->\r\n");
      out.write("    <!-- Placed at the end of the document so the pages load faster -->\r\n");
      out.write("    <script src=\"js/bootstrap.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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
