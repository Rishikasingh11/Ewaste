<html>
	<head>
		<title>Google Map</title>
		<meta name="viewport" content="initial-scale=1.0">
		<meta charset="utf-8">
		<style>		  
		  #map { 
			height: 300px;	
			width: 600px;			
		  }		  
.style2 {
	color: #FF0000;
	font-weight: bold;
}
        </style>		
	</head>	
	<body>		
		<div style="padding:10px">
			<div id="map"></div>
		</div>
		
		<div align="center">
		  <script type="text/javascript">
		var map;
	
		function initMap() {							
			var latitude = <% 
    String t=request.getParameter("d").trim();  
	          String t1=t.substring(0,7);     
			    String t2=t.substring(9,16);     
//String t1=request.getParameter("12.87907").trim();
		  		//String t2=request.getParameter("76.81833").trim();
				//out.println(t1+","+t2);
                                out.println(t1);
			
%> // YOUR LATITUDE VALUE
			var longitude =<% out.println(t2);%>
                            77.498145; // YOUR LONGITUDE VALUE
			
			var myLatLng = {lat: latitude, lng: longitude};
			
			map = new google.maps.Map(document.getElementById('map'), {
			  center: myLatLng,
			  zoom: 14					
			});
					
			var marker = new google.maps.Marker({
			  position: myLatLng,
			  map: map,
			  //title: 'Hello World'
			  
			  // setting latitude & longitude as title of the marker
			  // title is shown when you hover over the marker
			  title: latitude + ', ' + longitude 
			});			
		}
		  </script>
		  <span class="style2"><a href="sviewcomplaints.jsp">BACK</a></span>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAWjQ21aNnbryUxEuV8qPFrKGaUtpULauM&callback=initMap"
		async defer></script>
	    </div>
	</body>	
</html>