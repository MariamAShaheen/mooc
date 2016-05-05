require 'test_helper'

class UserTest < ActiveSupport::TestCase
   test "my  truth" do
     user=User.new

     assert user.invalid?
   end
   
   test "vaild truth" do
     
    user=users(:test_user)
     assert user.invalid?
   end
end
