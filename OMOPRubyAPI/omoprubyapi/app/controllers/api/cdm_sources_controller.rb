module Api
  class CdmSourcesController < ApplicationController
    def index
      render json: CdmSource.limit(100)
    end

    def show
      c = CdmSource.find_by(cdm_source_name: params[:id])
      c ? render(json: c) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
