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