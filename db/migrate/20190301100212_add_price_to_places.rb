class AddPriceToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :price, :integer
  end
end
