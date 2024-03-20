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
				<a class="navbar-brand" href="index.html"><span>E-waste alert portal with realtime googlemaps</span></a>
			</div>
			<div class="navbar-collapse collapse">							
				<div class="menu"><br>
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation"><a href="asignin.jsp">Home</a></li>					
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
				  <p>&nbsp;</p>
                      <table width="527" border="1" align="center">
                        <tr>
                          <td width="287">RESET PASSWORD </td>
                          <td width="224" colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td><b>Email Id </b></td>
                                <td><input type="text" name="t1" id="t1" required= "required" /></td>
                              </tr>
                              <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td colspan="3"><label></label>
                              <div align="center">
                                <input type="submit" name="button" id="button" value="Submit" />
                                <input type="reset" name="button2" id="button2" value="Clear" />
                                </div></td>
                        </tr>
                      </table>
                    <p>&nbsp;</p>
                  </form>
					<%@page import="javax.mail.*"%>
              <%@page import="javax.mail.internet.*"%>
              <%@page import="javax.activation.*"%>
              <%@page import="java.util.Random"%>
              <%@page import="javax.swing.JOptionPane"%>
              <%@page import="java.util.Properties"%>
              <%@page import="java.util.*,java.io.*"%>
              <%@page import ="java.sql.*"%>
              <%@page import ="Emailpackage.*"%>
            
              <%
  if(request.getParameter("button")!= null)
   	{
	
	
	
	String mailid = request.getParameter("t1");
	//out.println("chkmailid="+mailid);
 	Random rand = new Random();

	  double dot1=rand.nextInt();
          String pwd="";
          pwd=pwd.valueOf(dot1);

	try 
        {


	
	
      
 Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ewaste","root","mysql"); 
		
		Statement stmt=con.createStatement();
	
	  ResultSet rs;			
	  rs=stmt.executeQuery("select * from staffreg where email="+"'"+mailid+"'");
		int found=0;
	      while(rs.next())
    	  {
		
				found++;
			}

		if(found==0)
		{
				out.println("Sorry, invalid login");
			
		}
		else
		{	
	
	  
	  
      
		  String str="Update staffreg set pwd=? where email=?";
	//	  out.println(str);
		  		PreparedStatement psmt =con.prepareStatement(str);
				psmt.setString(1,pwd);
				psmt.setString(2,mailid);
				psmt.executeUpdate();
				//out.println(s1+","+s3);
				psmt.close();
				rs.close();

					//	out.println(dot1+mailid);

				response.sendRedirect("http://localhost/emailphp2021/index.php?e="+mailid+"&p="+pwd);
		}	
	}

        catch(Exception ex)
        {
            out.println(ex);
        }
}
%>
                    </span></p>
					
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