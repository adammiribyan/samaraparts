class Request < ActiveRecord::Base
	attr_accessible :mark, :car_model, :year, :displacement, :vin, :engine_model, :required_part, :client_name, :client_phone
	
	validates :mark, 					:presence => true
	validates :car_model, 		:presence => true
	# validates :year, 					:presence => true
	# validates :displacement, 	:presence => true
	validates :vin, 					:presence => true
	# validates :engine_model, 	:presence => true
	validates :required_part, :presence => true
	validates :client_name, 	:presence => true
	validates :client_phone, 	:presence => true
end
