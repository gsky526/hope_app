require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title","主页"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title","帮助"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title","联系我"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title","关于本站"
  end

end
