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