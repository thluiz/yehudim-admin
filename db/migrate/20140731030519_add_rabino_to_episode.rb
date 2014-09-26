class AddRabinoToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :rabbi, :string
  end
end
