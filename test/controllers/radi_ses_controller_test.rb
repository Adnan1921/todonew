require 'test_helper'

class RadiSesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @radi_se = radi_ses(:one)
  end

  test "should get index" do
    get radi_ses_url
    assert_response :success
  end

  test "should get new" do
    get new_radi_se_url
    assert_response :success
  end

  test "should create radi_se" do
    assert_difference('RadiSe.count') do
      post radi_ses_url, params: { radi_se: {  } }
    end

    assert_redirected_to radi_se_url(RadiSe.last)
  end

  test "should show radi_se" do
    get radi_se_url(@radi_se)
    assert_response :success
  end

  test "should get edit" do
    get edit_radi_se_url(@radi_se)
    assert_response :success
  end

  test "should update radi_se" do
    patch radi_se_url(@radi_se), params: { radi_se: {  } }
    assert_redirected_to radi_se_url(@radi_se)
  end

  test "should destroy radi_se" do
    assert_difference('RadiSe.count', -1) do
      delete radi_se_url(@radi_se)
    end

    assert_redirected_to radi_ses_url
  end
end
