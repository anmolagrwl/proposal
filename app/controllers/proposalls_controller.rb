class ProposallsController < ApplicationController
  before_action :set_proposall, only: [:show, :edit, :update, :destroy]

  # GET /proposalls
  # GET /proposalls.json
  def index
    @proposalls = Proposall.all
  end

  # GET /proposalls/1
  # GET /proposalls/1.json
  def show
  end

  # GET /proposalls/new
  def new
    @proposall = Proposall.new
  end

  # GET /proposalls/1/edit
  def edit
  end

  # POST /proposalls
  # POST /proposalls.json
  def create
    @proposall = Proposall.new(proposall_params)

    respond_to do |format|
      if @proposall.save
        format.html { redirect_to @proposall, notice: 'Proposall was successfully created.' }
        format.json { render :show, status: :created, location: @proposall }
      else
        format.html { render :new }
        format.json { render json: @proposall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proposalls/1
  # PATCH/PUT /proposalls/1.json
  def update
    respond_to do |format|
      if @proposall.update(proposall_params)
        format.html { redirect_to @proposall, notice: 'Proposall was successfully updated.' }
        format.json { render :show, status: :ok, location: @proposall }
      else
        format.html { render :edit }
        format.json { render json: @proposall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposalls/1
  # DELETE /proposalls/1.json
  def destroy
    @proposall.destroy
    respond_to do |format|
      format.html { redirect_to proposalls_url, notice: 'Proposall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposall
      @proposall = Proposall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proposall_params
      params[:proposall]
    end
end
