#  rummylib.rb
#  Class library for rummy500.rb


class Deck
    attr_accessor :size 

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
    attr_reader :rank, :suit, :points

    def initialize(suit, rank)
        @suit = suit
        @rank = rank  #11=jack, 12=queen, 13=king, 14=ace
        if (rank == 14)
            @points = 15
        elsif (rank > 9)
            @points = 10
        else
            @points = 5
        end
    end

end

class DiscardPile
    def initialize()
        #
    end
    
    def display()
        # print the discard pile to the screen
    end
end

class Hand
    attr_accessor :size

    def initialize(size)
        @size = size
    end
end

class Melds
    attr_reader :owner, :type
    attr_accessor :cards, :top, :bottom, :points, :size

    def evalulate()
        # return points for the meld
        #for 
    end

    def initialize(owner, cards)
        @owner = owner
        @cards = cards #an ordered list
        @top = cards[-1]
        @bottom = cards[0]
        @points = self.evalulate()
        @size = cards.length
        if (@top == @bottom and @size > 1)
            @type = 'of-a-kind' # 3 or 4 of a kind
        elsif (size == 1)
            @type = 'add-on'
        else
            @type = 'run'
        end
    end

end

#class Player
    #def initialize()
        #@points = 0
    #end
    
    #def take_turn(where_to_draw?)
        ## takes a integer
        ## 0 for drawing from the deck
        ## 1 to n=DiscardPile.length to indicate where in the discard 
        ## pile to draw from, 1 is the top card and n is the bottom
        #self.draw(where_to_draw?)
        #if (where_to_draw == 0)
            #self.draw_card
        #else
            #self.pick_up_discard(where_to_draw?)
        #end
    #end
    
    #def pick_up_discard(where_to_draw?)
        ## called by the take_turn method
        ## see its docs
        ## reusing the variable name from said method
    #end
    
    #def draw_card()
        ##
    #end
#end
