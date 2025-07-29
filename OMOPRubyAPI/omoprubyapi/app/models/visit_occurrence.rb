class VisitOccurrence < ApplicationRecord
  self.table_name = 'visit_occurrence'
  self.primary_key = 'visit_occurrence_id'
  def readonly?; true; end
end