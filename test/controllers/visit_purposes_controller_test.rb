require 'test_helper'

class VisitPurposesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visit_purpose = visit_purposes(:one)
  end

  test "should get index" do
    get visit_purposes_url
    assert_response :success
  end

  test "should get new" do
    get new_visit_purpose_url
    assert_response :success
  end

  test "should create visit_purpose" do
    assert_difference('VisitPurpose.count') do
      post visit_purposes_url, params: { visit_purpose: { visit_info: @visit_purpose.visit_info, visit_name: @visit_purpose.visit_name } }
    end

    assert_redirected_to visit_purpose_url(VisitPurpose.last)
  end

  test "should show visit_purpose" do
    get visit_purpose_url(@visit_purpose)
    assert_response :success
  end

  test "should get edit" do
    get edit_visit_purpose_url(@visit_purpose)
    assert_response :success
  end

  test "should update visit_purpose" do
    patch visit_purpose_url(@visit_purpose), params: { visit_purpose: { visit_info: @visit_purpose.visit_info, visit_name: @visit_purpose.visit_name } }
    assert_redirected_to visit_purpose_url(@visit_purpose)
  end

  test "should destroy visit_purpose" do
    assert_difference('VisitPurpose.count', -1) do
      delete visit_purpose_url(@visit_purpose)
    end

    assert_redirected_to visit_purposes_url
  end
end
