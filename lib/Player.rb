class Player
    attr_accessor :name, :symbol

    def initialize(name, symbol)
        @name = name
        @symbol = symbol
    end

    def choose_case(all_cases)
        puts "#{@name} Choisis une case: "
        coordinate = gets.chomp.to_i
        if all_cases[coordinate-1].case_content == " " 
            all_cases[coordinate-1].case_content = @symbol
        else
            puts "Tu ne peux pas changer cette case"
        end
    end
end