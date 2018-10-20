require 'test_helper'

class GlobalchatsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get globalchats_create_url
    assert_response :success
  end

  test "should get new" do
    get globalchats_new_url
    assert_response :success
  end

  test "should get show" do
    get globalchats_show_url
    assert_response :success
  end

  test "should get index" do
    get globalchats_index_url
    assert_response :success
  end

end
