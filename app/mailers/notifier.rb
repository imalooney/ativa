class Notifier < ActionMailer::Base
  default from: "forestiere916@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.subscription_confirmation.subject
  #
  def subscription_confirmation(user, project)
    @user = user
    @project = project

      # Change the 'to:' section to your partner's name and email
     mail( to: "#{user.name} <#{user.email}>",
            subject: "Subscribed to #{project.name.capitalize} | Ativa")
  end

  # Notice to user upon unsubscribing from a project
  def unsubscribe_confirmation(user, project)
    @user = user
    @project = project

    mail( to: "#{user.name} <#{user.email}>",
          subject: "Unsubscribed from #{project.name.capitalize} | Ativa" 
      )    
  end

  # Notify user when a new post is made to project they are subscribed to
  def post_made(user, project)
    @user = user
    @project = project

    mail( to: "#{}"
      )    
  end

end
