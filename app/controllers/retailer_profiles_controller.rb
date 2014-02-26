class RetailerProfilesController < ApplicationController
  before_action :set_retailer_profile, only: [:show, :edit, :update, :destroy]

  # GET /retailer_profiles
  # GET /retailer_profiles.json
  def index
    @retailer_profiles = RetailerProfile.all
  end

  # GET /retailer_profiles/1
  # GET /retailer_profiles/1.json
  def show
  end

  # GET /retailer_profiles/new
  def new
    @retailer_profile = RetailerProfile.new
  end

  # GET /retailer_profiles/1/edit
  def edit
  end

  # POST /retailer_profiles
  # POST /retailer_profiles.json
  def create
    @retailer_profile = RetailerProfile.new(retailer_profile_params)
    @retailer_profile.user = current_user

    respond_to do |format|
      if @retailer_profile.save
        format.html { redirect_to root_path, notice: 'Your profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @retailer_profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @retailer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retailer_profiles/1
  # PATCH/PUT /retailer_profiles/1.json
  def update
    respond_to do |format|
      if @retailer_profile.update(retailer_profile_params)
        format.html { redirect_to @retailer_profile, notice: 'Retailer profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @retailer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retailer_profiles/1
  # DELETE /retailer_profiles/1.json
  def destroy
    @retailer_profile.destroy
    respond_to do |format|
      format.html { redirect_to retailer_profiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retailer_profile
      @retailer_profile = RetailerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def retailer_profile_params
      params.require(:retailer_profile).permit(:user_id, :business_name, :website, :phone, :address1, :address2, :suburb, :postcode, :country, :paypal_username)
    end
end
