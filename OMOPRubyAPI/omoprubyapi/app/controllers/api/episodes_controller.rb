module Api
  class EpisodesController < ApplicationController
    def index
      render json: Episode.limit(100)
    end

    def show
      e = Episode.find_by(episode_id: params[:id])
      e ? render(json: e) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
