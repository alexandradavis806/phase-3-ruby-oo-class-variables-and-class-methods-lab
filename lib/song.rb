require 'pry'

class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist 
    end

    def self.count 
        @@count
    end

    def self.genres
        @@genres.uniq
    end 

    def self.genre_count
        @@genres.tally
    end

    def self.artists
        @@artists.uniq
    end 

    def self.artist_count
        @@artists.tally
    end
end 


as_it_was = Song.new('As It Was', "Harry Styles", "pop")

work_song = Song.new('Work Song', "Hozier", 'rock')

work_song = Song.new('Work Song', "Hozier", 'rock')

binding.pry