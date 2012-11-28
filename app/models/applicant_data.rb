class ApplicantData < ActiveRecord::Base
  belongs_to :college_header
  belongs_to :applicant
  attr_accessible :value
end
