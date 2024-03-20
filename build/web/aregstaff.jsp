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
				<a class="navbar-brand" href="index.jsp" ><span>E-waste Alert Portal With Realtime GoogleMaps</span></a>
			</div>
			<div class="navbar-collapse collapse">							
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">

						<li role="presentation"><a href="adminpage.jsp">Home</a></li>
                        <li role="presentation"><a href="regareas.jsp">Register Areas</a></li>
						<li role="presentation" class="active"><a href="aregstaff.jsp">Register Staff</a></li>
						<li role="presentation"><a href="aviewcomplaints.jsp">View Complaints</a></li>
					    <li role="presentation"><a href="search.jsp">Search </a></li>
                        <!--<li role="presentation"><a href="propertytax.jsp">Property Tax</a></li>-->
						<li role="presentation"><a href="aedpwd.jsp">Edit Password</a></li>
						<li role="presentation"><a href="index.jsp">SignOut</a></li>	</ul>
				</div>
			</div>			
		</div>
	</nav>
	
	
	<div class="container">
		<div class="row">
			<div class="slider">
				<div class="img-responsive">
					<form name="form1" method="post" action="">
					  <table width="100%" border="0">
                        <caption>
						<center>
                          <span class="style1">Register Staff</span>
						</center>
                        </caption>
					    <tr>
                          <td><strong>Staff Id </strong></td>
					      <td><input type="text" id="bookname5" name="t1" value="<%@page import ="java.sql.*"%>
<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%><%try
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
    }%>"/></td>
					      <td rowspan="9"><img src="images/registrationcomplete.jpg" width="175" height="227" /></td>
				        </tr>
                        <tr>
                          <td><strong>FullName</strong></td>
                          <td> <input type="text" name="t2" id="t2" pattern="[A-Za-z]+" title="letters only" required></td>
                        </tr>
						<tr>
                          <td><strong>Phone Number</strong></td>
                          <td> <input type="text" name="t1" id="t1"  pattern="^\d{10}$" title="only nos should be 10 digits" required></td>
                        </tr>
                        <tr>
                          <td><strong>Address</strong></td>
                          <td><input name="t3" type="text" id="t3" required></td>
                        </tr>
                        <tr>
                          <td><strong>Gender</strong></td>
                          <td><label>
                            <input name="t4" type="radio" value="M" required>
                          M
                          <input name="t4" type="radio" value="F" required>
                          F</label></td>
                        </tr>
                        <tr>
                          <td><strong>Date of Birth </strong></td>
                          <td><input name="t5" type="date" id="t5" required></td>
                        </tr>
                        <tr>
                          <td><strong>Email</strong></td>
                          <td><input type="email" name="t6" id="t6"  pattern = "[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" required /></td>
                        </tr>
                        <tr>
                          <td><strong>Password</strong></td>
						 <td><input type="password" name="t7" id="t7"  required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
 title="Must contains at least 8 or more characters, at least one number, one uppercase and lowercase letter."   />                          </td>
                        </tr>
                        <tr>
                          <td><strong>Area</strong></td>
                          <td><select name="select" id="t1">
                            <%@page import ="java.sql.*"%>
                            <%

		 try
{
   Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/ewaste","root","mysql"); 
   Statement st=con.createStatement();
   ResultSet rs;
	  String sql="select distinct(area)  from  areas";
	  rs=st.executeQuery(sql);
	  int found=0;
	  while(rs.next())
	  {
	     String mfrom=rs.getString("Area").trim();
	     //String mto=rs.getString("to").trim();
	 
	     %>
                            <option value="<%out.println(mfrom);%>">
                            <%out.println(mfrom);%>
                            </option>
                            <%  
	  }
	  rs.close();
      }
	  catch(Exception e)
    {
      out.println("Exception occured "+e);
    }
	  %>
                          </select></td>
                        </tr>
                        <tr>
                          <td>                            <div align="center">
                            <input type="submit" name="Submit" value="Register Staff">                          
                          </div></td>
                          <td>&nbsp;</td>
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
		 String t3=request.getParameter("t3").trim();
	     String t4=request.getParameter("t4").trim();
		 String t5=request.getParameter("t5").trim();
		 String t6=request.getParameter("t6").trim();
		 String t7=request.getParameter("t7").trim();
	     String t8=request.getParameter("select").trim();
        

        PreparedStatement pstmt=con.prepareStatement("insert into staffreg values(?,?,?,?,?,?,?,?)");   
		  pstmt.setString(1,t1);
		  pstmt.setString(2,t2);
		  pstmt.setString(3,t3);
		  pstmt.setString(4,t4);
		  pstmt.setString(5,t5);
		  pstmt.setString(6,t6);
		  pstmt.setString(7,t7);
		  pstmt.setString(8,t8);
	
		 
		  

		 
		  
           	
            
                          
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
%>
                    &nbsp;</p>
					<p>&nbsp;</p>
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