
class Song
  attr_accessor :name, :artist

  def initialize (name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_array = file_name.split(" - ")
    song_name = (song_array[1])
    song_artist = (song_array[0])
    artist = Artist.find_or_create_by_name(song_artist)
    song = artist.add_song(Song.new(song_name))
    song.artist = artist
    song
  end

end
