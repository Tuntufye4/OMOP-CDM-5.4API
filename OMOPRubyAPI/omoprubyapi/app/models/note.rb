class Note < ApplicationRecord
  self.table_name = 'note'
  self.primary_key = 'note_id'
  def readonly?; true; end
end   