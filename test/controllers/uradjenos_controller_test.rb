require 'test_helper'

class UradjenosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uradjeno = uradjenos(:one)
  end

  test "should get index" do
    get uradjenos_url
    assert_response :success
  end

  test "should get new" do
    get new_uradjeno_url
    assert_response :success
  end

  test "should create uradjeno" do
    assert_difference('Uradjeno.count') do
      post uradjenos_url, params: { uradjeno: {  } }
    end

    assert_redirected_to uradjeno_url(Uradjeno.last)
  end

  test "should show uradjeno" do
    get uradjeno_url(@uradjeno)
    assert_response :success
  end

  test "should get edit" do
    get edit_uradjeno_url(@uradjeno)
    assert_response :success
  end

  test "should update uradjeno" do
    patch uradjeno_url(@uradjeno), params: { uradjeno: {  } }
    assert_redirected_to uradjeno_url(@uradjeno)
  end

  test "should destroy uradjeno" do
    assert_difference('Uradjeno.count', -1) do
      delete uradjeno_url(@uradjeno)
    end

    assert_redirected_to uradjenos_url
  end
end
