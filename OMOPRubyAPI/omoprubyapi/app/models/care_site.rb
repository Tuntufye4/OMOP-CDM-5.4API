class CareSite < ApplicationRecord
  self.table_name = 'care_site'
  self.primary_key = 'care_site_id'
  def readonly?; true; end
end