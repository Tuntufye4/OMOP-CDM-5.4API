class Episode < ApplicationRecord
  self.table_name = 'episode'
  self.primary_key = 'episode_id'
  def readonly?; true; end
end