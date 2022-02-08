require "test_helper"

class Inputs::TextInputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inputs_text_input = inputs_text_inputs(:one)
  end

  test "should get index" do
    get inputs_text_inputs_url
    assert_response :success
  end

  test "should get new" do
    get new_inputs_text_input_url
    assert_response :success
  end

  test "should create inputs_text_input" do
    assert_difference("Inputs::TextInput.count") do
      post inputs_text_inputs_url, params: { inputs_text_input: { label: @inputs_text_input.label, name: @inputs_text_input.name } }
    end

    assert_redirected_to inputs_text_input_url(Inputs::TextInput.last)
  end

  test "should show inputs_text_input" do
    get inputs_text_input_url(@inputs_text_input)
    assert_response :success
  end

  test "should get edit" do
    get edit_inputs_text_input_url(@inputs_text_input)
    assert_response :success
  end

  test "should update inputs_text_input" do
    patch inputs_text_input_url(@inputs_text_input), params: { inputs_text_input: { label: @inputs_text_input.label, name: @inputs_text_input.name } }
    assert_redirected_to inputs_text_input_url(@inputs_text_input)
  end

  test "should destroy inputs_text_input" do
    assert_difference("Inputs::TextInput.count", -1) do
      delete inputs_text_input_url(@inputs_text_input)
    end

    assert_redirected_to inputs_text_inputs_url
  end
end
