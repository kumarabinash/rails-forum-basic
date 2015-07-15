

// MARKER MANAGEMENT
(function(window) {
	var List = (function(){
		function List(){
			this.items = [];
		}

		List.prototype = {

			add: function(item){
				this.items.push(item);
			},
			remove: function(item){
				var indexOf = this.items.indexOf(item);
				if(indexOf !== -1){
					this.items.splice(indexOf, 1);
				}
			},
			find: function(callback, action){
				var callbackReturn,
					items = this.items,
					length = items.length,
					matches = [],
					i = 0;
				for(; i<length; i++){
					callbackReturn = callback(items[i], i);
					if(callbackReturn){
						matches.push(items[i]);
					}
				}

				if(action){
					action.call(this, matches);
				}

				return matches;
			}
		};

		return List;
	})();


	List.create = function(params){
		return new List(params);
	};

	window.List = List;
})(window);








// Mapper Library
(function(window, google, List){
// This is like a class in OOP
	var Mapper = (function(){
	// And this is like the init function
		function Mapper(element, opts){
			this.gMap = new google.maps.Map(element, opts);
			this.markers = List.create();
		}

		Mapper.prototype = {
			// FOR SETTING AND GETTING ZOOM LEVELS
			zoom: function(level){
				if(level){
					this.gMap.setZoom(level);
				} else {
					return this.gMap.getZoom();
				}
			},


			// FOR EVENT HANDLING
			_on: function(opts){
				var self = this;
				google.maps.event.addListener(opts.obj, opts.event, function(e){
					opts.callback.call(self, e);
					// If we simply pass callback instead of that function, we'll get the map object while calling this
					// But doing this we will get the Mapster library when we call this
				});
			},



			// ADDING MARKERS TO THE MAP
			addMarker: function(opts){
				var marker;
				opts.position = {
					lat: opts.lat,
					lng: opts.lng
				};

				marker = this._createMarker(opts);
				this.markers.add(marker);

				// Checking to see if there is an event attached to the object literal passed
				if(opts.event){
					this._on({
						obj: marker,
						event: opts.event.name,
						callback: opts.event.callback
					});
				}

				// Checking to see if there is any content passed to the object literal so it can open an infoWindow with
				// that content
				if(opts.content){
					this._on({
						obj: marker,
						event: 'click',
						callback: function(){
							var infoWindow = new google.maps.InfoWindow({
								content: opts.content
							});

							infoWindow.open(this.gMap, marker);
						}
					})
				}
				return marker;

			},
			findBy: function(callback){
				return this.markers.find(callback);
			},

			removeBy: function(callback){
				this.markers.find(callback, function(markers){
					markers.forEach(function(marker){
						marker.setMap(null); 
					});
				});
			},

			_createMarker: function(opts){
				opts.map = this.gMap;
				return new google.maps.Marker(opts);
			}
		};

		return Mapper;
		// This return the whole object
	}());

	Mapper.create = function(element, opts){
		return new Mapper(element, opts);
	};

	window.Mapper = Mapper;

}(window, google, List));






// MAP OPTIONS
(function(window, mapper) {
	mapper.MAP_OPTIONS = {
		center: {
			lat: 12.9656536,
			lng: 77.6067617
		},
		zoom: 12,
		disableDefaultUI: false
	}
})(window, window.Mapper || (window.Mapper = {}));




// SCRIPT TO LOAD MAP INTO THE PAGE
(function(window, mapper){
	// MAP OPTIONS
	var options = Mapper.MAP_OPTIONS,
	
	element = document.getElementById('map-canvas'),
	map = mapper.create(element, options);
	
	marker = map.addMarker({
		lat: 12.9656536,
		lng: 77.6067617,
		draggable: true,
		icon: "http://google-maps-icons.googlecode.com/files/vegetarian.png",
		event: {
			name: 'dragend',
			callback: function(){
				alert("I'm dragged!");
			}
		},
		content: "Hello there, I'm the infowindow content"

	});

	marker2 = map.addMarker({
		lat: 12.964532,
		lng: 77.615321,
		draggable: true,
		icon: "http://google-maps-icons.googlecode.com/files/vegetarian.png",
		event: {
			name: 'dragend',
			callback: function(){
				alert("I'm dragged!");
			}
		},
		marker_type: 'Study',
		content: "Hello there, I'm the infowindow content"

	});
	// marker1 = new google.maps.Marker({
	// 	position: {
	// 		lat: 12.9656536,
	// 		lng: 77.6067617
	// 	},
	// 	map: map.gMap
	// });

	
	
	window.map = map;
	console.log(map.markers);

	
}(window, window.Mapper || (window.Mapper = {})));


