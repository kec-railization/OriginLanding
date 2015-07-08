class UserMailer < ActionMailer::Base
  default from: "support@exterstudios.com"
  def welcome_email to
  	mail(to: to, subject: 'Regarding your interest in Origin')
  end
end
