require 'find'
require 'fileutils'

class AndroidResourceUtil

  def self.getAllFiles(source_path, fileName)
    Dir.glob("#{source_path}/*").each do |f|
      if File.directory?(f)
        foldName = File.basename("#{f}")
        filePath = "#{f}/#{fileName}"
        puts "#{f}\n"
      end
    end
  end
end