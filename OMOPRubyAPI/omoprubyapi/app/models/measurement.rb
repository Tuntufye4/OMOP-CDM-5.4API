class Measurement < ApplicationRecord
  self.table_name = 'measurement'
  self.primary_key = 'measurement_id'
  def readonly?; true; end
end