require 'test_helper'

class TaskShiftsControllerTest < ActionController::TestCase
  setup do
    @task_shift = task_shifts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_shifts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_shift" do
    assert_difference('TaskShift.count') do
      post :create, task_shift: { max_num: @task_shift.max_num, min_num: @task_shift.min_num, shift_time_id: @task_shift.shift_time_id, task_id: @task_shift.task_id }
    end

    assert_redirected_to task_shift_path(assigns(:task_shift))
  end

  test "should show task_shift" do
    get :show, id: @task_shift
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task_shift
    assert_response :success
  end

  test "should update task_shift" do
    patch :update, id: @task_shift, task_shift: { max_num: @task_shift.max_num, min_num: @task_shift.min_num, shift_time_id: @task_shift.shift_time_id, task_id: @task_shift.task_id }
    assert_redirected_to task_shift_path(assigns(:task_shift))
  end

  test "should destroy task_shift" do
    assert_difference('TaskShift.count', -1) do
      delete :destroy, id: @task_shift
    end

    assert_redirected_to task_shifts_path
  end
end
