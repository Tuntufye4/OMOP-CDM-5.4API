module Api
  class CostsController < ApplicationController
    def index
      render json: Cost.limit(100)
    end

    def show
      c = Cost.find_by(cost_id: params[:id])
      c ? render(json: c) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
