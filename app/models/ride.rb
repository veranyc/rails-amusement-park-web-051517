class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
    #accounts for the user not having enough tickets
    #accounts for the user not being tall enough
    #accounts for the user not being tall enough and not having enough tickets
    #updates ticket number
    #updates the user's nausea
    #updates the user's happiness 
  end
end
