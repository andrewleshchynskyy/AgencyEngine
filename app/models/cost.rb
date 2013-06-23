class Cost < ActiveRecord::Base
  attr_accessible :active, :name, :SORT, :cost_group_id
  belongs_to  :cost_group
end
