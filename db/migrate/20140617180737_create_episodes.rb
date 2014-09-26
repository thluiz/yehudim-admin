class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :identifier
      t.text :description
      t.integer :tvshow_id
      t.datetime :publication
      t.integer :order

      t.timestamps
    end
  end
end
