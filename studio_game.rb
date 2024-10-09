# frozen_string_literal: true

require_relative 'lib/studio_game/game'
require_relative 'lib/studio_game/player'

player1 = Player.new('finn', 60)
player2 = Player.new('lucy', 90)
player3 = Player.new('jase', 100)
player4 = Player.new('alex', 125)

game = Game.new('Winner Takes All')
game.add_player(player1)
game.add_player(player2)
game.add_player(player3)
game.add_player(player4)

loop do
  print "\nHow many rounds would you like to play? "
  answer = gets.chomp.downcase

  case answer
  when /^\d+$/
    game.play(answer.to_i)
  when 'exit', 'quit'
    game.print_stats
    break
  else
    "\nEnter the number of rounds you'd like to play or quit"
  end
end

# player5 = Player.new('alvin', 65)
# player6 = Player.new('simon', 95)
# player7 = Player.new('Theodore', 105)

# game2 = Game.new('Chipmunks')
# game2.add_player(player5)
# game2.add_player(player6)
# game2.add_player(player7)
# game2.play(5)