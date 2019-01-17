class MusicLibraryController
  attr_reader :path

  def initialize(path = './db/mp3s')
    @path = path
    @importer = MusicImporter.new(self.path)
    @importer.import
  end

  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists, enter 'list artists'."
    user_input = gets.chomp
  end

end
