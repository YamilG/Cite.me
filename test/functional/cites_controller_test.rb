require 'test_helper'

class CitesControllerTest < ActionController::TestCase
  setup do
    @cite = cites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cite" do
    assert_difference('Cite.count') do
      post :create, :cite => @cite.attributes
    end

    assert_redirected_to cite_path(assigns(:cite))
  end

  test "should show cite" do
    get :show, :id => @cite.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cite.to_param
    assert_response :success
  end

  test "should update cite" do
    put :update, :id => @cite.to_param, :cite => @cite.attributes
    assert_redirected_to cite_path(assigns(:cite))
  end

  test "should destroy cite" do
    assert_difference('Cite.count', -1) do
      delete :destroy, :id => @cite.to_param
    end

    assert_redirected_to cites_path
  end
end
