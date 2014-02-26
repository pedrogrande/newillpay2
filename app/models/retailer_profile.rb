class RetailerProfile < ActiveRecord::Base
  belongs_to :user
  has_many :offers
  validates :business_name, :paypal_username, presence: true

  def current_offers_value
  	self.offers.live.awaiting_acceptance_not_rejected.sum('offer')
  end
  def current_offers_less_fee
  	self.offers.live.awaiting_acceptance_not_rejected.sum('offer') - self.offers.live.awaiting_acceptance_not_rejected.sum('fee')
  end
end
