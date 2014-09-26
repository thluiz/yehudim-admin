class AddSpotlightToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :spotlight, :boolean
  end
end
