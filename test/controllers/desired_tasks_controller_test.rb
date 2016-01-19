require 'test_helper'

class DesiredTasksControllerTest < ActionController::TestCase
  setup do
    @desired_task = desired_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:desired_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desired_task" do
    assert_difference('DesiredTask.count') do
      post :create, desired_task: { task_id: @desired_task.task_id, user_id: @desired_task.user_id }
    end

    assert_redirected_to desired_task_path(assigns(:desired_task))
  end

  test "should show desired_task" do
    get :show, id: @desired_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desired_task
    assert_response :success
  end

  test "should update desired_task" do
    patch :update, id: @desired_task, desired_task: { task_id: @desired_task.task_id, user_id: @desired_task.user_id }
    assert_redirected_to desired_task_path(assigns(:desired_task))
  end

  test "should destroy desired_task" do
    assert_difference('DesiredTask.count', -1) do
      delete :destroy, id: @desired_task
    end

    assert_redirected_to desired_tasks_path
  end
end
