class User < ActiveRecord::Base
  rolify
  has_one :retailer_profile, dependent: :destroy
  has_one :shopper_profile, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # self.inheritance_column = :user_type
  before_create :set_role

  def set_role
  	if self.user_type == 'retailer'
  		make_retailer
  	elsif self.user_type == 'shopper'
  		make_shopper
  	end
  end

  def make_shopper
  	self.add_role :shopper
  end

  def make_retailer
  	self.add_role :retailer
  end



end
