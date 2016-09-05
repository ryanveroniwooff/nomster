class PlacesController < ApplicationController

	def index
		@places =Place.all
	end

	def new
		@place = Place.new
	end

	def create
		Place.creat(place_params)
		redirect_to root_path
	end

	def place_params
		params.require(:place) .permit(:name, :description, :address)
	end


end
