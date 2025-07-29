class Observation < ApplicationRecord
  self.table_name = 'observation'
  self.primary_key = 'observation_id'
  def readonly?; true; end
end
