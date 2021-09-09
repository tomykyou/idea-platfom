require "test_helper"

class MainnotesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get mainnotes_top_url
    assert_response :success
  end

  test "should get show" do
    get mainnotes_show_url
    assert_response :success
  end

  test "should get new" do
    get mainnotes_new_url
    assert_response :success
  end

  test "should get edit" do
    get mainnotes_edit_url
    assert_response :success
  end

  test "should get _form" do
    get mainnotes__form_url
    assert_response :success
  end

  test "should get mypage" do
    get mainnotes_mypage_url
    assert_response :success
  end

  test "should get about" do
    get mainnotes_about_url
    assert_response :success
  end

  test "should get userpg" do
    get mainnotes_userpg_url
    assert_response :success
  end
end
