require "test_helper"

class CarriageCostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carriage_cost = carriage_costs(:one)
  end

  test "should get index" do
    get carriage_costs_url
    assert_response :success
  end

  test "should get new" do
    get new_carriage_cost_url
    assert_response :success
  end

  test "should create carriage_cost" do
    assert_difference("CarriageCost.count") do
      post carriage_costs_url, params: { carriage_cost: { carriage_for_paper: @carriage_cost.carriage_for_paper, carriage_rate_per_rim: @carriage_cost.carriage_rate_per_rim } }
    end

    assert_redirected_to carriage_cost_url(CarriageCost.last)
  end

  test "should show carriage_cost" do
    get carriage_cost_url(@carriage_cost)
    assert_response :success
  end

  test "should get edit" do
    get edit_carriage_cost_url(@carriage_cost)
    assert_response :success
  end

  test "should update carriage_cost" do
    patch carriage_cost_url(@carriage_cost), params: { carriage_cost: { carriage_for_paper: @carriage_cost.carriage_for_paper, carriage_rate_per_rim: @carriage_cost.carriage_rate_per_rim } }
    assert_redirected_to carriage_cost_url(@carriage_cost)
  end

  test "should destroy carriage_cost" do
    assert_difference("CarriageCost.count", -1) do
      delete carriage_cost_url(@carriage_cost)
    end

    assert_redirected_to carriage_costs_url
  end
end
