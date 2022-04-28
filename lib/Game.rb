class Game
    
    def initialize
        puts "Le jeu du Morpion est très simple. Si tu ne le connais pas en voici les règles."
        puts "2 joueurs vont s'affronter sur ue grille de 9 cases. Le but est d'être le premier à faire un alignement de 3 cases, même en diagonale.\n\nOn va désigner au hasard quel joueur commencera et ce sera chacun son tour.\n\nLe jeu prends fin lorsque l'un des 2 joueurs a aligné 3 cases ou que toutes les cases de la grille sont remplies."
        puts "A vous de jouer !!!\n\n\n"


        puts "Pour commencer, je vais prendre noms des joueurs"
        puts "Joueur 1 comment t'appelles-tu?"

        player1_name = gets.chomp

        player1 = Player.new(player1_name, "X")

        puts "\n\nJoueur 2 comment t'appelles-tu?"

        player2_name = gets.chomp

        player2 = Player.new(player2_name, "O")
    end

    
end


class Board
    attr_accessor :board

    def initialize
        for i in 0..9 
            Boardcase.new("i", " ")
        end
    end

    def display_board(all_cases)
        puts "   A   B   C "
        puts "1  #{all_cases[0].case_symbol} | #{all_cases[1].case_symbol} | #{all_cases[2].case_symbol} "
        puts "  --- --- ---"
        puts "2  #{all_cases[3].case_symbol} | #{all_cases[4].case_symbol} | #{all_cases[5].case_symbol} "
        puts "  --- --- ---"
        puts "3  #{all_cases[6].case_symbol} | #{all_cases[7].case_symbol} | #{all_cases[8].case_symbol} "
    end

    def move
        puts "Choisis ta case: "
        user_choice = gets.chomp
        case user_choice
        when "A1"
            all_cases[0].case_symbol = current_player.symbol
            #break
        when "A2"
            all_cases[3].case_symbol = current_player.symbol
            #break
        when "A3"
            all_cases[6].case_symbol = current_player.symbol
            #break
        when "B1"
            all_cases[1].case_symbol = current_player.symbol
            #break
        when "B2"
            all_cases[4].case_symbol = current_player.symbol
            #break
        when "B3"
            all_cases[7].case_symbol = current_player.symbol
            #break
        when "C1"
            all_cases[2].case_symbol = current_player.symbol
            #break
        when "C2"
            all_cases[5].case_symbol = current_player.symbol
            #break
        when "C3"
            all_cases[8].case_symbol = current_player.symbol
            #break
        else
            "Choisis parmi les cases."
        end
    end
end


class Boardcase
    attr_accessor :case_name, :case_symbol
    @@all_cases = []
    
   def initialize(case_number, case_symbol)
        @case_number = case_number
        @case_symbol = case_symbol
        @@all_cases << self
   end

   def self.all
        @@all_cases
   end
end

