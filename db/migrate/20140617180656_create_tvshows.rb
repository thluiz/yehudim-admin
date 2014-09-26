class CreateTvshows < ActiveRecord::Migration
  def change
    create_table :tvshows do |t|
      t.string :name
      t.string :identifier
      t.text :description

      t.timestamps
    end
  end
end
