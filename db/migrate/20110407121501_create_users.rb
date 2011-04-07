class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :address
      t.string :city

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
