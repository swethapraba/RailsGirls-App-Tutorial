require 'test_helper'

class ServiceorgsControllerTest < ActionController::TestCase
  setup do
    @serviceorg = serviceorgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serviceorgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serviceorg" do
    assert_difference('Serviceorg.count') do
      post :create, serviceorg: { address: @serviceorg.address, cooked: @serviceorg.cooked, fresh: @serviceorg.fresh, frozen: @serviceorg.frozen, hours: @serviceorg.hours, name: @serviceorg.name, nonperishables: @serviceorg.nonperishables, otherInfo: @serviceorg.otherInfo, phone: @serviceorg.phone, refridgerated: @serviceorg.refridgerated, website: @serviceorg.website }
    end

    assert_redirected_to serviceorg_path(assigns(:serviceorg))
  end

  test "should show serviceorg" do
    get :show, id: @serviceorg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serviceorg
    assert_response :success
  end

  test "should update serviceorg" do
    patch :update, id: @serviceorg, serviceorg: { address: @serviceorg.address, cooked: @serviceorg.cooked, fresh: @serviceorg.fresh, frozen: @serviceorg.frozen, hours: @serviceorg.hours, name: @serviceorg.name, nonperishables: @serviceorg.nonperishables, otherInfo: @serviceorg.otherInfo, phone: @serviceorg.phone, refridgerated: @serviceorg.refridgerated, website: @serviceorg.website }
    assert_redirected_to serviceorg_path(assigns(:serviceorg))
  end

  test "should destroy serviceorg" do
    assert_difference('Serviceorg.count', -1) do
      delete :destroy, id: @serviceorg
    end

    assert_redirected_to serviceorgs_path
  end
end
