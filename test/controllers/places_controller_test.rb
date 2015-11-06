require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  test "create" do
    user = FactoryGirl.create(:user)
    sign_in user

    assert_difference 'Place.count' do
      post :create, {:place => {
        :name => 'something',
        :description => 'omg',
        :address => '25471 Arctic Ocean Drive, Lake Forest, CA 92630'
        }
      }
    end
  end
end
