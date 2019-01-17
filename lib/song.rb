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
    Song.new(name).save
  end

  def initialize(name)
    @name = name
  end

  def save
    @@all << self
  end

end
