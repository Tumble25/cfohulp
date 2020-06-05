ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: 'gmail.com',
  user_name: 'robtuinte15@gmail.com',
  password: 'pykfonaggvolmxyt',
  authentication: :login,
  enable_starttls_auto: true
}
