module Api
  class ConditionOccurrencesController < ApplicationController
    def index
      render json: ConditionOccurrence.limit(100)
    end

    def show
      c = ConditionOccurrence.find_by(condition_occurrence_id: params[:id])
      c ? render(json: c) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
