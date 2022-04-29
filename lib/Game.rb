class Game
    
    def initialize
        #va initialiser les 2 joueurs, le current player et la board vide
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
        #appelle la methode choose_case pour choisir une case ou jouer
        @current_player.choose_case(BoardCase.all)
    end

    def display_board
        #affiche le board
        @my_board.display_board(BoardCase.all)
    end

    def switch_player
        #permet de changer de joueur a chaque tour
        if @current_player == @player1
            @current_player = @player2
        else
            @current_player = @player1
        end
    end

    def victory
        #doit chercher a déterminer s'il y a victoire en vérifiant l'un des 8 scénario de victoire
        if @my_board.check_victory(BoardCase.all) == true
            puts "#{@current_player.name} a gagné!"
            
        end
    end

    def go
        #enchaine les tours tantqu'il n'y a pas de victoire ou mach nul
    end

    def another_game
        puts "Voulez-vous faire une autre partie? [Y/N]"
        another_game = gets.chomp
        if another_game == "Y"
            @my_game = Game.new
        else
            exit
        end
    end

end







