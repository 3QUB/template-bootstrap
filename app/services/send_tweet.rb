class SendTweet

    attr_reader :client
    attr_reader :texte

    def initialize
        
        #etudiants 
        @results1 = []
        @search_termsLP1 = ["bde","universié","universités","jeunes","jeune","ecole","ecoles d ingenieur","formation", "post baccalauréat"]
        #Bordeaux
        @results2 = []
        @search_termsLP2 = ["vins de bordeaux"," Bordeaux", "Gironde","Atlantique", "sciences Po Bordeaux", "EPSI"]
        #startups
        @results3 = []
        @search_termsLP3 = ["formation salariés programmation", "tech startups", "internet business","pure player", "business web", "societes web","tech"]
    end

    def perform
        initialize
        log_in_to_twitter
        sndtwt
    end

    def log_in_to_twitter
        @client = Twitter::REST::Client.new do |config|
              config.consumer_key         = ENV['consumer_key']
              config.consumer_secret         = ENV['consumer_secret']
              config.access_token         = ENV['access_token']
			  config.access_token_secret     = ENV['access_secret']   
		end
    end

    def sndtwt
    #etudiants
    	@search_termsLP1.each do |term|

    	    @search = @client.user_search(term)

    	    @search.each { |user|
    	        user_tweet = user.screen_name
    	        @results1.push(user_tweet)
    	        }
    	end


    	#Bordeaux
    	@search_termsLP2.each do |term|

    	    @search = @client.user_search(term)

    	    @search.each { |user|
    	        user_tweet = user.screen_name
    	         @results2.push(user_tweet)
				}
				sleep time
    	end

        
    	#startups
    	@search_termsLP3.each do |term|

    	       @search = @client.user_search(term)

    	       @search.each { |user|
    	           user_tweet = user.screen_name
    	           @results3.push(user_tweet)
				   }
				   sleep time
    	end

    	time = rand(36..45)
		#etudiants
    	@results1.each { |user|
    	       client.update("Salut @#{user}!
    	           Le peer learning t'intéresse ou tu veux apprendre à coder rapidement ? 
    	           Viens voir notre site ici ==> https://bit.ly/2k3yjGS , et deviens dev en 80 jours  #RoR #Peerlearning #coding #THP #bootcamp #ruby #rubyonrails #learn #dev #gratuit" )
    	   user.to_s
		   client.follow(user)
		   sleep time
    	}


       #Bordeaux
	   @results2.each { |user|
			user.to_s
           client.update("Salut @#{user}! Le peer learning t'intéresse ou tu veux apprendre à coder rapidement ? Viens voir notre site ici ==> https://bit.ly/2rPtg1i , et deviens dev en 80 jours  #RoR #Peerlearning #coding #THP #bootcamp #ruby #rubyonrails #learn #dev #gratuit" )
		   client.follow(user)
		   sleep time
       }

       #startups
       @results3.each { |user|
           client.update("Bonjour @#{user}!
               Le peer learning vous intéresse pour vos employés et collaborateurs , ils peuvent apprendre à coder rapidement ? 
               Venez voir notre site ici ==> https://bit.ly/2IO3fsH , et faites en des devs en 80 jours  #RoR #Peerlearning #coding #THP #bootcamp #ruby #rubyonrails #learn #dev #gratuit" )
       	user.to_s
		   client.follow(user)
		   sleep time
       }
    end      
end