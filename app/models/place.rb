class Place < ActiveRecord::Base
	belongs_to :user
	geocoded_by :address
	after_validation :geocode



	validates :name, presence: true, length: { in: 3..50 }
	validates :address, presence: true, length: { in: 10..140 }
	validates :description, presence: true, length: { in: 5..200 }
end