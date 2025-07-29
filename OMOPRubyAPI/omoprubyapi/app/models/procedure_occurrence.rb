class ProcedureOccurrence < ApplicationRecord
  self.table_name = 'procedure_occurrence'
  self.primary_key = 'procedure_occurrence_id'
  def readonly?; true; end
end