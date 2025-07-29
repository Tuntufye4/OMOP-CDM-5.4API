module Api
  class ProvidersController < ApplicationController
    def index
      render json: Provider.limit(100)
    end

    def show
      p = Provider.find_by(provider_id: params[:id])
      p ? render(json: p) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
