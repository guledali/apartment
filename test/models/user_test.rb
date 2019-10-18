require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new()
  end

  test "invalid name" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "invalid surname" do
    @user.surname = ""
    assert_not @user.valid?
  end


  test "valid user" do
    @user.name = "guled"
    @user.surname = "ali"
    assert @user.valid?
  end
end
