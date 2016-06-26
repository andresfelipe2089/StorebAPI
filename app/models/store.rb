class Store < ActiveRecord::Base
	has_one :address
	has_many :spaces
	belongs_to :organization
end
