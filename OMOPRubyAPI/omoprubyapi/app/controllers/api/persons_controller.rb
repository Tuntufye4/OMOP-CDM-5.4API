module Api
  class PersonsController < ApplicationController
    def index
      render json: Person.limit(100)
    end

    def show
      p = Person.find_by(person_id: params[:id])
      p ? render(json: p) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
