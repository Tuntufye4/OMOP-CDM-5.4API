module Api
  class DrugErasController < ApplicationController
    def index
      render json: DrugEra.limit(100)
    end

    def show
      d = DrugEra.find_by(drug_era_id: params[:id])
      d ? render(json: d) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
