require 'test_helper'

class FremarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fremars_index_url
    assert_response :success
  end

  test "should get show" do
    get fremars_show_url
    assert_response :success
  end

  test "should get new" do
    get fremars_new_url
    assert_response :success
  end

  test "should get edit" do
    get fremars_edit_url
    assert_response :success
  end

end
