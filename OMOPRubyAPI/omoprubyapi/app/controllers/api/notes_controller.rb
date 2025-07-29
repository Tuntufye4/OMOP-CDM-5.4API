module Api
  class NotesController < ApplicationController
    def index
      render json: Note.limit(100)
    end

    def show
      n = Note.find_by(note_id: params[:id])
      n ? render(json: n) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
