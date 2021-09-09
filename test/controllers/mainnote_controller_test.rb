require "test_helper"

class MainnoteControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get mainnote_top_url
    assert_response :success
  end

  test "should get show" do
    get mainnote_show_url
    assert_response :success
  end

  test "should get new" do
    get mainnote_new_url
    assert_response :success
  end

  test "should get edit" do
    get mainnote_edit_url
    assert_response :success
  end

  test "should get _form" do
    get mainnote__form_url
    assert_response :success
  end

  test "should get mypage" do
    get mainnote_mypage_url
    assert_response :success
  end

  test "should get about" do
    get mainnote_about_url
    assert_response :success
  end

  test "should get userpg" do
    get mainnote_userpg_url
    assert_response :success
  end
end
