class Organization < ActiveRecord::Base
	has_many :stores
	belongs_to :booking
end
