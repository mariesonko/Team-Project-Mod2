module ApplicationHelper
  def restaurant_rating
    Restaurant.all.sort_by do |restaurant|
      restaurant.rating
    end.reverse

  end

  def hangout_date
    Hangout.all.sort_by do |hangout|
      hangout.date
    end

  end
end
