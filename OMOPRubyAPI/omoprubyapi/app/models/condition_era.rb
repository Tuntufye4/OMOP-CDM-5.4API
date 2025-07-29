class ConditionEra < ApplicationRecord
  self.table_name = 'condition_era'
  self.primary_key = 'condition_era_id'
  def readonly?; true; end
end