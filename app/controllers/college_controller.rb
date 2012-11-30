class CollegeController < ApplicationController
  def show
    @colleges = College.all
    respond_to do |format|
          format.html { render 'college/show' }
      end
    #@colleges = []
    #if !params[:name].nil?
    #  @colleges = Kaminari.paginate_array(College.find_all_by_poolName(params[:name])).page(params[:page]).per(100)
    #else
    #  colleges = College.all
    #  colleges.each do |college|
    #    if(college.poolName.nil?)
    #      @colleges << college
    #    end
    #  end
    #  @colleges = Kaminari.paginate_array(@colleges).page(params[:page]).per(100)
    #  respond_to do |format|
    #    format.html { render 'college/show' }
    #    format.json { render json: @colleges }
    #  end
    #end
  end
end
