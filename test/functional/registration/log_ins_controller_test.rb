require 'test_helper'

class Registration::LogInsControllerTest < ActionController::TestCase
  setup do
    @registration_log_in = registration_log_ins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registration_log_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration_log_in" do
    assert_difference('Registration::LogIn.count') do
      post :create, registration_log_in: @registration_log_in.attributes
    end

    assert_redirected_to registration_log_in_path(assigns(:registration_log_in))
  end

  test "should show registration_log_in" do
    get :show, id: @registration_log_in
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registration_log_in
    assert_response :success
  end

  test "should update registration_log_in" do
    put :update, id: @registration_log_in, registration_log_in: @registration_log_in.attributes
    assert_redirected_to registration_log_in_path(assigns(:registration_log_in))
  end

  test "should destroy registration_log_in" do
    assert_difference('Registration::LogIn.count', -1) do
      delete :destroy, id: @registration_log_in
    end

    assert_redirected_to registration_log_ins_path
  end
end
