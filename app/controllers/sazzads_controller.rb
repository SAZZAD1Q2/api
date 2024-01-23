class SazzadsController < ApplicationController
  before_action :set_sazzad, only: %i[ show edit update destroy ]

  # GET /sazzads or /sazzads.json
  def index
    @sazzads = Sazzad.all
  end

  # GET /sazzads/1 or /sazzads/1.json
  def show
  end

  # GET /sazzads/new
  def new
    @sazzad = Sazzad.new
  end

  # GET /sazzads/1/edit
  def edit
  end

  # POST /sazzads or /sazzads.json
  def create
    @sazzad = Sazzad.new(sazzad_params)

    respond_to do |format|
      if @sazzad.save
        format.html { redirect_to sazzad_url(@sazzad), notice: "Sazzad was successfully created." }
        format.json { render :show, status: :created, location: @sazzad }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sazzad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sazzads/1 or /sazzads/1.json
  def update
    respond_to do |format|
      if @sazzad.update(sazzad_params)
        format.html { redirect_to sazzad_url(@sazzad), notice: "Sazzad was successfully updated." }
        format.json { render :show, status: :ok, location: @sazzad }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sazzad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sazzads/1 or /sazzads/1.json
  def destroy
    @sazzad.destroy!

    respond_to do |format|
      format.html { redirect_to sazzads_url, notice: "Sazzad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sazzad
      @sazzad = Sazzad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sazzad_params
      params.require(:sazzad).permit(:name, :age, :bio)
    end
end
