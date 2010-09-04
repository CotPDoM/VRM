class PhoneNumberTypeToInteger < ActiveRecord::Migration
  def self.up
    change_column :people, :number, :integer, :default=> nil
  end

  def self.down
    change_column :people, :number, :string
  end
end
