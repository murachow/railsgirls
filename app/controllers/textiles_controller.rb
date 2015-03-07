class TextilesController < ApplicationController
  before_action :set_textile, only: [:show, :edit, :update, :destroy]

  # GET /textiles
  # GET /textiles.json
  def index
    @textiles = Textile.all
  end

  # GET /textiles/1
  # GET /textiles/1.json
  def show
  end

  # GET /textiles/new
  def new
    @textile = Textile.new
  end

  # GET /textiles/1/edit
  def edit
  end

  # POST /textiles
  # POST /textiles.json
  def create
    @textile = Textile.new(textile_params)

    respond_to do |format|
      if @textile.save
        format.html { redirect_to @textile, notice: 'Textile was successfully created.' }
        format.json { render :show, status: :created, location: @textile }
      else
        format.html { render :new }
        format.json { render json: @textile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /textiles/1
  # PATCH/PUT /textiles/1.json
  def update
    respond_to do |format|
      if @textile.update(textile_params)
        format.html { redirect_to @textile, notice: 'Textile was successfully updated.' }
        format.json { render :show, status: :ok, location: @textile }
      else
        format.html { render :edit }
        format.json { render json: @textile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /textiles/1
  # DELETE /textiles/1.json
  def destroy
    @textile.destroy
    respond_to do |format|
      format.html { redirect_to textiles_url, notice: 'Textile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_textile
      @textile = Textile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def textile_params
      params.require(:textile).permit(:size, :material, :picture, :name)
    end
end
