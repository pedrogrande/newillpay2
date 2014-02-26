class ShopperProfilesController < ApplicationController
  before_action :set_shopper_profile, only: [:show, :edit, :update, :destroy]

  # GET /shopper_profiles
  # GET /shopper_profiles.json
  def index
    @shopper_profiles = ShopperProfile.all
  end

  # GET /shopper_profiles/1
  # GET /shopper_profiles/1.json
  def show
  end

  # GET /shopper_profiles/new
  def new
    @shopper_profile = ShopperProfile.new
  end

  # GET /shopper_profiles/1/edit
  def edit
  end

  # POST /shopper_profiles
  # POST /shopper_profiles.json
  def create
    @shopper_profile = ShopperProfile.new(shopper_profile_params)

    respond_to do |format|
      if @shopper_profile.save
        format.html { redirect_to @shopper_profile, notice: 'Shopper profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shopper_profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @shopper_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopper_profiles/1
  # PATCH/PUT /shopper_profiles/1.json
  def update
    respond_to do |format|
      if @shopper_profile.update(shopper_profile_params)
        format.html { redirect_to @shopper_profile, notice: 'Shopper profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shopper_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopper_profiles/1
  # DELETE /shopper_profiles/1.json
  def destroy
    @shopper_profile.destroy
    respond_to do |format|
      format.html { redirect_to shopper_profiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopper_profile
      @shopper_profile = ShopperProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopper_profile_params
      params.require(:shopper_profile).permit(:user_id)
    end
end
