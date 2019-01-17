class Song
  attr_accessor :name, :artist
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

  def initialize(name, arist="nil")
    @name = name
    @artist = artist
  end

  def save
    @@all << self
  end

end
