module Api
  class DeviceExposuresController < ApplicationController
    def index
      render json: DeviceExposure.limit(100)
    end

    def show
      d = DeviceExposure.find_by(device_exposure_id: params[:id])
      d ? render(json: d) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
