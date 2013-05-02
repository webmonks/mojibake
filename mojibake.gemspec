# -*- encoding: utf-8 -*-

require File.expand_path('../lib/mojibake/base', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["David Kellum", "Maciej Kowalski"]
  gem.email         = ["dek-oss@gravitext.com", "maciej33kowalski@gmail.com"]
  gem.description   = gem.summary = "Simple fix for mojibake in Ruby"
  gem.license       = "Apache License, Version 2.0"

  gem.executables   = ['mojibake']
  gem.files         = `git ls-files `.split("\n")
  gem.test_files    = `git ls-files -- test/*`.split("\n")
  gem.name          = "mojibake"
  gem.require_paths = ["lib"]
  gem.version       = MojiBake::VERSION
  gem.add_dependency                  'json'
  gem.add_dependency                  'minitest'
end
