module Api
  class MeasurementsController < ApplicationController
    def index
      render json: Measurement.limit(100)
    end

    def show
      m = Measurement.find_by(measurement_id: params[:id])
      m ? render(json: m) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
