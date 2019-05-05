class UnderwritersController < ApplicationController
  before_action :set_underwriter, only: [:show, :edit, :update, :destroy]

  # GET /underwriters
  # GET /underwriters.json
  def index
    @underwriters = Underwriter.all
  end

  # GET /underwriters/1
  # GET /underwriters/1.json
  def show
  end

  # GET /underwriters/new
  def new
    @underwriter = Underwriter.new
  end

  # GET /underwriters/1/edit
  def edit
  end

  # POST /underwriters
  # POST /underwriters.json
  def create
    @underwriter = Underwriter.new(underwriter_params)

    respond_to do |format|
      if @underwriter.save
        format.html { redirect_to @underwriter, notice: 'Underwriter was successfully created.' }
        format.json { render :show, status: :created, location: @underwriter }
      else
        format.html { render :new }
        format.json { render json: @underwriter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /underwriters/1
  # PATCH/PUT /underwriters/1.json
  def update
    respond_to do |format|
      if @underwriter.update(underwriter_params)
        format.html { redirect_to @underwriter, notice: 'Underwriter was successfully updated.' }
        format.json { render :show, status: :ok, location: @underwriter }
      else
        format.html { render :edit }
        format.json { render json: @underwriter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /underwriters/1
  # DELETE /underwriters/1.json
  def destroy
    @underwriter.destroy
    respond_to do |format|
      format.html { redirect_to underwriters_url, notice: 'Underwriter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_underwriter
      @underwriter = Underwriter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def underwriter_params
      params.require(:underwriter).permit(:name, :email, :phone, :company_id)
    end
end
