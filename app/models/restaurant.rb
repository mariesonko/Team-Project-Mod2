class Restaurant < ApplicationRecord
  has_many :hangouts
  has_many :users, through: :hangouts
end
