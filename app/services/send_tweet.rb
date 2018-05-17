
require 'twitter'
require 'dotenv'
Dotenv.load

class SendTweet

	attr_reader :client
	attr_reader :texte

	def initialize
		@results = []
		@search_terms = ["justin bieber" ]
	end

	def perform
		initialize
		log_in_to_twitter
		sndtwt
	end

	def log_in_to_twitter
		@client = Twitter::REST::Client.new do |config|
			
			config.consumer_key = "P"

			config.consumer_secret = ""

			config.access_token = ""

			config.access_token_secret = "" 

		end
	end

	def sndtwt

		@search_terms.each do |term|

    		@search = @client.user_search(term)

    		@search.each { |user|
        		user_tweet = user.screen_name
        		@results.push(user_tweet)
    			}
    		
    	end

		time = rand(36..45)

		@results.each { |user|
    		client.update("Salut @#{user}!
    			Le peer learning t'intéresse ou tu veux apprendre à coder rapidement ? 
    			Viens voir notre site ici ==> https://bit.ly/2wrt50E , et deviens dev en 80 jours  #RoR #Peerlearning #coding #THP #bootcamp #ruby #rubyonrails #learn #dev #gratuit" )
    			
    		user.to_s
    		client.follow(user)
    	
	end		
end
