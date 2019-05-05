class AbeyancesController < ApplicationController
  before_action :set_abeyance, only: [:show, :edit, :update, :destroy]

  # GET /abeyances
  # GET /abeyances.json
  def index
    @abeyances = Abeyance.all
  end

  # GET /abeyances/1
  # GET /abeyances/1.json
  def show
  end

  # GET /abeyances/new
  def new
    @abeyance = Abeyance.new
  end

  # GET /abeyances/1/edit
  def edit
  end

  # POST /abeyances
  # POST /abeyances.json
  def create
    @abeyance = Abeyance.new(abeyance_params)

    respond_to do |format|
      if @abeyance.save
        format.html { redirect_to @abeyance, notice: 'Abeyance was successfully created.' }
        format.json { render :show, status: :created, location: @abeyance }
      else
        format.html { render :new }
        format.json { render json: @abeyance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abeyances/1
  # PATCH/PUT /abeyances/1.json
  def update
    respond_to do |format|
      if @abeyance.update(abeyance_params)
        format.html { redirect_to @abeyance, notice: 'Abeyance was successfully updated.' }
        format.json { render :show, status: :ok, location: @abeyance }
      else
        format.html { render :edit }
        format.json { render json: @abeyance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abeyances/1
  # DELETE /abeyances/1.json
  def destroy
    @abeyance.destroy
    respond_to do |format|
      format.html { redirect_to abeyances_url, notice: 'Abeyance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abeyance
      @abeyance = Abeyance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abeyance_params
      params.require(:abeyance).permit(:start_time, :end_time, :title, :reminder)
    end
end
