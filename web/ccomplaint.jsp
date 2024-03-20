<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Google Map with Latitude and Longitude in asp.net website</title>

<script type="text/javascript"
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBrF5bwGqQj2iagI_-4HmlsITQS1po4py8&sensor=false">
</script>
<script type="text/javascript">

    var map;
    var directionsDisplay = new google.maps.DirectionsRenderer();
    var directionsService = new google.maps.DirectionsService();

    function calcRoute(start) {

      directionsDisplay.setMap(map);

      var request = {
          origin:start,
          destination:end,
          travelMode: google.maps.DirectionsTravelMode.DRIVING
      };
      directionsService.route(request, function(response, status) {
        if (status == google.maps.DirectionsStatus.OK) {
          directionsDisplay.setDirections(response);
        }
      });
    }
    
    function initialize() {
        var myLatlng = new google.maps.LatLng(12.3108046, 76.5656487);
        var myOptions = {
            zoom: 7,
            center: myLatlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        map = new google.maps.Map(document.getElementById("gmap"), myOptions);
        // marker refers to a global variable
        marker = new google.maps.Marker({
            position: myLatlng,
            map: map
        });



var count=0;

  google.maps.event.addListener(map, "click", function (event)
{
  count++;
if(count==1)
{

            var clickLat1 = event.latLng.lat();
            var clickLon1 = event.latLng.lng();

       
            document.getElementById("lat1").value = clickLat1.toFixed(5);
            document.getElementById("lon1").value = clickLon1.toFixed(5);


}

if(count==2)
{

var clickLat2 = event.latLng.lat();
 var clickLon2 = event.latLng.lng();

       
            document.getElementById("lat2").value = clickLat2.toFixed(5);
            document.getElementById("lon2").value = clickLon2.toFixed(5);
        map: map;

}
 var marker = new google.maps.Marker({
                position: new google.maps.LatLng(clickLat1, clickLon1),
                map: map


            });
       
 var marker = new google.maps.Marker({
                position: new google.maps.LatLng(clickLat2, clickLon2),
                map: map


            });
            
     


            var newLatLon = new google.maps.LatLng(clickLat,clickLon);
            calcRoute(myLatlng,newLatLon);
            
        });


    }

function deg2rad(deg) {
  return deg * (Math.PI/180)


}


function calculateDistance() {
  var lat1 = parseFloat(document.getElementById("lat1").value);
  var lon1 = parseFloat(document.getElementById("lon1").value);
  var lat2 = parseFloat(document.getElementById("lat2").value);
  var lon2 = parseFloat(document.getElementById("lon2").value);

  var R = 6371;
  var dLat = deg2rad(lat2-lat1);
   var dLon = deg2rad(lon2-lon1);
  var a = 
    Math.sin(dLat/2) * Math.sin(dLat/2) +
    Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * 
    Math.sin(dLon/2) * Math.sin(dLon/2) ; 
 var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
var d = R * c; 
 f1.dist.value=d.toFixed(2)+  "Km";
}






window.onload = function () { initialize() };






</script>
     <style>
 div#gmap {
        width: 80%;
        height: 500px;
        border:double;
 }
    .style1 {
	font-size: 16px;
	color: #FF0000;
	font-weight: bold;
}
     .style2 {
	font-size: 18px;
	font-weight: bold;
}
     </style>
</head>

<body>
  
<p align="center" class="style2">To File Garbage Complaint Please Select Location on Map </p>

<form name = "f1" method="post" >
<div align="center">Origin
        Latitude: 
  <input name="t1" type="text" id='lat1' required >
Longitude: 
<input name="t2" type="text" id='lon1' required >
<input type="submit" name="Submit" value="Submit">
<br>
<br>

<!--Destination:
        Lat1: <input name="t3" type="text" id='lat2'>
Lon1: <input name="t4" type="text" id='lon2'>

   <button onclick = "calculateDistance(); return false;">Calculate</button><br><br>

  Distance:<input type="text" name="dist" id="dis">


-->        
</div>
<label></label>
        <div align="center" class="style1">Select Location on Map        </div>
        <center>
           
            <div id="gmap"></div>
            
          
        </center>

</form>
<div align="center">
  <% if(request.getParameter("Submit")!= null)
	{
	 String t1=request.getParameter("t1").trim();
	 String t2=request.getParameter("t2").trim();
	 String loc=t1+","+t2;
//	 session.setAttribute("l1",t1);
	// session.setAttribute("l2",t2);
	out.println("<h1 align=center><a href=ccomplaint1.jsp?loc="+loc+">Proceed to Upload Complain</a></>");
	
	}

  %>
</div>
</body>

</html>