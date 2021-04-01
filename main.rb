load 'player.rb'

def game
  player1 = Player.new("Player 1")
  player2 = Player.new("Player 2")

  which_player = true
  
  while player1.life || player2.life > 0 do
    if which_player == true
      player = player1
      opposite_player = player2
    else
      player = player2
      opposite_player = player1
    end

    ran_num1 = rand(1..20)
    ran_num2 = rand(1..20)

    question = "What does #{ran_num1} plus #{ran_num2} equal?"
    puts "#{player.name}: #{question}"
    answer = gets.chomp.to_i

    if (ran_num1 + ran_num2) == answer
      puts "YES! You are correct."
      which_player = !which_player
    else
      puts "Seriously? No!"
      player.life -= 1
      which_player = !which_player
    end
    if player.life == 0
      puts "#{opposite_player.name} wins with a score of #{opposite_player.life}/#{player.life}"
      puts "----- GAME OVER -----"
      puts 'Good bye!'
      break
    end
    puts "----- NEW TURN -----"
  end
end

game()