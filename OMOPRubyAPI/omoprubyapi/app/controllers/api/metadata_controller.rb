module Api
  class MetadataController < ApplicationController
    def index
      render json: Metadata.limit(100)
    end

    def show
      m = Metadata.find_by(metadata_id: params[:id])
      m ? render(json: m) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
