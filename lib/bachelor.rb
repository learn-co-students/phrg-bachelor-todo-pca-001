def get_first_name_of_season_winner(data, season)
  # code here
  data[season][0]["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
  ans = ""
  data.each do |key, value|
    value.each do |contestant|
      ans = contestant["name"] if occupation == contestant["occupation"]
    end
  end
  ans
end

def count_contestants_by_hometown(data, hometown)
  # code here
  sum = 0
  data.each do |key, value|
    value.each do |contestant|
      sum += 1 if hometown == contestant["hometown"]
    end
  end
  sum
end

def get_occupation(data, hometown)
  # code here
  ans = ""
  data.each do |key, value|
    value.detect do |contestant|
      return contestant["occupation"] if hometown == contestant["hometown"]
    end
  end
  ans
end

def get_average_age_for_season(data, season)
  # code here
end
