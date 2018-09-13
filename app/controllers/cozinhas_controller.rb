class CozinhasController < ApplicationController
  before_action :set_cozinha, only: [:show, :edit, :update, :destroy]

  # GET /cozinhas
  # GET /cozinhas.json
  def index
    @cozinhas = Cozinha.all
  end

  # GET /cozinhas/1
  # GET /cozinhas/1.json
  def show
  end

  # GET /cozinhas/new
  def new
    @cozinha = Cozinha.new
  end

  # GET /cozinhas/1/edit
  def edit
  end

  # POST /cozinhas
  # POST /cozinhas.json
  def create
    @cozinha = Cozinha.new(cozinha_params)

    respond_to do |format|
      if @cozinha.save
        format.html { redirect_to @cozinha, notice: 'Cozinha was successfully created.' }
        format.json { render :show, status: :created, location: @cozinha }
      else
        format.html { render :new }
        format.json { render json: @cozinha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cozinhas/1
  # PATCH/PUT /cozinhas/1.json
  def update
    respond_to do |format|
      if @cozinha.update(cozinha_params)
        format.html { redirect_to @cozinha, notice: 'Cozinha editada com sucesso!', :class => "alert alert-success" }
        format.json { render :show, status: :ok, location: @cozinha }
      else
        format.html { render :edit }
        format.json { render json: @cozinha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cozinhas/1
  # DELETE /cozinhas/1.json
  def destroy
    @cozinha.destroy
    respond_to do |format|
      format.html { redirect_to cozinhas_url, notice: 'Cozinha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cozinha
      @cozinha = Cozinha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cozinha_params
      params.require(:cozinha).permit(:nome, :endereco, :telefone)
    end
end
