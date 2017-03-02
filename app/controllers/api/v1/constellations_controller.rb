module Api::V1
  class ConstellationsController < ApplicationController

    def index
      @constellations = Constellation.all
      render json: @constellations
    end

    def create
      @constellation = Constellation.create(name: params['name'], stars_array: params['stars_array'], user_id: params['user_id'])
    end

    def my_constellations
      @constellations = Constellation.where(user_id: active_user.id)
      render json: @constellations
    end

    def show
      @constellations = Constellation.where(user_id: User.find(params[:id]).id)
      render json: @constellations
    end

    def update
    end

    def destroy
    end

  end
end
