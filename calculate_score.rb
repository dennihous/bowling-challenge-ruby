class CalculateScore
  attr_reader :count
  class << self

    def initialize
      @count = 0
    end

    def calculate(score)
      i = 0
      while i < score.length
        if score[i][0] == 10
          if score[i+1][0] == 10
            @count = 20 + score[i+2]
          elsif score[i+1][0] != 10
            @count = 10 + score[i+1][0] + score[i+2][0]
          end
        elsif score[i][0]+score[i][1] == 10
          @count = 10 + score[i+1][0]
          i += 1
        else
          @count = score[i][0]+score[i][1]
          i += 1
        end
      end
    end

  end
end

CalculateScore.calculate([[9,1], [9,1], [9,1], [9,1], [9,1], [9,1], [9,1], [9,1], [9,1], [9,1], [9]])
CalculateScore.count