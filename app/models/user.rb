class User < ApplicationRecord
  has_many :restaurants, through: :hangouts
  has_many :active_hangouts,  class_name:  "Hangout",
                                   foreign_key: "host_id",
                                   dependent:   :destroy
  has_many :passive_hangouts, class_name:  "Hangout",
                                   foreign_key: "guest_id",
                                   dependent:   :destroy
  has_many :guests, through: :active_hangouts
  has_many :hosts, through: :passive_hangouts
end