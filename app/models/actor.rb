class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.shows.map do |show|
      "#{self.characters[self.id - 1].name} - #{show.name}"
    end
  end

end
