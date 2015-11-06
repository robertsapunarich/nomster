require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "user show" do
    u = FactoryGirl.create(:user)
    sign_in u
    get :show, :id => u.id
    assert_response :success
  end
end
