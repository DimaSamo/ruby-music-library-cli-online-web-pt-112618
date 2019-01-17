class MusicLibraryController
  attr_reader :path

  def initialize(path = './db/mp3s')
    @path = path
    @importer = MusicImporter.new(self.path)
    @importer.import
  end

  def call
    puts "Welcome to your music library!"
  end

end
