class VisitDetail < ApplicationRecord
  self.table_name = 'visit_detail'
  self.primary_key = 'visit_detail_id'
  def readonly?; true; end
end