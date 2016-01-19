require 'test_helper'

class DriverLicensesControllerTest < ActionController::TestCase
  setup do
    @driver_license = driver_licenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:driver_licenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create driver_license" do
    assert_difference('DriverLicense.count') do
      post :create, driver_license: { type: @driver_license.type }
    end

    assert_redirected_to driver_license_path(assigns(:driver_license))
  end

  test "should show driver_license" do
    get :show, id: @driver_license
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @driver_license
    assert_response :success
  end

  test "should update driver_license" do
    patch :update, id: @driver_license, driver_license: { type: @driver_license.type }
    assert_redirected_to driver_license_path(assigns(:driver_license))
  end

  test "should destroy driver_license" do
    assert_difference('DriverLicense.count', -1) do
      delete :destroy, id: @driver_license
    end

    assert_redirected_to driver_licenses_path
  end
end
