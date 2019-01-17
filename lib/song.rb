class Song
  attr_accessor :name, :artist
  @@all = []

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name, arist="nil")
    new_song = Song.new(name)
    new_song.save
    new_song
  end

  def initialize(name)
    @name = name
  end

  def save
    @@all << self
  end

end
