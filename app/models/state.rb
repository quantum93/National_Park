class State < ApplicationRecord
  scope :search, -> (state_name) {where(name: state_name)}
  has_many :parks

  scope :most_parks, -> {(
  select("states.id, states.state_name, count(parks.id) as parks_count")
  .joins(:parks)
  .group("states.id")
  .order("parks_count DESC")
  # .limit(1)
  )}

end
