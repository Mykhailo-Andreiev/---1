require_relative '../task2'  

RSpec.describe Movie do
  describe '#initialize' do
    it 'creates a movie with the given title and director' do
      movie = Movie.new("The Shawshank Redemption", "Frank Darabont")
      expect(movie.instance_variable_get(:@title)).to eq("The Shawshank Redemption")
      expect(movie.instance_variable_get(:@director)).to eq("Frank Darabont")
    end
  end

  describe '#display_info' do
    it 'displays the correct movie information' do
      movie = Movie.new("The Shawshank Redemption", "Frank Darabont")
      expect { movie.display_info }.to output("Movie: The Shawshank Redemption, directed by Frank Darabont\n").to_stdout
    end
  end
end
