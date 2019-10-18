require "application_system_test_case"

class PopupsTest < ApplicationSystemTestCase

  def setup
    @user = users(:user)
  end

  test "testing popup" do

    visit user_path(@user)

    find(".btn").click

    assert has_text?(@user.name)
    assert has_text?(@user.surname)
  end
end
