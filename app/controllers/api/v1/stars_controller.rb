module Api::V1
  class StarsController < ApplicationController

    def create
      @star = Star.create(star_params)
    end

    def index
      @stars = Star.all
      render json: @stars
    end

    private

    def star_params
      params.require(:star).permit(:x, :y, :z, :constellation_id)
    end

  end
end
