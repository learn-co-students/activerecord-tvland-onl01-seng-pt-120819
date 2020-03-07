class AddActorIdToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :actor_id, :integer 
  end
end
