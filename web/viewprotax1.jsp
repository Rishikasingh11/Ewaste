<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*" errorPage="" %>
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
    <style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #000;
  padding: 8px;
}

#customers tr:nth-child(even){background-color:#B4E7FA;}

#customers tr:hover {background-color: #F04E00;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: black;
}

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
						<li role="presentation" class="active"><a href="about.jsp">About</a></li>
						<li role="presentation"><a href="services.jsp">Services</a></li>
						<li role="presentation"><a href="asignin.jsp">Admin SignIn</a></li>
						<li role="presentation"><a href="ssignin.jsp">Staff SignIn</a></li>
						<li role="presentation"><a href="ccomplaint.jsp">Citizen Complaint</a></li>	
                        <li role="presentation"><a href="viewprotax.jsp">Propertytax View</a></li>						
					</ul>
				</div>
			</div>			
		</div>
	</nav>
	
	
	
		
<div class="container">
	  <div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="text-center">
				  <p>&nbsp;			      </p>
				  <p>&nbsp;</p>
				  <p>&nbsp;</p>
				  <p>&nbsp;</p>
				  <form name="form1" method="post" action="">
				    <table width="51%" height="381" border="0" cellspacing="10">
                      <tr>
                        <td width="53%">&nbsp;</td>
                        <td width="4%">&nbsp;</td>
                        <td width="43%"><div align="center"><strong>Pay Tax</strong></div></td>
                      </tr>
                      <tr>
                        <td><div align="right">ID</div></td>
                        <td>&nbsp;</td>
                        <td><label>
                          <div align="left">
                            <input type="text" name="t1" id="textfield" value="<%String a=request.getParameter("d");out.println(a); %>">
                            </div>
                        </label></td>
                      </tr>
                      <tr>
                        <td><div align="right">Date</div></td>
                        <td>&nbsp;</td>
                        <td><div align="left">
                          <input type="text" name="t2" id="textfield13" value="<%	
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
 %>" readonly="readonly"/>
                        </div></td>
                      </tr>
                      <tr>
                        <td><div align="right">Card No</div></td>
                        <td>&nbsp;</td>
                        <td><div align="left">
                          <input name="textfield2" type="text" id="textfield2" maxlength="16" required>
                        </div></td>
                      </tr>
                      <tr>
                        <td><div align="right">Date of Expairy</div></td>
                        <td>&nbsp;;</td
                        >
                        <td><label>
                          <div align="left">
                            <input type="date" name="textfield3" id="textfield3" required>
                            </div>
                        </label></td>
                      </tr>
                      <tr>
                        <td><div align="right">CVV</div></td>
                        <td>&nbsp;</td>
                        <td><div align="left">
                          <input name="textfield4" type="password" id="textfield4" maxlength="3" required>
                        </div></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><label></label></td>
                        <td><input type="submit" name="Submit" id="button" value="Submit">
                          <input type="reset" name="button2" id="button2" value="Reset"></td>
                      </tr>
                    </table>
                  </form>
				  <p><%
   
if(request.getParameter("Submit")!= null)
	{
try
{
       Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/ewaste","root","mysql"); 
		 Statement stmt=con.createStatement();
       	 String t1=request.getParameter("t1").trim();
		 String t2=request.getParameter("t2").trim();
	/*	 String t3=request.getParameter("t3").trim();
	     String t4=request.getParameter("t4").trim();
		  String t5=request.getParameter("t5").trim();
		 String t6=request.getParameter("t6").trim();
		 String t7=request.getParameter("t7").trim();
	     String t8=request.getParameter("t8").trim();
        */

        PreparedStatement pstmt=con.prepareStatement("insert into receipt2 values(?,?)");   
		  pstmt.setString(1,t1);
		  pstmt.setString(2,t2);
		  /*pstmt.setString(3,t3);
		  pstmt.setString(4,t4);
		   pstmt.setString(5,t5);
		  pstmt.setString(6,t6);
		  pstmt.setString(7,t7);
		  pstmt.setString(8,t8);*/
	
		 
		  

		 
		  
           	
            
                          
            pstmt.executeUpdate(); 
            
           
            
            pstmt.close();  
     
           
		  
		   
            con.close(); 
     		out.println("Receipt Generated Successfully");
}
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	
	}
%></p>
				</div>
				<hr>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="row"></div>
  </div>
	
	<div class="container">
	  <div class="row"></div>
  </div>
	
	<div class="content"></div>
	
	<div class="content"></div>
	
	<footer>
	  <div class="inner-footer"></div>
		
		
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