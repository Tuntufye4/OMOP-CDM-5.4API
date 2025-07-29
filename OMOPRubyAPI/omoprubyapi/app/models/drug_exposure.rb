class DrugExposure < ApplicationRecord
  self.table_name = 'drug_exposure'
  self.primary_key = 'drug_exposure_id'
  def readonly?; true; end
end