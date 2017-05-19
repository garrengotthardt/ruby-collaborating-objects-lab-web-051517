class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end


  def save
    self.class.all << self
  end


  def self.create_by_name(artist_name)
    artist = self.new(artist_name)
    artist.save
    artist
  end

  def self.find_by_name(artist_name)
    self.all.detect {|artist_instance| artist_instance.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    if self.find_by_name(artist_name) == nil
      self.create_by_name(artist_name)
    else
      self.find_by_name(artist_name)
    end
  end


  def add_song(song)
    @songs << song
    song
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
