require 'test_helper'

class WardrobesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get wardrobes_show_url
    assert_response :success
  end

end
