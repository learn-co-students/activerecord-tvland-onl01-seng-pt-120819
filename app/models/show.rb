class Show < ActiveRecord::Base
  belongs_to :network

  def actors_list
    self.actors.all.map{|a| a.full_name}
  end
end
