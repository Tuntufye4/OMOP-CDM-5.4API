class Location < ApplicationRecord
  self.table_name = 'location'
  self.primary_key = 'location_id'
  def readonly?; true; end
end