module Api::V1
  class StarsController < ApplicationController

    def new
    end

    def create
      @star = Star.create(star_params)
    end

    def show
    end

    def update
    end

    def edit
    end

    def delete
    end

    def destroy
    end

    private

    def star_params
      params.require(:star).permit(:x, :y, :z, :constellation_id)
    end

  end
end
