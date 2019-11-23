class FundingRound

    attr_reader :startup, :venture_capitalist, :type, :investment

    @@all = []

    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type

        if investment > 0.0
            @investment = investment
        end

        @@all << self
    end

    def investment=(investment)
        if investment > 0.0
            @investment = investment
        end

    end

    def self.all
        @@all  
    end

end