class Boardcase
    attr_accessor :case_coordinate, :case_content
    @@all_cases = []
    
   def initialize(case_coordinate, case_content)
        @case_coordinate = case_coordinate
        @case_content = case_content
        @@all_cases << self
   end

   def self.all
    @@all_cases
    end
end