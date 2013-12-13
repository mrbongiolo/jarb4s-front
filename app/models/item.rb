class Item < ActiveRecord::Base

  validates :title, uniqueness: true
  #validates :title, :starting_price, :highest_price, :average_price, presence: true

  monetize :starting_price_cents

  paginates_per 30
end
