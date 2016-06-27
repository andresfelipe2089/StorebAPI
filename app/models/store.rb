class Store < ActiveRecord::Base
	has_one :address
	has_many :spaces
	belongs_to :organization

	validates :title, :opening_hours
	validates_associated :space, :address
end
