class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :continent
      t.boolean :availability, default: true
      t.integer :level_of_remoteness

      t.timestamps
    end
  end
end
