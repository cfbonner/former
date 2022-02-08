require "test_helper"

class Inputs::BooleanInputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inputs_boolean_input = inputs_boolean_inputs(:one)
  end

  test "should get index" do
    get inputs_boolean_inputs_url
    assert_response :success
  end

  test "should get new" do
    get new_inputs_boolean_input_url
    assert_response :success
  end

  test "should create inputs_boolean_input" do
    assert_difference("Inputs::BooleanInput.count") do
      post inputs_boolean_inputs_url, params: { inputs_boolean_input: { label: @inputs_boolean_input.label, name: @inputs_boolean_input.name, type: @inputs_boolean_input.type } }
    end

    assert_redirected_to inputs_boolean_input_url(Inputs::BooleanInput.last)
  end

  test "should show inputs_boolean_input" do
    get inputs_boolean_input_url(@inputs_boolean_input)
    assert_response :success
  end

  test "should get edit" do
    get edit_inputs_boolean_input_url(@inputs_boolean_input)
    assert_response :success
  end

  test "should update inputs_boolean_input" do
    patch inputs_boolean_input_url(@inputs_boolean_input), params: { inputs_boolean_input: { label: @inputs_boolean_input.label, name: @inputs_boolean_input.name, type: @inputs_boolean_input.type } }
    assert_redirected_to inputs_boolean_input_url(@inputs_boolean_input)
  end

  test "should destroy inputs_boolean_input" do
    assert_difference("Inputs::BooleanInput.count", -1) do
      delete inputs_boolean_input_url(@inputs_boolean_input)
    end

    assert_redirected_to inputs_boolean_inputs_url
  end
end
