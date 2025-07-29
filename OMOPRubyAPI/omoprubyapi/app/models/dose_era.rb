class DoseEra < ApplicationRecord
  self.table_name = 'dose_era'
  self.primary_key = 'dose_era_id'
  def readonly?; true; end
end