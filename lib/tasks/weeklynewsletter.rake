desc "newsletter"
task newsletter: :environment do
    WeeklyNewsletter.new.perform
end
