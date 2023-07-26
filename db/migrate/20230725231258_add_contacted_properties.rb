class AddContactedProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :contacted, :boolean, default: false
  end
end
