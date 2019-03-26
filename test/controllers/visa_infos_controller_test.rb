require 'test_helper'

class VisaInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visa_info = visa_infos(:one)
  end

  test "should get index" do
    get visa_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_visa_info_url
    assert_response :success
  end

  test "should create visa_info" do
    assert_difference('VisaInfo.count') do
      post visa_infos_url, params: { visa_info: { links: @visa_info.links, visa_info: @visa_info.visa_info } }
    end

    assert_redirected_to visa_info_url(VisaInfo.last)
  end

  test "should show visa_info" do
    get visa_info_url(@visa_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_visa_info_url(@visa_info)
    assert_response :success
  end

  test "should update visa_info" do
    patch visa_info_url(@visa_info), params: { visa_info: { links: @visa_info.links, visa_info: @visa_info.visa_info } }
    assert_redirected_to visa_info_url(@visa_info)
  end

  test "should destroy visa_info" do
    assert_difference('VisaInfo.count', -1) do
      delete visa_info_url(@visa_info)
    end

    assert_redirected_to visa_infos_url
  end
end
