class String

  letter_scores = {"A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1,
                   "N" => 1, "R" => 1, "S" => 1, "T" => 1,
                   "D" => 2, "G" => 2,
                   "B" => 3, "C" => 3, "M" => 3, "P" => 3,
                   "F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4,
                   "K" => 5,
                   "J" => 8, "X" => 8,
                   "Q" => 10, "Z" => 10}

  define_method(:scrabble) do
    return "Input not valid" if has_number?
    word_score = 0
    letters = self.split("")
    letters.each() do |letter|
      word_score += letter_scores.fetch(letter.upcase())
    end
    return word_score
  end

  define_method(:has_number?) do
    self.count("0-9") > 0
  end
end
