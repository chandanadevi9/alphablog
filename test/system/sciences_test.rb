require "application_system_test_case"

class SciencesTest < ApplicationSystemTestCase
  setup do
    @science = sciences(:one)
  end

  test "visiting the index" do
    visit sciences_url
    assert_selector "h1", text: "Sciences"
  end

  test "should create science" do
    visit sciences_url
    click_on "New science"

    click_on "Create Science"

    assert_text "Science was successfully created"
    click_on "Back"
  end

  test "should update Science" do
    visit science_url(@science)
    click_on "Edit this science", match: :first

    click_on "Update Science"

    assert_text "Science was successfully updated"
    click_on "Back"
  end

  test "should destroy Science" do
    visit science_url(@science)
    click_on "Destroy this science", match: :first

    assert_text "Science was successfully destroyed"
  end
end
