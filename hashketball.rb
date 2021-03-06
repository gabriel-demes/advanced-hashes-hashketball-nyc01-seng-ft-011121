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

# Write code here
def num_points_scored(player)
  hash = game_hash
  hash.each do |x,y|
    y.each do |t,u|
      if t == :players
        u.each do |a|
          a.each do |b,c|
            if c == player
              return a[:points]
            end
          end
        end
      end
    end
  end
end

def shoe_size(player)
  hash = game_hash
  hash.each do |x,y|
    y.each do |t,u|
      if t == :players
        u.each do |a|
          a.each do |b,c|
            if c == player
              return a[:shoe]
            end
          end
        end
      end
    end
  end
end

def team_colors(team)
  hash = game_hash
  hash.each do |x,y|
    y.each do |t,u|
      if u == team
        return hash[x][:colors]
      end
    end
  end
end

def team_names
  hash = game_hash
  hash.collect do |x,y|
      hash[x][:team_name]
  end
end

def player_numbers(team)
  hash = game_hash
  list = []
  hash.each do |x,y|
    if hash[x][:team_name] == team
      y.each do |t,u|
        if t == :players
          u.each do |a|
            a.each do |b,c|
              if b == :number
                list.push(a[:number])
              end
            end
          end
        end
      end
      return list
    end
  end
end

def player_stats(name)
  hash = game_hash
  hash.each do |x,y|
    y.each do |t,u|
      if t == :players
        u.each do |a|
          a.each do |b,c|
            if c == name
              return a
            end
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  hash = game_hash
  array = []
  hash[:home][:players].each do |a|
    a.each do |x,y|
      if x == :shoe
        array.push(a[:shoe])
      end
    end
  end
  hash[:away][:players].each do |i|
    i.each do |x,y|
      if x == :shoe
        array.push(i[:shoe])
      end
    end
  end
  max = array.max

  hash.each do |x,y|
    hash[x][:players].each do |c|
      c.each do |t,u|
        if c[:shoe] ==  max
          return c[:rebounds]
        end
      end
    end
  end
end
