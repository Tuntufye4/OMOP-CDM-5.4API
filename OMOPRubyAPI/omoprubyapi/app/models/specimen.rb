class Specimen < ApplicationRecord
  self.table_name = 'specimen'
  self.primary_key = 'specimen_id'
  def readonly?; true; end
end