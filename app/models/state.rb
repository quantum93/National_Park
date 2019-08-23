class State < ApplicationRecord
  scope :search, -> (state_name) {where(name: state_name)}
  has_many :parks
end
