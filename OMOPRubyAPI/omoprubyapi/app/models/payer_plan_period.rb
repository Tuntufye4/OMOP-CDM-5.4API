class PayerPlanPeriod < ApplicationRecord
  self.table_name = 'payer_plan_period'
  self.primary_key = 'payer_plan_period_id'
  def readonly?; true; end
end