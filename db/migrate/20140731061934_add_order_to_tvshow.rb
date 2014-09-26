class AddOrderToTvshow < ActiveRecord::Migration
  def change
    add_column :tvshows, :order, :integer
  end
end
