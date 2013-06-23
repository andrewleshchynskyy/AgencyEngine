class AddSortCosts < ActiveRecord::Migration
  def change
    add_column :costs, :SORT, :integer, default:500
    add_column :costs, :cost_group_id, :integer
  end

end
