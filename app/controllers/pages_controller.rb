class PagesController < ApplicationController
  def index
  	@user=User.new
    @blogs=Blog.last(2)
  	@member=Member.new
    @usVisaInterview = Blog.last(1)
  end

  def mainsearch
    @visa_infos=VisaInfo.where("nationality_id = ? AND source_id = ? AND destination_id = ?","#{params[:nationality_id]}","#{params[:source_id]}","#{params[:destination_id]}")
  end
  
  def test
    @blogs=Blog.all
  end
 

  def visaguide
  end

  def general
  end

  def contact
  end
end
