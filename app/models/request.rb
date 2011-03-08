class Request < ActiveRecord::Base
	attr_accessible :mark, :car_model, :year, :displacement, :vin, :engine_model, :required_part, :client_name, :client_phone
end
