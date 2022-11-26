class SpicesController < ApplicationController
    def index
        render json: Spice.all
    end
    
    def create 
        spice = Spice.create(spice_params)
        render json: spice
    end

    private
    def spice_params
        params.permit (:title, :image, :description, :notes, :rating)
    end
end
