class MainsearchesController < ApplicationController
	before_action :set_mainsearch, only: [:show, :edit, :update, :destroy]

	def index
    	@visa_infos=VisaInfo.search(params[:search])
    	@mainsearch = Mainsearch.new
		# @nationalities = VisaInfo.uniq.pluck(:nationality_id)
		# @sources = VisaInfo.uniq.pluck(:source_id)
		# @destinations = VisaInfo.uniq.pluck(:destination_id)
  	end

	# def new
	# 	@mainsearch = Mainsearch.new
	# 	@nationalities = VisaInfo.uniq.pluck(:nationality_id)
	# 	@sources = VisaInfo.uniq.pluck(:source_id)
	# 	@destinations = VisaInfo.uniq.pluck(:destination_id)
	# end

	def create
		@mainsearch = Mainsearch.create(mainsearch_params)
		redirect_to mainsearch
	end

	def show
		@mainsearch = Mainsearch.find(params[:id])
	end

	private
	def search_params
		params.require(:mainsearch).permit(:nationality, :source, :destination, :visit_purpose)
	end

end
