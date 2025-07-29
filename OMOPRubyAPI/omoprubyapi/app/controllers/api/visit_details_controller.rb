module Api
  class VisitDetailsController < ApplicationController
    def index
      render json: VisitDetail.limit(100)
    end

    def show
      v = VisitDetail.find_by(visit_detail_id: params[:id])
      v ? render(json: v) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
