class Person < ApplicationRecord
  self.table_name = 'person'
  self.primary_key = 'person_id'
  def readonly?; true; end
end