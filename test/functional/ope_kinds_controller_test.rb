require 'test_helper'

class OpeKindsControllerTest < ActionController::TestCase
  setup do
    @ope_kind = ope_kinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ope_kinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ope_kind" do
    assert_difference('OpeKind.count') do
      post :create, ope_kind: { info: @ope_kind.info, name: @ope_kind.name }
    end

    assert_redirected_to ope_kind_path(assigns(:ope_kind))
  end

  test "should show ope_kind" do
    get :show, id: @ope_kind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ope_kind
    assert_response :success
  end

  test "should update ope_kind" do
    put :update, id: @ope_kind, ope_kind: { info: @ope_kind.info, name: @ope_kind.name }
    assert_redirected_to ope_kind_path(assigns(:ope_kind))
  end

  test "should destroy ope_kind" do
    assert_difference('OpeKind.count', -1) do
      delete :destroy, id: @ope_kind
    end

    assert_redirected_to ope_kinds_path
  end
end
