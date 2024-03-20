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
			  <a class="navbar-brand" href="index.jsp"><span>E-waste Alert Portal With Realtime GoogleMaps</span></a>			</div>
			<div class="navbar-collapse collapse">							
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation"><a href="staffpage.jsp">Home</a></li>
						<li role="presentation"><a href="sviewcomplaints.jsp">View Complaints</a></li>
						<li role="presentation"><a href="clients.jsp">Clients</a></li>						
						<li role="presentation" class="active"><a href="receipts.jsp">Receipts </a></li>
						<li role="presentation"><a href="seditpwd.jsp">Edit Password</a></li>
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
					<p align="center">Welcome Staff </p>
					<form name="form1" method="post" action="">
					  <table width="42%" height="332" border="0" align="center">
<caption>
                          Waste Payment Collection
                        </caption>
					    <tr>
                          <td width="26%">Receipt Id </td>
					      <td width="29%"><input type="text" id="textfield" name="t1" value="<%@page import ="java.sql.*"%>
<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%><%try
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
    }%>"/></td>
					      <td width="45%">&nbsp;</td>
				        </tr>
                        <tr>
                          <td>Receipt Date </td>
                          <td><input id="t2" name="t2" required="required" value="<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%><%	
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
 %>"/></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>Bussiness Name or From Client ID </td>
                          <td><select name="t3" id="t3">
                              <%@ page import ="java.io.*,java.sql.*,java.util.*"%>
                              <%



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
	
		%>
                              <option value=<% out.println(mfrom); %>>
                                <% out.println(mfrom); %>
                              </option>
                              <% }
		rs.close();
		 %>
                            </select></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>Amount</td>
                          <td><input name="t4" type="text" id="t4"></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>Payment Mode </td>
                          <td><input name="t5" type="text" id="t5" value="Cash"></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td><div align="center"></div></td>
                          <td><input type="submit" name="Submit" value="Submit">
                          <input type="reset" name="Submit2" value="Reset"></td>
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
%>
&nbsp;</p>
					<p>&nbsp;</p>
			  </div>	
			</div>
		</div>
	</div>
		
	<div class="container">
		<div class="row">
		  <div class="col-md-6 col-md-offset-3">
		    <div class="text-center">
			    <h2>&nbsp;</h2>
				</div>
				</div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
		  <div class="box"></div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="text-center">
					<h2><br>
					</h2>
			  </div>
				<hr>
			</div>
		</div>
	</div>
	
  <div class="content"></div>
	
	<div class="content"></div>
	
	<footer>
		<div class="inner-footer">
			<div class="container">
			  <div class="row"></div>
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