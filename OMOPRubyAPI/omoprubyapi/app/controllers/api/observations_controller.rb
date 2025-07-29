module Api
  class ObservationsController < ApplicationController
    def index
      render json: Observation.limit(100)
    end

    def show
      o = Observation.find_by(observation_id: params[:id])
      o ? render(json: o) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
