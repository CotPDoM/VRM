class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :fname
      t.string :lname
      t.string :number
      t.string :email
      t.string :postalcode
      t.string :city
      t.string :role

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
