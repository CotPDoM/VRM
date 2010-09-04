class RenameFnameToFirstName < ActiveRecord::Migration
  def self.up
    rename_column :people, :fname, :first_name
    rename_column :people, :lname, :last_name
    rename_column :people, :postalcode, :postal_code
  end

  def self.down
    rename_column :people, :first_name, :fname
    rename_column :people, :last_name, :lname
    rename_column :people, :postal_code, :postalcode
  end
end
