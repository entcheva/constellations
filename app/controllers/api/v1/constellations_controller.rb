module Api::V1
  class ConstellationsController < ApplicationController

    def create
      @constellation = Constellation.create(name: 'Unnamed', stars_array: params['stars_array'], user_id: params['user_id'])
    end

    def update
    end

    def destroy
    end

  end
end
