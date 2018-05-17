class WeeklyNewsletter

    def send_newsletter
        @users = User.all    
        @users.each do |user|   
            if user.newsletter == true 
                UserMailer.weekly_email(user).deliver_now
            end
        end
    end

    def perform
        send_newsletter
    end
end

WeeklyNewsletter.new.perform

