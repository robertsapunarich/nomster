class PlacesController < ApplicationController
	
	def index
		@places = Place.all.page(params[:page]).per(5)
	end

end