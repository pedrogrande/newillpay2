require 'test_helper'

class ShopperProfilesControllerTest < ActionController::TestCase
  setup do
    @shopper_profile = shopper_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopper_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopper_profile" do
    assert_difference('ShopperProfile.count') do
      post :create, shopper_profile: { user_id: @shopper_profile.user_id }
    end

    assert_redirected_to shopper_profile_path(assigns(:shopper_profile))
  end

  test "should show shopper_profile" do
    get :show, id: @shopper_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopper_profile
    assert_response :success
  end

  test "should update shopper_profile" do
    patch :update, id: @shopper_profile, shopper_profile: { user_id: @shopper_profile.user_id }
    assert_redirected_to shopper_profile_path(assigns(:shopper_profile))
  end

  test "should destroy shopper_profile" do
    assert_difference('ShopperProfile.count', -1) do
      delete :destroy, id: @shopper_profile
    end

    assert_redirected_to shopper_profiles_path
  end
end
