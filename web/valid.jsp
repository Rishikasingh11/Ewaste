<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Resi Bootstrap Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/responsive-slider.css" rel="stylesheet">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link href="css/style.css" rel="stylesheet">	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <header>
		<div class="container">
			<div class="row">
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<div class="navbar-header">
							<div class="navbar-brand">
								<a href="index.html"><h1>CONNECTING-E-COMMERCE-TO-SOCIAL-MEDIA</h1></a>
							</div>
						</div>
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" ><a href="adminpage.jsp">Home</a></li>
								<li role="presentation" ><a href="about.jsp">About</a></li>
								<li role="presentation"><a href="signup.jsp">Join (SignUp)</a></li>
								<li role="presentation"><a href="signin.jsp">Hear (SignIn)</a></li>

							</ul>
						</div>
					</div>			
				</nav>
			</div>
		</div>
	</header>
	
	<!-- Responsive slider - START -->
	<div class="slider">
		<div class="">
			<div class="">
				<div class="responsive-slider" data-spy="responsive-slider" data-autoplay="true">
					<div class="slides" data-group="slides">						
						<ul>
							<li>
								<div class="slide-body" data-group="slide"></div>					
							</li>
							<li>
								<div class="slide-body" data-group="slide"></div>
							</li>
							<li>
								<div class="slide-body" data-group="slide"></div>
							</li>					
						</ul>
					</div>			   
					<a class="slider-control left" href="#" data-jump="prev"><i class="fa fa-angle-left fa-2x"></i></a>
					<a class="slider-control right" href="#" data-jump="next"><i class="fa fa-angle-right fa-2x"></i></a>		
				</div>
			</div>
		</div>
	</div>
    <!-- Responsive slider - END -->
    <div class="breadcrumb">
		<h4> <form name="form1" method="post" action="">
   <table width="766" border="0" align="center" cellpadding="10" cellspacing="10">
     <tr>
       <td colspan="3">Register here </td>
       <td width="307" rowspan="10"><img src="img/images.jpg" width="200" height="157"></td>
     </tr>
     <tr>
       <td width="143"><div align="right">Name</div></td>
       <td width="57">&nbsp;</td>
       <td width="295">
         <div align="left">
           <input type="text" name="a" id="a" pattern="[A-Za-z]+" title="letters only" required>       
         </div></td>
       </tr>
     <tr>
       <td><div align="right">Gender</div></td>
       <td>&nbsp;</td>
       <td>
         <div align="left">
           <select name="b" id="b" required>
             <option value="Male">Male</option>
             <option value="Female">Female</option>
           </select>
           </div>       </td>
       </tr>
     <tr>
       <td><div align="right">Mobileno</div></td>
       <td>&nbsp;</td>
       <td><div align="left">
     <input name="c" type="text" id="c" maxlength="10"  placeholder="Phone or Mobile no"  pattern="^\d{10}$" title="only nos should be 10 digits" required>
   </div></td>
       </tr>
     <tr>
       <td><div align="right">Emailid</div></td>
       <td>&nbsp;</td>
       <td><div align="left">
         <input type="email" name="d" id="d" required>
       </div></td>
       </tr>
    <!-- <tr>
       <td><div align="right">password</div></td>
       <td>&nbsp;</td>
       <td><input type="text" name="textfield"></td>
     </tr>-->
     
     <tr>
       <td><div align="right">Photo</div></td>
       <td>&nbsp;</td>
       <td><div align="left">
         <input type="file" name="e" id="e" required>
       </div></td>
       </tr>
     <tr>
       <td><div align="right">Your Profile </div></td>
       <td>&nbsp;</td>
       <td><div align="left">
         <select name="select" required>
           <option>Sportman</option>
           <option>Politcian</option>
           <option>Filmstar</option>
         </select>
       </div></td>
       </tr>
     <tr>
       <td><div align="center"></div></td>
       <td>&nbsp;</td>
       <td>
         <div align="left">
           <input type="submit" name="Submit" id="button" value="Submit"  class="button round">
           <input type="reset" name="Reset" id="button2" value="Reset"  class="button round">      
         </div></td>
       </tr>
     <tr>
       <td><div align="center"></div></td>
       <td>&nbsp;</td>
       <td><a href="signin.jsp">Already have an account ?</a></td>
       </tr>
   </table>
  </form>
          <%@page import ="java.sql.*"%>
          <%@page import="javax.mail.*"%>
          <%@page import="javax.mail.internet.*"%>
          <%@page import="javax.activation.*"%>
          <%@page import="java.util.Random"%>
          <%@page import="javax.swing.JOptionPane"%>
          <%@page import="java.util.Properties"%>
          <%@page import="java.util.*,java.io.*"%>
          <%@page import ="java.sql.*"%>
          <%@page import ="java.text.SimpleDateFormat"%>
          <%@page import ="java.util.Date"%>
          <%@page import ="java.util.Properties"%>
          <%@page import ="javax.mail.Message"%>
          <%@page import ="javax.mail.MessagingException"%>
          <%@page import ="javax.mail.PasswordAuthentication"%>
          <%@page import ="javax.mail.Session"%>
          <%@page import ="javax.mail.Transport"%>
          <%@page import ="javax.mail.internet.InternetAddress"%>
          <%@page import ="javax.mail.internet.MimeMessage"%>
          <%@page import ="java.util.Random"%>
            <%@page import ="Emailpackage.*"%>
          <%
   
if(request.getParameter("Submit")!= null)
{
try
{


Random rand = new Random();
       // System.out.println("Random Integers:");
        double pwd1=(rand.nextInt());
	
       Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/tweet","root","mysql"); 
		 Statement stmt=con.createStatement();
       	 String t1=request.getParameter("a").trim();
		 String t2=request.getParameter("b").trim();
		 String t3=request.getParameter("c").trim();
		  String t4=request.getParameter("d").trim();
	     String t6=request.getParameter("e").trim();
 	     String t7=request.getParameter("select").trim();
		//   String t66=request.getParameter("textfield").trim();
		    //String t5="123";
       
        //	Random rand = new Random();

	  double dot1=rand.nextInt();
          String pwd="";
          pwd=pwd.valueOf(dot1);
	
		 		 int count=0;
	        ResultSet rs,rs1;
			 rs=stmt.executeQuery("select * from signup where emailid="+"'"+t4+"'");

      int found=0;
      while(rs.next())
      {
			count++;
		}

				  
	  
	  
	  if(count==0)
	  {
	

     
        PreparedStatement pstmt=con.prepareStatement("insert into signup values(?,?,?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,pwd);
			pstmt.setString(6,t6);
			pstmt.setString(7,t7);
			pstmt.setString(8,"UnLocked");
          
			
 pstmt.executeUpdate(); 
             pstmt.close();  
            con.close(); 
			

			response.sendRedirect("http://localhost/emailphp2021/index.php?e="+t4+"&p="+pwd);
			//String emailto=t4;
//Emailclass new1=new Emailclass();
//
//
//new1.SendMail(emailto,pwd);
//out.println("Sent Mail Successfully to your registered Email Id.....");

//out.println( "<script>alert('Password sent to ur registered Email id');window.location='http://localhost:8080/SECURE-ONLINE-AUCTION/index.jsp';</script>");
	}
	else
	{
		out.println( "<script>alert('Unrecognized registered Email id');window.location='signup.jsp';</script>");
		//	out.println("Sorry Unrecognized Email Id.....");
	}
	}
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	}
%>
      &nbsp;</h4>
  </div>
	
	<div class="container">
		<div class="row">
			<div class="boxs">				
				<div class="col-md-4">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.8s">
					  <div class="align-center">
						  <h4>&nbsp;</h4>					
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.3s">
						<div class="align-center">
							<h4>&nbsp;</h4>				
					  </div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.3s">
					  <div class="align-center">
						  <h4>&nbsp;</h4>					
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="bg">				
				<div class="col-md-4">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.8s">
					  <div class="align-center">
						  <h4>&nbsp;</h4>					
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.3s">
					  <div class="align-center">
						  <h4>&nbsp;</h4>					
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.3s">
					  <div class="align-center">
						  <h4>&nbsp;</h4>					
							<div class="ficon">
						  <a href="" alt=""></a></div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
  <div class="breadcrumb">
	  <h4>&nbsp;</h4>
	</div>
	
	<div class="container"><div class="row"></div>
	</div>
	
	
	<hr>
	
	<!--start footer-->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="widget">
						<h5 class="widgetheading">&nbsp;</h5>						
				  </div>
				</div>
				<div class="col-lg-4">
				  <div class="widget">
					  <h5 class="widgetheading">&nbsp;</h5>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="widget">
						<h5 class="widgetheading">&nbsp;</h5>
				  </div>
				</div>
				
			</div>
		</div>
				
		<div class="sub-footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="social-network">
							<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook fa-1x"></i></a></li>
							<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter fa-1x"></i></a></li>
							<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin fa-1x"></i></a></li>
							<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest fa-1x"></i></a></li>
							<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus fa-1x"></i></a></li>
						</ul>
					</div>
					<div class="col-lg-12">
						<div class="copyright">
							<p><span>@Copy Right 2020 </span><a href="http://bootstraptaste.com" target="_blank"></a> </p>
                            <!-- 
                                All links in the footer should remain intact. 
                                Licenseing information is available at: http://bootstraptaste.com/license/
                                You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Resi
                            -->
					  </div>
					</div>
					
				</div>
			</div>
		</div>
	</footer>
	<!--end footer-->
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-2.1.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script src="js/responsive-slider.js"></script>
	<script src="js/wow.min.js"></script>
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>
  </body>
</html>