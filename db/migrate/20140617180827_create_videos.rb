class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :episode_id
      t.string :identifier
      t.string :title
      t.text :description
      t.integer :order

      t.timestamps
    end
  end
end
