def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |key, value|
    if key == "season 10"
      value.each do |key1, value1|
        if key1 == "status" && value1 == "Winner"
          return "name".split.first
          winner = "name"
        end 
      end 
    end 
  end 
  return winner
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
