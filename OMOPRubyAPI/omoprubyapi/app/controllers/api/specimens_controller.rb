module Api
  class SpecimensController < ApplicationController
    def index
      render json: Specimen.limit(100)
    end

    def show
      s = Specimen.find_by(specimen_id: params[:id])
      s ? render(json: s) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
