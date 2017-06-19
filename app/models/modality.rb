class Modality < ActiveRecord::Base
	belongs_to :event
	has_many :spaces
	
	accepts_nested_attributes_for :spaces
	
	def to_s
		name
	end
	
	def spaces_to_s
		spaces.joins(:place).pluck("places.name || ' (' ||  spaces.amount || ' USD)'").join(", ")
	end
end