class AddFeaturedToTvshow < ActiveRecord::Migration
  def change
    add_column :tvshows, :featured, :boolean
  end
end
