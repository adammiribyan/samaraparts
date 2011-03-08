class AddClientNameAndPhoneToRequests < ActiveRecord::Migration
  def self.up
  	add_column :requests, :client_name, :string
  	add_column :requests, :client_phone, :string
  end

  def self.down
  end
end
