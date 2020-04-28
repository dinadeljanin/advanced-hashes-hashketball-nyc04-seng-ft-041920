# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def player_with_longest_name
  name = ""
  name_length = 0
  game_hash.each do |key, val|
    val[:players].each do |item|
      if item[:player_name].length > name_length
        name_length = item[:player_name].length
        name = item[:player_name]
      end
    end
  end
  return name
end

def long_name_steals_a_ton
  player_with_longest_name
  player = ""
  max_steals = 0
  game_hash.each do |key, val|
    val[:players].each do |item|
      if item[:steals] > max_steals
        max_steals = item[:steals]
        player = item[:player_name]
      end
    end
  end
  return player == player_with_longest_name
end

def winning_team
  home_team = 0
  away_team = 0
  game_hash.each do |key, val|
    val[:players].each do |item|
      if val[:team_name] == "Brooklyn Nets"
        home_team += item[:points]
      else
        away_team += item[:points]
      end
    end
  end
  if home_team > away_team
    return game_hash[:home][:team_name]
  else
    return game_hash[:away][:team_name]
  end
end

def most_points_scored
  max_points = 0
  player = ""
  game_hash.each do |key, val|
    val[:players].each do |item|
      if item[:points] > max_points
        max_points = item[:points]
        player = item[:player_name]
      end
    end
  end
  return player
end

def team_names
  teams = Array.new
  game_hash.each do |key, val|
    if val[:team_name]
      teams << val[:team_name]
    end
  end
  teams
end

def num_points_scored(player)
  game_hash.each do |key, val|
    val[:players].each do |item|
      if item[:player_name] == player
        return item[:points]
      end
    end
  end
end

def shoe_size(player)
  game_hash.each do |key, val|
    val[:players].each do |item|
      if item[:player_name] == player
        return item[:shoe]
      end
    end
  end
end

def team_colors(team)
  game_hash.each do |key, val|
    if val[:team_name] == team
      return val[:colors]
    end
  end
end

def player_numbers(team_name)
  nums = Array.new
  game_hash.each do |key, val|
    if val[:team_name] == team_name
      # puts val[:players]
      val[:players].each do |element|
        nums << element[:number]
      end
    end
  end
  return nums
end

def player_stats(player)
  game_hash.each do |key, val|
    val[:players].each do |item|
      if item[:player_name] == player
        stats = item
        return stats
      end
    end
  end
end

def big_shoe_rebounds
  rebounds = 0
  max_size = 0
  game_hash.each do |key, val|
    val[:players].each do |item|
       if item[:shoe] > max_size
        max_size = item[:shoe]
        rebounds = item[:rebounds]
       end
    end
  end
  return rebounds
end
