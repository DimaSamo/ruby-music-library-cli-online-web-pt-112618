class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist || song.artist = self
    @songs.push(song) unless @songs.include?(song)
  end


  def save
    @@all << self
  end
end
