require 'find'
require 'fileutils'

class AndroidResourceUtil

  def self.getAllFiles(source_path, fileName)
    matchedFiles = []

    Dir.glob("#{source_path}/*").each do |f|
      if File.directory?(f)
        filePath = "#{f}/#{fileName}"
        if File.exist?(filePath)
          # foldName = File.basename("#{f}")
          matchedFiles.push("#{filePath}")
        end
      end
    end

    return matchedFiles
  end

end
