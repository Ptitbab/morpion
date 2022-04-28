class Game
    
    def initialize
        puts "Le jeu du Morpion est très simple. Si tu ne le connais pas en voici les règles."
        puts "2 joueurs vont s'affronter sur ue grille de 9 cases. Le but est d'être le premier à faire un alignement de 3 cases, même en diagonale.\n\nOn va désigner au hasard quel joueur commencera et ce sera chacun son tour.\n\nLe jeu prends fin lorsque l'un des 2 joueurs a aligné 3 cases ou que toutes les cases de la grille sont remplies."
        puts "A vous de jouer !!!\n\n\n"


        puts "Pour commencer, je vais prendre noms des joueurs"
        puts "Joueur 1 comment t'appelles-tu?"

        player1_name = gets.chomp

        @player1 = Player.new(player1_name, "X")

        puts "\n\nJoueur 2 comment t'appelles-tu?"

        player2_name = gets.chomp

        @player2 = Player.new("#{player2_name}", "O")

        puts "#{@player1.name} jouera avec les #{@player1.symbol}"
        puts "#{@player2.name} jouera avec les #{@player2.symbol}"

        @current_player = @player1

        @my_board = Board.new
    end

    def player_move
        @current_player.choose_case(Boardcase.all)
    end

    def display_board
        @my_board.display_board(Boardcase.all)
    end

    def switch_player
        if @current_player == @player1
            @current_player = @player2
        else
            @current_player = @player1
        end
    end

    def victory
        @my_board.check_victory(Boardcase.all)
    end


end







