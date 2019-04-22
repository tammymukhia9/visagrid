class PagesController < ApplicationController
  def index
  	@user=User.new
    @blogs=Blog.first(2)
  	@member=Member.new
    @usVisaInterview = Blog.last(1)
  end

  def mainsearch
    @visa_infos=VisaInfo.where("nationality_id = ? AND source_id = ? AND destination_id = ? AND visit_purpose_id = ?","#{params[:nationality_id]}","#{params[:source_id]}","#{params[:destination_id]}","#{params[:visit_purpose_id]}")
    # @comments = Comment.where("visa_info_id = ?", @visa_infos.first.id)
    # for @comments.each do |Comment|
    #   @member = 
    @visa_info_id = ""
    @visa_infos.each do |visa_info|
     @visa_info_id = visa_info.id
    end
    
  end

  def addComment
    @comment=Comment.new
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
