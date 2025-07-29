module Api
  class ProcedureOccurrencesController < ApplicationController
    def index
      render json: ProcedureOccurrence.limit(100)
    end

    def show
      p = ProcedureOccurrence.find_by(procedure_occurrence_id: params[:id])
      p ? render(json: p) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
