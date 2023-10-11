class Company < ApplicationRecord
    has_many :users
    has_many :ice_factories
end
