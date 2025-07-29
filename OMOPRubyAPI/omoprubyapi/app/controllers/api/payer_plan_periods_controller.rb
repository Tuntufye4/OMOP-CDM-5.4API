module Api
  class PayerPlanPeriodsController < ApplicationController
    def index
      render json: PayerPlanPeriod.limit(100)
    end

    def show
      p = PayerPlanPeriod.find_by(payer_plan_period_id: params[:id])
      p ? render(json: p) : render(json: { error: 'Not found' }, status: :not_found)
    end
  end
end
