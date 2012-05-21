class NotificationsMailer < ActionMailer::Base

  default :from => "test@youdomain.dev"
  default :to => "jetinderdehal@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[YourWebsite.tld] #{message.subject}")
  end

end