require "application_system_test_case"

class Inputs::BooleanInputsTest < ApplicationSystemTestCase
  setup do
    @inputs_boolean_input = inputs_boolean_inputs(:one)
  end

  test "visiting the index" do
    visit inputs_boolean_inputs_url
    assert_selector "h1", text: "Boolean inputs"
  end

  test "should create boolean input" do
    visit inputs_boolean_inputs_url
    click_on "New boolean input"

    fill_in "Label", with: @inputs_boolean_input.label
    fill_in "Name", with: @inputs_boolean_input.name
    fill_in "Type", with: @inputs_boolean_input.type
    click_on "Create Boolean input"

    assert_text "Boolean input was successfully created"
    click_on "Back"
  end

  test "should update Boolean input" do
    visit inputs_boolean_input_url(@inputs_boolean_input)
    click_on "Edit this boolean input", match: :first

    fill_in "Label", with: @inputs_boolean_input.label
    fill_in "Name", with: @inputs_boolean_input.name
    fill_in "Type", with: @inputs_boolean_input.type
    click_on "Update Boolean input"

    assert_text "Boolean input was successfully updated"
    click_on "Back"
  end

  test "should destroy Boolean input" do
    visit inputs_boolean_input_url(@inputs_boolean_input)
    click_on "Destroy this boolean input", match: :first

    assert_text "Boolean input was successfully destroyed"
  end
end
