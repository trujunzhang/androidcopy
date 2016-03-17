require "androidcopy/version"

require 'find'
require 'fileutils'

module Androidcopy

  def self.hi
    puts "Hello djzhang!"
  end

  def copy_without_svn(source_path, target_path)
    Find.find(source_path) do |source|
      target = source.sub(/^#{source_path}/, target_path)
      if File.directory? source
        Find.prune if File.basename(source) == '.svn'
        FileUtils.mkdir target unless File.exists? target
      else
        FileUtils.copy source, target
      end
    end
  end

end


