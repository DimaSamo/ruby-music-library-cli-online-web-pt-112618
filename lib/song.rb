class Song
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    new_song = Song.new(name).save
    new_song
  end

  def initialize(name)
    @name = name
  end

  def save
    @@all << self
  end

end
