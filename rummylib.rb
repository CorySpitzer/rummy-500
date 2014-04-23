#  rummylib.rb
#  Class library for rummy500.rb


class Deck
    def initialize(size)
        @size = size
    end
    
    def shuffle(times)
        # some efficient shuffle algorithm
    end
    
    def deal(hand_size, players = 2)
        # for loop players times hand_size
            # for player in players
                # hand.add_card(Deck.top)
    end
                
    def pop(num_cards = 1)
        # remove num_cards from top of deck
        # size -= num_cards
    end
    
    def is_empty?()
        if # Deck.size == 0 then
            return true
        end
    end
    
end
    
class Card
    def initialize(suit, rank, score)
        #@suit = suit
        #@rank = rank
    end
end

class DiscardPile
    def initialize()
        #
    end
end

class Hand
    def initialize()
        #
    end
end

class Melds
    def initialize(owner, top, bottom)
        @owner = owner
        @top = top
        @bottom = bottom
        if (@top == @bottom)
            @type = 'group' # 3 or 4 of a kind
        else
            @type = 'run'
        end
    end
end

class Player
    def initialize()
        @points = 0
    end
    
    def take_turn(where_to_draw?)
        # takes a integer
        # 0 for drawing from the deck
        # 1 to n=DiscardPile.length to indicate where in the discard 
        # pile to draw from, 1 is the top card and n is the bottom
        self.draw(where_to_draw?)
        if (where_to_draw == 0)
            self.draw_card
        else
            self.pick_up_discard(where_to_draw?)
        end
    end
    
    def pick_up_discard(where_to_draw?)
        # called by the take_turn method
        # see its docs
        # reusing the variable name from said method
    end
    
    def draw_card()
        #
    end
end
