class IzakayasController < ApplicationController
  before_action :set_izakaya, only: [:show, :edit, :update, :destroy]

  # GET /izakayas
  # GET /izakayas.json
  def index
    @izakayas = Izakaya.all
  end

  # GET /izakayas/1
  # GET /izakayas/1.json
  def show
  end

  # GET /izakayas/new
  def new
    @izakaya = Izakaya.new
  end

  # GET /izakayas/1/edit
  def edit
  end

  # POST /izakayas
  # POST /izakayas.json
  def create
    @izakaya = Izakaya.new(izakaya_params)

    respond_to do |format|
      if @izakaya.save
        format.html { redirect_to @izakaya, notice: 'Izakaya was successfully created.' }
        format.json { render :show, status: :created, location: @izakaya }
      else
        format.html { render :new }
        format.json { render json: @izakaya.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /izakayas/1
  # PATCH/PUT /izakayas/1.json
  def update
    respond_to do |format|
      if @izakaya.update(izakaya_params)
        format.html { redirect_to @izakaya, notice: 'Izakaya was successfully updated.' }
        format.json { render :show, status: :ok, location: @izakaya }
      else
        format.html { render :edit }
        format.json { render json: @izakaya.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /izakayas/1
  # DELETE /izakayas/1.json
  def destroy
    @izakaya.destroy
    respond_to do |format|
      format.html { redirect_to izakayas_url, notice: 'Izakaya was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_izakaya
      @izakaya = Izakaya.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def izakaya_params
      params.require(:izakaya).permit(:name, :tel, :address)
    end
end
