require 'test_helper'

class ProposallsControllerTest < ActionController::TestCase
  setup do
    @proposall = proposalls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proposalls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proposall" do
    assert_difference('Proposall.count') do
      post :create, proposall: {  }
    end

    assert_redirected_to proposall_path(assigns(:proposall))
  end

  test "should show proposall" do
    get :show, id: @proposall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proposall
    assert_response :success
  end

  test "should update proposall" do
    patch :update, id: @proposall, proposall: {  }
    assert_redirected_to proposall_path(assigns(:proposall))
  end

  test "should destroy proposall" do
    assert_difference('Proposall.count', -1) do
      delete :destroy, id: @proposall
    end

    assert_redirected_to proposalls_path
  end
end
