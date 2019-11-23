require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

quorix = Startup.new('Quorix', 'Zack Martinez', 'quorix.com')
howell = VentureCapitalist.new('Thurston Howell', 35000000000)
schwabb = VentureCapitalist.new('George Schwabb', 270000000000)
van_eyck = VentureCapitalist.new('Yorrick Van Eyck', 50345792)
medici = VentureCapitalist.new('Cosimo de Medici', 7245000000)
nascent = Startup.new('Nascent Analytics', 'John Ilex', 'nascent.org')
undyn = Startup.new('Undyn, LLC', 'Camille Saens-Greco', 'undyn.com')
round1 = FundingRound.new(quorix, howell, 'Series A', 1000000)
round2 = FundingRound.new(quorix, van_eyck, 'Series A', 1000000)
round3 = FundingRound.new(quorix, medici, 'Series A', 2000000)
round4 = FundingRound.new(nascent, van_eyck, 'Seed', 2000000)
round5 = FundingRound.new(nascent, schwabb, 'Seed', 6000000)
round6 = FundingRound.new(nascent, howell, 'Seed', 4000000)
round7 = FundingRound.new(nascent, medici, 'Seed', 1000000)
round8 = FundingRound.new(undyn, medici, 'Pre-Seed', 3000000)
round9 = FundingRound.new(undyn, howell, 'Pre-Seed', 2000000)
round10 = FundingRound.new(undyn, schwabb, 'Pre-Seed', 1000000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line