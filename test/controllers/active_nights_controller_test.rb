require 'test_helper'

class ActiveNightsControllerTest < ActionController::TestCase
  setup do
    @active_night = active_nights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:active_nights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create active_night" do
    assert_difference('ActiveNight.count') do
      post :create, active_night: { allnight_id: @active_night.allnight_id, user_id: @active_night.user_id }
    end

    assert_redirected_to active_night_path(assigns(:active_night))
  end

  test "should show active_night" do
    get :show, id: @active_night
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @active_night
    assert_response :success
  end

  test "should update active_night" do
    patch :update, id: @active_night, active_night: { allnight_id: @active_night.allnight_id, user_id: @active_night.user_id }
    assert_redirected_to active_night_path(assigns(:active_night))
  end

  test "should destroy active_night" do
    assert_difference('ActiveNight.count', -1) do
      delete :destroy, id: @active_night
    end

    assert_redirected_to active_nights_path
  end
end
