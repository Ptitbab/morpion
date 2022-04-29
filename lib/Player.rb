class Player
    attr_accessor :name, :symbol

    def initialize(name, symbol)
        #initialise un joueur avec un name et un symbol
        @name = name
        @symbol = symbol
    end

    def choose_case(all_cases)
        loop do
            puts "#{@name} Choisis une case: "
            coordinate = gets.chomp.to_i
            if all_cases[coordinate-1].case_content == " " 
                all_cases[coordinate-1].case_content = @symbol
                break
            else
                puts "Tu ne peux pas changer cette case, choisis une autre case"
            end
        end
    end
end