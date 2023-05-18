class PaperCostsController < ApplicationController
  before_action :set_paper_cost, only: %i[ show edit update destroy ]

  # GET /paper_costs or /paper_costs.json
  def index
    @paper_costs = PaperCost.all
  end

  # GET /paper_costs/1 or /paper_costs/1.json
  def show
  end

  # GET /paper_costs/new
  def new
    @paper_cost = PaperCost.new
  end

  # GET /paper_costs/1/edit
  def edit
  end

  # POST /paper_costs or /paper_costs.json
  def create
    @paper_cost = PaperCost.new(paper_cost_params)

    respond_to do |format|
      if @paper_cost.save
        format.html { redirect_to paper_cost_url(@paper_cost), notice: "Paper cost was successfully created." }
        format.json { render :show, status: :created, location: @paper_cost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paper_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paper_costs/1 or /paper_costs/1.json
  def update
    respond_to do |format|
      if @paper_cost.update(paper_cost_params)
        format.html { redirect_to paper_cost_url(@paper_cost), notice: "Paper cost was successfully updated." }
        format.json { render :show, status: :ok, location: @paper_cost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paper_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paper_costs/1 or /paper_costs/1.json
  def destroy
    @paper_cost.destroy

    respond_to do |format|
      format.html { redirect_to paper_costs_url, notice: "Paper cost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paper_cost
      @paper_cost = PaperCost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paper_cost_params
      params.require(:paper_cost).permit(:rims_w_w, :waste_print_plate, :rims_for_waste, :rims_required, :additional_rims_for_rounding, :total_rims_print_size, :divide_for_purchase_size, :total_rims_for_purchase, :paper_size_length, :paper_size_width, :paper_multiply_LxW, :paper_weight_per_kg, :formula, :paper_rate_per_kg, :rate_per_rims, :paper_for_text_cost)
    end
end
