module Api
  class ConditionErasController < ApplicationController
    def index
      render json: ConditionEra.limit(100)
    end

    def show
      c = ConditionEra.find_by(condition_era_id: params[:id])
      c ? render(json: c) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
