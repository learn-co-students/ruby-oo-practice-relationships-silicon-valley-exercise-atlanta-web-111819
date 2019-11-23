class Startup

    attr_reader :name, :founder, :domain

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain

        @@all << self
    end

    def pivot(domain, name)
        @name = name
        @domain = domain
    end

    def self.all
        @@all
    end

    def investors
        funding_rounds = self.funding_rounds
        funding_rounds.map {|round| round.venture_capitalist}
    end

    def self.find_by_founder(founder_name)
        self.all.find {|startup| startup.founder == founder_name}
    end

    def self.domains
        self.all.map {|startup| startup.domain}
    end

    def sign_contract(capitalist, type, amount)
        FundingRound.new(self, capitalist, type, amount)
    end

    def funding_rounds
        FundingRound.all.select {|round| round.startup == self}
    end

    def total_funds
        rounds = self.funding_rounds
        rounds.reduce(rounds[0].investment) {|total, round| total += round.investment}
    end

    def big_investors
        tres_commas = VentureCapitalist.tres_commas_club
        tres_commas.select {|venture_capitalist| venture_capitalist.portfolio.include?(self)}
    end
end
