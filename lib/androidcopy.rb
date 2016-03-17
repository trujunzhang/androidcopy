require "androidcopy/version"

require 'find'
require 'fileutils'
require 'android_resource_util'

module Androidcopy
  def self.hi()
    return "world!"
  end

  def self.copy(source_path, target_path, fileName)
    files = AndroidResourceUtil.getAllFiles(source_path,fileName)

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


