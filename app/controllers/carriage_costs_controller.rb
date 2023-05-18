class CarriageCostsController < ApplicationController
  before_action :set_carriage_cost, only: %i[ show edit update destroy ]

  # GET /carriage_costs or /carriage_costs.json
  def index
    @carriage_costs = CarriageCost.all
  end

  # GET /carriage_costs/1 or /carriage_costs/1.json
  def show
  end

  # GET /carriage_costs/new
  def new
    @carriage_cost = CarriageCost.new
  end

  # GET /carriage_costs/1/edit
  def edit
  end

  # POST /carriage_costs or /carriage_costs.json
  def create
    @carriage_cost = CarriageCost.new(carriage_cost_params)

    respond_to do |format|
      if @carriage_cost.save
        format.html { redirect_to carriage_cost_url(@carriage_cost), notice: "Carriage cost was successfully created." }
        format.json { render :show, status: :created, location: @carriage_cost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @carriage_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carriage_costs/1 or /carriage_costs/1.json
  def update
    respond_to do |format|
      if @carriage_cost.update(carriage_cost_params)
        format.html { redirect_to carriage_cost_url(@carriage_cost), notice: "Carriage cost was successfully updated." }
        format.json { render :show, status: :ok, location: @carriage_cost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @carriage_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carriage_costs/1 or /carriage_costs/1.json
  def destroy
    @carriage_cost.destroy

    respond_to do |format|
      format.html { redirect_to carriage_costs_url, notice: "Carriage cost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carriage_cost
      @carriage_cost = CarriageCost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carriage_cost_params
      params.require(:carriage_cost).permit(:carriage_rate_per_rim, :carriage_for_paper)
    end
end
