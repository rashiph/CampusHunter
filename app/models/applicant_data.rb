class ApplicantData < ActiveRecord::Base
  attr_accessible :college_header_id, :applicant_id, :value
  belongs_to :college_header
  belongs_to :applicant
end
