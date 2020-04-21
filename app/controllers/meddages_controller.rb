class MeddagesController < ApplicationController
  before_action :set_meddage, only: [:show, :edit, :update, :destroy]

  # GET /meddages
  # GET /meddages.json
  def index
    @meddages = Meddage.all
  end

  # GET /meddages/1
  # GET /meddages/1.json
  def show
  end

  # GET /meddages/new
  def new
    @meddage = Meddage.new
  end

  # GET /meddages/1/edit
  def edit
  end

  # POST /meddages
  # POST /meddages.json
  def create
    @meddage = Meddage.new(meddage_params)

    respond_to do |format|
      if @meddage.save
        format.html { redirect_to @meddage, notice: 'Meddage was successfully created.' }
        format.json { render :show, status: :created, location: @meddage }
      else
        format.html { render :new }
        format.json { render json: @meddage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meddages/1
  # PATCH/PUT /meddages/1.json
  def update
    respond_to do |format|
      if @meddage.update(meddage_params)
        format.html { redirect_to @meddage, notice: 'Meddage was successfully updated.' }
        format.json { render :show, status: :ok, location: @meddage }
      else
        format.html { render :edit }
        format.json { render json: @meddage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meddages/1
  # DELETE /meddages/1.json
  def destroy
    @meddage.destroy
    respond_to do |format|
      format.html { redirect_to meddages_url, notice: 'Meddage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meddage
      @meddage = Meddage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meddage_params
      params.require(:meddage).permit(:title, :message, :name, :money)
    end
end
