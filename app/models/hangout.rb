class Hangout < ApplicationRecord
  belongs_to :guest, class_name: "User", optional: true
  belongs_to :host, class_name: "User"
  belongs_to :restaurant
  validates :host_id, presence: true
  validates :date, presence: true
  validates :time, presence: true

  # needs to be built out
  # def self.search(search)
  #   search.present? ? self.all.select { |hangout| hangout.time.downcase.include?(search.downcase) } : self.all
  # end
end
