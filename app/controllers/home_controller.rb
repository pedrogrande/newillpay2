class HomeController < ApplicationController
  def index
    @users = User.all
    @retailer_profile = RetailerProfile.new
  end
end
