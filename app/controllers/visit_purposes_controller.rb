class VisitPurposesController < ApplicationController
  before_action :set_visit_purpose, only: [:show, :edit, :update, :destroy]

  # GET /visit_purposes
  # GET /visit_purposes.json
  def index
    @visit_purposes = VisitPurpose.all
  end

  # GET /visit_purposes/1
  # GET /visit_purposes/1.json
  def show
  end

  # GET /visit_purposes/new
  def new
    @visit_purpose = VisitPurpose.new
  end

  # GET /visit_purposes/1/edit
  def edit
  end

  # POST /visit_purposes
  # POST /visit_purposes.json
  def create
    @visit_purpose = VisitPurpose.new(visit_purpose_params)

    respond_to do |format|
      if @visit_purpose.save
        format.html { redirect_to @visit_purpose, notice: 'Visit purpose was successfully created.' }
        format.json { render :show, status: :created, location: @visit_purpose }
      else
        format.html { render :new }
        format.json { render json: @visit_purpose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visit_purposes/1
  # PATCH/PUT /visit_purposes/1.json
  def update
    respond_to do |format|
      if @visit_purpose.update(visit_purpose_params)
        format.html { redirect_to @visit_purpose, notice: 'Visit purpose was successfully updated.' }
        format.json { render :show, status: :ok, location: @visit_purpose }
      else
        format.html { render :edit }
        format.json { render json: @visit_purpose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visit_purposes/1
  # DELETE /visit_purposes/1.json
  def destroy
    @visit_purpose.destroy
    respond_to do |format|
      format.html { redirect_to visit_purposes_url, notice: 'Visit purpose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit_purpose
      @visit_purpose = VisitPurpose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_purpose_params
      params.require(:visit_purpose).permit(:visit_name, :visit_info)
    end
end
