require 'test_helper'

class TeamcolorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teamcolors_index_url
    assert_response :success
  end

  test "should get show" do
    get teamcolors_show_url
    assert_response :success
  end

end
