class RoundApplicantData < ActiveRecord::Base
  belongs_to :applicants
  belongs_to :round
  attr_accessible :comment, :interviewee, :status
end
