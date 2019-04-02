class PagesController < ApplicationController
  def index
  	@user=User.new
  	@member=Member.new
  end

  def mainsearch
    @visa_infos=VisaInfo.search(params[:source_id])
  end

  def about
  end

  def general
  end

  def contact
  end
end
