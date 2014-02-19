require 'league'

League.configure do |config|
  config.api_key = 'Insert API Key Here!'
end


# Call any of the methods on the new api object!
champion = League.get_all_champion
puts champion

summoner = League.get_summoner_by_name('P3rishable')
puts summoner
