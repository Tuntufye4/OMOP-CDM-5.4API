class NoteNlp < ApplicationRecord
  self.table_name = 'note_nlp'
  self.primary_key = 'note_nlp_id'
  def readonly?; true; end
end