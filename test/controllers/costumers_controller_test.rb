require 'test_helper'

class CostumersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @costumer = costumers(:one)
  end

  test "should get index" do
    get costumers_url
    assert_response :success
  end

  test "should get new" do
    get new_costumer_url
    assert_response :success
  end

  test "should create costumer" do
    assert_difference('Costumer.count') do
      post costumers_url, params: { costumer: { customer_id: @costumer.customer_id, last: @costumer.last, name: @costumer.name } }
    end

    assert_redirected_to costumer_url(Costumer.last)
  end

  test "should show costumer" do
    get costumer_url(@costumer)
    assert_response :success
  end

  test "should get edit" do
    get edit_costumer_url(@costumer)
    assert_response :success
  end

  test "should update costumer" do
    patch costumer_url(@costumer), params: { costumer: { customer_id: @costumer.customer_id, last: @costumer.last, name: @costumer.name } }
    assert_redirected_to costumer_url(@costumer)
  end

  test "should destroy costumer" do
    assert_difference('Costumer.count', -1) do
      delete costumer_url(@costumer)
    end

    assert_redirected_to costumers_url
  end
end
