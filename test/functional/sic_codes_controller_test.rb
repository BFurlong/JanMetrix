require 'test_helper'

class SicCodesControllerTest < ActionController::TestCase
  setup do
    @sic_code = sic_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sic_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sic_code" do
    assert_difference('SicCode.count') do
      post :create, sic_code: {  }
    end

    assert_redirected_to sic_code_path(assigns(:sic_code))
  end

  test "should show sic_code" do
    get :show, id: @sic_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sic_code
    assert_response :success
  end

  test "should update sic_code" do
    put :update, id: @sic_code, sic_code: {  }
    assert_redirected_to sic_code_path(assigns(:sic_code))
  end

  test "should destroy sic_code" do
    assert_difference('SicCode.count', -1) do
      delete :destroy, id: @sic_code
    end

    assert_redirected_to sic_codes_path
  end
end
