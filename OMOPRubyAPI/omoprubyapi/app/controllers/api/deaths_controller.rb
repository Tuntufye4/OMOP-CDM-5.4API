module Api
  class DeathsController < ApplicationController
    def index
      render json: Death.limit(100)
    end

    def show
      d = Death.find_by(person_id: params[:id])
      d ? render(json: d) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
