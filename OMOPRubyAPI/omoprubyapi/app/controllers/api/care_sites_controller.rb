module Api
  class CareSitesController < ApplicationController
    def index
      render json: CareSite.limit(100)
    end

    def show
      c = CareSite.find_by(care_site_id: params[:id])
      c ? render(json: c) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
