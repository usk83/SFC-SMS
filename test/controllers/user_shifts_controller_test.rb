require 'test_helper'

class UserShiftsControllerTest < ActionController::TestCase
  setup do
    @user_shift = user_shifts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_shifts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_shift" do
    assert_difference('UserShift.count') do
      post :create, user_shift: { task_shift_id: @user_shift.task_shift_id, user_id: @user_shift.user_id }
    end

    assert_redirected_to user_shift_path(assigns(:user_shift))
  end

  test "should show user_shift" do
    get :show, id: @user_shift
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_shift
    assert_response :success
  end

  test "should update user_shift" do
    patch :update, id: @user_shift, user_shift: { task_shift_id: @user_shift.task_shift_id, user_id: @user_shift.user_id }
    assert_redirected_to user_shift_path(assigns(:user_shift))
  end

  test "should destroy user_shift" do
    assert_difference('UserShift.count', -1) do
      delete :destroy, id: @user_shift
    end

    assert_redirected_to user_shifts_path
  end
end
