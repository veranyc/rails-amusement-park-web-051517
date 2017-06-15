class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
    #accounts for the user not being tall enough
    #accounts for the user not being tall enough and not having enough tickets
    #accounts for the user not having enough tickets
    #updates ticket number
    #updates the user's nausea
    #updates the user's happiness
    @user = User.find(self.user_id)
    @attraction = Attraction.find(self.attraction_id)

    if @attraction.tickets > @user.tickets && @attraction.min_height > @user.height
      return "Sorry. You do not have enough tickets to ride the #{@attraction.name}. You are not tall enough to ride the #{@attraction.name}."
    elsif @attraction.tickets > @user.tickets
      return "Sorry. You do not have enough tickets to ride the #{@attraction.name}."
    elsif @attraction.min_height > @user.height
      return "Sorry. You are not tall enough to ride the #{@attraction.name}."

    else
      @user.update(:tickets => (@user.tickets - @attraction.tickets))
      @user.update(:nausea => (@user.nausea + @attraction.nausea_rating))
      @user.update(:happiness => (@user.happiness + @attraction.happiness_rating))
    end
  end


end
