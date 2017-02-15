module Api::V1
  class ConstellationsController < ApplicationController

    def new
    end

    def create
      @constellation = Constellation.create(constellations_params)
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

    def constellations_params
      params.require(:constellation).permit(:name, :stars, :user_id)
    end

  end
end
