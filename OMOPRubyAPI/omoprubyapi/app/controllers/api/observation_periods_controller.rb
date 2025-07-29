module Api
  class ObservationPeriodsController < ApplicationController
    def index
      render json: ObservationPeriod.limit(100)
    end

    def show
      o = ObservationPeriod.find_by(observation_period_id: params[:id])
      o ? render(json: o) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
  