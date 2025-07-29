class Metadata < ApplicationRecord
  self.table_name = 'metadata'
  self.primary_key = 'metadata_id'
  def readonly?; true; end
end