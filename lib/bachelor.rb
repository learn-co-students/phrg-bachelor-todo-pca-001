def get_first_name_of_season_winner(data, season)
    data[season].each do |contestant|
      if contestant ["status"] == "Winner"
        return contestant["name"].split.first
      end
    end
end

def get_contestant_name(data, occupation)
  contestant_name = " "
  data.each do |season, people|
    people.each do |contestant|
      if contestant["occupation"] == occupation
        contestant_name = contestant["name"]
      end
    end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  # count = 0

  # data.each do |season, people|
  #   people.each do |contestant|
  #     if contestant["hometown"] == hometown
  #       count += 1
  #     end
  #   end
  # end

  # count

  data.inject(0) do |count_total, (_season, people)|
    count_total + people.inject(0) do |count_per_season, contestant|
      contestant["hometown"] == hometown ? count_per_season + 1 : count_per_season
    end
  end
end

def get_occupation(data, hometown)
  data.each do |season, people|
    people.each do |contestant|
      if contestant["hometown"] == hometown
         return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
    count = 0
    data[season].each do |contestant|
    contestant_age = contestant["age"].to_i
    count = contestant_age + count
    end 
    puts count 

    (count.to_f / data[season].length).round
end
