class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if !happiness.nil?
    if happiness > nausea
      "happy"
    else
      "sad"
    end
  end
end
end
