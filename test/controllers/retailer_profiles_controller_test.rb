require 'test_helper'

class RetailerProfilesControllerTest < ActionController::TestCase
  setup do
    @retailer_profile = retailer_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:retailer_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create retailer_profile" do
    assert_difference('RetailerProfile.count') do
      post :create, retailer_profile: { address1: @retailer_profile.address1, address2: @retailer_profile.address2, business_name: @retailer_profile.business_name, country: @retailer_profile.country, paypal_username: @retailer_profile.paypal_username, phone: @retailer_profile.phone, postcode: @retailer_profile.postcode, suburb: @retailer_profile.suburb, user_id: @retailer_profile.user_id, website: @retailer_profile.website }
    end

    assert_redirected_to retailer_profile_path(assigns(:retailer_profile))
  end

  test "should show retailer_profile" do
    get :show, id: @retailer_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @retailer_profile
    assert_response :success
  end

  test "should update retailer_profile" do
    patch :update, id: @retailer_profile, retailer_profile: { address1: @retailer_profile.address1, address2: @retailer_profile.address2, business_name: @retailer_profile.business_name, country: @retailer_profile.country, paypal_username: @retailer_profile.paypal_username, phone: @retailer_profile.phone, postcode: @retailer_profile.postcode, suburb: @retailer_profile.suburb, user_id: @retailer_profile.user_id, website: @retailer_profile.website }
    assert_redirected_to retailer_profile_path(assigns(:retailer_profile))
  end

  test "should destroy retailer_profile" do
    assert_difference('RetailerProfile.count', -1) do
      delete :destroy, id: @retailer_profile
    end

    assert_redirected_to retailer_profiles_path
  end
end
