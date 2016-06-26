class Booking < ActiveRecord::Base
	has_one :space
	has_one :organization	
end
