require "test_helper"

class PaperCostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paper_cost = paper_costs(:one)
  end

  test "should get index" do
    get paper_costs_url
    assert_response :success
  end

  test "should get new" do
    get new_paper_cost_url
    assert_response :success
  end

  test "should create paper_cost" do
    assert_difference("PaperCost.count") do
      post paper_costs_url, params: { paper_cost: { additional_rims_for_rounding: @paper_cost.additional_rims_for_rounding, divide_for_purchase_size: @paper_cost.divide_for_purchase_size, formula: @paper_cost.formula, paper_for_text_cost: @paper_cost.paper_for_text_cost, paper_multiply_LxW: @paper_cost.paper_multiply_LxW, paper_rate_per_kg: @paper_cost.paper_rate_per_kg, paper_size_length: @paper_cost.paper_size_length, paper_size_width: @paper_cost.paper_size_width, paper_weight_per_kg: @paper_cost.paper_weight_per_kg, rate_per_rims: @paper_cost.rate_per_rims, rims_for_waste: @paper_cost.rims_for_waste, rims_required: @paper_cost.rims_required, rims_w_w: @paper_cost.rims_w_w, total_rims_for_purchase: @paper_cost.total_rims_for_purchase, total_rims_print_size: @paper_cost.total_rims_print_size, waste_print_plate: @paper_cost.waste_print_plate } }
    end

    assert_redirected_to paper_cost_url(PaperCost.last)
  end

  test "should show paper_cost" do
    get paper_cost_url(@paper_cost)
    assert_response :success
  end

  test "should get edit" do
    get edit_paper_cost_url(@paper_cost)
    assert_response :success
  end

  test "should update paper_cost" do
    patch paper_cost_url(@paper_cost), params: { paper_cost: { additional_rims_for_rounding: @paper_cost.additional_rims_for_rounding, divide_for_purchase_size: @paper_cost.divide_for_purchase_size, formula: @paper_cost.formula, paper_for_text_cost: @paper_cost.paper_for_text_cost, paper_multiply_LxW: @paper_cost.paper_multiply_LxW, paper_rate_per_kg: @paper_cost.paper_rate_per_kg, paper_size_length: @paper_cost.paper_size_length, paper_size_width: @paper_cost.paper_size_width, paper_weight_per_kg: @paper_cost.paper_weight_per_kg, rate_per_rims: @paper_cost.rate_per_rims, rims_for_waste: @paper_cost.rims_for_waste, rims_required: @paper_cost.rims_required, rims_w_w: @paper_cost.rims_w_w, total_rims_for_purchase: @paper_cost.total_rims_for_purchase, total_rims_print_size: @paper_cost.total_rims_print_size, waste_print_plate: @paper_cost.waste_print_plate } }
    assert_redirected_to paper_cost_url(@paper_cost)
  end

  test "should destroy paper_cost" do
    assert_difference("PaperCost.count", -1) do
      delete paper_cost_url(@paper_cost)
    end

    assert_redirected_to paper_costs_url
  end
end
