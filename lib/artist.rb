class Artist
  attr_accessor :name
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

  def save
    @@all << self
  end
end
