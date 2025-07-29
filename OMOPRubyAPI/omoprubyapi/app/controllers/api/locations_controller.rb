module Api
  class LocationsController < ApplicationController
    def index
      render json: Location.limit(100)
    end

    def show
      l = Location.find_by(location_id: params[:id])
      l ? render(json: l) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
