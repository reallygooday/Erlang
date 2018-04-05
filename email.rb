require 'pony'

Pony.options = {
 :via => 'smtp',
 :via_options => {
	:address => 'smtp.mailgun.org', 
	:port => '587', 
	:enable_starttls_auto => true, 
	:authentication => :plain,
	# This is the Default SMTP Login from earlier:
	:user_name => 'postmaster@sandbox07b308633d634f14911044750acb2966.mailgun.org', # This is your Default Password:
	:password => 'ca3b72ad36d6a46d02e97150cdb166c7'
 } 
}

message = {
	:from => 'hello@example.com',
	:to => 'Angela <balyseviene@gmail.com>', :subject => 'Welcome!',
	:body => 'Thanks for signing up to our awesome newsletter!'
} 

Pony.mail(message)
