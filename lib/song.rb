class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count.has_key?(genre)
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count.has_key?(artist)
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
  end

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres = @@genres.push(genre)
    @@artists = @@artists.push(artist)
  end

end

song1 = Song.new('lithium', 'nirvana', 'rock')
song2 = Song.new('revival', 'deerhunter', 'dream pop')
song3 = Song.new('on a plain', 'nirvana', 'rock')
song4 = Song.new('kids', 'mgmt', 'indie')
puts Song.artist_count