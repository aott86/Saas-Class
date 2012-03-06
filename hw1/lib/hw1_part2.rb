## Part 2: Rock-Paper-Scissors
## (a)
class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
def rps_game_winner(game)
#Si le jeu comporte plus ou moins de 2 joueurs, on leve uen exception
raise WrongNumberOfPlayersError unless game.length == 2

#Si les joueurs utlisent autre chose que Rock("R"),Paper("P"),Scissor("S"), on leve une exception
h=true
game.each{|l| h=h && (l[1].casecmp("P")==0 || l[1].casecmp("R")==0 || l[1].casecmp("S")==0)}
raise NoSuchStrategyError unless h

#On détermine le gagnant (joueur 1 si exaequo)
if  ((game[0][1].casecmp(game[1][1]))==0 || (game[0][1].casecmp("R")==0 && game[1][1].casecmp("S")==0) || (game[0][1].casecmp("S")==0 && game[1][1].casecmp("P")==0) || (game[0][1].casecmp("P")==0 && game[1][1].casecmp("R")==0))
 return game[0]
else
   return game[1]
end

end

#rps_game_winner([ [ "Armando", "P" ], [ "Dave", "P" ] ]) -> [ "Armando", "P" ]
#rps_game_winner([ [ "Armando", "R" ], [ "Dave", "S" ] ]) -> [ "Armando", "R" ]
#rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ]) -> [ "Dave", "S" ]
#rps_game_winner([ [ "Armando", "P" ], [ "Dave", "u" ] ]) -> NoSuchStrategyError
#rps_game_winner([ [ "Armando", "P" ] ]) -> WrongNumberOfPlayersError

## (b)
def rps_tournament_winner(tournament)
  if tournament[0][0].class !=String   
	rps_game_winner(tournament.map{ |t| rps_tournament_winner(t)})
  else return rps_game_winner(tournament)
  return tournament
end
end
#[
#	[
#		[ ["Armando", "P"], ["Dave", "S"] ],
#		[ ["Richard", "R"],  ["Michael", "S"] ],
#	],
#	[ 
#		[ ["Allen", "S"], ["Omer", "P"] ],
#		[ ["David E.", "R"], ["Richard X.", "P"] ]
#	]
#] ->  ["Richard", "R"]
