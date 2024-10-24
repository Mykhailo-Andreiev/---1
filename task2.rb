class Movie
  def initialize(title, director)
    @title = title
    @director = director
  end

  def display_info
    puts "Movie: #{@title}, directed by #{@director}"
  end
end

movie = Movie.new("The Shawshank Redemption", "Frank Darabont")
movie.display_info
