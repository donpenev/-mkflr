class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.homenewsletter.subject
  #
  def homenewsletter
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
