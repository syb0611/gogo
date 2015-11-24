var map;
var marker1 = null;
var markerp1 = null;
var markerp2 = null;
var markerp3 = null;
var markerp4 = null;
var markerp5 = null;
var marker3 = null;
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
var p4 = null;
var p5 = null;

var cursor = db.getCollection('jSONObject').find({})

	$("#route")
			.click(
					function() {
						var data = "";
						if (markerp1 == null) {
							data = "callback=&bizAppId=5d5accbf-7745-315f-9ccc-fedc53a0f0b1&version=1&passList=&endX="
									+ marker3.lonlat.lon
									+ "&endY="
									+ marker3.lonlat.lat
									+ "&startX="
									+ marker1.lonlat.lon
									+ "&startY="
									+ marker1.lonlat.lat;

						} else if (markerp1 != null && markerp2 == null) {
							data = "callback=&bizAppId=5d5accbf-7745-315f-9ccc-fedc53a0f0b1&version=1&passList="
									+ markerp1.lonlat.lon
									+ ","
									+ markerp1.lonlat.lat
									+

									"&endX="
									+ marker3.lonlat.lon
									+ "&endY="
									+ marker3.lonlat.lat
									+ "&startX="
									+ marker1.lonlat.lon
									+ "&startY="
									+ marker1.lonlat.lat;
						} else if (markerp1 != null && markerp2 != null
								&& markerp3 == null) {
							data = "callback=&bizAppId=5d5accbf-7745-315f-9ccc-fedc53a0f0b1&version=1&passList="
									+ markerp1.lonlat.lon
									+ ","
									+ markerp1.lonlat.lat
									+ "_"
									+ markerp2.lonlat.lon
									+ ","
									+ markerp2.lonlat.lat
									+

									"&endX="
									+ marker3.lonlat.lon
									+ "&endY="
									+ marker3.lonlat.lat
									+ "&startX="
									+ marker1.lonlat.lon
									+ "&startY="
									+ marker1.lonlat.lat;
						} else if (markerp1 != null && markerp2 != null
								&& markerp3 != null && markerp4 == null) {
							data = "callback=&bizAppId=5d5accbf-7745-315f-9ccc-fedc53a0f0b1&version=1&passList="
									+ markerp1.lonlat.lon
									+ ","
									+ markerp1.lonlat.lat
									+ "_"
									+ markerp2.lonlat.lon
									+ ","
									+ markerp2.lonlat.lat
									+ "_"
									+ markerp3.lonlat.lon
									+ ","
									+ markerp3.lonlat.lat
									+

									"&endX="
									+ marker3.lonlat.lon
									+ "&endY="
									+ marker3.lonlat.lat
									+ "&startX="
									+ marker1.lonlat.lon
									+ "&startY="
									+ marker1.lonlat.lat;
						} else if (markerp1 != null && markerp2 != null
								&& markerp3 != null && markerp4 != null
								&& markerp5 == null) {
							data = "callback=&bizAppId=5d5accbf-7745-315f-9ccc-fedc53a0f0b1&version=1&passList="
									+ markerp1.lonlat.lon
									+ ","
									+ markerp1.lonlat.lat
									+ "_"
									+ markerp2.lonlat.lon
									+ ","
									+ markerp2.lonlat.lat
									+ "_"
									+ markerp3.lonlat.lon
									+ ","
									+ markerp3.lonlat.lat
									+ "_"
									+ markerp4.lonlat.lon
									+ ","
									+ markerp4.lonlat.lat
									+

									"&endX="
									+ marker3.lonlat.lon
									+ "&endY="
									+ marker3.lonlat.lat
									+ "&startX="
									+ marker1.lonlat.lon
									+ "&startY="
									+ marker1.lonlat.lat;
						} else if (markerp1 != null && markerp2 != null
								&& markerp3 != null && markerp4 != null
								&& markerp5 != null) {
							data = "callback=&bizAppId=5d5accbf-7745-315f-9ccc-fedc53a0f0b1&version=1&passList="
									+ markerp1.lonlat.lon
									+ ","
									+ markerp1.lonlat.lat
									+ "_"
									+ markerp2.lonlat.lon
									+ ","
									+ markerp2.lonlat.lat
									+ "_"
									+ markerp3.lonlat.lon
									+ ","
									+ markerp3.lonlat.lat
									+ "_"
									+ markerp4.lonlat.lon
									+ ","
									+ markerp4.lonlat.lat
									+ "_"
									+ markerp5.lonlat.lon
									+ ","
									+ markerp5.lonlat.lat
									+

									"&endX="
									+ marker3.lonlat.lon
									+ "&endY="
									+ marker3.lonlat.lat
									+ "&startX="
									+ marker1.lonlat.lon
									+ "&startY="
									+ marker1.lonlat.lat;
						}

						$
								.ajax({
									beforeSend : function(request) {
										request.setRequestHeader("Accept",
												"application/json");
										request
												.setRequestHeader("appKey",
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
										mLineFeature = new Tmap.Feature.Vector(
												lineString, null, style_bold);
										vectorLayer = new Tmap.Layer.Vector(
												"vectorLayerID");
										map.addLayer(vectorLayer);
										vectorLayer
												.addFeatures([ mLineFeature ]);
										var count = Math
												.round(pointList.length / 2);
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
					});

function initialize() {
	map = new Tmap.Map({
		div : "map_div",
		width : '100%',
		height : '400px'
	});
	map.addLayer(markerLayer);
	var lonlat = new Tmap.LonLat(lon1, lat1);
	map.setCenter(lonlat, 15);
}

$('document').ready(function() {
	initialize();
});

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