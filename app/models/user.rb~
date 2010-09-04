require 'digest/sha1'

class User < ActiveRecord::Base
  
  has_many :registrations
  has_many :events, :through => :registrations

  attr_accessor :password_confirmation
  
  validates_presence_of     :name, :email
  validates_uniqueness_of   :email
  validates_format_of       :email, :with => /(\S+)@(\S+)/, :allow_nil => true
  validates_confirmation_of :password
  validates_length_of       :password, :minimum => 4, :allow_nil => true
  
  validate :check_for_hashed_password
  def check_for_hashed_password
    errors[:base] << "Missing password" if hashed_password.blank?
  end
                  
  # Returns a non-nil user if a user exists for the given
  # email and password, or nil if the user doesn't exist.                  
  def self.authenticate(email, password)
    user = self.find_by_email(email)
    (user && user.authenticated?(password)) ? user : nil    
  end

  def authenticated?(password)
    self.hashed_password == User.encrypted_password(password, self.salt)
  end
  
  # 'password' is a virtual attribute,
  # it's not stored in the database.
  def password
    @password
  end
  
  # Assigns a new password.
  def password=(pwd)
    @password = pwd
    create_new_salt
    self.hashed_password = User.encrypted_password(self.password, self.salt)
  end
  
  def to_xml(options = {})
    default_except = [:salt, :hashed_password]
    options[:except] = (options[:except] || []) + default_except
    super(options)
  end
  
private

  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
  
  def self.encrypted_password(password, salt)
    Digest::SHA1.hexdigest(password + "wibble" + salt)
  end

end