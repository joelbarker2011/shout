class ShoutOutsController < ApplicationController
  before_action :set_shout_out, only: [:show, :edit, :update, :destroy]

  # GET /shout_outs
  # GET /shout_outs.json
  def index
    @shout_outs = ShoutOut.all
  end

  # GET /shout_outs/1
  # GET /shout_outs/1.json
  def show
  end

  # GET /shout_outs/new
  def new
    @shout_out = ShoutOut.new
  end

  # GET /shout_outs/1/edit
  def edit
  end

  # POST /shout_outs
  # POST /shout_outs.json
  def create
    @shout_out = ShoutOut.new(shout_out_params)

    respond_to do |format|
      if @shout_out.save
        format.html { redirect_to @shout_out, notice: 'Shout out was successfully created.' }
        format.json { render :show, status: :created, location: @shout_out }
      else
        format.html { render :new }
        format.json { render json: @shout_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shout_outs/1
  # PATCH/PUT /shout_outs/1.json
  def update
    respond_to do |format|
      if @shout_out.update(shout_out_params)
        format.html { redirect_to @shout_out, notice: 'Shout out was successfully updated.' }
        format.json { render :show, status: :ok, location: @shout_out }
      else
        format.html { render :edit }
        format.json { render json: @shout_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shout_outs/1
  # DELETE /shout_outs/1.json
  def destroy
    @shout_out.destroy
    respond_to do |format|
      format.html { redirect_to shout_outs_url, notice: 'Shout out was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shout_out
      @shout_out = ShoutOut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shout_out_params
      params.require(:shout_out).permit(:comment, :confirmed)
    end
end
