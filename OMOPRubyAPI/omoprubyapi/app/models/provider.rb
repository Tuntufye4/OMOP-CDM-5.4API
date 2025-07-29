class Provider < ApplicationRecord
  self.table_name = 'provider'
  self.primary_key = 'provider_id'
  def readonly?; true; end
end