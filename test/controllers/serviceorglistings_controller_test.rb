require 'test_helper'

class ServiceorglistingsControllerTest < ActionController::TestCase
  setup do
    @serviceorglisting = serviceorglistings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serviceorglistings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serviceorglisting" do
    assert_difference('Serviceorglisting.count') do
      post :create, serviceorglisting: { address: @serviceorglisting.address, cookedFoods: @serviceorglisting.cookedFoods, freshFoods: @serviceorglisting.freshFoods, frozenFoods: @serviceorglisting.frozenFoods, hours: @serviceorglisting.hours, name: @serviceorglisting.name, nonperishables: @serviceorglisting.nonperishables, otherInformation: @serviceorglisting.otherInformation, phone: @serviceorglisting.phone, refridgeratedFoods: @serviceorglisting.refridgeratedFoods, website: @serviceorglisting.website }
    end

    assert_redirected_to serviceorglisting_path(assigns(:serviceorglisting))
  end

  test "should show serviceorglisting" do
    get :show, id: @serviceorglisting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serviceorglisting
    assert_response :success
  end

  test "should update serviceorglisting" do
    patch :update, id: @serviceorglisting, serviceorglisting: { address: @serviceorglisting.address, cookedFoods: @serviceorglisting.cookedFoods, freshFoods: @serviceorglisting.freshFoods, frozenFoods: @serviceorglisting.frozenFoods, hours: @serviceorglisting.hours, name: @serviceorglisting.name, nonperishables: @serviceorglisting.nonperishables, otherInformation: @serviceorglisting.otherInformation, phone: @serviceorglisting.phone, refridgeratedFoods: @serviceorglisting.refridgeratedFoods, website: @serviceorglisting.website }
    assert_redirected_to serviceorglisting_path(assigns(:serviceorglisting))
  end

  test "should destroy serviceorglisting" do
    assert_difference('Serviceorglisting.count', -1) do
      delete :destroy, id: @serviceorglisting
    end

    assert_redirected_to serviceorglistings_path
  end
end
