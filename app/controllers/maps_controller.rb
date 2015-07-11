class MapsController < ApplicationController
	def index
		@markers = Marker.all
	end
end
