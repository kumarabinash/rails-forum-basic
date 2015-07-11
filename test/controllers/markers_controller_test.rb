require 'test_helper'

class MarkersControllerTest < ActionController::TestCase
  setup do
    @marker = markers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:markers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marker" do
    assert_difference('Marker.count') do
      post :create, marker: { address: @marker.address, description: @marker.description, expiry_date: @marker.expiry_date, lat: @marker.lat, lng: @marker.lng, marker_type: @marker.marker_type, title: @marker.title }
    end

    assert_redirected_to marker_path(assigns(:marker))
  end

  test "should show marker" do
    get :show, id: @marker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marker
    assert_response :success
  end

  test "should update marker" do
    patch :update, id: @marker, marker: { address: @marker.address, description: @marker.description, expiry_date: @marker.expiry_date, lat: @marker.lat, lng: @marker.lng, marker_type: @marker.marker_type, title: @marker.title }
    assert_redirected_to marker_path(assigns(:marker))
  end

  test "should destroy marker" do
    assert_difference('Marker.count', -1) do
      delete :destroy, id: @marker
    end

    assert_redirected_to markers_path
  end
end
