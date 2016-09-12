class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  #raise NoSuchStrategyError unless (["p", "r", "s"] & [game[0][1].downcase,game[1][1].downcase]).any?
  # YOUR CODE HERE
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end

#feel free to add your own helper functions as needed
