# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Exam::Application.initialize!


ActionMailer::Base.smtp_settings = {
    :address   => "smtp.mandrillapp.com",
    :port      => 25, # ports 587 and 2525 are also supported with STARTTLS
    :enable_starttls_auto => true, # detects and uses STARTTLS
    :user_name      => 'msocek@gmail.com',
    :password       => 'mrWNmbt9pJXKKgSsnW0ydQ',
    :authentication => 'login', # Mandrill supports 'plain' or 'login'
    :domain         => 'heroku.com',
}
