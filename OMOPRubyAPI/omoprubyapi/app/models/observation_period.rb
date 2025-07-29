class ObservationPeriod < ApplicationRecord
  self.table_name = 'observation_period'
  self.primary_key = 'observation_period_id'
  def readonly?; true; end
end