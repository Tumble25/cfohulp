class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.lead.subject
  #
  def lead
    @demo_client = params[:demo_client]
    mail(to: "robtuinte15@gmail.com", subject: 'CFOhulp lead')
  end
end
