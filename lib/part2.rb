class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless (["p", "r", "s"].include? game[0][1].downcase and ["p", "r", "s"].include? game[0][1].downcase)
  if (((game[0][1].downcase == "s" and game[1][1].downcase == "p") or (game[0][1].downcase <= game[1][1].downcase)) and !(game[0][1].downcase == "p" and game[1][1].downcase == "s"))
    return game[0]
  else
    return game[1]
  end
end

def rps_tournament_winner(tournament)
  if (tournament[0][0].is_a? String)
    return rps_game_winner(tournament)
  else
    return rps_tournament_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
  end
end

#feel free to add your own helper functions as needed
p rps_game_winner([["a", "r"], ["b", "p"]])
p rps_game_winner([["a", "p"], ["b", "s"]])
p rps_game_winner([["a", "s"], ["b", "p"]])
p rps_game_winner([["a", "r"], ["b", "s"]])
p rps_game_winner([["a", "s"], ["b", "r"]])
p rps_game_winner([["a", "p"], ["b", "r"]])
p rps_game_winner([["a", "p"], ["b", "p"]])
a= [[[ ["Joe", "P"], ["Mary", "S"] ],[ ["Bob", "R"], ["Alice", "S"] ]],[[ ["Steve", "S"], ["Jane", "P"] ],[ ["Ted", "R"], ["Carol", "P"] ]]]
p rps_tournament_winner(a)