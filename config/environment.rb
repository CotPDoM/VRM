# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Practise::Application.initialize!

# Mailer config
config.action_mailer.delivery_method = :smtp 
config.action_mailer.smtp_settings = {  
	    :address => "smtp.gmail.com",
	    :port => 465,  
# 	    :domain => 'pccrovers.com',
	    :user_name => 'nicholas.pearson@pccrover.com',
	    :password => 'bci3eblack',
	    :authentication => :plain,
	    :tls => true,
	    :enable_starttls_auto => true } 
config.action_mailer.raise_delivery_errors = true