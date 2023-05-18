require "application_system_test_case"

class PaperCostsTest < ApplicationSystemTestCase
  setup do
    @paper_cost = paper_costs(:one)
  end

  test "visiting the index" do
    visit paper_costs_url
    assert_selector "h1", text: "Paper costs"
  end

  test "should create paper cost" do
    visit paper_costs_url
    click_on "New paper cost"

    fill_in "Additional rims for rounding", with: @paper_cost.additional_rims_for_rounding
    fill_in "Divide for purchase size", with: @paper_cost.divide_for_purchase_size
    fill_in "Formula", with: @paper_cost.formula
    fill_in "Paper for text cost", with: @paper_cost.paper_for_text_cost
    fill_in "Paper multiply lxw", with: @paper_cost.paper_multiply_LxW
    fill_in "Paper rate per kg", with: @paper_cost.paper_rate_per_kg
    fill_in "Paper size length", with: @paper_cost.paper_size_length
    fill_in "Paper size width", with: @paper_cost.paper_size_width
    fill_in "Paper weight per kg", with: @paper_cost.paper_weight_per_kg
    fill_in "Rate per rims", with: @paper_cost.rate_per_rims
    fill_in "Rims for waste", with: @paper_cost.rims_for_waste
    fill_in "Rims required", with: @paper_cost.rims_required
    fill_in "Rims w w", with: @paper_cost.rims_w_w
    fill_in "Total rims for purchase", with: @paper_cost.total_rims_for_purchase
    fill_in "Total rims print size", with: @paper_cost.total_rims_print_size
    fill_in "Waste print plate", with: @paper_cost.waste_print_plate
    click_on "Create Paper cost"

    assert_text "Paper cost was successfully created"
    click_on "Back"
  end

  test "should update Paper cost" do
    visit paper_cost_url(@paper_cost)
    click_on "Edit this paper cost", match: :first

    fill_in "Additional rims for rounding", with: @paper_cost.additional_rims_for_rounding
    fill_in "Divide for purchase size", with: @paper_cost.divide_for_purchase_size
    fill_in "Formula", with: @paper_cost.formula
    fill_in "Paper for text cost", with: @paper_cost.paper_for_text_cost
    fill_in "Paper multiply lxw", with: @paper_cost.paper_multiply_LxW
    fill_in "Paper rate per kg", with: @paper_cost.paper_rate_per_kg
    fill_in "Paper size length", with: @paper_cost.paper_size_length
    fill_in "Paper size width", with: @paper_cost.paper_size_width
    fill_in "Paper weight per kg", with: @paper_cost.paper_weight_per_kg
    fill_in "Rate per rims", with: @paper_cost.rate_per_rims
    fill_in "Rims for waste", with: @paper_cost.rims_for_waste
    fill_in "Rims required", with: @paper_cost.rims_required
    fill_in "Rims w w", with: @paper_cost.rims_w_w
    fill_in "Total rims for purchase", with: @paper_cost.total_rims_for_purchase
    fill_in "Total rims print size", with: @paper_cost.total_rims_print_size
    fill_in "Waste print plate", with: @paper_cost.waste_print_plate
    click_on "Update Paper cost"

    assert_text "Paper cost was successfully updated"
    click_on "Back"
  end

  test "should destroy Paper cost" do
    visit paper_cost_url(@paper_cost)
    click_on "Destroy this paper cost", match: :first

    assert_text "Paper cost was successfully destroyed"
  end
end
