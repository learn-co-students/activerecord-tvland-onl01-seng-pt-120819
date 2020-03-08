class Show < ActiveRecord::Base
    has_many :actors, through: :characters 
    has_many :characters 
    belongs_to :network 

    def actors_list
        self.characters.map do |character|
            "#{character.actor.first_name} #{character.actor.last_name}"
        end
    end
end