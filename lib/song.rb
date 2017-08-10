require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name

    @genre = genre
    @@genres << genre

    @artist = artist
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = Hash.new(0)
    @@genres.each do |genre|
      if hash.has_key?(genre) == false
        hash[genre] = 1
      else
        hash[genre] += 1
      end
    end

    hash
  end

  def self.artist_count
    hash = Hash.new(0)
    @@artists.each do |artist|
      if hash.has_key?(artist) == false
        hash[artist] = 1
      else
        hash[artist] += 1
      end
    end

    hash
  end

end
