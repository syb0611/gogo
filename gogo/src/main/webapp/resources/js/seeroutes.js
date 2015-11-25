var map;
var slat = null;
var slon = null;
var elat = null;
var elon = null;
var p1lat= null;
var p1lon= null;
var p2lat= null;
var p2lon= null;
var p3lat= null;
var p3lon= null;
var lat1;
var lon1;
var vectorLayer = null;
var mLineFeature = null;
var markerLayer = new Tmap.Layer.Markers();
var miter1 = null;
var sec1 = null;
var tmoney = null;
var start = null;
var end = null;
var p1 = null;
var p2 = null;
var p3 = null;

var markerp1;
var markerp2;
var markerp3;
var markerp4;
var markerp5;


$('document').ready(function() {
	initialize();
	$.ajax({
		beforeSend : function(request) {
			request.setRequestHeader("Accept", "application/json");
		},
		async : true,
		url : "/withgo/markertest/27",
		type : "get",
		data : "",
		dataType : "json",
		contentType : 'application/json',
		success : function(response) {
			console.log(response);
			
			slat=response.adata[1].startlat;
			slon=response.adata[1].startlon;
			elat=response.adata[2].endlat;
			elon=response.adata[2].endlon;
			/*p1lat=response.adata[3].p1lat;
			p1lon=response.adata[3].p1lon;
			p2lat=response.adata[4].p2lat;
			p2lon=response.adata[4].p2lon;
			p3lat=response.adata[5].p3lat;
			p3lon=response.adata[5].p3lon;*/
			
			console.log(response.adata[1].startlat);
			console.log(response.adata[1].startlon);
			console.log(response.adata[2].endlat);
			console.log(response.adata[2].endlon);
			
			/*console.log(response.adata[3].p1lat);
			console.log(response.adata[3].p1lon);
			console.log(response.adata[4].p2lat);
			console.log(response.adata[4].p2lon);
			console.log(response.adata[5].p3lat);
			console.log(response.adata[5].p3lon);	*/		
		}		
	});
});
 
 setTimeout(
		function() {
			var data = "";
			if (p1lat == null) {
				data = "callback=&bizAppId=5d5accbf-7745-315f-9ccc-fedc53a0f0b1&version=1&passList=&endX="
						+ elon
						+ "&endY="
						+ elat
						+ "&startX="
						+ slon
						+ "&startY=" + slat;
			}
			$
					.ajax({
						beforeSend : function(request) {
							request.setRequestHeader("Accept",
									"application/json");
							request.setRequestHeader("appKey",
									"5d5accbf-7745-315f-9ccc-fedc53a0f0b1");
						},
						async : true,
						url : "https://apis.skplanetx.com/tmap/routes",
						type : "get",
						dataType : "json",
						data : data,
						contentType : 'application/json',
						success : function(response) {
							console.log(response);
							var pointList = getPointList(response.features);
							var lineString = new Tmap.Geometry.LineString(
									pointList);
							var style_bold = {
								strokeColor : "#FF0000",
								strokeWidth : 3
							};
							mLineFeature = new Tmap.Feature.Vector(lineString,
									null, style_bold);
							vectorLayer = new Tmap.Layer.Vector("vectorLayerID");
							map.addLayer(vectorLayer);
							vectorLayer.addFeatures([ mLineFeature ]);
							var count = Math.round(pointList.length / 2);
							var lon2 = pointList[count].x;
							var lat2 = pointList[count].y;
							var lonlat = new Tmap.LonLat(lon2, lat2);
							map.setCenter(lonlat, 12);

							miter1 = response.features[0].properties.totalDistance / 1000;
							sec1 = Math
									.round(response.features[0].properties.totalTime / 60);
							tmoney = response.features[0].properties.taxiFare;

							document.getElementById('meter').innerHTML = miter1
									+ "Km";
							document.getElementById('time').innerHTML = sec1
									+ "분";
							document.getElementById('money').innerHTML = tmoney
									+ "원";
						}
					});
		}, 1000);


function initialize() {
	map = new Tmap.Map({
		div : "map_return",
		width : '100%',
		height : '400px'
	});
	map.addLayer(markerLayer);
	var lonlat = new Tmap.LonLat(lon1, lat1);
	map.setCenter(lonlat, 15);
}



 function getPointList(features) {
	var pointList = [];
	var count = features.length;
	var index = 0;
	if (markerp1 != null && markerp2 == null) {
		for (var i = 0; i < count - 3; i++) {
			var geometry = features[i].geometry;
			if (geometry.type == "Point") {
				var lon = geometry.coordinates[0];
				var lat = geometry.coordinates[1];
				pointList[index++] = new Tmap.Geometry.Point(lon, lat);
			} else {
				var countCoordinates = geometry.coordinates.length;
				for (var j = 0; j < countCoordinates; j++) {
					var lon = geometry.coordinates[j][0];
					var lat = geometry.coordinates[j][1];
					pointList[index++] = new Tmap.Geometry.Point(lon, lat);
				}
			}
		}
	} else if (markerp1 != null && markerp2 != null && markerp3 == null) {
		for (var i = 0; i < count - 5; i++) {
			var geometry = features[i].geometry;
			if (geometry.type == "Point") {
				var lon = geometry.coordinates[0];
				var lat = geometry.coordinates[1];
				pointList[index++] = new Tmap.Geometry.Point(lon, lat);
			} else {
				var countCoordinates = geometry.coordinates.length;
				for (var j = 0; j < countCoordinates; j++) {
					var lon = geometry.coordinates[j][0];
					var lat = geometry.coordinates[j][1];
					pointList[index++] = new Tmap.Geometry.Point(lon, lat);
				}
			}
		}
	} else if (markerp1 != null && markerp2 != null && markerp3 != null
			&& markerp4 == null) {
		for (var i = 0; i < count - 6; i++) {
			var geometry = features[i].geometry;
			if (geometry.type == "Point") {
				var lon = geometry.coordinates[0];
				var lat = geometry.coordinates[1];
				pointList[index++] = new Tmap.Geometry.Point(lon, lat);
			} else {
				var countCoordinates = geometry.coordinates.length;
				for (var j = 0; j < countCoordinates; j++) {
					var lon = geometry.coordinates[j][0];
					var lat = geometry.coordinates[j][1];
					pointList[index++] = new Tmap.Geometry.Point(lon, lat);
				}
			}
		}
	} else if (markerp1 != null && markerp2 != null && markerp3 != null
			&& markerp4 != null && markerp5 == null) {
		for (var i = 0; i < count - 9; i++) {
			var geometry = features[i].geometry;
			if (geometry.type == "Point") {
				var lon = geometry.coordinates[0];
				var lat = geometry.coordinates[1];
				pointList[index++] = new Tmap.Geometry.Point(lon, lat);
			} else {
				var countCoordinates = geometry.coordinates.length;
				for (var j = 0; j < countCoordinates; j++) {
					var lon = geometry.coordinates[j][0];
					var lat = geometry.coordinates[j][1];
					pointList[index++] = new Tmap.Geometry.Point(lon, lat);
				}
			}
		}
	} else if (markerp1 != null && markerp2 != null && markerp3 != null
			&& markerp4 != null && markerp5 != null) {
		for (var i = 0; i < count - 11; i++) {
			var geometry = features[i].geometry;
			if (geometry.type == "Point") {
				var lon = geometry.coordinates[0];
				var lat = geometry.coordinates[1];
				pointList[index++] = new Tmap.Geometry.Point(lon, lat);
			} else {
				var countCoordinates = geometry.coordinates.length;
				for (var j = 0; j < countCoordinates; j++) {
					var lon = geometry.coordinates[j][0];
					var lat = geometry.coordinates[j][1];
					pointList[index++] = new Tmap.Geometry.Point(lon, lat);
				}
			}
		}
	} else {
		for (var i = 0; i < count; i++) {
			var geometry = features[i].geometry;
			if (geometry.type == "Point") {
				var lon = geometry.coordinates[0];
				var lat = geometry.coordinates[1];
				pointList[index++] = new Tmap.Geometry.Point(lon, lat);
			} else {
				var countCoordinates = geometry.coordinates.length;
				for (var j = 0; j < countCoordinates; j++) {
					var lon = geometry.coordinates[j][0];
					var lat = geometry.coordinates[j][1];
					pointList[index++] = new Tmap.Geometry.Point(lon, lat);
				}
			}
		}
	}

	return pointList;
}