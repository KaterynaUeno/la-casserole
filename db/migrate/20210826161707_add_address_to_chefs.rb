class AddAddressToChefs < ActiveRecord::Migration[6.0]
  def change
    add_column :chefs, :address, :string
  end
end
