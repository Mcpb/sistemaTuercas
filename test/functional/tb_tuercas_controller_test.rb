require 'test_helper'

class TbTuercasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tb_tuercas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tb_tuerca" do
    assert_difference('TbTuerca.count') do
      post :create, :tb_tuerca => { }
    end

    assert_redirected_to tb_tuerca_path(assigns(:tb_tuerca))
  end

  test "should show tb_tuerca" do
    get :show, :id => tb_tuercas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tb_tuercas(:one).to_param
    assert_response :success
  end

  test "should update tb_tuerca" do
    put :update, :id => tb_tuercas(:one).to_param, :tb_tuerca => { }
    assert_redirected_to tb_tuerca_path(assigns(:tb_tuerca))
  end

  test "should destroy tb_tuerca" do
    assert_difference('TbTuerca.count', -1) do
      delete :destroy, :id => tb_tuercas(:one).to_param
    end

    assert_redirected_to tb_tuercas_path
  end
end
