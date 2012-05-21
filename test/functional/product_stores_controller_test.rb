require 'test_helper'

class ProductStoresControllerTest < ActionController::TestCase
  setup do
    @product_store = product_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_store" do
    assert_difference('ProductStore.count') do
      post :create, product_store: @product_store.attributes
    end

    assert_redirected_to product_store_path(assigns(:product_store))
  end

  test "should show product_store" do
    get :show, id: @product_store.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_store.to_param
    assert_response :success
  end

  test "should update product_store" do
    put :update, id: @product_store.to_param, product_store: @product_store.attributes
    assert_redirected_to product_store_path(assigns(:product_store))
  end

  test "should destroy product_store" do
    assert_difference('ProductStore.count', -1) do
      delete :destroy, id: @product_store.to_param
    end

    assert_redirected_to product_stores_path
  end
end
