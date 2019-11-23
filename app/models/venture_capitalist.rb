class VentureCapitalist

    attr_reader :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth

        @@all << self
    end

    def funding_rounds
        FundingRound.all.select {|round| round.venture_capitalist == self}  
    end

    def self.all
        @@all
    end

    def portfolio
        funding_rounds = self.funding_rounds
        funding_rounds.map {|round| round.startup}
    end

    def self.tres_commas_club
        self.all.select {|vc| vc.total_worth >= 1000000000}
    end

    def offer_contract(startup, type, amount)
        FundingRound.new(startup, self, type, amount)
    end

    def biggest_investment
        rounds = funding_rounds
        rounds.reduce(rounds[0].investment) {|most, round| round.investment > most ? round.investment : most}
    end

    def invested
        rounds = self.funding_rounds
        rounds.reduce(0) {|total, round| total += round.investment}
    end

end