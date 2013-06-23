class CreateCostGroups < ActiveRecord::Migration
  def change
    create_table :cost_groups do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
