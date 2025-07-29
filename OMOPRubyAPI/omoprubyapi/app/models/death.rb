class Death < ApplicationRecord
  self.table_name = 'death'
  self.primary_key = 'person_id'  # note: person_id is PK in death table
  def readonly?; true; end
end