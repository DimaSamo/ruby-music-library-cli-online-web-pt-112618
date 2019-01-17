class Song
  attr_accessor :name
  attr_reader :artist, :genre
  @@all = []

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    new_song = Song.new(name)
    new_song.save
    new_song
  end

  def initialize(name, artist=nil, genre = nil)
    @name = name
    self.artist = artist unless artist == nil
    self.genre = genre unless genre == nil
  end

  def artist=(artist)
    @artist=artist
    artist.add_song(self)
  end

  def genre=(genre)
    @genre=genre
    genre.add_song(self)
  end

  def self.find_by_name(name)
    @@all.map do |song|
      song if song.name == name
    end.compact
  end


  def save
    @@all << self
  end

end
