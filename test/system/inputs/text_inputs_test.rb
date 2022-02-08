require "application_system_test_case"

class Inputs::TextInputsTest < ApplicationSystemTestCase
  setup do
    @inputs_text_input = inputs_text_inputs(:one)
  end

  test "visiting the index" do
    visit inputs_text_inputs_url
    assert_selector "h1", text: "Text inputs"
  end

  test "should create text input" do
    visit inputs_text_inputs_url
    click_on "New text input"

    fill_in "Label", with: @inputs_text_input.label
    fill_in "Name", with: @inputs_text_input.name
    click_on "Create Text input"

    assert_text "Text input was successfully created"
    click_on "Back"
  end

  test "should update Text input" do
    visit inputs_text_input_url(@inputs_text_input)
    click_on "Edit this text input", match: :first

    fill_in "Label", with: @inputs_text_input.label
    fill_in "Name", with: @inputs_text_input.name
    click_on "Update Text input"

    assert_text "Text input was successfully updated"
    click_on "Back"
  end

  test "should destroy Text input" do
    visit inputs_text_input_url(@inputs_text_input)
    click_on "Destroy this text input", match: :first

    assert_text "Text input was successfully destroyed"
  end
end
