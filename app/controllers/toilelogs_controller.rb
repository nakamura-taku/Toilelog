class ToilelogsController < ApplicationController
  before_action :set_toilelog, only: [:show, :edit, :update, :destroy]

  # GET /toilelogs
  # GET /toilelogs.json
  def index
    @toilelogs = Toilelog.all
  end

  # GET /toilelogs/1
  # GET /toilelogs/1.json
  def show
  end

  # GET /toilelogs/new
  def new
    @toilelog = Toilelog.new
  end

  # GET /toilelogs/1/edit
  def edit
  end

  # POST /toilelogs
  # POST /toilelogs.json
  def create
    @toilelog = Toilelog.new(toilelog_params)

    respond_to do |format|
      if @toilelog.save
        format.html { redirect_to @toilelog, notice: 'Toilelog was successfully created.' }
        format.json { render :show, status: :created, location: @toilelog }
      else
        format.html { render :new }
        format.json { render json: @toilelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toilelogs/1
  # PATCH/PUT /toilelogs/1.json
  def update
    respond_to do |format|
      if @toilelog.update(toilelog_params)
        format.html { redirect_to @toilelog, notice: 'Toilelog was successfully updated.' }
        format.json { render :show, status: :ok, location: @toilelog }
      else
        format.html { render :edit }
        format.json { render json: @toilelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toilelogs/1
  # DELETE /toilelogs/1.json
  def destroy
    @toilelog.destroy
    respond_to do |format|
      format.html { redirect_to toilelogs_url, notice: 'Toilelog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toilelog
      @toilelog = Toilelog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toilelog_params
      params.require(:toilelog).permit(:title, :kuchikomi)
    end
end
