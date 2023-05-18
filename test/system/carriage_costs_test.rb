require "application_system_test_case"

class CarriageCostsTest < ApplicationSystemTestCase
  setup do
    @carriage_cost = carriage_costs(:one)
  end

  test "visiting the index" do
    visit carriage_costs_url
    assert_selector "h1", text: "Carriage costs"
  end

  test "should create carriage cost" do
    visit carriage_costs_url
    click_on "New carriage cost"

    fill_in "Carriage for paper", with: @carriage_cost.carriage_for_paper
    fill_in "Carriage rate per rim", with: @carriage_cost.carriage_rate_per_rim
    click_on "Create Carriage cost"

    assert_text "Carriage cost was successfully created"
    click_on "Back"
  end

  test "should update Carriage cost" do
    visit carriage_cost_url(@carriage_cost)
    click_on "Edit this carriage cost", match: :first

    fill_in "Carriage for paper", with: @carriage_cost.carriage_for_paper
    fill_in "Carriage rate per rim", with: @carriage_cost.carriage_rate_per_rim
    click_on "Update Carriage cost"

    assert_text "Carriage cost was successfully updated"
    click_on "Back"
  end

  test "should destroy Carriage cost" do
    visit carriage_cost_url(@carriage_cost)
    click_on "Destroy this carriage cost", match: :first

    assert_text "Carriage cost was successfully destroyed"
  end
end
