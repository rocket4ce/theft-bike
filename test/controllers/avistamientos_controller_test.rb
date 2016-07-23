require 'test_helper'

class AvistamientosControllerTest < ActionController::TestCase
  setup do
    @avistamiento = avistamientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avistamientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avistamiento" do
    assert_difference('Avistamiento.count') do
      post :create, avistamiento: { address: @avistamiento.address, bike_id: @avistamiento.bike_id, latitude: @avistamiento.latitude, longitude: @avistamiento.longitude, photo: @avistamiento.photo, user_id: @avistamiento.user_id }
    end

    assert_redirected_to avistamiento_path(assigns(:avistamiento))
  end

  test "should show avistamiento" do
    get :show, id: @avistamiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avistamiento
    assert_response :success
  end

  test "should update avistamiento" do
    patch :update, id: @avistamiento, avistamiento: { address: @avistamiento.address, bike_id: @avistamiento.bike_id, latitude: @avistamiento.latitude, longitude: @avistamiento.longitude, photo: @avistamiento.photo, user_id: @avistamiento.user_id }
    assert_redirected_to avistamiento_path(assigns(:avistamiento))
  end

  test "should destroy avistamiento" do
    assert_difference('Avistamiento.count', -1) do
      delete :destroy, id: @avistamiento
    end

    assert_redirected_to avistamientos_path
  end
end
