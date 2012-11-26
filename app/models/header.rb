class Header < ActiveRecord::Base
  attr_accessible :created_by, :name, :updated_by
end
