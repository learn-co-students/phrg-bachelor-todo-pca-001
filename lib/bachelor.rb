def get_first_name_of_season_winner(data, season)
  data[season].each do |key|
    return key["name"].split(" ").first if key["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  data.each do |_key, value|
    value.each do |key1|
      return key1["name"] if key1["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |_key, value|
    value.each do |key1|
      counter += 1 if key1["hometown"] == hometown
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |_key, value|
    value.each do |key1|
      return key1["occupation"] if key1["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |key, _value|
    ages << key["age"].to_f
  end
  average = ages.inject(0) { |sum, x| sum + x } / ages.length
  average.round
end
