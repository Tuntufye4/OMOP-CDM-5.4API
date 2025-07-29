module Api
  class DoseErasController < ApplicationController
    def index
      render json: DoseEra.limit(100)
    end

    def show
      d = DoseEra.find_by(dose_era_id: params[:id])
      d ? render(json: d) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
