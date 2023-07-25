class AddFavoriteToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :favorite, :boolean, default: false
  end
end
