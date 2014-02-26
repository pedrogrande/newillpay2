require 'test_helper'

class OffersControllerTest < ActionController::TestCase
  setup do
    @offer = offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer" do
    assert_difference('Offer.count') do
      post :create, offer: { accepted: @offer.accepted, description: @offer.description, expiry: @offer.expiry, fee: @offer.fee, offer: @offer.offer, paid: @offer.paid, price: @offer.price, product_name: @offer.product_name, retailer_profile_id: @offer.retailer_profile_id, sent: @offer.sent, shopper_profile_id: @offer.shopper_profile_id, url: @offer.url }
    end

    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should show offer" do
    get :show, id: @offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offer
    assert_response :success
  end

  test "should update offer" do
    patch :update, id: @offer, offer: { accepted: @offer.accepted, description: @offer.description, expiry: @offer.expiry, fee: @offer.fee, offer: @offer.offer, paid: @offer.paid, price: @offer.price, product_name: @offer.product_name, retailer_profile_id: @offer.retailer_profile_id, sent: @offer.sent, shopper_profile_id: @offer.shopper_profile_id, url: @offer.url }
    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should destroy offer" do
    assert_difference('Offer.count', -1) do
      delete :destroy, id: @offer
    end

    assert_redirected_to offers_path
  end
end
