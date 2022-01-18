require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get my_account" do
    get pages_my_account_url
    assert_response :success
  end

  test "should get blog" do
    get pages_blog_url
    assert_response :success
  end

  test "should get faq" do
    get pages_faq_url
    assert_response :success
  end

  test "should get terms_and_policies" do
    get pages_terms_and_policies_url
    assert_response :success
  end

  test "should get about_us" do
    get pages_about_us_url
    assert_response :success
  end

  test "should get contact_us" do
    get pages_contact_us_url
    assert_response :success
  end
end
