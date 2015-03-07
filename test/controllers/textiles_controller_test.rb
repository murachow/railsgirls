require 'test_helper'

class TextilesControllerTest < ActionController::TestCase
  setup do
    @textile = textiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:textiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create textile" do
    assert_difference('Textile.count') do
      post :create, textile: { material: @textile.material, name: @textile.name, picture: @textile.picture, size: @textile.size }
    end

    assert_redirected_to textile_path(assigns(:textile))
  end

  test "should show textile" do
    get :show, id: @textile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @textile
    assert_response :success
  end

  test "should update textile" do
    patch :update, id: @textile, textile: { material: @textile.material, name: @textile.name, picture: @textile.picture, size: @textile.size }
    assert_redirected_to textile_path(assigns(:textile))
  end

  test "should destroy textile" do
    assert_difference('Textile.count', -1) do
      delete :destroy, id: @textile
    end

    assert_redirected_to textiles_path
  end
end
