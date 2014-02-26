class Offer < ActiveRecord::Base
  belongs_to :shopper_profile
  belongs_to :retailer_profile

  before_create :set_fee, :set_expiry



  def self.awaiting_acceptance
  	where(accepted: nil)
  end

  def self.rejected
  	where(rejected: nil)
  end

  def self.awaiting_acceptance_not_rejected
  	self.awaiting_acceptance.where(rejected: nil)
  end

  def self.accepted
  	where('accepted <= ?', DateTime.now)
  end


  def self.awaiting_payment
  	where(paid: nil)
  end

  def awaiting_posting
  	where(sent: nil)
  end

  def expired
  	where('expiry <= ?', DateTime.now)
  end

  def self.live
  	where('expiry > ?', DateTime.now)
  end

  def set_fee
  	self.fee = self.offer * 0.05
  end

  def set_expiry
  	self.expiry = DateTime.now + self.expiry_days
  end

end
