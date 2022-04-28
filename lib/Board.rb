class Board
   

    def initialize()
        for i in 0..9 
            Boardcase.new("i", " ")
        end
    end

    def display_board(all_cases)
        puts "   A   B   C "
        puts "1  #{all_cases[0].case_content} | #{all_cases[1].case_content} | #{all_cases[2].case_content} "
        puts "  --- --- ---"
        puts "2  #{all_cases[3].case_content} | #{all_cases[4].case_content} | #{all_cases[5].case_content} "
        puts "  --- --- ---"
        puts "3  #{all_cases[6].case_content} | #{all_cases[7].case_content} | #{all_cases[8].case_content} "
    end

    def check_victory(all_cases)
        if (all_cases[0].case_content == all_cases[1] && all_cases[0].case_content == all_cases[2]) || (all_cases[0].case_content == all_cases[3] && all_cases[0].case_content == all_cases[6]) || (all_cases[0].case_content == all_cases[4] && all_cases[0].case_content == all_cases[8]) || (all_cases[2].case_content == all_cases[5] && all_cases[2].case_content == all_cases[8]) || (all_cases[3].case_content == all_cases[4] && all_cases[3].case_content == all_cases[5]) || (all_cases[6].case_content == all_cases[7] && all_cases[6].case_content == all_cases[8]) || (all_cases[1].case_content == all_cases[4] && all_cases[1].case_content == all_cases[7]) || (all_cases[6].case_content == all_cases[4] && all_cases[6].case_content == all_cases[2])
            return true
        else
            return false
        end
    end

end
