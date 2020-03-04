class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    self.actors.to_a.map do |a|
      "#{a.first_name} #{a.last_name}"
    end
  end

end
