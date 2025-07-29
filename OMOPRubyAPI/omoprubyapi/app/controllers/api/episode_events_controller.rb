module Api
  class EpisodeEventsController < ApplicationController
    def index
      render json: EpisodeEvent.limit(100)
    end

    def show
      e = EpisodeEvent.find_by(episode_event_id: params[:id])
      e ? render(json: e) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
