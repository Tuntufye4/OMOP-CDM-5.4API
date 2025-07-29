module Api
  class NoteNlpsController < ApplicationController
    def index
      render json: NoteNlp.limit(100)
    end

    def show
      n = NoteNlp.find_by(note_nlp_id: params[:id])
      n ? render(json: n) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
