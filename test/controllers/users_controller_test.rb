require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:user)
  end

  test "should get index" do
    get root_url
    assert_response :success
  end

  test "should get edit page" do
    get edit_user_url(@user)

    assert_response :success
  end

  test "should not update user user" do
    patch user_path(@user), params: { user: { name: "", surname: @user.surname }}

    assert_template "users/edit"
  end

  test "should update user" do
    patch user_path(@user), params: { user: { name: "joe", surname: "bob" }}
    
    reload
    assert_equal "joe", @user.name
    
    assert_redirected_to root_url
    assert_not flash.empty?
  end

end
