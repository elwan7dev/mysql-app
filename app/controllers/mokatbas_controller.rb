class MokatbasController < ApplicationController
  before_action :set_mokatba, only: [:show, :edit, :update, :destroy]

  # GET /mokatbas
  # GET /mokatbas.json
  def index
    @mokatbas = Mokatba.all
  end

  # GET /mokatbas/1
  # GET /mokatbas/1.json
  def show
  end

  # GET /mokatbas/new
  def new
    @mokatba = Mokatba.new
  end

  # GET /mokatbas/1/edit
  def edit
  end

  # POST /mokatbas
  # POST /mokatbas.json
  def create
    @mokatba = Mokatba.new(mokatba_params)

    respond_to do |format|
      if @mokatba.save
        format.html { redirect_to @mokatba, notice: 'Mokatba was successfully created.' }
        format.json { render :show, status: :created, location: @mokatba }
      else
        format.html { render :new }
        format.json { render json: @mokatba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mokatbas/1
  # PATCH/PUT /mokatbas/1.json
  def update
    respond_to do |format|
      if @mokatba.update(mokatba_params)
        format.html { redirect_to @mokatba, notice: 'Mokatba was successfully updated.' }
        format.json { render :show, status: :ok, location: @mokatba }
      else
        format.html { render :edit }
        format.json { render json: @mokatba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mokatbas/1
  # DELETE /mokatbas/1.json
  def destroy
    @mokatba.destroy
    respond_to do |format|
      format.html { redirect_to mokatbas_url, notice: 'Mokatba was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mokatba
      @mokatba = Mokatba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mokatba_params
      params.require(:mokatba).permit(:title, :description, :attachedFile)
    end
end
