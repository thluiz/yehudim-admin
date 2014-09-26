class AddAmazonIdentifierToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :amazon_identifier, :string
  end
end
