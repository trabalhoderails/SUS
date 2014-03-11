class EnfermeirosController < ApplicationController
  before_action :set_enfermeiro, only: [:show, :edit, :update, :destroy]

  # GET /enfermeiros
  # GET /enfermeiros.json
  def index
    @enfermeiros = Enfermeiro.all
  end

  # GET /enfermeiros/1
  # GET /enfermeiros/1.json
  def show
  end

  # GET /enfermeiros/new
  def new
    @enfermeiro = Enfermeiro.new
  end

  # GET /enfermeiros/1/edit
  def edit
  end

  # POST /enfermeiros
  # POST /enfermeiros.json
  def create
    @enfermeiro = Enfermeiro.new(enfermeiro_params)

    respond_to do |format|
      if @enfermeiro.save
        format.html { redirect_to @enfermeiro, notice: 'Enfermeiro was successfully created.' }
        format.json { render action: 'show', status: :created, location: @enfermeiro }
      else
        format.html { render action: 'new' }
        format.json { render json: @enfermeiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enfermeiros/1
  # PATCH/PUT /enfermeiros/1.json
  def update
    respond_to do |format|
      if @enfermeiro.update(enfermeiro_params)
        format.html { redirect_to @enfermeiro, notice: 'Enfermeiro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @enfermeiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enfermeiros/1
  # DELETE /enfermeiros/1.json
  def destroy
    @enfermeiro.destroy
    respond_to do |format|
      format.html { redirect_to enfermeiros_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enfermeiro
      @enfermeiro = Enfermeiro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enfermeiro_params
      params.require(:enfermeiro).permit(:nome, :matricula, :cargo)
    end
end
