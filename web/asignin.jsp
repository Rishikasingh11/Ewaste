<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>eNno Bootstrap Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/jquery.bxslider.css">
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	<link rel="stylesheet" type="text/css" href="css/set1.css" />
	<link href="css/overwrite.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
<!--
.style1 {
	font-size: 16px;
	font-weight: bold;
}
-->
    </style>
</head>
  <body>
  <form name="form1" method="post" action="">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table width="527" border="1" align="center">
      <tr>
        <td width="266"><img src="images/sign.jpg" width="220" height="225" /></td>
        <td width="245" colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div align="center"><span class="style1">Username</span></div></td>
              <td><div align="center">
                  <input type="text" name="t1" id="t1" required="required" />
              </div></td>
            </tr>
            <tr>
              <td><div align="center"><span class="style1">Password</span></div></td>
              <td><div align="center">
                  <input type="password" name="t2" id="t2" required="required" />
              </div></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td colspan="3"><label></label>
            <div align="center"> <strong>
              <input type="submit" name="button" id="button" value="Sign In" />
              <input type="reset" name="button2" id="button2" value="reset" />
              </strong><br>
          <a href="resetpass.jsp"><b>Forgot password? </b></a></div></td>
      </tr>
    </table>
    <p>&nbsp;</p>
  </form>
   <%@page import ="java.sql.*"%>
        <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
        <%
		if(request.getParameter("button")!= null)
	{

try
{

//String b=request.getParameter("Submit");
	

	   Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ewaste","root","mysql"); 
      Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
    
   
       
      String u=request.getParameter("t1").trim();
      String p=request.getParameter("t2").trim();
      

	     rs=stmt.executeQuery("select * from admin where u="+"'"+u+"'"+" and p="+"'"+p+"'");
      String s="",s1="";
      int found=0;
	  String utype="";
      while(rs.next())
      {
	  	utype=rs.getString(1);
			found++;

				  
		}
		out.println(found);
		  
		 if(found==1)
		 {
		 		//	out.println("chk1");
				 session.setAttribute("user",u); 
		 		 //			out.println("chk2");
		                 response.sendRedirect("adminpage.jsp"); 
					//   request.getRequestDispatcher("adminpage1.jsp");//.include(request,response);
						 		 			//out.println("chk3");
										//	return;
		}
		 
		  else
		 {
		 		   out.println("<h1 align='center'>Invalid Login</h1>");

			}
                  rs.close();
		
			stmt.close();
			con.close();	  
				  
				  
	  }


 catch(Exception e)
    {
     
    out.println("Exception occured" +e);
    }
	}
%>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
					<div align="center"></div>
					<div align="center"></div>
					<div align="center"><span class="sr-only">Toggle navigation</span>
					    <span class="icon-bar"></span>
					    <span class="icon-bar"></span>
					    <span class="icon-bar"></span>
			        </div>
				</button>
				<a class="navbar-brand" href="index.jsp"><span>E-waste Alert Portal With Realtime GoogleMaps</span></a>
			</div>
			<div class="navbar-collapse collapse">							
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation"><a href="index.jsp">Home</a></li>
						<li role="presentation"><a href="about.jsp">About</a></li>
						<!--<li role="presentation"><a href="services.jsp">Services</a></li>-->
						<li role="presentation" class="active"><a href="asignin.jsp">Admin SignIn</a></li>
						<li role="presentation"><a href="ssignin.jsp">Staff SignIn</a></li>
						<li role="presentation"><a href="ccomplaint.jsp"> Garbage</a></li>	
                        <li role="presentation"><a href="ccomplaint.jsp"> Bio Waste</a></li>	
						<!--<li role="presentation"><a href="viewprotax.jsp">Pay Property Tax</a>	</li>	-->	
						<li role="presentation"><a href="ccomplaint.jsp">Citizen Complaint</a></li>					
					</ul>
				</div>
			</div>			
		</div>
	</nav>
	
	<p>&nbsp;</p>
	
		
		
		
		<div class="last-div">
			<div class="container">
				<div class="row">
					<div class="copyright">
						 2023|Copyrights. <a target="_blank" href="http://bootstraptaste.com"></a>
					</div>	
                    <!-- 
                        All links in the footer should remain intact. 
                        Licenseing information is available at: http://bootstraptaste.com/license/
                        You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=eNno
                    -->				
				</div>
			</div>
			<div class="container">
				<div class="row">
					<ul class="social-network">
						<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus fa-1x"></i></a></li>
					</ul>
				</div>
			</div>
			
			<a href="" class="scrollup"><i class="fa fa-chevron-up"></i></a>	
				
			
		</div>	
	</footer>
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-2.1.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="js/fliplightbox.min.js"></script>
	<script src="js/functions.js"></script>	
	<script type="text/javascript">$('.portfolio').flipLightBox()</script>
  </body>
</html>