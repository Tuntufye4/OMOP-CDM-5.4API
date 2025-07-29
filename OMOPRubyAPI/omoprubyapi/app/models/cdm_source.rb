class CdmSource < ApplicationRecord
  self.table_name = 'cdm_source'
  self.primary_key = 'cdm_source_name'  # string primary key
  def readonly?; true; end
end