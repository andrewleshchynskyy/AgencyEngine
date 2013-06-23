class Project < ActiveRecord::Base
  attr_accessible :code, :description, :name, :url
end
