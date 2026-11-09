require "test_helper"

class NewUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get new_users_index_url
    assert_response :success
  end
end
