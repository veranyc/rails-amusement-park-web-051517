class User < ActiveRecord::Base
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    #returns 'sad' when the user is more nauseous than happy
    #returns 'happy' when the user is more happy or = nauseous
    if self.happiness >= self.nausea
      return "happy"
    else
      return "sad"
    end
  end
  
end
