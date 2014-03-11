class InternacaosController < ApplicationController
  before_action :set_internacao, only: [:show, :edit, :update, :destroy]

  # GET /internacaos
  # GET /internacaos.json
  def index
    @internacaos = Internacao.all
  end

  # GET /internacaos/1
  # GET /internacaos/1.json
  def show
  end

  # GET /internacaos/new
  def new
    @internacao = Internacao.new
  end

  # GET /internacaos/1/edit
  def edit
  end

  # POST /internacaos
  # POST /internacaos.json
  def create
    @internacao = Internacao.new(internacao_params)

    respond_to do |format|
      if @internacao.save
        format.html { redirect_to @internacao, notice: 'Internacao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @internacao }
      else
        format.html { render action: 'new' }
        format.json { render json: @internacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internacaos/1
  # PATCH/PUT /internacaos/1.json
  def update
    respond_to do |format|
      if @internacao.update(internacao_params)
        format.html { redirect_to @internacao, notice: 'Internacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @internacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internacaos/1
  # DELETE /internacaos/1.json
  def destroy
    @internacao.destroy
    respond_to do |format|
      format.html { redirect_to internacaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internacao
      @internacao = Internacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def internacao_params
      params.require(:internacao).permit(:paciente, :medico, :enfermeiro, :entrada, :saida)
    end
end
