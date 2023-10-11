class Camera < ApplicationRecord
  belongs_to :ice_factory
  has_many :events
end
