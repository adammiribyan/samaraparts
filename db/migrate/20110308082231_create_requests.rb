class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.string :mark
      t.string :car_model
      t.integer :year
      t.string :displacement
      t.string :vin
      t.string :engine_model
      t.string :required_part

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
