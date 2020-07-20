class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
  end

  def import(list_of_filenames)
    list_of_filenames.each { |filename| song.new_by_filename(filename) }
  end

end