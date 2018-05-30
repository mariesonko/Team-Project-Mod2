class Hangout < ApplicationRecord
  belongs_to :guest, class_name: "User"
  belongs_to :host, class_name: "User"
  belongs_to :restaurant 
  validates :guest_id, presence: true
  validates :host_id, presence: true
end
