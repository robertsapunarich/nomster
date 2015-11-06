require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "comment create" do
    u = FactoryGirl.create(:user)
    sign_in u
    p = FactoryGirl.create(:place)
    assert_difference 'Comment.count' do
      post :create, place_id: p.id, comment: FactoryGirl.attributes_for(:comment)
    end
    assert_redirected_to place_path(p)
    assert_equal 1,  p.comments.count
  end
end
