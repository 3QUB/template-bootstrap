class UsersController < ApplicationController

    def subscribe
        user = User.new(email: params['email'], newsletter: false )
        user.save
        UserMailer.subscribe_confirmation(user).deliver_now
    end
      
    def confirm_subscription
      @user = User.find(params[:id])
      @user.update(newsletter: true)
      WeeklyNewsletter.new.perform
    end
    
    def unsubscribe
      @user = User.find(params[:id])
      @user.update(newsletter: false)
    end

end
