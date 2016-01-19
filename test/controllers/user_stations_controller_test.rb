require 'test_helper'

class UserStationsControllerTest < ActionController::TestCase
  setup do
    @user_station = user_stations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_stations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_station" do
    assert_difference('UserStation.count') do
      post :create, user_station: { station_id: @user_station.station_id, user_id: @user_station.user_id }
    end

    assert_redirected_to user_station_path(assigns(:user_station))
  end

  test "should show user_station" do
    get :show, id: @user_station
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_station
    assert_response :success
  end

  test "should update user_station" do
    patch :update, id: @user_station, user_station: { station_id: @user_station.station_id, user_id: @user_station.user_id }
    assert_redirected_to user_station_path(assigns(:user_station))
  end

  test "should destroy user_station" do
    assert_difference('UserStation.count', -1) do
      delete :destroy, id: @user_station
    end

    assert_redirected_to user_stations_path
  end
end
