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

$(function() {
	$("#loc1").focusin(function() {
		if (vectorLayer != null && mLineFeature != null) {
			vectorLayer.removeFeatures([ mLineFeature ]);
		}
	})
	$("#pass1").focusin(function() {
		if (vectorLayer != null && mLineFeature != null) {
			vectorLayer.removeFeatures([ mLineFeature ]);
		}
	})
	$("#pass2").focusin(function() {
		if (vectorLayer != null && mLineFeature != null) {
			vectorLayer.removeFeatures([ mLineFeature ]);
		}
	})
	$("#pass3").focusin(function() {
		if (vectorLayer != null && mLineFeature != null) {
			vectorLayer.removeFeatures([ mLineFeature ]);
		}
	})
	$("#pass4").focusin(function() {
		if (vectorLayer != null && mLineFeature != null) {
			vectorLayer.removeFeatures([ mLineFeature ]);
		}
	})
	$("#pass5").focusin(function() {
		if (vectorLayer != null && mLineFeature != null) {
			vectorLayer.removeFeatures([ mLineFeature ]);
		}
	})
	$("#loc3").focusin(function() {
		if (vectorLayer != null && mLineFeature != null) {
			vectorLayer.removeFeatures([ mLineFeature ]);
		}
	})

	$("#loc1")
			.focusout(
					function() {
						if (marker1 != null) {
							markerLayer.removeMarker(marker1);
							marker1 = null;
						}
						var a1 = document.getElementById('loc1').value;
						if (a1 != "") {
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
										url : "https://apis.skplanetx.com/tmap/pois",
										type : "get",
										dataType : "json",
										data : "centerLon=&areaLMCode=&count=&multiPoint=&bizAppId=&searchType=&version=1&page=&reqCoordType=&searchKeyword="
												+ a1
												+ "&areaLLCode=&callback=&searchtypCd=&radius=&resCoordType=",
										contentType : 'application/json',
										success : function(response) {

											var spoi = response.searchPoiInfo.pois.poi[0];
											lon1 = spoi.frontLon;
											lat1 = spoi.frontLat;
											var lonlat = new Tmap.LonLat(lon1,
													lat1);
											map.setCenter(lonlat, 15);

											var size = new Tmap.Size(22, 30);
											var offset = new Tmap.Pixel(
													-(size.w / 2), -(size.h));
											var icon = new Tmap.IconHtml(
													"<img src= 'images/ico_spot.png'></img>",
													size, offset);
											marker1 = new Tmap.Marker(lonlat,
													icon);
											markerLayer.addMarker(marker1);
										}
									});
						}
					});

	$("#pass1")
			.focusout(
					function() {
						if (markerp1 != null) {
							markerLayer.removeMarker(markerp1);
							markerp1 = null;
						}
						var p1 = document.getElementById('pass1').value;
						if (p1 != "") {
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
										url : "https://apis.skplanetx.com/tmap/pois",
										type : "get",
										dataType : "json",
										data : "centerLon=&areaLMCode=&count=&multiPoint=&bizAppId=&searchType=&version=1&page=&reqCoordType=&searchKeyword="
												+ p1
												+ "&areaLLCode=&callback=&searchtypCd=&radius=&resCoordType=",
										contentType : 'application/json',
										success : function(response) {

											var spoi = response.searchPoiInfo.pois.poi[0];
											lon1 = spoi.frontLon;
											lat1 = spoi.frontLat;
											var lonlat = new Tmap.LonLat(lon1,
													lat1);
											map.setCenter(lonlat, 15);

											var size = new Tmap.Size(22, 30);
											var offset = new Tmap.Pixel(
													-(size.w / 2), -(size.h));
											var icon = new Tmap.IconHtml(
													"<img src= 'images/ico_spot.png'></img>",
													size, offset);
											markerp1 = new Tmap.Marker(lonlat,
													icon);
											markerLayer.addMarker(markerp1);
										}
									});
						}
					});
	$("#pass2")
			.focusout(
					function() {
						if (markerp2 != null) {
							markerLayer.removeMarker(markerp2);
							markerp2 = null;
						}
						var p2 = document.getElementById('pass2').value;
						if (p2 != "") {
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
										url : "https://apis.skplanetx.com/tmap/pois",
										type : "get",
										dataType : "json",
										data : "centerLon=&areaLMCode=&count=&multiPoint=&bizAppId=&searchType=&version=1&page=&reqCoordType=&searchKeyword="
												+ p2
												+ "&areaLLCode=&callback=&searchtypCd=&radius=&resCoordType=",
										contentType : 'application/json',
										success : function(response) {

											var spoi = response.searchPoiInfo.pois.poi[0];
											lon1 = spoi.frontLon;
											lat1 = spoi.frontLat;
											var lonlat = new Tmap.LonLat(lon1,
													lat1);
											map.setCenter(lonlat, 15);

											var size = new Tmap.Size(22, 30);
											var offset = new Tmap.Pixel(
													-(size.w / 2), -(size.h));
											var icon = new Tmap.IconHtml(
													"<img src= 'images/ico_spot.png'></img>",
													size, offset);
											markerp2 = new Tmap.Marker(lonlat,
													icon);
											markerLayer.addMarker(markerp2);
										}
									});
						}
					});
	$("#pass3")
			.focusout(
					function() {
						if (markerp3 != null) {
							markerLayer.removeMarker(markerp3);
							markerp3 = null;
						}
						var p3 = document.getElementById('pass3').value;
						if (p3 != "") {
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
										url : "https://apis.skplanetx.com/tmap/pois",
										type : "get",
										dataType : "json",
										data : "centerLon=&areaLMCode=&count=&multiPoint=&bizAppId=&searchType=&version=1&page=&reqCoordType=&searchKeyword="
												+ p3
												+ "&areaLLCode=&callback=&searchtypCd=&radius=&resCoordType=",
										contentType : 'application/json',
										success : function(response) {

											var spoi = response.searchPoiInfo.pois.poi[0];
											lon1 = spoi.frontLon;
											lat1 = spoi.frontLat;
											var lonlat = new Tmap.LonLat(lon1,
													lat1);
											map.setCenter(lonlat, 15);

											var size = new Tmap.Size(22, 30);
											var offset = new Tmap.Pixel(
													-(size.w / 2), -(size.h));
											var icon = new Tmap.IconHtml(
													"<img src= 'images/ico_spot.png'></img>",
													size, offset);
											markerp3 = new Tmap.Marker(lonlat,
													icon);
											markerLayer.addMarker(markerp3);
										}
									});
						}
					});
	$("#pass4")
			.focusout(
					function() {
						if (markerp4 != null) {
							markerLayer.removeMarker(markerp4);
							markerp4 = null;
						}
						var p4 = document.getElementById('pass4').value;
						if (p4 != "") {
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
										url : "https://apis.skplanetx.com/tmap/pois",
										type : "get",
										dataType : "json",
										data : "centerLon=&areaLMCode=&count=&multiPoint=&bizAppId=&searchType=&version=1&page=&reqCoordType=&searchKeyword="
												+ p4
												+ "&areaLLCode=&callback=&searchtypCd=&radius=&resCoordType=",
										contentType : 'application/json',
										success : function(response) {

											var spoi = response.searchPoiInfo.pois.poi[0];
											lon1 = spoi.frontLon;
											lat1 = spoi.frontLat;
											var lonlat = new Tmap.LonLat(lon1,
													lat1);
											map.setCenter(lonlat, 15);

											var size = new Tmap.Size(22, 30);
											var offset = new Tmap.Pixel(
													-(size.w / 2), -(size.h));
											var icon = new Tmap.IconHtml(
													"<img src= 'images/ico_spot.png'></img>",
													size, offset);
											markerp4 = new Tmap.Marker(lonlat,
													icon);
											markerLayer.addMarker(markerp4);
										}
									});
						}
					});
	$("#pass5")
			.focusout(
					function() {
						if (markerp5 != null) {
							markerLayer.removeMarker(markerp5);
							markerp5 = null;
						}
						var p5 = document.getElementById('pass5').value;
						if (p5 != "") {
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
										url : "https://apis.skplanetx.com/tmap/pois",
										type : "get",
										dataType : "json",
										data : "centerLon=&areaLMCode=&count=&multiPoint=&bizAppId=&searchType=&version=1&page=&reqCoordType=&searchKeyword="
												+ p5
												+ "&areaLLCode=&callback=&searchtypCd=&radius=&resCoordType=",
										contentType : 'application/json',
										success : function(response) {

											var spoi = response.searchPoiInfo.pois.poi[0];
											lon1 = spoi.frontLon;
											lat1 = spoi.frontLat;
											console.log(lon1, lat1);
											var lonlat = new Tmap.LonLat(lon1,
													lat1);
											map.setCenter(lonlat, 15);

											var size = new Tmap.Size(22, 30);
											var offset = new Tmap.Pixel(
													-(size.w / 2), -(size.h));
											var icon = new Tmap.IconHtml(
													"<img src= 'images/ico_spot.png'></img>",
													size, offset);
											markerp5 = new Tmap.Marker(lonlat,
													icon);
											markerLayer.addMarker(markerp5);
										}
									});
						}
					});
	$("#loc3")
			.focusout(
					function() {
						if (marker3 != null) {
							markerLayer.removeMarker(marker3);
							marker3 = null;
						}
						var a3 = document.getElementById('loc3').value;
						if (a3 != "") {
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
										url : "https://apis.skplanetx.com/tmap/pois",
										type : "get",
										dataType : "json",
										data : "centerLon=&areaLMCode=&count=&multiPoint=&bizAppId=&searchType=&version=1&page=&reqCoordType=&searchKeyword="
												+ a3
												+ "&areaLLCode=&callback=&searchtypCd=&radius=&resCoordType=",
										contentType : 'application/json',
										success : function(response) {
											var spoi = response.searchPoiInfo.pois.poi[0];
											lon1 = spoi.frontLon;
											lat1 = spoi.frontLat;
											var lonlat = new Tmap.LonLat(lon1,
													lat1);
											map.setCenter(lonlat, 15);

											var size = new Tmap.Size(22, 30);
											var offset = new Tmap.Pixel(
													-(size.w / 2), -(size.h));
											var icon = new Tmap.IconHtml(
													"<img src= 'images/ico_spot.png'></img>",
													size, offset);
											marker3 = new Tmap.Marker(lonlat,
													icon);
											markerLayer.addMarker(marker3);
										}
									});
						}
					});

	$("button")
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
						} else if (markerp5 != null) {
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
										map.setCenter(lonlat, 10);

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


	$("#example3").click(function() {
		var arrayData = [ {
			"lon" : marker1.lonlat.lon,
			"lat" : marker1.lonlat.lat
		}, {
			"lon" : markerp1.lonlat.lon,
			"lat" : markerp1.lonlat.lat 
		}, {
			"lon" : markerp2.lonlat.lon,
			"lat" : markerp2.lonlat.lat 
		}, {
			"lon" : markerp3.lonlat.lon,
			"lat" : markerp3.lonlat.lat 
		}, {
			"lon" : markerp4.lonlat.lon,
			"lat" : markerp4.lonlat.lat 
		}, {
			"lon" : markerp5.lonlat.lon,
			"lat" : markerp5.lonlat.lat 
		}, {
			"lon" : marker3.lonlat.lon,
			"lat" : marker3.lonlat.lat
		}, {
			"name" : "kickscar",
			"email" : "kickscar@gmail.com",
			"marker" : {
				"lon" : 2345.1203,
				"lat" : 9280.31202
			}
		}];
		
		$.ajax({
			url : "/withgo/markertest",
			type : "post",
			dataType : "json",
			contentType : "application/json",
			data : JSON.stringify(arrayData),
			success : function(response) {
				if (response.result == "fail") {
					console.error(response.message);
					return;
				}

				console.log(response);
			},
			error : function(jqXHR, status, e) {
				console.error(status + " : " + e);
			}
		});
	});	
});

function initialize() {
	map = new Tmap.Map({
		div : "map_div",
		width : '700px',
		height : '500px'
	});
	map.addControls([ new Tmap.Control.KeyboardDefaults(),
			new Tmap.Control.MousePosition() ]);

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