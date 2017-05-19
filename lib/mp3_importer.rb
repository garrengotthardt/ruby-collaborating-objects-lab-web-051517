require 'pry'


class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files_array = Dir.entries(@path)
    files_array.shift
    files_array.shift
    files_array
    #binding.pry
  end

  def import
    files.each do |file_name|
      Song.new_by_filename(file_name)
    end



  end

end
