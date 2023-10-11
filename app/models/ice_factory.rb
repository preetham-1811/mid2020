class IceFactory < ApplicationRecord
  belongs_to :company
  has_many :cameras
end
