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
	font-size: 24px;
	font-weight: bold;
}
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
				<a class="navbar-brand" href="index.html"><span>E-waste Alert Portal With Realtime GoogleMaps</span></a>
			</div>
			<div class="navbar-collapse collapse">							
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation"><a href="adminpage.jsp">Home</a></li>
						
                        <li role="presentation" class="active"><a href="regareas.jsp">Register Areas</a></li>
						<li role="presentation"><a href="aregstaff.jsp">Register Staff</a></li>
						<li role="presentation"><a href="aviewcomplaints.jsp">View Complaints</a></li>
					<li role="presentation"><a href="search.jsp">Search </a></li>
					<li role="presentation"><a href="aedpwd.jsp">Edit Password</a></li>
                    	<!--<li role="presentation"><a href="propertytax.jsp">Property Tax</a></li>-->
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
					
					<form name="form1" method="post" action="">
					  <table width="30%" height="215" border="0" align="center">
					  <caption>
						<center>
                          <span class="style1">Register Areas</span>
						</center>
                        </caption>
                        <tr>
                          <td width="100%"><div align="center"><strong>Area</strong></div></td>
                          <td width="64%"><div align="left">
                            <input type="text" name="t1" id="t1" required >
                          </div></td>
                        </tr>
                        <tr>
                          <td><div align="center"><strong>Ward</strong></div></td>
                          <td><div align="left">
                              <input type="text" name="t2" id="t2" required >
                          </div></td>
                        </tr>
                        <tr>
                          
                          <td colspan="2" align="center"><label>
                            <input type="submit" name="Submit" id="button" value="Submit">
                          </label></td>
                        </tr>
                      </table>
					</form>
					<p align="center">
                      <%@page import ="java.sql.*"%>
                      <%
   
if(request.getParameter("Submit")!= null)
	{
try
{
       Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/ewaste","root","mysql"); 
		 Statement stmt=con.createStatement();
       	 String t1=request.getParameter("t1").trim();
		 String t2=request.getParameter("t2").trim();
		
        

        PreparedStatement pstmt=con.prepareStatement("insert into areas values(?,?)");   
		  pstmt.setString(1,t1);
		  pstmt.setString(2,t2);
		
		 // pstmt.setString(8,t8);	
                          
            pstmt.executeUpdate(); 
            
           
            
            pstmt.close();  
     
           
		  
		   
            con.close(); 
     		out.println(" Registered Areas successfully");
}
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	
	}
%>
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