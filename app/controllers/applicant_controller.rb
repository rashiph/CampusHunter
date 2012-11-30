#require 'csv'
class ApplicantController < ApplicationController

  #before_filter :require_login
  include ApplicantHelper
  def home
  end

  def upload

  end

  def create
  if(College.find_by_name(params[:college_name]).nil?)
  college = College.new(:name => params[:college_name])
  college.save
  upload_csv params[:file_name],college
  college.update_attribute(:number_of_applicants, Applicant.where(:college_id => college.id).count)
    render "home"
  else
    @message = "College name has already been taken"
    render "upload"
    end
  end

end
