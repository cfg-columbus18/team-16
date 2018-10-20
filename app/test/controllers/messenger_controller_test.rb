require 'test_helper'

class MessengerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get messenger_index_url
    assert_response :success
  end

end
