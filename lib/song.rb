class Song
  attr_accessor(:name,:artist,:genre)
  @@count=0
  @@artists=[]
  @@genres=[]
  @@artist_count={}
  @@genre_count={}
  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    return @@count
  end

  def self.genres
    return @@genres.uniq
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genre_count
    g_count={}
    Song.genres.each do |genre|
      g_count[genre] => slef.genres.count(genre)
    end
  end

  def self.artist_count
  end

end
