class Space < ActiveRecord::Base
	belongs_to :store
	belongs_to :booking
end
