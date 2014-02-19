module League
  module Api

    def get_all_champion(region = 'na', version = 'v1.2')
      get('champion', region: region, version: version)
    end

    # Game Related API Calls
    def get_recent_game_by_id(summonerId, region = 'na')
      get("game/by-summoner/#{summonerId}/recent", region: region, version: version = 'v1.3')
    end

    # Ranked Leagues API Calls
    def get_challenger_tier(summonerId, region = 'na')
      get("league/challenger", region: region, version: version = 'v2.3')
    end

    def get_entry_data_for_ranked_summoner(summonerId, region = 'na')
      get("league/by-summoner/#{summonerId}/entry", region: region, version: version = 'v2.3')
    end

    def get_league_data_for_ranked_summoner(summonerId, region = 'na')
      get("league/by-summoner/#{summonerId}", region: region, version: version = 'v2.3')
    end

    # Summoner In Game Data related API Calls, such as player in-game stats for normal and ranked games in all maps.
    def get_summoner_summary_stats(summonerId, region = 'na')
      get("stats/by-summoner/#{summonerId}/summary", region: region, version: version = 'v1.2' )
    end

    def get_summoner_ranked_stats(summonerId, region = 'na')
      get("stats/by-summoner/#{summonerId}/ranked", region: region, version: version = 'v1.2')
    end

    # Summoner Data such as masteries, runes, and sumoner objects, related API Calls
    def get_summoner_masteries(summonerId, region = 'na')
      get("summoner/#{summonerId}/masteries", region: region, version: version = 'v1.3')
    end

    def get_summoner_runes(summonerId, region = 'na')
      get("summoner/#{summonerId}/runes", region: region, version: version = 'v1.3')
    end

    def get_summoner_by_name(name, region = 'na')
      get("summoner/by-name/#{name.gsub(" ", "")}", region: region, version: version = 'v1.3')
    end

    def get_summoner_name(summonerId, region = 'na')
      get("summoner/#{summonerId}/name", region: region, version: version = 'v1.3')
    end

    def get_summoner_by_id(summonerId, region = 'na')
      get("summoner/#{summonerId}", region: region, version: version = 'v1.3')
    end

    # Team data related API Calls
    def getSummonerTeams(summonerId, region = 'na')
      get("team/by-summoner/#{summonerId}", region: region, version: version = 'v2.2')
    end

    def getSummonerTeams(teamsId, region = 'na')
      get("team/#{teamsId}", region: region, version: version = 'v2.2')
    end
  end
end
