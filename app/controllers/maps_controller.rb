class MapsController < ApplicationController
	def index
		@markers = Marker.all


	end

	def fetchMarkers
		marker_type = params[:marker_type]
		marker_type.downcase!

		case marker_type
		when "all"
			@markers = Marker.all
		when "housing"
			@markers = Marker.where(:marker_type => "Housing")
		when "study"
			@markers = Marker.where(:marker_type => "Study")
		when "travel"
			@markers = Marker.where(:marker_type => "Travel")
		else
			@markers = nil
		end
			

		respond_to do |format|
			format.json {render json: @markers }
		end
	end


end
