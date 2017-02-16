module Api::V1
  class ConstellationsController < ApplicationController

    def new
    end

    def create
      @constellation = Constellation.create(name: 'Unnamed', stars_array: params['stars_array'], user_id: params['user_id'])
    end

    def update
    end

    def edit
    end

    def delete
    end

    def destroy
    end

  end
end
