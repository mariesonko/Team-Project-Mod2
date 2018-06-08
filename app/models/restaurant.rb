class Restaurant < ApplicationRecord
  has_many :hangouts
  has_many :users, through: :hangouts

  def self.search(search)
    search.present? ? self.all.select { |restaurant| restaurant.cuisine.downcase.include?(search.downcase) } : self.all

    search.present? ? self.all.select { |restaurant| restaurant.rating } : self.all

end
end
