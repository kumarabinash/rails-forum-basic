// SCRIPT TO LOAD MAP INTO THE PAGE
(function(window, mapper){
	// MAP OPTIONS
	var options = Mapper.MAP_OPTIONS,
	
	element = document.getElementById('map-canvas'),
	map = mapper.create(element, options);
	
	// marker = map.addMarker({
	// 	lat: 12.9656536,
	// 	lng: 77.6067617,
	// 	draggable: true,
	// 	icon: "http://google-maps-icons.googlecode.com/files/vegetarian.png",
	// 	event: {
	// 		name: 'dragend',
	// 		callback: function(){
	// 			alert("I'm dragged!");
	// 		}
	// 	},
	// 	content: "Hello there, I'm the infowindow content"

	// });

	// marker2 = map.addMarker({
	// 	lat: 12.964532,
	// 	lng: 77.615321,
	// 	draggable: true,
	// 	icon: "http://google-maps-icons.googlecode.com/files/vegetarian.png",
	// 	event: {
	// 		name: 'dragend',
	// 		callback: function(){
	// 			alert("I'm dragged!");
	// 		}
	// 	},
	// 	marker_type: 'Study',
	// 	content: "Hello there, I'm the infowindow content"

	// });
	// marker1 = new google.maps.Marker({
	// 	position: {
	// 		lat: 12.9656536,
	// 		lng: 77.6067617
	// 	},
	// 	map: map.gMap
	// });

	
	
	window.map = map;
	// console.log(map.markers);

	
}(window, window.Mapper || (window.Mapper = {})));