class AddColumnCommunityToShow < ActiveRecord::Migration[5.2]

  def change
    add_column :shows, :community, :string
  end
end