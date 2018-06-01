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

  has_secure_password

  #joins a host
 def joining(other_user)
   guests << other_user
 end

 # stop join a host.
 def cancel_joining(other_user)
   guests.delete(other_user)
 end

 # Returns true if the current user is joining a host.
 def joining?(other_user)
   guests.include?(other_user)
 end

 def user_hangout
   current_user.hangouts.count
 end


end
