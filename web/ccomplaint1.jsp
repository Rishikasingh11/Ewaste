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
				<a class="navbar-brand" href="index.jsp"><span>E-waste Alert Portal With Realtime GoogleMaps</span></a>
			</div>
			<div class="navbar-collapse collapse">							
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation"><a href="index.jsp">Home</a></li>
						<li role="presentation" class="active"><a href="about.jsp">About</a></li>
						<li role="presentation"><a href="services.jsp">Services</a></li>
						<li role="presentation"><a href="asignin.jsp">Admin SignIn</a></li>
						<li role="presentation"><a href="ssignin.jsp">Staff SignIn</a></li>
						<li role="presentation"><a href="ccomplaint.jsp">Citizen Complaint</a></li>						
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
					<form name="form1" method="post" action="">
					  <table width="100%" border="0">
                        <caption>
                          File Complaint
                        </caption>
					    <tr>
                          <td>ID                          </td>
					      <td><input type="text" id="bookname5" name="t1" value="<%@page import ="java.sql.*"%>
<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%><%try
{
   Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ewaste","root","mysql"); 
      Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
	     rs=stmt.executeQuery("select * from complaint ");
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
					      <td rowspan="7"><img src="images/registrationcomplete.jpg" width="175" height="227" /></td>
				        </tr>
                        <tr>
                          <td>Fullname</td>
                          <td> <input type="text" name="t2" id="t2" pattern="[A-Za-z]+" title="letters only" required> </td>
                        </tr>
                        <tr>
                          <td>Mobile No </td>
                          <td><input name="t3" type="text" id="t3" maxlength="10"  placeholder="Phone or Mobile no"  pattern="^\d{10}$" title="only nos should be 10 digits" required></td>
                        </tr>
                        <tr>
                          <td>Location</td>
                          <td><input name="t4" type="text" id="t4" readonly value="<% String loc=request.getParameter("loc"); out.println(loc);  %>"></td>
                        </tr>
                        <tr>
                          <td>Complaint Filed Date and Time </td>
                          <td><input id="t5" name="t5" required="required" value="<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%><%	
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
 %>" readonly=""/></td>
                        </tr>
                        <tr>
                          <td>Complaint</td>
                          <td><textarea name="t6" id="t6" required></textarea></td>
                        </tr>
                        <tr>
                          <td colspan="2"><label>
                            <div align="center">
                              <input type="submit" name="Submit" value="File Complaint">
                              </div>
                          </label></td>
                        </tr>
                      </table>
                  </form>
					<p><%@page import ="java.sql.*"%>
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
        

        PreparedStatement pstmt=con.prepareStatement("insert into complaint values(?,?,?,?,?,?)");   
		  pstmt.setString(1,t1);
		  pstmt.setString(2,t2);
		  pstmt.setString(3,t3);
		  pstmt.setString(4,t4);
		  pstmt.setString(5,t5);
		    pstmt.setString(6,t6);
		 
		  

		 
		  
           	
            
                          
            pstmt.executeUpdate(); 
            
           
            
            pstmt.close();  
     
           
		  
		   
            con.close(); 
     		out.println("Complaint Filed successfully");
}
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	
	}
%>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
			  </div>	
			</div>
		</div>
	</div>
		
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="text-center">
					<h2>Multi Purpose Theme</h2>
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Cras suscipit arcu<br>
					vestibulum volutpat libero sollicitudin vitae Curabitur ac aliquam <br>
					lorem sit amet scelerisque justo</p>
				</div>
				<hr>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="box">
				<div class="col-md-4">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.4s">
						<h4>Responsive</h4>					
							<div class="icon">
								<i class="fa fa-heart-o fa-3x"></i>
							</div>						
						<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Cras suscipit arcu libero</p>
						<div class="ficon">
							<a href="#" class="btn btn-default" role="button">Read more</a>
						</div>
					</div>
				</div>
				
				<div class="col-md-4">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.0s">
						<h4>Multi Purpose</h4>
						<div class="icon">
							<i class="fa fa-desktop fa-3x"></i>
						</div>
						<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Cras suscipit arcu libero</p>
						<div class="ficon">
							<a href="#" class="btn btn-default" role="button">Read more</a>
						</div>
					</div>
				</div>
				
				<div class="col-md-4">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.6s">
						<h4>Easy Customize</h4>
						<div class="icon">
							<i class="fa fa-location-arrow fa-3x"></i>
						</div>
						<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Cras suscipit arcu libero</p>
						<div class="ficon">
							<a href="#" class="btn btn-default" role="button">Read more</a>
						</div>
					</div>
					
				</div>
				
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="text-center">
					<h2>Galleries</h2>
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Cras suscipit arcu<br>
					vestibulum volutpat libero sollicitudin vitae Curabitur ac aliquam <br>
					</p>
				</div>
				<hr>
			</div>
		</div>
	</div>
	
	<div class="content">
		<div class="grid">
			<figure class="effect-zoe">
				<img src="img/25.jpg" alt="img25"/>
				<figcaption>
					<h2>Title <span>Name</span></h2>
					<p class="icon-links">
						<a href="#"><span class="icon-heart"></span></a>
						<a href="#"><span class="icon-eye"></span></a>
						<a href="#"><span class="icon-paper-clip"></span></a>					</p>
					<p class="description">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
				</figcaption>			
		  </figure>
			<figure class="effect-zoe">
				<img src="img/26.jpg" alt="img26"/>
				<figcaption>
					<h2>Title <span>Name</span></h2>
					<p class="icon-links">
						<a href="#"><span class="icon-heart"></span></a>
						<a href="#"><span class="icon-eye"></span></a>
						<a href="#"><span class="icon-paper-clip"></span></a>					</p>
					<p class="description">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
				</figcaption>			
		  </figure>
		</div>
	</div>
	
	<div class="content">
		<div class="grid">
			<figure class="effect-zoe">
				<img src="img/27.jpg" alt="img27"/>
				<figcaption>
					<h2>Title <span>Name</span></h2>
					<p class="icon-links">
						<a href="#"><span class="icon-heart"></span></a>
						<a href="#"><span class="icon-eye"></span></a>
						<a href="#"><span class="icon-paper-clip"></span></a>					</p>
					<p class="description">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
				</figcaption>			
		  </figure>
			<figure class="effect-zoe">
				<img src="img/30.jpg" alt="img30"/>
				<figcaption>
					<h2>Title <span>Name</span></h2>
					<p class="icon-links">
						<a href="#"><span class="icon-heart"></span></a>
						<a href="#"><span class="icon-eye"></span></a>
						<a href="#"><span class="icon-paper-clip"></span></a>					</p>
					<p class="description">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
				</figcaption>			
		  </figure>
		</div>
	</div>
	
	<footer>
		<div class="inner-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4 f-about">
						<a href="index.html"><h1><span>e</span>Nno</h1></a>
						<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Cras suscipit arcu libero
						vestibulum volutpat libero sollicitudin vitae Curabitur ac aliquam  consectetur adipiscing elit Cras suscipit arcu libero
						</p>
					</div>
					<div class="col-md-4 l-posts">
						<h3 class="widgetheading">Latest Posts</h3>
						<ul>
							<li><a href="#">This is awesome post title</a></li>
							<li><a href="#">Awesome features are awesome</a></li>
							<li><a href="#">Create your own awesome website</a></li>
							<li><a href="#">Wow, this is fourth post title</a></li>
						</ul>
					</div>
					<div class="col-md-4 f-contact">
						<h3 class="widgetheading">Stay in touch</h3>
						<a href="#"><p><i class="fa fa-envelope"></i> example@gmail.com</p></a>
						<p><i class="fa fa-phone"></i>  +345 578 59 45 416</p>
						<p><i class="fa fa-home"></i> Enno inc  |  PO Box 23456 
							Little Lonsdale St, New York <br>
							Victoria 8011 USA</p>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="last-div">
			<div class="container">
				<div class="row">
					<div class="copyright">
						 2014 eNno Multi-purpose theme | <a target="_blank" href="http://bootstraptaste.com">Bootstraptaste</a>
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