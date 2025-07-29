class DrugEra < ApplicationRecord
  self.table_name = 'drug_era'
  self.primary_key = 'drug_era_id'
  def readonly?; true; end
end