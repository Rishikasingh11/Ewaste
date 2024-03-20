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
.style6 {	color: #000099;
	font-weight: bold;
}
.style8 {color: #000099}
-->
    </style>
</head>
  <body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><span>E-waste alert portal with realtime googlemaps</span></a>
			</div>
			<div class="navbar-collapse collapse">							
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation"><a href="staffpage.jsp">Home</a></li>
						<li role="presentation"><a href="sviewcomplaints.jsp">View Complaints</a></li>
						<li role="presentation"><a href="clients.jsp">Clients</a></li>						
						<li role="presentation"><a href="receipts.jsp">Receipts </a></li>
						<li role="presentation" class="active"><a href="seditpwd.jsp">Edit Password</a></li>
						<li role="presentation"><a href="index.jsp">SignOut</a></li>							
					</ul>
				</div>
			</div>			
		</div>
	</nav>
	
	
	<div class="container">
		<div class="row">
			<div class="slider">
				<div class="img-responsive">
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<form name="form1" method="post" action="">
                      <table width="533" border="1" align="center">
                        <tr>
                          <td colspan="2"><div align="center">Edit Password </div></td>
                          <td width="250" rowspan="5"><img src="images/a.jpg" width="225" height="225"></td>
                        </tr>
                        <tr>
                          <td width="117"><span class="style8">Old Password </span></td>
                          <td width="144"><input type="text" name="textfield"></td>
                        </tr>
                        <tr>
                          <td><span class="style8">New Password</span></td>
                          <td><input type="password" name="textfield2" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
 title="Must contains at least 8 or more characters, at least one number, one uppercase and lowercase letter." ></td>
                        </tr>
                        <tr>
                          <td><span class="style6">Confirm Password </span></td>
                          <td><input name="textfield3" type="password" id="textfield3"></td>
                        </tr>
                        <tr>
                          <td><div align="center">
                              <input type="submit" name="Login" value="Submit">
                          </div></td>
                          <td><div align="center">
                              <input type="reset" name="Submit2" value="Reset">
                          </div></td>
                        </tr>
                      </table>
				  </form>
					<p align="center">
					  <%@page import ="java.sql.*"%>
                      <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
                      <%
	 	 try
	  
	  	{
				String b=request.getParameter("Login");
				if(request.getParameter("Login")!= null)
				{
	      Class.forName("com.mysql.jdbc.Driver");
		  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ewaste","root","mysql");
		  Statement stmt=con.createStatement();
		  ResultSet rs,rs1,rs2;
		  
		  String s=request.getParameter("textfield").trim();//old
		  String s1=request.getParameter("textfield2").trim();//new
		  String s3=request.getParameter("textfield3").trim();//confirm
		  String email =(String)session.getAttribute("emailid");
		   
			
			String sql="select * from staffreg where email="+"'"+email+"'"+" and pwd="+"'"+s+"'";
		//out.println(sql);
		rs=stmt.executeQuery(sql);
		//String v1="",v2="";
		int found=0;
		while (rs.next())
		{ 
			found=1;
			break;
			}
			
		  if(found==1)
		  {
		  String str="Update staffreg set pwd=? where email=?";
		 // out.println(str);
		  		PreparedStatement psmt =con.prepareStatement(str);
				psmt.setString(1,s1);
				psmt.setString(2,email);
				psmt.executeUpdate();
		//out.println(s1+","+s3);
				psmt.close();
				rs.close();
				//response.sendRedirect("adepwsaveack.jsp");
		   
				con.close();
				
		out.println("<h1 align=center ><b>Updated successfully</b></h1>");
         //   response.sendRedirect("donerregsaveack.jsp");
		 }
	
	else
		{
		
				out.println("<h1 align=center >Enter the current Password..</h1>");
		
		}
		}
    }
    	catch(Exception e)
    	{
    	 out.println("Exception occured" +e);
    
	}
		
%>
				  </p>
					<p>&nbsp;</p>
			  </div>	
			</div>
		</div>
	</div>
		
		
		
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