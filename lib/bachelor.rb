def get_first_name_of_season_winner(data, season)
  data.each do |key, value|
    next unless key == season

    value.each do |contestant_hash|
      if contestant_hash["status"] == "Winner"
        return contestant_hash["name"].split.first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |key, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
 counter = 0
  data.each do |key, contestants|
  contestants.each do |contestant_hash|
    if contestant_hash["hometown"] == hometown
      counter += 1
      end
    end
  end
  counter
end



def get_occupation(data, hometown)
  data.each do |key, contestants|
  contestants.each do |contestant_hash|
    if contestant_hash["hometown"] == hometown
    return contestant_hash["occupation"]
  end
end
end
end


def get_average_age_for_season(data, season) # season = "season 17"
  total_from_season = 0
  years_alive = 0
  data[season].each do |contestant_hash|
    years_alive += contestant_hash["age"].to_f
    total_from_season += 1
    return (years_alive / total_from_season).round
  end
end

