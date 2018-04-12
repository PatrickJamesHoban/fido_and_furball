require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup 
    @home_title = "Welcome to Ellie Farmgirl"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@home_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Farmgirl FAQs"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "All About Ellie"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact Us"
  end

end
