class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :name
      t.boolean :active
      t.timestamps
    end
  end
end
