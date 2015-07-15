
// SCRIPT TO LOAD MAP INTO THE PAGE
(function(window, mapper){
	// MAP OPTIONS
	var options = Mapper.MAP_OPTIONS,
	
	element = document.getElementById('map-canvas'),
	map = mapper.create(element, options);
	
	// SAMPLE HOW TO CREATE A MARKER
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
	// IF THERE IS CONTENT THEN IT WILL OPEN THE INFO WINDOW(CHECK MAPPER.JS)
	// 	content: "Hello there, I'm the infowindow content"

	// });
	
	window.map = map;
}(window, window.Mapper || (window.Mapper = {})));


