if Rails.env.development? || Rails.env.production?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:        'smtp.senfgrid.net',
    port:           '2525',
    authentication: :plan,
    user_name:      ENV['SENDGRID_USERNAME'],
    password:       ENV['SENDGRID_PASSWORD'],
    domail:         'heroku.com'
    enable_starttls_auto: true
  }
end 
