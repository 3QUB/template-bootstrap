class UserMailer < ApplicationMailer

    def subscribe_confirmation(user)
        @user = user
        mail(to: @user.email, subject: 'The Hacking Project - Please confirm your subscription!')
    end

    def weekly_email(user)
        @user = user
        mail(to: @user.email, subject: 'Weekly news from the Hacking project')
    end
end
