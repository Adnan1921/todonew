class UradjenosController < ApplicationController
  before_action :set_uradjeno, only: [:show, :edit, :update, :destroy]

  # GET /uradjenos
  # GET /uradjenos.json
  def index
    @uradjenos = Uradjeno.all
  end

  # GET /uradjenos/1
  # GET /uradjenos/1.json
  def show
  end

  # GET /uradjenos/new
  def new
    @uradjeno = Uradjeno.new
  end

  # GET /uradjenos/1/edit
  def edit
  end

  # POST /uradjenos
  # POST /uradjenos.json
  def create
    @uradjeno = Uradjeno.new(uradjeno_params)

    respond_to do |format|
      if @uradjeno.save
        format.html { redirect_to @uradjeno, notice: 'Uradjeno was successfully created.' }
        format.json { render :show, status: :created, location: @uradjeno }
      else
        format.html { render :new }
        format.json { render json: @uradjeno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uradjenos/1
  # PATCH/PUT /uradjenos/1.json
  def update
    respond_to do |format|
      if @uradjeno.update(uradjeno_params)
        format.html { redirect_to @uradjeno, notice: 'Uradjeno was successfully updated.' }
        format.json { render :show, status: :ok, location: @uradjeno }
      else
        format.html { render :edit }
        format.json { render json: @uradjeno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uradjenos/1
  # DELETE /uradjenos/1.json
  def destroy
    @uradjeno.destroy
    respond_to do |format|
      format.html { redirect_to uradjenos_url, notice: 'Uradjeno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uradjeno
      @uradjeno = Uradjeno.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def uradjeno_params
      params.fetch(:uradjeno, {})
    end
end
