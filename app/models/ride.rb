class Ride < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user

  def take_ride
    if user.height < attraction.min_height
      flash[:error] << "You are not tall enough to ride the #{attraction.name}"
    elsif user.tickets < attraction.tickets
      flash[:error] << "You do not have enough tickets the #{attraction.name}" 
    else
      user.tickets -= attraction.tickets
      user.save
    end

  end

end
