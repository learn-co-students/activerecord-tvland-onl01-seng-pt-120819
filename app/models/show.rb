class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    all_actors = []
    
    self.characters.each {|character|
      all_actors << character.actor
    }
    all_actors.map{|actor|
      "#{actor.first_name} #{actor.last_name}"
    }
  end
end

