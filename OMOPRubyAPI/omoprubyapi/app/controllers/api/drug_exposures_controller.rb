module Api
  class DrugExposuresController < ApplicationController
    def index
      render json: DrugExposure.limit(100)
    end

    def show
      d = DrugExposure.find_by(drug_exposure_id: params[:id])
      d ? render(json: d) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
