#!/usr/bin/env ruby
# frozen_string_literal: true

require 'yaml'
require 'digest'
require 'fileutils'

userland_config = '/csi/etc/burpsuite/vagrant.yaml'
userland_burpsuite_pro_jar_path = '/csi/third_party/burpsuite-pro.jar'
burpsuite_pro_jar_dest_path = "/opt/burpsuite/#{File.basename(userland_burpsuite_pro_jar_path)}"
if File.exist?(userland_burpsuite_pro_jar_path)
  burpsuite_pro_yaml = YAML.load_file(userland_config)
  burpsuite_pro_jar_sha256_sum = burpsuite_pro_yaml['burpsuite_pro_jar_sha256_sum']
  license_key = burpsuite_pro_yaml['license_key'].to_s.scrub.strip.chomp

  this_sha256_sum = Digest::SHA256.file(userland_burpsuite_pro_jar_path).to_s

  if this_sha256_sum == burpsuite_pro_jar_sha256_sum
    print "Copying #{userland_burpsuite_pro_jar_path} to #{burpsuite_pro_jar_dest_path}..."
    system("sudo cp #{userland_burpsuite_pro_jar_path} #{burpsuite_pro_jar_dest_path}")
  else
    puts "#{burpsuite_pro_jar_dest_path} (SHA256 Sum #{this_sha256_sum}) != #{userland_config} (SHA256 Sum: #{burpsuite_pro_jar_sha256_sum})"
    pprint 'removing...'
    system("sudo rm #{userland_burpsuite_pro_jar_path} #{burpsuite_pro_jar_dest_path}")
  end
  puts 'complete.'
end
