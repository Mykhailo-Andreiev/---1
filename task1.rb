def generate(length)
  letters_and_symbols = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + ['!', '@', '#', '$', '%', '^', '&', '*']
  password = []
  
  length.times do
    password << letters_and_symbols.sample
  end

  password.join
end

puts generate(10)