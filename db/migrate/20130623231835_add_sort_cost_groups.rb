class AddSortCostGroups < ActiveRecord::Migration
  def change
    add_column :cost_groups, :SORT, :integer, default:500
  end

end


