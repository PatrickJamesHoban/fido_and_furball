require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup 
    @home_title = "Welcome to Ellie Farmgirl"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@home_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | Farmgirl FAQs"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | About Ellie"
  end

end
