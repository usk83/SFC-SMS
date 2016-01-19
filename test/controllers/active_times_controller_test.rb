require 'test_helper'

class ActiveTimesControllerTest < ActionController::TestCase
  setup do
    @active_time = active_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:active_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create active_time" do
    assert_difference('ActiveTime.count') do
      post :create, active_time: { shift_time_id: @active_time.shift_time_id, user_id: @active_time.user_id }
    end

    assert_redirected_to active_time_path(assigns(:active_time))
  end

  test "should show active_time" do
    get :show, id: @active_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @active_time
    assert_response :success
  end

  test "should update active_time" do
    patch :update, id: @active_time, active_time: { shift_time_id: @active_time.shift_time_id, user_id: @active_time.user_id }
    assert_redirected_to active_time_path(assigns(:active_time))
  end

  test "should destroy active_time" do
    assert_difference('ActiveTime.count', -1) do
      delete :destroy, id: @active_time
    end

    assert_redirected_to active_times_path
  end
end
