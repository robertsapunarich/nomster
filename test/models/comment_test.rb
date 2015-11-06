require 'test_helper'

class CommentTest < ActiveSupport::TestCase
 test "humanized_rating" do
   u = FactoryGirl.create(:user)

   rating = FactoryGirl.create(:comment)
   expected = 'one star'
   actual = rating.humanized_rating
   assert_equal expected, actual
 end
end
