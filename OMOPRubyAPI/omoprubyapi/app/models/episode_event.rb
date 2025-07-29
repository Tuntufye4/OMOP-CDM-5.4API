class EpisodeEvent < ApplicationRecord
  self.table_name = 'episode_event'
  self.primary_key = 'episode_event_id'
  def readonly?; true; end
end