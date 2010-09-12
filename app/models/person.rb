class Person < ActiveRecord::Base
  
  validates_presence_of :first_name
  validates_format_of :number, :with => /\A(?:\([2-9]\d{2}\)\ ?|[2-9]\d{2}(?:\-?|\ ?))[2-9]\d{2}[- ]?\d{4}\Z/i, :allow_blank => :true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :allow_blank => :true
  validates_inclusion_of :role, :in => ['Potential','Leader','Team 100', 'Admin', 'Root']

  def self.search(name)
#     e = []
#     Person.column_names[1..7].each do |d|
       where('first_name  like ?', "%#{name}%")
#     end
#     e
  end
end

