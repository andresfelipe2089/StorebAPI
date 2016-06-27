class Organization < ActiveRecord::Base
	has_many :stores
	belongs_to :booking

	validates :title, :description, :type, presence: true
	validates_associated :store
end
