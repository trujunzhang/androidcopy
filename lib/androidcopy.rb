require "androidcopy/version"

require 'find'
require 'fileutils'
require 'android_resource_util'

module Androidcopy
  def self.hi()
    return "world!"
  end

  def self.copy(source_path, target_path, fileName)
    files = AndroidResourceUtil.getAllFiles(source_path, fileName)
    puts "total count: #{files.length}"
    files.each { |i|
      source = "#{i}/#{fileName}"
      foldName = File.basename("#{i}")

      target_fold = "#{target_path}/#{foldName}"
      target = "#{target_fold}/#{fileName}"
      FileUtils.makedirs("#{target_fold}")

      puts "copy:"
      puts " from #{source}"
      puts " to #{target}"
      FileUtils.copy source, target
    }

  end
end


