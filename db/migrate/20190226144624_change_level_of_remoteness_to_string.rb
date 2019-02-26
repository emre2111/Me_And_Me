class ChangeLevelOfRemotenessToString < ActiveRecord::Migration[5.2]
  def change
    change_column :places, :level_of_remoteness, :string
  end
end
