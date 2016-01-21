require 'test_helper'

class ShiftDatesControllerTest < ActionController::TestCase
  setup do
    @shift_date = shift_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shift_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shift_date" do
    assert_difference('ShiftDate.count') do
      post :create, shift_date: { date: @shift_date.date }
    end

    assert_redirected_to shift_date_path(assigns(:shift_date))
  end

  test "should show shift_date" do
    get :show, id: @shift_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shift_date
    assert_response :success
  end

  test "should update shift_date" do
    patch :update, id: @shift_date, shift_date: { date: @shift_date.date }
    assert_redirected_to shift_date_path(assigns(:shift_date))
  end

  test "should destroy shift_date" do
    assert_difference('ShiftDate.count', -1) do
      delete :destroy, id: @shift_date
    end

    assert_redirected_to shift_dates_path
  end
end
