#  rummy500.rb
#  A version of the rumy 500 card game 
#  Runs the game, requires rummylib.rb
#  Tested using ruby-2.1.1
#  For more detailed documention see README.txt


## ---- Main ----

deck = Deck.new
deck.shuffle(7)
deck.deal(13)
player1 = Player
player2 = Player
player_list = [player1, player2]

whose_turn? = 1
while playing? == true
    player_list.each do
        player.take_turn()
        if game_over?
            playing? == false
            break
        end
    end
end


