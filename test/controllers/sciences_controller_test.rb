require "test_helper"

class SciencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @science = sciences(:one)
  end

  test "should get index" do
    get sciences_url
    assert_response :success
  end

  test "should get new" do
    get new_science_url
    assert_response :success
  end

  test "should create science" do
    assert_difference("Science.count") do
      post sciences_url, params: { science: {  } }
    end

    assert_redirected_to science_url(Science.last)
  end

  test "should show science" do
    get science_url(@science)
    assert_response :success
  end

  test "should get edit" do
    get edit_science_url(@science)
    assert_response :success
  end

  test "should update science" do
    patch science_url(@science), params: { science: {  } }
    assert_redirected_to science_url(@science)
  end

  test "should destroy science" do
    assert_difference("Science.count", -1) do
      delete science_url(@science)
    end

    assert_redirected_to sciences_url
  end
end
