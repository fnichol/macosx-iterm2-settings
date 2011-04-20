#!/usr/bin/env ruby

require 'fileutils'
include FileUtils

cp(
  File.join("#{ENV['HOME']}", %w{Library Preferences com.googlecode.iterm2.plist}),
  File.join(File.dirname(__FILE__), %w{.. com.googlecode.iterm2.plist}),
  :verbose => true
)
