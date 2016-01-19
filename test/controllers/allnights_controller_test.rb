require 'test_helper'

class AllnightsControllerTest < ActionController::TestCase
  setup do
    @allnight = allnights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allnights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allnight" do
    assert_difference('Allnight.count') do
      post :create, allnight: { date: @allnight.date }
    end

    assert_redirected_to allnight_path(assigns(:allnight))
  end

  test "should show allnight" do
    get :show, id: @allnight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allnight
    assert_response :success
  end

  test "should update allnight" do
    patch :update, id: @allnight, allnight: { date: @allnight.date }
    assert_redirected_to allnight_path(assigns(:allnight))
  end

  test "should destroy allnight" do
    assert_difference('Allnight.count', -1) do
      delete :destroy, id: @allnight
    end

    assert_redirected_to allnights_path
  end
end
