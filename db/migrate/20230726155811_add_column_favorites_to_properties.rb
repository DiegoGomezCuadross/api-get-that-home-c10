class AddColumnFavoritesToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :favorites_count, :integer, :default O
  end
end
