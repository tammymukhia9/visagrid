class VisaInfosController < ApplicationController
  before_action :set_visa_info, only: [:show, :edit, :update, :destroy]

  # GET /visa_infos
  # GET /visa_infos.json
  def index
    @visa_infos = VisaInfo.all
  end

  # GET /visa_infos/1
  # GET /visa_infos/1.json
  def show
  end

  # GET /visa_infos/new
  def new
    @visa_info = VisaInfo.new
  end

  # GET /visa_infos/1/edit
  def edit
  end

  # POST /visa_infos
  # POST /visa_infos.json
  def create
    @visa_info = VisaInfo.new(visa_info_params)

    respond_to do |format|
      if @visa_info.save
        format.html { redirect_to @visa_info, notice: 'Visa info was successfully created.' }
        format.json { render :show, status: :created, location: @visa_info }
      else
        format.html { render :new }
        format.json { render json: @visa_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visa_infos/1
  # PATCH/PUT /visa_infos/1.json
  def update
    respond_to do |format|
      if @visa_info.update(visa_info_params)
        format.html { redirect_to @visa_info, notice: 'Visa info was successfully updated.' }
        format.json { render :show, status: :ok, location: @visa_info }
      else
        format.html { render :edit }
        format.json { render json: @visa_info.errors, status: :unprocessable_entity }
      end
    end
  endc

  # DELETE /visa_infos/1
  # DELETE /visa_infos/1.json
  def destroy
    @visa_info.destroy
    respond_to do |format|
      format.html { redirect_to visa_infos_url, notice: 'Visa info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visa_info
      @visa_info = VisaInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visa_info_params
      params.require(:visa_info).permit(:visa_info, :links, :source_id, :destination_id, :nationality_id)
    end
end
