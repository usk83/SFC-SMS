require 'test_helper'

class ShiftTimesControllerTest < ActionController::TestCase
  setup do
    @shift_time = shift_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shift_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shift_time" do
    assert_difference('ShiftTime.count') do
      post :create, shift_time: { shift_date: @shift_time.shift_date, shift_time: @shift_time.shift_time }
    end

    assert_redirected_to shift_time_path(assigns(:shift_time))
  end

  test "should show shift_time" do
    get :show, id: @shift_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shift_time
    assert_response :success
  end

  test "should update shift_time" do
    patch :update, id: @shift_time, shift_time: { shift_date: @shift_time.shift_date, shift_time: @shift_time.shift_time }
    assert_redirected_to shift_time_path(assigns(:shift_time))
  end

  test "should destroy shift_time" do
    assert_difference('ShiftTime.count', -1) do
      delete :destroy, id: @shift_time
    end

    assert_redirected_to shift_times_path
  end
end
