class CollegeHeader < ActiveRecord::Base
  attr_accessible :college_id, :created_by, :header_id, :updated_by
  has_many :college, :foreign_key => "college_id"
  has_many :header, :foreign_key => "header_id"

end
