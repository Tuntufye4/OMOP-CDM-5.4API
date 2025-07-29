module Api
  class VisitOccurrencesController < ApplicationController
    def index
      render json: VisitOccurrence.limit(100)
    end

    def show
      v = VisitOccurrence.find_by(visit_occurrence_id: params[:id])
      v ? render(json: v) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
