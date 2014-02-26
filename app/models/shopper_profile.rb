class ShopperProfile < ActiveRecord::Base
  belongs_to :user
  has_many :addresses, dependent: :destroy
  has_many :offers, dependent: :destroy
end
