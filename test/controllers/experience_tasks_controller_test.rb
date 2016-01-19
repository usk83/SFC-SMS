require 'test_helper'

class ExperienceTasksControllerTest < ActionController::TestCase
  setup do
    @experience_task = experience_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experience_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experience_task" do
    assert_difference('ExperienceTask.count') do
      post :create, experience_task: { task_id: @experience_task.task_id, user_id: @experience_task.user_id }
    end

    assert_redirected_to experience_task_path(assigns(:experience_task))
  end

  test "should show experience_task" do
    get :show, id: @experience_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experience_task
    assert_response :success
  end

  test "should update experience_task" do
    patch :update, id: @experience_task, experience_task: { task_id: @experience_task.task_id, user_id: @experience_task.user_id }
    assert_redirected_to experience_task_path(assigns(:experience_task))
  end

  test "should destroy experience_task" do
    assert_difference('ExperienceTask.count', -1) do
      delete :destroy, id: @experience_task
    end

    assert_redirected_to experience_tasks_path
  end
end
