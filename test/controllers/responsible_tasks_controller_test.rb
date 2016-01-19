require 'test_helper'

class ResponsibleTasksControllerTest < ActionController::TestCase
  setup do
    @responsible_task = responsible_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:responsible_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create responsible_task" do
    assert_difference('ResponsibleTask.count') do
      post :create, responsible_task: { task_id: @responsible_task.task_id, user_id: @responsible_task.user_id }
    end

    assert_redirected_to responsible_task_path(assigns(:responsible_task))
  end

  test "should show responsible_task" do
    get :show, id: @responsible_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @responsible_task
    assert_response :success
  end

  test "should update responsible_task" do
    patch :update, id: @responsible_task, responsible_task: { task_id: @responsible_task.task_id, user_id: @responsible_task.user_id }
    assert_redirected_to responsible_task_path(assigns(:responsible_task))
  end

  test "should destroy responsible_task" do
    assert_difference('ResponsibleTask.count', -1) do
      delete :destroy, id: @responsible_task
    end

    assert_redirected_to responsible_tasks_path
  end
end
