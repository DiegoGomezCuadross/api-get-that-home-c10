class AddColumnToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :active, :boolean, default: true
  end
end
