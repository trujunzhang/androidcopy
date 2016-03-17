require 'find'
require 'fileutils'

class AndroidResourceUtil

  def self.getAllFiles(source_path, fileName)
    Dir.chdir(sourcePath)
    puts Dir.pwd

    Find.find(source_path) do |source|
      puts source
      # target = source.sub(/^#{source_path}/, target_path)
      # if File.directory? source
      #   Find.prune if File.basename(source) == '.svn'
      #   FileUtils.mkdir target unless File.exists? target
      # else
      #   FileUtils.copy source, target
      # end
    end
  end
end