class Cost < ApplicationRecord
  self.table_name = 'cost'
  self.primary_key = 'cost_id'
  def readonly?; true; end
end