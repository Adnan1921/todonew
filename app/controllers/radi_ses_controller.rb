class RadiSesController < ApplicationController
  before_action :set_radi_se, only: [:show, :edit, :update, :destroy]

  # GET /radi_ses
  # GET /radi_ses.json
  def index
    @radi_ses = RadiSe.all
  end

  # GET /radi_ses/1
  # GET /radi_ses/1.json
  def show
  end

  # GET /radi_ses/new
  def new
    @radi_se = RadiSe.new
  end

  # GET /radi_ses/1/edit
  def edit
  end

  # POST /radi_ses
  # POST /radi_ses.json
  def create
    @radi_se = RadiSe.new(radi_se_params)

    respond_to do |format|
      if @radi_se.save
        format.html { redirect_to @radi_se, notice: 'Radi se was successfully created.' }
        format.json { render :show, status: :created, location: @radi_se }
      else
        format.html { render :new }
        format.json { render json: @radi_se.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /radi_ses/1
  # PATCH/PUT /radi_ses/1.json
  def update
    respond_to do |format|
      if @radi_se.update(radi_se_params)
        format.html { redirect_to @radi_se, notice: 'Radi se was successfully updated.' }
        format.json { render :show, status: :ok, location: @radi_se }
      else
        format.html { render :edit }
        format.json { render json: @radi_se.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radi_ses/1
  # DELETE /radi_ses/1.json
  def destroy
    @radi_se.destroy
    respond_to do |format|
      format.html { redirect_to radi_ses_url, notice: 'Radi se was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_radi_se
      @radi_se = RadiSe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def radi_se_params
      params.fetch(:radi_se, {})
    end
end
