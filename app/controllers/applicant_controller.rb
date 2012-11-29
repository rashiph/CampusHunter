require 'csv'
class ApplicantController < ApplicationController

  before_filter :require_login

  def home
  end

end
