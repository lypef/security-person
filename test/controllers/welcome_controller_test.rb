require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get status_peticion" do
    get :status_peticion
    assert_response :success
  end

end
